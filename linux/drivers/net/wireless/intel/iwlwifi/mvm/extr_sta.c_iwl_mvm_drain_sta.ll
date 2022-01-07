; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_drain_sta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_drain_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_mvm_sta = type { i32, i32 }
%struct.iwl_mvm_add_sta_cmd = type { i8*, i8*, i32, i32, i8* }

@STA_MODE_MODIFY = common dso_local global i32 0, align 4
@STA_FLG_DRAIN_FLOW = common dso_local global i32 0, align 4
@ADD_STA = common dso_local global i32 0, align 4
@IWL_ADD_STA_STATUS_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Frames for staid %d will drained in fw\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Couldn't drain frames for staid %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_drain_sta(%struct.iwl_mvm* %0, %struct.iwl_mvm_sta* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.iwl_mvm_sta*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iwl_mvm_add_sta_cmd, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.iwl_mvm_sta* %1, %struct.iwl_mvm_sta** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = bitcast %struct.iwl_mvm_add_sta_cmd* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 32, i1 false)
  %12 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %13 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %12, i32 0, i32 0
  %14 = call i32 @lockdep_assert_held(i32* %13)
  %15 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %6, align 8
  %16 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @cpu_to_le32(i32 %17)
  %19 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, %struct.iwl_mvm_add_sta_cmd* %8, i32 0, i32 4
  store i8* %18, i8** %19, align 8
  %20 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %6, align 8
  %21 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, %struct.iwl_mvm_add_sta_cmd* %8, i32 0, i32 3
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @STA_MODE_MODIFY, align 4
  %25 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, %struct.iwl_mvm_add_sta_cmd* %8, i32 0, i32 2
  store i32 %24, i32* %25, align 8
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @STA_FLG_DRAIN_FLOW, align 4
  %30 = call i8* @cpu_to_le32(i32 %29)
  br label %32

31:                                               ; preds = %3
  br label %32

32:                                               ; preds = %31, %28
  %33 = phi i8* [ %30, %28 ], [ null, %31 ]
  %34 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, %struct.iwl_mvm_add_sta_cmd* %8, i32 0, i32 1
  store i8* %33, i8** %34, align 8
  %35 = load i32, i32* @STA_FLG_DRAIN_FLOW, align 4
  %36 = call i8* @cpu_to_le32(i32 %35)
  %37 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, %struct.iwl_mvm_add_sta_cmd* %8, i32 0, i32 0
  store i8* %36, i8** %37, align 8
  store i32 128, i32* %10, align 4
  %38 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %39 = load i32, i32* @ADD_STA, align 4
  %40 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %41 = call i32 @iwl_mvm_add_sta_cmd_size(%struct.iwl_mvm* %40)
  %42 = call i32 @iwl_mvm_send_cmd_pdu_status(%struct.iwl_mvm* %38, i32 %39, i32 %41, %struct.iwl_mvm_add_sta_cmd* %8, i32* %10)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %32
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %4, align 4
  br label %67

47:                                               ; preds = %32
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @IWL_ADD_STA_STATUS_MASK, align 4
  %50 = and i32 %48, %49
  switch i32 %50, label %57 [
    i32 128, label %51
  ]

51:                                               ; preds = %47
  %52 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %53 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %6, align 8
  %54 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @IWL_DEBUG_INFO(%struct.iwl_mvm* %52, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %65

57:                                               ; preds = %47
  %58 = load i32, i32* @EIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %9, align 4
  %60 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %61 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %6, align 8
  %62 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @IWL_ERR(%struct.iwl_mvm* %60, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %57, %51
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %65, %45
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @lockdep_assert_held(i32*) #2

declare dso_local i8* @cpu_to_le32(i32) #2

declare dso_local i32 @iwl_mvm_send_cmd_pdu_status(%struct.iwl_mvm*, i32, i32, %struct.iwl_mvm_add_sta_cmd*, i32*) #2

declare dso_local i32 @iwl_mvm_add_sta_cmd_size(%struct.iwl_mvm*) #2

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_mvm*, i8*, i32) #2

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
