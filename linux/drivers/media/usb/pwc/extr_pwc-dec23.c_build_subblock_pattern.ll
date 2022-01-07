; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pwc/extr_pwc-dec23.c_build_subblock_pattern.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pwc/extr_pwc-dec23.c_build_subblock_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwc_dec23_private = type { i32** }

@build_subblock_pattern.initial_values = internal constant [12 x i32] [i32 -5399808, i32 -2232832, i32 2232832, i32 5399808, i32 -4055552, i32 4055552, i32 -7189632, i32 -2972928, i32 2972928, i32 7189632, i32 -1229312, i32 1229312], align 16
@build_subblock_pattern.values_derivated = internal constant [12 x i32] [i32 42186, i32 17444, i32 -17444, i32 -42186, i32 31684, i32 -31684, i32 56169, i32 23226, i32 -23226, i32 -56169, i32 9604, i32 -9604], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pwc_dec23_private*)* @build_subblock_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_subblock_pattern(%struct.pwc_dec23_private* %0) #0 {
  %2 = alloca %struct.pwc_dec23_private*, align 8
  %3 = alloca [12 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pwc_dec23_private* %0, %struct.pwc_dec23_private** %2, align 8
  %6 = getelementptr inbounds [12 x i32], [12 x i32]* %3, i64 0, i64 0
  %7 = call i32 @memcpy(i32* %6, i32* getelementptr inbounds ([12 x i32], [12 x i32]* @build_subblock_pattern.initial_values, i64 0, i64 0), i32 48)
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %43, %1
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 256
  br i1 %10, label %11, label %46

11:                                               ; preds = %8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %39, %11
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 12
  br i1 %14, label %15, label %42

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [12 x i32], [12 x i32]* %3, i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.pwc_dec23_private*, %struct.pwc_dec23_private** %2, align 8
  %21 = getelementptr inbounds %struct.pwc_dec23_private, %struct.pwc_dec23_private* %20, i32 0, i32 0
  %22 = load i32**, i32*** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32*, i32** %22, i64 %24
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32 %19, i32* %29, align 4
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [12 x i32], [12 x i32]* @build_subblock_pattern.values_derivated, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [12 x i32], [12 x i32]* %3, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = add i32 %37, %33
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %15
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %12

42:                                               ; preds = %12
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %8

46:                                               ; preds = %8
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
