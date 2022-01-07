; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_iov.c_fm10k_iov_update_pvid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_iov.c_fm10k_iov_update_pvid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_intfc = type { %struct.fm10k_hw, %struct.fm10k_iov_data* }
%struct.fm10k_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.fm10k_hw.0*, %struct.fm10k_vf_info*)* }
%struct.fm10k_hw.0 = type opaque
%struct.fm10k_vf_info = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.fm10k_iov_data = type { i64, %struct.fm10k_vf_info* }

@FM10K_DGLORTMAP_NONE = common dso_local global i64 0, align 8
@FM10K_ERR_PARAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fm10k_iov_update_pvid(%struct.fm10k_intfc* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fm10k_intfc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.fm10k_iov_data*, align 8
  %9 = alloca %struct.fm10k_hw*, align 8
  %10 = alloca %struct.fm10k_vf_info*, align 8
  %11 = alloca i64, align 8
  store %struct.fm10k_intfc* %0, %struct.fm10k_intfc** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %5, align 8
  %13 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %12, i32 0, i32 1
  %14 = load %struct.fm10k_iov_data*, %struct.fm10k_iov_data** %13, align 8
  store %struct.fm10k_iov_data* %14, %struct.fm10k_iov_data** %8, align 8
  %15 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %5, align 8
  %16 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %15, i32 0, i32 0
  store %struct.fm10k_hw* %16, %struct.fm10k_hw** %9, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.fm10k_hw*, %struct.fm10k_hw** %9, align 8
  %19 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = sub i64 %17, %21
  %23 = load i64, i64* @FM10K_DGLORTMAP_NONE, align 8
  %24 = and i64 %22, %23
  store i64 %24, i64* %11, align 8
  %25 = load %struct.fm10k_iov_data*, %struct.fm10k_iov_data** %8, align 8
  %26 = icmp ne %struct.fm10k_iov_data* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* @FM10K_ERR_PARAM, align 4
  store i32 %28, i32* %4, align 4
  br label %62

29:                                               ; preds = %3
  %30 = load i64, i64* %11, align 8
  %31 = load %struct.fm10k_iov_data*, %struct.fm10k_iov_data** %8, align 8
  %32 = getelementptr inbounds %struct.fm10k_iov_data, %struct.fm10k_iov_data* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp uge i64 %30, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @FM10K_ERR_PARAM, align 4
  store i32 %36, i32* %4, align 4
  br label %62

37:                                               ; preds = %29
  %38 = load %struct.fm10k_iov_data*, %struct.fm10k_iov_data** %8, align 8
  %39 = getelementptr inbounds %struct.fm10k_iov_data, %struct.fm10k_iov_data* %38, i32 0, i32 1
  %40 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %39, align 8
  %41 = load i64, i64* %11, align 8
  %42 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %40, i64 %41
  store %struct.fm10k_vf_info* %42, %struct.fm10k_vf_info** %10, align 8
  %43 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %10, align 8
  %44 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %37
  %49 = load i64, i64* %7, align 8
  %50 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %10, align 8
  %51 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.fm10k_hw*, %struct.fm10k_hw** %9, align 8
  %53 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32 (%struct.fm10k_hw.0*, %struct.fm10k_vf_info*)*, i32 (%struct.fm10k_hw.0*, %struct.fm10k_vf_info*)** %55, align 8
  %57 = load %struct.fm10k_hw*, %struct.fm10k_hw** %9, align 8
  %58 = bitcast %struct.fm10k_hw* %57 to %struct.fm10k_hw.0*
  %59 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %10, align 8
  %60 = call i32 %56(%struct.fm10k_hw.0* %58, %struct.fm10k_vf_info* %59)
  br label %61

61:                                               ; preds = %48, %37
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %35, %27
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
