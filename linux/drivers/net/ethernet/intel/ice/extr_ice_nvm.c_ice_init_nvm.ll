; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_nvm.c_ice_init_nvm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_nvm.c_ice_init_nvm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { %struct.ice_nvm_info }
%struct.ice_nvm_info = type { i32, i32, i32, i32 }

@GLNVM_GENS = common dso_local global i32 0, align 4
@GLNVM_GENS_SR_SIZE_M = common dso_local global i32 0, align 4
@GLNVM_GENS_SR_SIZE_S = common dso_local global i32 0, align 4
@ICE_SR_WORDS_IN_1KB = common dso_local global i32 0, align 4
@GLNVM_FLA = common dso_local global i32 0, align 4
@GLNVM_FLA_LOCKED_M = common dso_local global i32 0, align 4
@ICE_ERR_NVM_BLANK_MODE = common dso_local global i32 0, align 4
@ICE_DBG_NVM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"NVM init error: unsupported blank mode.\0A\00", align 1
@ICE_SR_NVM_DEV_STARTER_VER = common dso_local global i32 0, align 4
@ICE_DBG_INIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to read DEV starter version.\0A\00", align 1
@ICE_SR_NVM_EETRACK_LO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to read EETRACK lo.\0A\00", align 1
@ICE_SR_NVM_EETRACK_HI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Failed to read EETRACK hi.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_init_nvm(%struct.ice_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ice_hw*, align 8
  %4 = alloca %struct.ice_nvm_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ice_hw* %0, %struct.ice_hw** %3, align 8
  %11 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %11, i32 0, i32 0
  store %struct.ice_nvm_info* %12, %struct.ice_nvm_info** %4, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %14 = load i32, i32* @GLNVM_GENS, align 4
  %15 = call i32 @rd32(%struct.ice_hw* %13, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @GLNVM_GENS_SR_SIZE_M, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @GLNVM_GENS_SR_SIZE_S, align 4
  %20 = ashr i32 %18, %19
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @BIT(i32 %21)
  %23 = load i32, i32* @ICE_SR_WORDS_IN_1KB, align 4
  %24 = mul nsw i32 %22, %23
  %25 = load %struct.ice_nvm_info*, %struct.ice_nvm_info** %4, align 8
  %26 = getelementptr inbounds %struct.ice_nvm_info, %struct.ice_nvm_info* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %28 = load i32, i32* @GLNVM_FLA, align 4
  %29 = call i32 @rd32(%struct.ice_hw* %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @GLNVM_FLA_LOCKED_M, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %1
  %35 = load %struct.ice_nvm_info*, %struct.ice_nvm_info** %4, align 8
  %36 = getelementptr inbounds %struct.ice_nvm_info, %struct.ice_nvm_info* %35, i32 0, i32 1
  store i32 0, i32* %36, align 4
  br label %45

37:                                               ; preds = %1
  %38 = load %struct.ice_nvm_info*, %struct.ice_nvm_info** %4, align 8
  %39 = getelementptr inbounds %struct.ice_nvm_info, %struct.ice_nvm_info* %38, i32 0, i32 1
  store i32 1, i32* %39, align 4
  %40 = load i32, i32* @ICE_ERR_NVM_BLANK_MODE, align 4
  store i32 %40, i32* %7, align 4
  %41 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %42 = load i32, i32* @ICE_DBG_NVM, align 4
  %43 = call i32 @ice_debug(%struct.ice_hw* %41, i32 %42, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %2, align 4
  br label %90

45:                                               ; preds = %34
  %46 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %47 = load i32, i32* @ICE_SR_NVM_DEV_STARTER_VER, align 4
  %48 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %49 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.ice_nvm_info, %struct.ice_nvm_info* %49, i32 0, i32 2
  %51 = call i32 @ice_read_sr_word(%struct.ice_hw* %46, i32 %47, i32* %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %45
  %55 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %56 = load i32, i32* @ICE_DBG_INIT, align 4
  %57 = call i32 @ice_debug(%struct.ice_hw* %55, i32 %56, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %2, align 4
  br label %90

59:                                               ; preds = %45
  %60 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %61 = load i32, i32* @ICE_SR_NVM_EETRACK_LO, align 4
  %62 = call i32 @ice_read_sr_word(%struct.ice_hw* %60, i32 %61, i32* %5)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  %66 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %67 = load i32, i32* @ICE_DBG_INIT, align 4
  %68 = call i32 @ice_debug(%struct.ice_hw* %66, i32 %67, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %2, align 4
  br label %90

70:                                               ; preds = %59
  %71 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %72 = load i32, i32* @ICE_SR_NVM_EETRACK_HI, align 4
  %73 = call i32 @ice_read_sr_word(%struct.ice_hw* %71, i32 %72, i32* %6)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %70
  %77 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %78 = load i32, i32* @ICE_DBG_INIT, align 4
  %79 = call i32 @ice_debug(%struct.ice_hw* %77, i32 %78, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %2, align 4
  br label %90

81:                                               ; preds = %70
  %82 = load i32, i32* %6, align 4
  %83 = shl i32 %82, 16
  %84 = load i32, i32* %5, align 4
  %85 = or i32 %83, %84
  %86 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %87 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.ice_nvm_info, %struct.ice_nvm_info* %87, i32 0, i32 3
  store i32 %85, i32* %88, align 4
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %81, %76, %65, %54, %37
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @rd32(%struct.ice_hw*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ice_debug(%struct.ice_hw*, i32, i8*) #1

declare dso_local i32 @ice_read_sr_word(%struct.ice_hw*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
