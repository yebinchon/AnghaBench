; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_nvm.c_i40e_init_nvm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_nvm.c_i40e_init_nvm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { %struct.i40e_nvm_info }
%struct.i40e_nvm_info = type { i32, i32, i32 }

@I40E_GLNVM_GENS = common dso_local global i32 0, align 4
@I40E_GLNVM_GENS_SR_SIZE_MASK = common dso_local global i32 0, align 4
@I40E_GLNVM_GENS_SR_SIZE_SHIFT = common dso_local global i32 0, align 4
@I40E_SR_WORDS_IN_1KB = common dso_local global i32 0, align 4
@I40E_GLNVM_FLA = common dso_local global i32 0, align 4
@I40E_GLNVM_FLA_LOCKED_MASK = common dso_local global i32 0, align 4
@I40E_MAX_NVM_TIMEOUT = common dso_local global i32 0, align 4
@I40E_ERR_NVM_BLANK_MODE = common dso_local global i32 0, align 4
@I40E_DEBUG_NVM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"NVM init error: unsupported blank mode.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_init_nvm(%struct.i40e_hw* %0) #0 {
  %2 = alloca %struct.i40e_hw*, align 8
  %3 = alloca %struct.i40e_nvm_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %2, align 8
  %8 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %9 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %8, i32 0, i32 0
  store %struct.i40e_nvm_info* %9, %struct.i40e_nvm_info** %3, align 8
  store i32 0, i32* %4, align 4
  %10 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %11 = load i32, i32* @I40E_GLNVM_GENS, align 4
  %12 = call i32 @rd32(%struct.i40e_hw* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @I40E_GLNVM_GENS_SR_SIZE_MASK, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @I40E_GLNVM_GENS_SR_SIZE_SHIFT, align 4
  %17 = ashr i32 %15, %16
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @BIT(i32 %18)
  %20 = load i32, i32* @I40E_SR_WORDS_IN_1KB, align 4
  %21 = mul nsw i32 %19, %20
  %22 = load %struct.i40e_nvm_info*, %struct.i40e_nvm_info** %3, align 8
  %23 = getelementptr inbounds %struct.i40e_nvm_info, %struct.i40e_nvm_info* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %25 = load i32, i32* @I40E_GLNVM_FLA, align 4
  %26 = call i32 @rd32(%struct.i40e_hw* %24, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @I40E_GLNVM_FLA_LOCKED_MASK, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %1
  %32 = load i32, i32* @I40E_MAX_NVM_TIMEOUT, align 4
  %33 = load %struct.i40e_nvm_info*, %struct.i40e_nvm_info** %3, align 8
  %34 = getelementptr inbounds %struct.i40e_nvm_info, %struct.i40e_nvm_info* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.i40e_nvm_info*, %struct.i40e_nvm_info** %3, align 8
  %36 = getelementptr inbounds %struct.i40e_nvm_info, %struct.i40e_nvm_info* %35, i32 0, i32 1
  store i32 0, i32* %36, align 4
  br label %44

37:                                               ; preds = %1
  %38 = load %struct.i40e_nvm_info*, %struct.i40e_nvm_info** %3, align 8
  %39 = getelementptr inbounds %struct.i40e_nvm_info, %struct.i40e_nvm_info* %38, i32 0, i32 1
  store i32 1, i32* %39, align 4
  %40 = load i32, i32* @I40E_ERR_NVM_BLANK_MODE, align 4
  store i32 %40, i32* %4, align 4
  %41 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %42 = load i32, i32* @I40E_DEBUG_NVM, align 4
  %43 = call i32 @i40e_debug(%struct.i40e_hw* %41, i32 %42, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %37, %31
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @i40e_debug(%struct.i40e_hw*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
