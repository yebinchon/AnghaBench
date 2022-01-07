; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_bt819.c_bt819_setbit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_bt819.c_bt819_setbit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt819 = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bt819*, i64, i64, i64)* @bt819_setbit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bt819_setbit(%struct.bt819* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.bt819*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.bt819* %0, %struct.bt819** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load %struct.bt819*, %struct.bt819** %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load %struct.bt819*, %struct.bt819** %5, align 8
  %12 = getelementptr inbounds %struct.bt819, %struct.bt819* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* %6, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* %7, align 8
  %18 = trunc i64 %17 to i32
  %19 = shl i32 1, %18
  %20 = xor i32 %19, -1
  %21 = and i32 %16, %20
  %22 = load i64, i64* %8, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %4
  %25 = load i64, i64* %7, align 8
  %26 = trunc i64 %25 to i32
  %27 = shl i32 1, %26
  br label %29

28:                                               ; preds = %4
  br label %29

29:                                               ; preds = %28, %24
  %30 = phi i32 [ %27, %24 ], [ 0, %28 ]
  %31 = or i32 %21, %30
  %32 = call i32 @bt819_write(%struct.bt819* %9, i64 %10, i32 %31)
  ret i32 %32
}

declare dso_local i32 @bt819_write(%struct.bt819*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
