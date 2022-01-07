; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_sched.c_ice_alloc_lan_q_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_sched.c_ice_alloc_lan_q_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32 }
%struct.ice_vsi_ctx = type { i64*, %struct.ice_q_ctx** }
%struct.ice_q_ctx = type { i32 }

@ICE_ERR_PARAM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ICE_ERR_NO_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_hw*, i64, i64, i64)* @ice_alloc_lan_q_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_alloc_lan_q_ctx(%struct.ice_hw* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ice_hw*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ice_vsi_ctx*, align 8
  %11 = alloca %struct.ice_q_ctx*, align 8
  %12 = alloca i64, align 8
  store %struct.ice_hw* %0, %struct.ice_hw** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call %struct.ice_vsi_ctx* @ice_get_vsi_ctx(%struct.ice_hw* %13, i64 %14)
  store %struct.ice_vsi_ctx* %15, %struct.ice_vsi_ctx** %10, align 8
  %16 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %10, align 8
  %17 = icmp ne %struct.ice_vsi_ctx* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %19, i32* %5, align 4
  br label %115

20:                                               ; preds = %4
  %21 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %10, align 8
  %22 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %21, i32 0, i32 1
  %23 = load %struct.ice_q_ctx**, %struct.ice_q_ctx*** %22, align 8
  %24 = load i64, i64* %8, align 8
  %25 = getelementptr inbounds %struct.ice_q_ctx*, %struct.ice_q_ctx** %23, i64 %24
  %26 = load %struct.ice_q_ctx*, %struct.ice_q_ctx** %25, align 8
  %27 = icmp ne %struct.ice_q_ctx* %26, null
  br i1 %27, label %56, label %28

28:                                               ; preds = %20
  %29 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %30 = call i32 @ice_hw_to_dev(%struct.ice_hw* %29)
  %31 = load i64, i64* %9, align 8
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i8* @devm_kcalloc(i32 %30, i64 %31, i32 4, i32 %32)
  %34 = bitcast i8* %33 to %struct.ice_q_ctx*
  %35 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %10, align 8
  %36 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %35, i32 0, i32 1
  %37 = load %struct.ice_q_ctx**, %struct.ice_q_ctx*** %36, align 8
  %38 = load i64, i64* %8, align 8
  %39 = getelementptr inbounds %struct.ice_q_ctx*, %struct.ice_q_ctx** %37, i64 %38
  store %struct.ice_q_ctx* %34, %struct.ice_q_ctx** %39, align 8
  %40 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %10, align 8
  %41 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %40, i32 0, i32 1
  %42 = load %struct.ice_q_ctx**, %struct.ice_q_ctx*** %41, align 8
  %43 = load i64, i64* %8, align 8
  %44 = getelementptr inbounds %struct.ice_q_ctx*, %struct.ice_q_ctx** %42, i64 %43
  %45 = load %struct.ice_q_ctx*, %struct.ice_q_ctx** %44, align 8
  %46 = icmp ne %struct.ice_q_ctx* %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %28
  %48 = load i32, i32* @ICE_ERR_NO_MEMORY, align 4
  store i32 %48, i32* %5, align 4
  br label %115

49:                                               ; preds = %28
  %50 = load i64, i64* %9, align 8
  %51 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %10, align 8
  %52 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = load i64, i64* %8, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  store i64 %50, i64* %55, align 8
  store i32 0, i32* %5, align 4
  br label %115

56:                                               ; preds = %20
  %57 = load i64, i64* %9, align 8
  %58 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %10, align 8
  %59 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = load i64, i64* %8, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %57, %63
  br i1 %64, label %65, label %114

65:                                               ; preds = %56
  %66 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %10, align 8
  %67 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = load i64, i64* %8, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %12, align 8
  %72 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %73 = call i32 @ice_hw_to_dev(%struct.ice_hw* %72)
  %74 = load i64, i64* %9, align 8
  %75 = load i32, i32* @GFP_KERNEL, align 4
  %76 = call i8* @devm_kcalloc(i32 %73, i64 %74, i32 4, i32 %75)
  %77 = bitcast i8* %76 to %struct.ice_q_ctx*
  store %struct.ice_q_ctx* %77, %struct.ice_q_ctx** %11, align 8
  %78 = load %struct.ice_q_ctx*, %struct.ice_q_ctx** %11, align 8
  %79 = icmp ne %struct.ice_q_ctx* %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %65
  %81 = load i32, i32* @ICE_ERR_NO_MEMORY, align 4
  store i32 %81, i32* %5, align 4
  br label %115

82:                                               ; preds = %65
  %83 = load %struct.ice_q_ctx*, %struct.ice_q_ctx** %11, align 8
  %84 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %10, align 8
  %85 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %84, i32 0, i32 1
  %86 = load %struct.ice_q_ctx**, %struct.ice_q_ctx*** %85, align 8
  %87 = load i64, i64* %8, align 8
  %88 = getelementptr inbounds %struct.ice_q_ctx*, %struct.ice_q_ctx** %86, i64 %87
  %89 = load %struct.ice_q_ctx*, %struct.ice_q_ctx** %88, align 8
  %90 = load i64, i64* %12, align 8
  %91 = mul i64 %90, 4
  %92 = call i32 @memcpy(%struct.ice_q_ctx* %83, %struct.ice_q_ctx* %89, i64 %91)
  %93 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %94 = call i32 @ice_hw_to_dev(%struct.ice_hw* %93)
  %95 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %10, align 8
  %96 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %95, i32 0, i32 1
  %97 = load %struct.ice_q_ctx**, %struct.ice_q_ctx*** %96, align 8
  %98 = load i64, i64* %8, align 8
  %99 = getelementptr inbounds %struct.ice_q_ctx*, %struct.ice_q_ctx** %97, i64 %98
  %100 = load %struct.ice_q_ctx*, %struct.ice_q_ctx** %99, align 8
  %101 = call i32 @devm_kfree(i32 %94, %struct.ice_q_ctx* %100)
  %102 = load %struct.ice_q_ctx*, %struct.ice_q_ctx** %11, align 8
  %103 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %10, align 8
  %104 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %103, i32 0, i32 1
  %105 = load %struct.ice_q_ctx**, %struct.ice_q_ctx*** %104, align 8
  %106 = load i64, i64* %8, align 8
  %107 = getelementptr inbounds %struct.ice_q_ctx*, %struct.ice_q_ctx** %105, i64 %106
  store %struct.ice_q_ctx* %102, %struct.ice_q_ctx** %107, align 8
  %108 = load i64, i64* %9, align 8
  %109 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %10, align 8
  %110 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %109, i32 0, i32 0
  %111 = load i64*, i64** %110, align 8
  %112 = load i64, i64* %8, align 8
  %113 = getelementptr inbounds i64, i64* %111, i64 %112
  store i64 %108, i64* %113, align 8
  br label %114

114:                                              ; preds = %82, %56
  store i32 0, i32* %5, align 4
  br label %115

115:                                              ; preds = %114, %80, %49, %47, %18
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local %struct.ice_vsi_ctx* @ice_get_vsi_ctx(%struct.ice_hw*, i64) #1

declare dso_local i8* @devm_kcalloc(i32, i64, i32, i32) #1

declare dso_local i32 @ice_hw_to_dev(%struct.ice_hw*) #1

declare dso_local i32 @memcpy(%struct.ice_q_ctx*, %struct.ice_q_ctx*, i64) #1

declare dso_local i32 @devm_kfree(i32, %struct.ice_q_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
