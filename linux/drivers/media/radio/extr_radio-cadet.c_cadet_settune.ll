; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-cadet.c_cadet_settune.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-cadet.c_cadet_settune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cadet = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cadet*, i32)* @cadet_settune to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cadet_settune(%struct.cadet* %0, i32 %1) #0 {
  %3 = alloca %struct.cadet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cadet* %0, %struct.cadet** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.cadet*, %struct.cadet** %3, align 8
  %8 = getelementptr inbounds %struct.cadet, %struct.cadet* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @outb(i32 7, i64 %9)
  store i32 0, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = lshr i32 %11, 23
  %13 = and i32 %12, 2
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = or i32 %14, 28
  store i32 %15, i32* %6, align 4
  %16 = load %struct.cadet*, %struct.cadet** %3, align 8
  %17 = getelementptr inbounds %struct.cadet, %struct.cadet* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @outb(i32 7, i64 %18)
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.cadet*, %struct.cadet** %3, align 8
  %22 = getelementptr inbounds %struct.cadet, %struct.cadet* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 1
  %25 = call i32 @outb(i32 %20, i64 %24)
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %58, %2
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 25
  br i1 %28, label %29, label %61

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, 1
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.cadet*, %struct.cadet** %3, align 8
  %34 = getelementptr inbounds %struct.cadet, %struct.cadet* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 1
  %37 = call i32 @outb(i32 %32, i64 %36)
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, 254
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.cadet*, %struct.cadet** %3, align 8
  %42 = getelementptr inbounds %struct.cadet, %struct.cadet* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 1
  %45 = call i32 @outb(i32 %40, i64 %44)
  %46 = load i32, i32* %4, align 4
  %47 = shl i32 %46, 1
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = lshr i32 %48, 23
  %50 = and i32 %49, 2
  %51 = or i32 28, %50
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.cadet*, %struct.cadet** %3, align 8
  %54 = getelementptr inbounds %struct.cadet, %struct.cadet* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, 1
  %57 = call i32 @outb(i32 %52, i64 %56)
  br label %58

58:                                               ; preds = %29
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %26

61:                                               ; preds = %26
  ret void
}

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
