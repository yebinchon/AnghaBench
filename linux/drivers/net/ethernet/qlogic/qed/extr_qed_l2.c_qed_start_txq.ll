; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_start_txq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_start_txq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i32, %struct.qed_hwfn* }
%struct.qed_hwfn = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.qed_queue_start_common_params = type { i32, %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.qed_txq_start_ret_params = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Failed to start TXQ#%d\0A\00", align 1
@QED_MSG_SPQ = common dso_local global i32 0, align 4
@NETIF_MSG_IFUP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"Started TX-Q %d [rss_num %d] on V-PORT %d and SB igu %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*, i32, %struct.qed_queue_start_common_params*, i32, i32, %struct.qed_txq_start_ret_params*)* @qed_start_txq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_start_txq(%struct.qed_dev* %0, i32 %1, %struct.qed_queue_start_common_params* %2, i32 %3, i32 %4, %struct.qed_txq_start_ret_params* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.qed_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.qed_queue_start_common_params*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.qed_txq_start_ret_params*, align 8
  %14 = alloca %struct.qed_hwfn*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.qed_dev* %0, %struct.qed_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.qed_queue_start_common_params* %2, %struct.qed_queue_start_common_params** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.qed_txq_start_ret_params* %5, %struct.qed_txq_start_ret_params** %13, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.qed_dev*, %struct.qed_dev** %8, align 8
  %19 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = srem i32 %17, %20
  store i32 %21, i32* %16, align 4
  %22 = load %struct.qed_dev*, %struct.qed_dev** %8, align 8
  %23 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %22, i32 0, i32 1
  %24 = load %struct.qed_hwfn*, %struct.qed_hwfn** %23, align 8
  %25 = load i32, i32* %16, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %24, i64 %26
  store %struct.qed_hwfn* %27, %struct.qed_hwfn** %14, align 8
  %28 = load %struct.qed_queue_start_common_params*, %struct.qed_queue_start_common_params** %10, align 8
  %29 = getelementptr inbounds %struct.qed_queue_start_common_params, %struct.qed_queue_start_common_params* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.qed_dev*, %struct.qed_dev** %8, align 8
  %32 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sdiv i32 %30, %33
  %35 = load %struct.qed_queue_start_common_params*, %struct.qed_queue_start_common_params** %10, align 8
  %36 = getelementptr inbounds %struct.qed_queue_start_common_params, %struct.qed_queue_start_common_params* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.qed_queue_start_common_params*, %struct.qed_queue_start_common_params** %10, align 8
  %38 = getelementptr inbounds %struct.qed_queue_start_common_params, %struct.qed_queue_start_common_params* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.qed_queue_start_common_params*, %struct.qed_queue_start_common_params** %10, align 8
  %41 = getelementptr inbounds %struct.qed_queue_start_common_params, %struct.qed_queue_start_common_params* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 8
  %42 = load %struct.qed_hwfn*, %struct.qed_hwfn** %14, align 8
  %43 = load %struct.qed_hwfn*, %struct.qed_hwfn** %14, align 8
  %44 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.qed_queue_start_common_params*, %struct.qed_queue_start_common_params** %10, align 8
  %48 = load %struct.qed_queue_start_common_params*, %struct.qed_queue_start_common_params** %10, align 8
  %49 = getelementptr inbounds %struct.qed_queue_start_common_params, %struct.qed_queue_start_common_params* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load %struct.qed_txq_start_ret_params*, %struct.qed_txq_start_ret_params** %13, align 8
  %54 = call i32 @qed_eth_tx_queue_start(%struct.qed_hwfn* %42, i32 %46, %struct.qed_queue_start_common_params* %47, i32 %50, i32 %51, i32 %52, %struct.qed_txq_start_ret_params* %53)
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %15, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %6
  %58 = load %struct.qed_dev*, %struct.qed_dev** %8, align 8
  %59 = load %struct.qed_queue_start_common_params*, %struct.qed_queue_start_common_params** %10, align 8
  %60 = getelementptr inbounds %struct.qed_queue_start_common_params, %struct.qed_queue_start_common_params* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @DP_ERR(%struct.qed_dev* %58, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %15, align 4
  store i32 %63, i32* %7, align 4
  br label %82

64:                                               ; preds = %6
  %65 = load %struct.qed_dev*, %struct.qed_dev** %8, align 8
  %66 = load i32, i32* @QED_MSG_SPQ, align 4
  %67 = load i32, i32* @NETIF_MSG_IFUP, align 4
  %68 = or i32 %66, %67
  %69 = load %struct.qed_queue_start_common_params*, %struct.qed_queue_start_common_params** %10, align 8
  %70 = getelementptr inbounds %struct.qed_queue_start_common_params, %struct.qed_queue_start_common_params* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.qed_queue_start_common_params*, %struct.qed_queue_start_common_params** %10, align 8
  %74 = getelementptr inbounds %struct.qed_queue_start_common_params, %struct.qed_queue_start_common_params* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.qed_queue_start_common_params*, %struct.qed_queue_start_common_params** %10, align 8
  %77 = getelementptr inbounds %struct.qed_queue_start_common_params, %struct.qed_queue_start_common_params* %76, i32 0, i32 1
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @DP_VERBOSE(%struct.qed_dev* %65, i32 %68, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %72, i32 %75, i32 %80)
  store i32 0, i32* %7, align 4
  br label %82

82:                                               ; preds = %64, %57
  %83 = load i32, i32* %7, align 4
  ret i32 %83
}

declare dso_local i32 @qed_eth_tx_queue_start(%struct.qed_hwfn*, i32, %struct.qed_queue_start_common_params*, i32, i32, i32, %struct.qed_txq_start_ret_params*) #1

declare dso_local i32 @DP_ERR(%struct.qed_dev*, i8*, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_dev*, i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
