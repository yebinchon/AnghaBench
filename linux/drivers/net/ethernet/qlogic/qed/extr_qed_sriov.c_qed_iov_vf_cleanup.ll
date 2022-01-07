; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_vf_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_vf_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_vf_info = type { i32, i32, i32, %struct.qed_vf_queue*, i64, i32, i32, i32, i64, i64, i64 }
%struct.qed_vf_queue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@QED_MAX_VF_CHAINS_PER_PF = common dso_local global i64 0, align 8
@MAX_QUEUES_PER_QZONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.qed_vf_info*)* @qed_iov_vf_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_iov_vf_cleanup(%struct.qed_hwfn* %0, %struct.qed_vf_info* %1) #0 {
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca %struct.qed_vf_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.qed_vf_queue*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  store %struct.qed_vf_info* %1, %struct.qed_vf_info** %4, align 8
  %8 = load %struct.qed_vf_info*, %struct.qed_vf_info** %4, align 8
  %9 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %8, i32 0, i32 10
  store i64 0, i64* %9, align 8
  %10 = load %struct.qed_vf_info*, %struct.qed_vf_info** %4, align 8
  %11 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %10, i32 0, i32 9
  store i64 0, i64* %11, align 8
  %12 = load %struct.qed_vf_info*, %struct.qed_vf_info** %4, align 8
  %13 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %12, i32 0, i32 8
  store i64 0, i64* %13, align 8
  %14 = load %struct.qed_vf_info*, %struct.qed_vf_info** %4, align 8
  %15 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.qed_vf_info*, %struct.qed_vf_info** %4, align 8
  %18 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %17, i32 0, i32 7
  store i32 %16, i32* %18, align 8
  %19 = load %struct.qed_vf_info*, %struct.qed_vf_info** %4, align 8
  %20 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.qed_vf_info*, %struct.qed_vf_info** %4, align 8
  %23 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %22, i32 0, i32 6
  store i32 %21, i32* %23, align 4
  %24 = load %struct.qed_vf_info*, %struct.qed_vf_info** %4, align 8
  %25 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %24, i32 0, i32 4
  store i64 0, i64* %25, align 8
  store i64 0, i64* %5, align 8
  br label %26

26:                                               ; preds = %70, %2
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @QED_MAX_VF_CHAINS_PER_PF, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %73

30:                                               ; preds = %26
  %31 = load %struct.qed_vf_info*, %struct.qed_vf_info** %4, align 8
  %32 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %31, i32 0, i32 3
  %33 = load %struct.qed_vf_queue*, %struct.qed_vf_queue** %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds %struct.qed_vf_queue, %struct.qed_vf_queue* %33, i64 %34
  store %struct.qed_vf_queue* %35, %struct.qed_vf_queue** %7, align 8
  store i64 0, i64* %6, align 8
  br label %36

36:                                               ; preds = %66, %30
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @MAX_QUEUES_PER_QZONE, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %69

40:                                               ; preds = %36
  %41 = load %struct.qed_vf_queue*, %struct.qed_vf_queue** %7, align 8
  %42 = getelementptr inbounds %struct.qed_vf_queue, %struct.qed_vf_queue* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %40
  br label %66

50:                                               ; preds = %40
  %51 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %52 = load %struct.qed_vf_queue*, %struct.qed_vf_queue** %7, align 8
  %53 = getelementptr inbounds %struct.qed_vf_queue, %struct.qed_vf_queue* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i64, i64* %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @qed_eth_queue_cid_release(%struct.qed_hwfn* %51, i32* %58)
  %60 = load %struct.qed_vf_queue*, %struct.qed_vf_queue** %7, align 8
  %61 = getelementptr inbounds %struct.qed_vf_queue, %struct.qed_vf_queue* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i64, i64* %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i32* null, i32** %65, align 8
  br label %66

66:                                               ; preds = %50, %49
  %67 = load i64, i64* %6, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %6, align 8
  br label %36

69:                                               ; preds = %36
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %5, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %5, align 8
  br label %26

73:                                               ; preds = %26
  %74 = load %struct.qed_vf_info*, %struct.qed_vf_info** %4, align 8
  %75 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %74, i32 0, i32 2
  %76 = call i32 @memset(i32* %75, i32 0, i32 4)
  %77 = load %struct.qed_vf_info*, %struct.qed_vf_info** %4, align 8
  %78 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %77, i32 0, i32 1
  %79 = call i32 @memset(i32* %78, i32 0, i32 4)
  %80 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %81 = load %struct.qed_vf_info*, %struct.qed_vf_info** %4, align 8
  %82 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @qed_iov_clean_vf(%struct.qed_hwfn* %80, i32 %83)
  ret void
}

declare dso_local i32 @qed_eth_queue_cid_release(%struct.qed_hwfn*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @qed_iov_clean_vf(%struct.qed_hwfn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
