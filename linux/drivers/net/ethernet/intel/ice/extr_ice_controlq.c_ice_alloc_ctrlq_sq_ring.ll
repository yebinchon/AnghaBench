; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_controlq.c_ice_alloc_ctrlq_sq_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_controlq.c_ice_alloc_ctrlq_sq_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32 }
%struct.ice_ctl_q_info = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@ICE_ERR_NO_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_hw*, %struct.ice_ctl_q_info*)* @ice_alloc_ctrlq_sq_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_alloc_ctrlq_sq_ring(%struct.ice_hw* %0, %struct.ice_ctl_q_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ice_hw*, align 8
  %5 = alloca %struct.ice_ctl_q_info*, align 8
  %6 = alloca i64, align 8
  store %struct.ice_hw* %0, %struct.ice_hw** %4, align 8
  store %struct.ice_ctl_q_info* %1, %struct.ice_ctl_q_info** %5, align 8
  %7 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %5, align 8
  %8 = getelementptr inbounds %struct.ice_ctl_q_info, %struct.ice_ctl_q_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 4
  store i64 %11, i64* %6, align 8
  %12 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %13 = call i32 @ice_hw_to_dev(%struct.ice_hw* %12)
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %5, align 8
  %16 = getelementptr inbounds %struct.ice_ctl_q_info, %struct.ice_ctl_q_info* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = load i32, i32* @__GFP_ZERO, align 4
  %21 = or i32 %19, %20
  %22 = call i32* @dmam_alloc_coherent(i32 %13, i64 %14, i32* %18, i32 %21)
  %23 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %5, align 8
  %24 = getelementptr inbounds %struct.ice_ctl_q_info, %struct.ice_ctl_q_info* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  store i32* %22, i32** %26, align 8
  %27 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %5, align 8
  %28 = getelementptr inbounds %struct.ice_ctl_q_info, %struct.ice_ctl_q_info* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %2
  %34 = load i32, i32* @ICE_ERR_NO_MEMORY, align 4
  store i32 %34, i32* %3, align 4
  br label %89

35:                                               ; preds = %2
  %36 = load i64, i64* %6, align 8
  %37 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %5, align 8
  %38 = getelementptr inbounds %struct.ice_ctl_q_info, %struct.ice_ctl_q_info* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i64 %36, i64* %40, align 8
  %41 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %42 = call i32 @ice_hw_to_dev(%struct.ice_hw* %41)
  %43 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %5, align 8
  %44 = getelementptr inbounds %struct.ice_ctl_q_info, %struct.ice_ctl_q_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call i32 @devm_kcalloc(i32 %42, i32 %45, i32 4, i32 %46)
  %48 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %5, align 8
  %49 = getelementptr inbounds %struct.ice_ctl_q_info, %struct.ice_ctl_q_info* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 8
  %51 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %5, align 8
  %52 = getelementptr inbounds %struct.ice_ctl_q_info, %struct.ice_ctl_q_info* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %88, label %56

56:                                               ; preds = %35
  %57 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %58 = call i32 @ice_hw_to_dev(%struct.ice_hw* %57)
  %59 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %5, align 8
  %60 = getelementptr inbounds %struct.ice_ctl_q_info, %struct.ice_ctl_q_info* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %5, align 8
  %65 = getelementptr inbounds %struct.ice_ctl_q_info, %struct.ice_ctl_q_info* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %5, align 8
  %70 = getelementptr inbounds %struct.ice_ctl_q_info, %struct.ice_ctl_q_info* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @dmam_free_coherent(i32 %58, i64 %63, i32* %68, i32 %73)
  %75 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %5, align 8
  %76 = getelementptr inbounds %struct.ice_ctl_q_info, %struct.ice_ctl_q_info* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 2
  store i32* null, i32** %78, align 8
  %79 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %5, align 8
  %80 = getelementptr inbounds %struct.ice_ctl_q_info, %struct.ice_ctl_q_info* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  store i32 0, i32* %82, align 8
  %83 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %5, align 8
  %84 = getelementptr inbounds %struct.ice_ctl_q_info, %struct.ice_ctl_q_info* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  store i64 0, i64* %86, align 8
  %87 = load i32, i32* @ICE_ERR_NO_MEMORY, align 4
  store i32 %87, i32* %3, align 4
  br label %89

88:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %88, %56, %33
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32* @dmam_alloc_coherent(i32, i64, i32*, i32) #1

declare dso_local i32 @ice_hw_to_dev(%struct.ice_hw*) #1

declare dso_local i32 @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i32 @dmam_free_coherent(i32, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
