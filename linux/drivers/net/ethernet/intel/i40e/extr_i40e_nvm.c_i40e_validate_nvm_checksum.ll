; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_nvm.c_i40e_validate_nvm_checksum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_nvm.c_i40e_validate_nvm_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }

@I40E_RESOURCE_READ = common dso_local global i32 0, align 4
@I40E_SR_SW_CHECKSUM_WORD = common dso_local global i32 0, align 4
@I40E_ERR_NVM_CHECKSUM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @i40e_validate_nvm_checksum(%struct.i40e_hw* %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.i40e_hw*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.i40e_hw* %0, %struct.i40e_hw** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %9 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %10 = load i32, i32* @I40E_RESOURCE_READ, align 4
  %11 = call i64 @i40e_acquire_nvm(%struct.i40e_hw* %9, i32 %10)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i64, i64* %6, align 8
  store i64 %15, i64* %3, align 8
  br label %42

16:                                               ; preds = %2
  %17 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %18 = call i64 @i40e_calc_nvm_checksum(%struct.i40e_hw* %17, i64* %8)
  store i64 %18, i64* %6, align 8
  %19 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %20 = load i32, i32* @I40E_SR_SW_CHECKSUM_WORD, align 4
  %21 = call i32 @__i40e_read_nvm_word(%struct.i40e_hw* %19, i32 %20, i64* %7)
  %22 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %23 = call i32 @i40e_release_nvm(%struct.i40e_hw* %22)
  %24 = load i64, i64* %6, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = load i64, i64* %6, align 8
  store i64 %27, i64* %3, align 8
  br label %42

28:                                               ; preds = %16
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i64, i64* @I40E_ERR_NVM_CHECKSUM, align 8
  store i64 %33, i64* %6, align 8
  br label %34

34:                                               ; preds = %32, %28
  %35 = load i64*, i64** %5, align 8
  %36 = icmp ne i64* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i64, i64* %8, align 8
  %39 = load i64*, i64** %5, align 8
  store i64 %38, i64* %39, align 8
  br label %40

40:                                               ; preds = %37, %34
  %41 = load i64, i64* %6, align 8
  store i64 %41, i64* %3, align 8
  br label %42

42:                                               ; preds = %40, %26, %14
  %43 = load i64, i64* %3, align 8
  ret i64 %43
}

declare dso_local i64 @i40e_acquire_nvm(%struct.i40e_hw*, i32) #1

declare dso_local i64 @i40e_calc_nvm_checksum(%struct.i40e_hw*, i64*) #1

declare dso_local i32 @__i40e_read_nvm_word(%struct.i40e_hw*, i32, i64*) #1

declare dso_local i32 @i40e_release_nvm(%struct.i40e_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
