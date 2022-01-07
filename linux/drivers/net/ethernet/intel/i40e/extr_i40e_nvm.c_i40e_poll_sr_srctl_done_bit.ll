; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_nvm.c_i40e_poll_sr_srctl_done_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_nvm.c_i40e_poll_sr_srctl_done_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }

@I40E_ERR_TIMEOUT = common dso_local global i64 0, align 8
@I40E_SRRD_SRCTL_ATTEMPTS = common dso_local global i64 0, align 8
@I40E_GLNVM_SRCTL = common dso_local global i32 0, align 4
@I40E_GLNVM_SRCTL_DONE_MASK = common dso_local global i64 0, align 8
@I40E_DEBUG_NVM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Done bit in GLNVM_SRCTL not set\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.i40e_hw*)* @i40e_poll_sr_srctl_done_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @i40e_poll_sr_srctl_done_bit(%struct.i40e_hw* %0) #0 {
  %2 = alloca %struct.i40e_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.i40e_hw* %0, %struct.i40e_hw** %2, align 8
  %6 = load i64, i64* @I40E_ERR_TIMEOUT, align 8
  store i64 %6, i64* %3, align 8
  store i64 0, i64* %5, align 8
  br label %7

7:                                                ; preds = %22, %1
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @I40E_SRRD_SRCTL_ATTEMPTS, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %25

11:                                               ; preds = %7
  %12 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %13 = load i32, i32* @I40E_GLNVM_SRCTL, align 4
  %14 = call i64 @rd32(%struct.i40e_hw* %12, i32 %13)
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @I40E_GLNVM_SRCTL_DONE_MASK, align 8
  %17 = and i64 %15, %16
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  store i64 0, i64* %3, align 8
  br label %25

20:                                               ; preds = %11
  %21 = call i32 @udelay(i32 5)
  br label %22

22:                                               ; preds = %20
  %23 = load i64, i64* %5, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* %5, align 8
  br label %7

25:                                               ; preds = %19, %7
  %26 = load i64, i64* %3, align 8
  %27 = load i64, i64* @I40E_ERR_TIMEOUT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %31 = load i32, i32* @I40E_DEBUG_NVM, align 4
  %32 = call i32 @i40e_debug(%struct.i40e_hw* %30, i32 %31, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %29, %25
  %34 = load i64, i64* %3, align 8
  ret i64 %34
}

declare dso_local i64 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @i40e_debug(%struct.i40e_hw*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
