; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_tvqm_enable_txq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_tvqm_enable_txq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@u32 = common dso_local global i32 0, align 4
@IWL_DEFAULT_QUEUE_SIZE = common dso_local global i32 0, align 4
@IWL_MAX_TID_COUNT = common dso_local global i32 0, align 4
@IWL_MGMT_TID = common dso_local global i32 0, align 4
@IWL_MGMT_QUEUE_SIZE = common dso_local global i32 0, align 4
@TX_QUEUE_CFG_ENABLE_QUEUE = common dso_local global i32 0, align 4
@SCD_QUEUE_CFG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Failed allocating TXQ for sta %d tid %d, ret: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Enabling TXQ #%d for sta %d tid %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Enabling TXQ #%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, i32, i32, i32)* @iwl_mvm_tvqm_enable_txq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_tvqm_enable_txq(%struct.iwl_mvm* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_mvm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @u32, align 4
  %13 = load i32, i32* @IWL_DEFAULT_QUEUE_SIZE, align 4
  %14 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %15 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @max_t(i32 %12, i32 %13, i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @IWL_MAX_TID_COUNT, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %4
  %26 = load i32, i32* @IWL_MGMT_TID, align 4
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* @u32, align 4
  %28 = load i32, i32* @IWL_MGMT_QUEUE_SIZE, align 4
  %29 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %30 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @max_t(i32 %27, i32 %28, i32 %35)
  store i32 %36, i32* %11, align 4
  br label %37

37:                                               ; preds = %25, %4
  %38 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %39 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i32, i32* @TX_QUEUE_CFG_ENABLE_QUEUE, align 4
  %42 = call i32 @cpu_to_le16(i32 %41)
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @SCD_QUEUE_CFG, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @iwl_trans_txq_alloc(%struct.TYPE_4__* %40, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %37
  %52 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 (%struct.iwl_mvm*, i8*, i32, ...) @IWL_DEBUG_TX_QUEUES(%struct.iwl_mvm* %52, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %54, i32 %55)
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %5, align 4
  br label %68

58:                                               ; preds = %37
  %59 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 (%struct.iwl_mvm*, i8*, i32, ...) @IWL_DEBUG_TX_QUEUES(%struct.iwl_mvm* %59, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %61, i32 %62)
  %64 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call i32 (%struct.iwl_mvm*, i8*, i32, ...) @IWL_DEBUG_TX_QUEUES(%struct.iwl_mvm* %64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %58, %51
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @max_t(i32, i32, i32) #1

declare dso_local i32 @iwl_trans_txq_alloc(%struct.TYPE_4__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @IWL_DEBUG_TX_QUEUES(%struct.iwl_mvm*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
