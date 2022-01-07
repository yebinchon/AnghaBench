; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-h264.c_rbsp_read_uev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-h264.c_rbsp_read_uev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbsp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rbsp*, i32*)* @rbsp_read_uev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbsp_read_uev(%struct.rbsp* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rbsp*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rbsp* %0, %struct.rbsp** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %13, %2
  %10 = load %struct.rbsp*, %struct.rbsp** %4, align 8
  %11 = call i32 @rbsp_read_bit(%struct.rbsp* %10)
  store i32 %11, i32* %8, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %6, align 4
  br label %9

16:                                               ; preds = %9
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %3, align 4
  br label %44

21:                                               ; preds = %16
  %22 = load i32, i32* %6, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load %struct.rbsp*, %struct.rbsp** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @rbsp_read_bits(%struct.rbsp* %25, i32 %26, i32* %7)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %3, align 4
  br label %44

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %32, %21
  %34 = load i32*, i32** %5, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load i32, i32* %6, align 4
  %38 = shl i32 1, %37
  %39 = sub nsw i32 %38, 1
  %40 = load i32, i32* %7, align 4
  %41 = add i32 %39, %40
  %42 = load i32*, i32** %5, align 8
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %36, %33
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %30, %19
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @rbsp_read_bit(%struct.rbsp*) #1

declare dso_local i32 @rbsp_read_bits(%struct.rbsp*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
