; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_nvm.c_i40e_nvmupd_check_wait_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_nvm.c_i40e_nvmupd_check_wait_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i64, i32 }
%struct.i40e_aq_desc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40e_nvmupd_check_wait_event(%struct.i40e_hw* %0, i64 %1, %struct.i40e_aq_desc* %2) #0 {
  %4 = alloca %struct.i40e_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.i40e_aq_desc*, align 8
  %7 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.i40e_aq_desc* %2, %struct.i40e_aq_desc** %6, align 8
  store i32 4, i32* %7, align 4
  %8 = load i64, i64* %5, align 8
  %9 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %10 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %8, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %15 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %14, i32 0, i32 1
  %16 = load %struct.i40e_aq_desc*, %struct.i40e_aq_desc** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @memcpy(i32* %15, %struct.i40e_aq_desc* %16, i32 %17)
  %19 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %20 = call i32 @i40e_nvmupd_clear_wait_state(%struct.i40e_hw* %19)
  br label %21

21:                                               ; preds = %13, %3
  ret void
}

declare dso_local i32 @memcpy(i32*, %struct.i40e_aq_desc*, i32) #1

declare dso_local i32 @i40e_nvmupd_clear_wait_state(%struct.i40e_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
