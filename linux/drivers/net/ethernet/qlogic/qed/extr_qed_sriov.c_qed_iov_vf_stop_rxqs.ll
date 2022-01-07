; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_vf_stop_rxqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_vf_stop_rxqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_vf_info = type { i32, i32, %struct.qed_vf_queue* }
%struct.qed_vf_queue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i64 }
%struct.qed_queue_cid = type { i32 }

@QED_IOV_VALIDATE_Q_NA = common dso_local global i32 0, align 4
@QED_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"VF[%d] Tried Closing Rx 0x%04x.%02x which is inactive\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"VF[%d] - Tried Closing Rx 0x%04x.%02x, but Rx is at %04x.%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_vf_info*, i64, i64, i32)* @qed_iov_vf_stop_rxqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_iov_vf_stop_rxqs(%struct.qed_hwfn* %0, %struct.qed_vf_info* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qed_hwfn*, align 8
  %8 = alloca %struct.qed_vf_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.qed_vf_queue*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.qed_queue_cid*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %7, align 8
  store %struct.qed_vf_info* %1, %struct.qed_vf_info** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %15 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %16 = load %struct.qed_vf_info*, %struct.qed_vf_info** %8, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load i32, i32* @QED_IOV_VALIDATE_Q_NA, align 4
  %19 = call i32 @qed_iov_validate_rxq(%struct.qed_hwfn* %15, %struct.qed_vf_info* %16, i64 %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %5
  %22 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %23 = load i32, i32* @QED_MSG_IOV, align 4
  %24 = load %struct.qed_vf_info*, %struct.qed_vf_info** %8, align 8
  %25 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* %10, align 8
  %29 = call i32 (%struct.qed_hwfn*, i32, i8*, i32, i64, i64, ...) @DP_VERBOSE(%struct.qed_hwfn* %22, i32 %23, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %26, i64 %27, i64 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %98

32:                                               ; preds = %5
  %33 = load %struct.qed_vf_info*, %struct.qed_vf_info** %8, align 8
  %34 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %33, i32 0, i32 2
  %35 = load %struct.qed_vf_queue*, %struct.qed_vf_queue** %34, align 8
  %36 = load i64, i64* %9, align 8
  %37 = getelementptr inbounds %struct.qed_vf_queue, %struct.qed_vf_queue* %35, i64 %36
  store %struct.qed_vf_queue* %37, %struct.qed_vf_queue** %12, align 8
  %38 = load %struct.qed_vf_queue*, %struct.qed_vf_queue** %12, align 8
  %39 = getelementptr inbounds %struct.qed_vf_queue, %struct.qed_vf_queue* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i64, i64* %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %55

46:                                               ; preds = %32
  %47 = load %struct.qed_vf_queue*, %struct.qed_vf_queue** %12, align 8
  %48 = getelementptr inbounds %struct.qed_vf_queue, %struct.qed_vf_queue* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %72

55:                                               ; preds = %46, %32
  %56 = load %struct.qed_vf_queue*, %struct.qed_vf_queue** %12, align 8
  %57 = call %struct.qed_queue_cid* @qed_iov_get_vf_rx_queue_cid(%struct.qed_vf_queue* %56)
  store %struct.qed_queue_cid* %57, %struct.qed_queue_cid** %14, align 8
  %58 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %59 = load i32, i32* @QED_MSG_IOV, align 4
  %60 = load %struct.qed_vf_info*, %struct.qed_vf_info** %8, align 8
  %61 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* %10, align 8
  %65 = load i64, i64* %9, align 8
  %66 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %14, align 8
  %67 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (%struct.qed_hwfn*, i32, i8*, i32, i64, i64, ...) @DP_VERBOSE(%struct.qed_hwfn* %58, i32 %59, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %62, i64 %63, i64 %64, i64 %65, i32 %68)
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %6, align 4
  br label %98

72:                                               ; preds = %46
  %73 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %74 = load %struct.qed_vf_queue*, %struct.qed_vf_queue** %12, align 8
  %75 = getelementptr inbounds %struct.qed_vf_queue, %struct.qed_vf_queue* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i64, i64* %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @qed_eth_rx_queue_stop(%struct.qed_hwfn* %73, i32* %80, i32 0, i32 %81)
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %13, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %72
  %86 = load i32, i32* %13, align 4
  store i32 %86, i32* %6, align 4
  br label %98

87:                                               ; preds = %72
  %88 = load %struct.qed_vf_queue*, %struct.qed_vf_queue** %12, align 8
  %89 = getelementptr inbounds %struct.qed_vf_queue, %struct.qed_vf_queue* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = load i64, i64* %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  store i32* null, i32** %93, align 8
  %94 = load %struct.qed_vf_info*, %struct.qed_vf_info** %8, align 8
  %95 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %95, align 8
  store i32 0, i32* %6, align 4
  br label %98

98:                                               ; preds = %87, %85, %55, %21
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local i32 @qed_iov_validate_rxq(%struct.qed_hwfn*, %struct.qed_vf_info*, i64, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32, i64, i64, ...) #1

declare dso_local %struct.qed_queue_cid* @qed_iov_get_vf_rx_queue_cid(%struct.qed_vf_queue*) #1

declare dso_local i32 @qed_eth_rx_queue_stop(%struct.qed_hwfn*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
