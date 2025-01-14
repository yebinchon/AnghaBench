; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_nvm.c_i40e_nvmupd_state_reading.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_nvm.c_i40e_nvmupd_state_reading.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_nvm_access = type { i32 }

@I40E_NVMUPD_STATE_INIT = common dso_local global i32 0, align 4
@I40E_DEBUG_NVM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"NVMUPD: bad cmd %s in reading state.\0A\00", align 1
@i40e_nvm_update_state_str = common dso_local global i32* null, align 8
@I40E_NOT_SUPPORTED = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_hw*, %struct.i40e_nvm_access*, i32*, i32*)* @i40e_nvmupd_state_reading to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_nvmupd_state_reading(%struct.i40e_hw* %0, %struct.i40e_nvm_access* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca %struct.i40e_nvm_access*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %5, align 8
  store %struct.i40e_nvm_access* %1, %struct.i40e_nvm_access** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %12 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %6, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = call i32 @i40e_nvmupd_validate_command(%struct.i40e_hw* %11, %struct.i40e_nvm_access* %12, i32* %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  switch i32 %15, label %33 [
    i32 128, label %16
    i32 130, label %16
    i32 129, label %22
  ]

16:                                               ; preds = %4, %4
  %17 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %18 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %6, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = call i32 @i40e_nvmupd_nvm_read(%struct.i40e_hw* %17, %struct.i40e_nvm_access* %18, i32* %19, i32* %20)
  store i32 %21, i32* %9, align 4
  br label %46

22:                                               ; preds = %4
  %23 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %24 = load %struct.i40e_nvm_access*, %struct.i40e_nvm_access** %6, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @i40e_nvmupd_nvm_read(%struct.i40e_hw* %23, %struct.i40e_nvm_access* %24, i32* %25, i32* %26)
  store i32 %27, i32* %9, align 4
  %28 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %29 = call i32 @i40e_release_nvm(%struct.i40e_hw* %28)
  %30 = load i32, i32* @I40E_NVMUPD_STATE_INIT, align 4
  %31 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %32 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %46

33:                                               ; preds = %4
  %34 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %35 = load i32, i32* @I40E_DEBUG_NVM, align 4
  %36 = load i32*, i32** @i40e_nvm_update_state_str, align 8
  %37 = load i32, i32* %10, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @i40e_debug(%struct.i40e_hw* %34, i32 %35, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @I40E_NOT_SUPPORTED, align 4
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* @ESRCH, align 4
  %44 = sub nsw i32 0, %43
  %45 = load i32*, i32** %8, align 8
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %33, %22, %16
  %47 = load i32, i32* %9, align 4
  ret i32 %47
}

declare dso_local i32 @i40e_nvmupd_validate_command(%struct.i40e_hw*, %struct.i40e_nvm_access*, i32*) #1

declare dso_local i32 @i40e_nvmupd_nvm_read(%struct.i40e_hw*, %struct.i40e_nvm_access*, i32*, i32*) #1

declare dso_local i32 @i40e_release_nvm(%struct.i40e_hw*) #1

declare dso_local i32 @i40e_debug(%struct.i40e_hw*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
