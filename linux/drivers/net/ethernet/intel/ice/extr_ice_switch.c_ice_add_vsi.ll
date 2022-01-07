; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_switch.c_ice_add_vsi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_switch.c_ice_add_vsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32 }
%struct.ice_vsi_ctx = type { i64 }
%struct.ice_sq_cd = type { i32 }

@ICE_MAX_VSI = common dso_local global i64 0, align 8
@ICE_ERR_PARAM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ICE_ERR_NO_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_add_vsi(%struct.ice_hw* %0, i64 %1, %struct.ice_vsi_ctx* %2, %struct.ice_sq_cd* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ice_hw*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ice_vsi_ctx*, align 8
  %9 = alloca %struct.ice_sq_cd*, align 8
  %10 = alloca %struct.ice_vsi_ctx*, align 8
  %11 = alloca i32, align 4
  store %struct.ice_hw* %0, %struct.ice_hw** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.ice_vsi_ctx* %2, %struct.ice_vsi_ctx** %8, align 8
  store %struct.ice_sq_cd* %3, %struct.ice_sq_cd** %9, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @ICE_MAX_VSI, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %16, i32* %5, align 4
  br label %70

17:                                               ; preds = %4
  %18 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %19 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %8, align 8
  %20 = load %struct.ice_sq_cd*, %struct.ice_sq_cd** %9, align 8
  %21 = call i32 @ice_aq_add_vsi(%struct.ice_hw* %18, %struct.ice_vsi_ctx* %19, %struct.ice_sq_cd* %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %5, align 4
  br label %70

26:                                               ; preds = %17
  %27 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call %struct.ice_vsi_ctx* @ice_get_vsi_ctx(%struct.ice_hw* %27, i64 %28)
  store %struct.ice_vsi_ctx* %29, %struct.ice_vsi_ctx** %10, align 8
  %30 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %10, align 8
  %31 = icmp ne %struct.ice_vsi_ctx* %30, null
  br i1 %31, label %54, label %32

32:                                               ; preds = %26
  %33 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %34 = call i32 @ice_hw_to_dev(%struct.ice_hw* %33)
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.ice_vsi_ctx* @devm_kzalloc(i32 %34, i32 8, i32 %35)
  store %struct.ice_vsi_ctx* %36, %struct.ice_vsi_ctx** %10, align 8
  %37 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %10, align 8
  %38 = icmp ne %struct.ice_vsi_ctx* %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %32
  %40 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %41 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %8, align 8
  %42 = load %struct.ice_sq_cd*, %struct.ice_sq_cd** %9, align 8
  %43 = call i32 @ice_aq_free_vsi(%struct.ice_hw* %40, %struct.ice_vsi_ctx* %41, i32 0, %struct.ice_sq_cd* %42)
  %44 = load i32, i32* @ICE_ERR_NO_MEMORY, align 4
  store i32 %44, i32* %5, align 4
  br label %70

45:                                               ; preds = %32
  %46 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %10, align 8
  %47 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %8, align 8
  %48 = bitcast %struct.ice_vsi_ctx* %46 to i8*
  %49 = bitcast %struct.ice_vsi_ctx* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %48, i8* align 8 %49, i64 8, i1 false)
  %50 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %10, align 8
  %53 = call i32 @ice_save_vsi_ctx(%struct.ice_hw* %50, i64 %51, %struct.ice_vsi_ctx* %52)
  br label %69

54:                                               ; preds = %26
  %55 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %10, align 8
  %56 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %8, align 8
  %59 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %57, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %54
  %63 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %8, align 8
  %64 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %10, align 8
  %67 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  br label %68

68:                                               ; preds = %62, %54
  br label %69

69:                                               ; preds = %68, %45
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %69, %39, %24, %15
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @ice_aq_add_vsi(%struct.ice_hw*, %struct.ice_vsi_ctx*, %struct.ice_sq_cd*) #1

declare dso_local %struct.ice_vsi_ctx* @ice_get_vsi_ctx(%struct.ice_hw*, i64) #1

declare dso_local %struct.ice_vsi_ctx* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @ice_hw_to_dev(%struct.ice_hw*) #1

declare dso_local i32 @ice_aq_free_vsi(%struct.ice_hw*, %struct.ice_vsi_ctx*, i32, %struct.ice_sq_cd*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ice_save_vsi_ctx(%struct.ice_hw*, i64, %struct.ice_vsi_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
