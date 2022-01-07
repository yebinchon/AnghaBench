; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-velocity.c_set_pending_timer_val.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-velocity.c_set_pending_timer_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @set_pending_timer_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_pending_timer_val(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp sge i32 %7, 63
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 1, i32* %5, align 4
  store i32 2, i32* %6, align 4
  br label %10

10:                                               ; preds = %9, %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp sge i32 %11, 252
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32 2, i32* %5, align 4
  store i32 4, i32* %6, align 4
  br label %14

14:                                               ; preds = %13, %10
  %15 = load i32, i32* %4, align 4
  %16 = icmp sge i32 %15, 1008
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 3, i32* %5, align 4
  store i32 6, i32* %6, align 4
  br label %18

18:                                               ; preds = %17, %14
  %19 = load i32, i32* %5, align 4
  %20 = shl i32 %19, 6
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %6, align 4
  %23 = ashr i32 %21, %22
  %24 = and i32 %23, 63
  %25 = or i32 %20, %24
  %26 = load i32*, i32** %3, align 8
  store i32 %25, i32* %26, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
