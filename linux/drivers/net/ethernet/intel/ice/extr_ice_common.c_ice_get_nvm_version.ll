; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_get_nvm_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_get_nvm_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { %struct.ice_nvm_info }
%struct.ice_nvm_info = type { i32, i32 }

@ICE_OEM_VER_MASK = common dso_local global i32 0, align 4
@ICE_OEM_VER_SHIFT = common dso_local global i32 0, align 4
@ICE_OEM_VER_PATCH_MASK = common dso_local global i32 0, align 4
@ICE_OEM_VER_BUILD_MASK = common dso_local global i32 0, align 4
@ICE_OEM_VER_BUILD_SHIFT = common dso_local global i32 0, align 4
@ICE_NVM_VER_HI_MASK = common dso_local global i32 0, align 4
@ICE_NVM_VER_HI_SHIFT = common dso_local global i32 0, align 4
@ICE_NVM_VER_LO_MASK = common dso_local global i32 0, align 4
@ICE_NVM_VER_LO_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ice_get_nvm_version(%struct.ice_hw* %0, i32* %1, i64* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.ice_hw*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.ice_nvm_info*, align 8
  store %struct.ice_hw* %0, %struct.ice_hw** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64* %2, i64** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %14 = load %struct.ice_hw*, %struct.ice_hw** %7, align 8
  %15 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %14, i32 0, i32 0
  store %struct.ice_nvm_info* %15, %struct.ice_nvm_info** %13, align 8
  %16 = load %struct.ice_nvm_info*, %struct.ice_nvm_info** %13, align 8
  %17 = getelementptr inbounds %struct.ice_nvm_info, %struct.ice_nvm_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ICE_OEM_VER_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @ICE_OEM_VER_SHIFT, align 4
  %22 = ashr i32 %20, %21
  %23 = load i32*, i32** %8, align 8
  store i32 %22, i32* %23, align 4
  %24 = load %struct.ice_nvm_info*, %struct.ice_nvm_info** %13, align 8
  %25 = getelementptr inbounds %struct.ice_nvm_info, %struct.ice_nvm_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ICE_OEM_VER_PATCH_MASK, align 4
  %28 = and i32 %26, %27
  %29 = load i32*, i32** %10, align 8
  store i32 %28, i32* %29, align 4
  %30 = load %struct.ice_nvm_info*, %struct.ice_nvm_info** %13, align 8
  %31 = getelementptr inbounds %struct.ice_nvm_info, %struct.ice_nvm_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ICE_OEM_VER_BUILD_MASK, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* @ICE_OEM_VER_BUILD_SHIFT, align 4
  %36 = ashr i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = load i64*, i64** %9, align 8
  store i64 %37, i64* %38, align 8
  %39 = load %struct.ice_nvm_info*, %struct.ice_nvm_info** %13, align 8
  %40 = getelementptr inbounds %struct.ice_nvm_info, %struct.ice_nvm_info* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @ICE_NVM_VER_HI_MASK, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @ICE_NVM_VER_HI_SHIFT, align 4
  %45 = ashr i32 %43, %44
  %46 = load i32*, i32** %11, align 8
  store i32 %45, i32* %46, align 4
  %47 = load %struct.ice_nvm_info*, %struct.ice_nvm_info** %13, align 8
  %48 = getelementptr inbounds %struct.ice_nvm_info, %struct.ice_nvm_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @ICE_NVM_VER_LO_MASK, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* @ICE_NVM_VER_LO_SHIFT, align 4
  %53 = ashr i32 %51, %52
  %54 = load i32*, i32** %12, align 8
  store i32 %53, i32* %54, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
