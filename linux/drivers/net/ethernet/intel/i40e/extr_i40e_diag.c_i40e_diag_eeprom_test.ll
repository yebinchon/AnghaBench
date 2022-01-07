; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_diag.c_i40e_diag_eeprom_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_diag.c_i40e_diag_eeprom_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }

@I40E_SR_NVM_CONTROL_WORD = common dso_local global i32 0, align 4
@I40E_SR_CONTROL_WORD_1_MASK = common dso_local global i32 0, align 4
@I40E_SR_CONTROL_WORD_1_SHIFT = common dso_local global i32 0, align 4
@I40E_ERR_DIAG_TEST_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_diag_eeprom_test(%struct.i40e_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i40e_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %3, align 8
  %6 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %7 = load i32, i32* @I40E_SR_NVM_CONTROL_WORD, align 4
  %8 = call i32 @i40e_read_nvm_word(%struct.i40e_hw* %6, i32 %7, i32* %5)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @I40E_SR_CONTROL_WORD_1_MASK, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* @I40E_SR_CONTROL_WORD_1_SHIFT, align 4
  %16 = call i32 @BIT(i32 %15)
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %20 = call i32 @i40e_validate_nvm_checksum(%struct.i40e_hw* %19, i32* null)
  store i32 %20, i32* %2, align 4
  br label %23

21:                                               ; preds = %11, %1
  %22 = load i32, i32* @I40E_ERR_DIAG_TEST_FAILED, align 4
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %21, %18
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @i40e_read_nvm_word(%struct.i40e_hw*, i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @i40e_validate_nvm_checksum(%struct.i40e_hw*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
