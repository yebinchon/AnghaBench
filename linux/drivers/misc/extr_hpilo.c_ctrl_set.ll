; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_hpilo.c_ctrl_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_hpilo.c_ctrl_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CTRL_BITPOS_L2SZ = common dso_local global i32 0, align 4
@CTRL_BITPOS_FIFOINDEXMASK = common dso_local global i32 0, align 4
@CTRL_BITPOS_DESCLIMIT = common dso_local global i32 0, align 4
@CTRL_BITPOS_A = common dso_local global i32 0, align 4
@CTRL_BITPOS_G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ctrl_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctrl_set(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @CTRL_BITPOS_L2SZ, align 4
  %11 = shl i32 %9, %10
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @CTRL_BITPOS_FIFOINDEXMASK, align 4
  %14 = shl i32 %12, %13
  %15 = or i32 %11, %14
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @CTRL_BITPOS_DESCLIMIT, align 4
  %18 = shl i32 %16, %17
  %19 = or i32 %15, %18
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @CTRL_BITPOS_A, align 4
  %22 = shl i32 %20, %21
  %23 = or i32 %19, %22
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @CTRL_BITPOS_G, align 4
  %26 = shl i32 %24, %25
  %27 = or i32 %23, %26
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
