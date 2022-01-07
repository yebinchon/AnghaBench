; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-h264.c_rbsp_write_uev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-h264.c_rbsp_write_uev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbsp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rbsp*, i32)* @rbsp_write_uev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbsp_write_uev(%struct.rbsp* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rbsp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rbsp* %0, %struct.rbsp** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = add i32 %10, 1
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @fls(i32 %12)
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %27, %2
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %15
  %20 = load %struct.rbsp*, %struct.rbsp** %4, align 8
  %21 = call i32 @rbsp_write_bit(%struct.rbsp* %20, i32 0)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %36

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %15

30:                                               ; preds = %15
  %31 = load %struct.rbsp*, %struct.rbsp** %4, align 8
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 1
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @rbsp_write_bits(%struct.rbsp* %31, i32 %33, i32 %34)
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %30, %24
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @rbsp_write_bit(%struct.rbsp*, i32) #1

declare dso_local i32 @rbsp_write_bits(%struct.rbsp*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
