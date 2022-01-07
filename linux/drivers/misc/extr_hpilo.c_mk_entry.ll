; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_hpilo.c_mk_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_hpilo.c_mk_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENTRY_BITPOS_DESCRIPTOR = common dso_local global i32 0, align 4
@ENTRY_BITPOS_QWORDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @mk_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mk_entry(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = and i32 %6, 7
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = ashr i32 %10, 3
  %12 = add nsw i32 %11, 1
  br label %16

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = ashr i32 %14, 3
  br label %16

16:                                               ; preds = %13, %9
  %17 = phi i32 [ %12, %9 ], [ %15, %13 ]
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @ENTRY_BITPOS_DESCRIPTOR, align 4
  %20 = shl i32 %18, %19
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @ENTRY_BITPOS_QWORDS, align 4
  %23 = shl i32 %21, %22
  %24 = or i32 %20, %23
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
