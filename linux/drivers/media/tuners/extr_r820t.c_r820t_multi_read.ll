; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_r820t.c_r820t_multi_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_r820t.c_r820t_multi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r820t_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r820t_priv*)* @r820t_multi_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r820t_multi_read(%struct.r820t_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.r820t_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca [2 x i64], align 16
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.r820t_priv* %0, %struct.r820t_priv** %3, align 8
  store i64 0, i64* %6, align 8
  store i64 255, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %10 = call i32 @usleep_range(i32 5000, i32 6000)
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %43, %1
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 6
  br i1 %13, label %14, label %46

14:                                               ; preds = %11
  %15 = load %struct.r820t_priv*, %struct.r820t_priv** %3, align 8
  %16 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %17 = call i32 @r820t_read(%struct.r820t_priv* %15, i32 0, i64* %16, i32 16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %54

22:                                               ; preds = %14
  %23 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = add nsw i64 %25, %24
  store i64 %26, i64* %6, align 8
  %27 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 1
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %8, align 8
  br label %34

34:                                               ; preds = %31, %22
  %35 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %9, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 1
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %9, align 8
  br label %42

42:                                               ; preds = %39, %34
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %11

46:                                               ; preds = %11
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* %9, align 8
  %49 = sub nsw i64 %47, %48
  %50 = load i64, i64* %8, align 8
  %51 = sub nsw i64 %49, %50
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %46, %20
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @r820t_read(%struct.r820t_priv*, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
