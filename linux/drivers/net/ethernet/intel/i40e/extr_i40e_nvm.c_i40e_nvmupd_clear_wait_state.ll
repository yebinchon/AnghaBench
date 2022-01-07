; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_nvm.c_i40e_nvmupd_clear_wait_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_nvm.c_i40e_nvmupd_clear_wait_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }

@I40E_DEBUG_NVM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"NVMUPD: clearing wait on opcode 0x%04x\0A\00", align 1
@I40E_NVMUPD_STATE_ERROR = common dso_local global i32 0, align 4
@I40E_NVMUPD_STATE_INIT = common dso_local global i32 0, align 4
@I40E_NVMUPD_STATE_WRITING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40e_nvmupd_clear_wait_state(%struct.i40e_hw* %0) #0 {
  %2 = alloca %struct.i40e_hw*, align 8
  store %struct.i40e_hw* %0, %struct.i40e_hw** %2, align 8
  %3 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %4 = load i32, i32* @I40E_DEBUG_NVM, align 4
  %5 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %6 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = call i32 @i40e_debug(%struct.i40e_hw* %3, i32 %4, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %7)
  %9 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %10 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %15 = call i32 @i40e_release_nvm(%struct.i40e_hw* %14)
  %16 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %17 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %20 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %19, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %22 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = load i32, i32* @I40E_NVMUPD_STATE_ERROR, align 4
  %28 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %29 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  br label %43

30:                                               ; preds = %18
  %31 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %32 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %42 [
    i32 129, label %34
    i32 128, label %38
  ]

34:                                               ; preds = %30
  %35 = load i32, i32* @I40E_NVMUPD_STATE_INIT, align 4
  %36 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %37 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  br label %43

38:                                               ; preds = %30
  %39 = load i32, i32* @I40E_NVMUPD_STATE_WRITING, align 4
  %40 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %41 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  br label %43

42:                                               ; preds = %30
  br label %43

43:                                               ; preds = %26, %42, %38, %34
  ret void
}

declare dso_local i32 @i40e_debug(%struct.i40e_hw*, i32, i8*, i64) #1

declare dso_local i32 @i40e_release_nvm(%struct.i40e_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
