; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/m5mols/extr_m5mols_core.c___find_restype.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/m5mols/extr_m5mols_core.c___find_restype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@M5MOLS_RESTYPE_MONITOR = common dso_local global i32 0, align 4
@m5mols_default_ffmt = common dso_local global %struct.TYPE_2__* null, align 8
@SIZE_DEFAULT_FFMT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @__find_restype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__find_restype(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %5 = load i32, i32* @M5MOLS_RESTYPE_MONITOR, align 4
  store i32 %5, i32* %4, align 4
  br label %6

6:                                                ; preds = %18, %1
  %7 = load i64, i64* %3, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @m5mols_default_ffmt, align 8
  %9 = load i32, i32* %4, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %7, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %6
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %25

17:                                               ; preds = %6
  br label %18

18:                                               ; preds = %17
  %19 = load i32, i32* %4, align 4
  %20 = add i32 %19, 1
  store i32 %20, i32* %4, align 4
  %21 = zext i32 %19 to i64
  %22 = load i64, i64* @SIZE_DEFAULT_FFMT, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %6, label %24

24:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %15
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
