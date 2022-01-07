; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_start_rxq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_start_rxq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i32, %struct.qed_hwfn* }
%struct.qed_hwfn = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.qed_queue_start_common_params = type { i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.qed_rxq_start_ret_params = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Failed to start RXQ#%d\0A\00", align 1
@QED_MSG_SPQ = common dso_local global i32 0, align 4
@NETIF_MSG_IFUP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"Started RX-Q %d [rss_num %d] on V-PORT %d and SB igu %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*, i32, %struct.qed_queue_start_common_params*, i32, i32, i32, i32, %struct.qed_rxq_start_ret_params*)* @qed_start_rxq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_start_rxq(%struct.qed_dev* %0, i32 %1, %struct.qed_queue_start_common_params* %2, i32 %3, i32 %4, i32 %5, i32 %6, %struct.qed_rxq_start_ret_params* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.qed_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.qed_queue_start_common_params*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.qed_rxq_start_ret_params*, align 8
  %18 = alloca %struct.qed_hwfn*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.qed_dev* %0, %struct.qed_dev** %10, align 8
  store i32 %1, i32* %11, align 4
  store %struct.qed_queue_start_common_params* %2, %struct.qed_queue_start_common_params** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store %struct.qed_rxq_start_ret_params* %7, %struct.qed_rxq_start_ret_params** %17, align 8
  %21 = load i32, i32* %11, align 4
  %22 = load %struct.qed_dev*, %struct.qed_dev** %10, align 8
  %23 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = srem i32 %21, %24
  store i32 %25, i32* %20, align 4
  %26 = load %struct.qed_dev*, %struct.qed_dev** %10, align 8
  %27 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %26, i32 0, i32 1
  %28 = load %struct.qed_hwfn*, %struct.qed_hwfn** %27, align 8
  %29 = load i32, i32* %20, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %28, i64 %30
  store %struct.qed_hwfn* %31, %struct.qed_hwfn** %18, align 8
  %32 = load %struct.qed_queue_start_common_params*, %struct.qed_queue_start_common_params** %12, align 8
  %33 = getelementptr inbounds %struct.qed_queue_start_common_params, %struct.qed_queue_start_common_params* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.qed_dev*, %struct.qed_dev** %10, align 8
  %36 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sdiv i32 %34, %37
  %39 = load %struct.qed_queue_start_common_params*, %struct.qed_queue_start_common_params** %12, align 8
  %40 = getelementptr inbounds %struct.qed_queue_start_common_params, %struct.qed_queue_start_common_params* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.qed_queue_start_common_params*, %struct.qed_queue_start_common_params** %12, align 8
  %42 = getelementptr inbounds %struct.qed_queue_start_common_params, %struct.qed_queue_start_common_params* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.qed_queue_start_common_params*, %struct.qed_queue_start_common_params** %12, align 8
  %45 = getelementptr inbounds %struct.qed_queue_start_common_params, %struct.qed_queue_start_common_params* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.qed_hwfn*, %struct.qed_hwfn** %18, align 8
  %47 = load %struct.qed_hwfn*, %struct.qed_hwfn** %18, align 8
  %48 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.qed_queue_start_common_params*, %struct.qed_queue_start_common_params** %12, align 8
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* %16, align 4
  %56 = load %struct.qed_rxq_start_ret_params*, %struct.qed_rxq_start_ret_params** %17, align 8
  %57 = call i32 @qed_eth_rx_queue_start(%struct.qed_hwfn* %46, i32 %50, %struct.qed_queue_start_common_params* %51, i32 %52, i32 %53, i32 %54, i32 %55, %struct.qed_rxq_start_ret_params* %56)
  store i32 %57, i32* %19, align 4
  %58 = load i32, i32* %19, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %8
  %61 = load %struct.qed_dev*, %struct.qed_dev** %10, align 8
  %62 = load %struct.qed_queue_start_common_params*, %struct.qed_queue_start_common_params** %12, align 8
  %63 = getelementptr inbounds %struct.qed_queue_start_common_params, %struct.qed_queue_start_common_params* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @DP_ERR(%struct.qed_dev* %61, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %19, align 4
  store i32 %66, i32* %9, align 4
  br label %85

67:                                               ; preds = %8
  %68 = load %struct.qed_dev*, %struct.qed_dev** %10, align 8
  %69 = load i32, i32* @QED_MSG_SPQ, align 4
  %70 = load i32, i32* @NETIF_MSG_IFUP, align 4
  %71 = or i32 %69, %70
  %72 = load %struct.qed_queue_start_common_params*, %struct.qed_queue_start_common_params** %12, align 8
  %73 = getelementptr inbounds %struct.qed_queue_start_common_params, %struct.qed_queue_start_common_params* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = load %struct.qed_queue_start_common_params*, %struct.qed_queue_start_common_params** %12, align 8
  %77 = getelementptr inbounds %struct.qed_queue_start_common_params, %struct.qed_queue_start_common_params* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.qed_queue_start_common_params*, %struct.qed_queue_start_common_params** %12, align 8
  %80 = getelementptr inbounds %struct.qed_queue_start_common_params, %struct.qed_queue_start_common_params* %79, i32 0, i32 1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @DP_VERBOSE(%struct.qed_dev* %68, i32 %71, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 %75, i32 %78, i32 %83)
  store i32 0, i32* %9, align 4
  br label %85

85:                                               ; preds = %67, %60
  %86 = load i32, i32* %9, align 4
  ret i32 %86
}

declare dso_local i32 @qed_eth_rx_queue_start(%struct.qed_hwfn*, i32, %struct.qed_queue_start_common_params*, i32, i32, i32, i32, %struct.qed_rxq_start_ret_params*) #1

declare dso_local i32 @DP_ERR(%struct.qed_dev*, i8*, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_dev*, i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
