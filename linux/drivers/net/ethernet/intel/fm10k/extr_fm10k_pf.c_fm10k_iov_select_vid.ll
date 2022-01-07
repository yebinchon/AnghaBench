; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pf.c_fm10k_iov_select_vid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pf.c_fm10k_iov_select_vid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_vf_info = type { i64, i64 }

@FM10K_ERR_PARAM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fm10k_iov_select_vid(%struct.fm10k_vf_info* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.fm10k_vf_info*, align 8
  %5 = alloca i64, align 8
  store %struct.fm10k_vf_info* %0, %struct.fm10k_vf_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %2
  %9 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %4, align 8
  %10 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %4, align 8
  %15 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  br label %21

17:                                               ; preds = %8
  %18 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %4, align 8
  %19 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  br label %21

21:                                               ; preds = %17, %13
  %22 = phi i64 [ %16, %13 ], [ %20, %17 ]
  store i64 %22, i64* %3, align 8
  br label %38

23:                                               ; preds = %2
  %24 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %4, align 8
  %25 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load i64, i64* %5, align 8
  %30 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %4, align 8
  %31 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i64, i64* @FM10K_ERR_PARAM, align 8
  store i64 %35, i64* %3, align 8
  br label %38

36:                                               ; preds = %28, %23
  %37 = load i64, i64* %5, align 8
  store i64 %37, i64* %3, align 8
  br label %38

38:                                               ; preds = %36, %34, %21
  %39 = load i64, i64* %3, align 8
  ret i64 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
