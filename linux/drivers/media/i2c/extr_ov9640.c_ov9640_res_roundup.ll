; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov9640.c_ov9640_res_roundup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov9640.c_ov9640_res_roundup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ov9640_res_roundup.res_x = internal constant [7 x i32] [i32 88, i32 160, i32 176, i32 320, i32 352, i32 640, i32 1280], align 16
@ov9640_res_roundup.res_y = internal constant [7 x i32] [i32 72, i32 120, i32 144, i32 240, i32 288, i32 480, i32 960], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @ov9640_res_roundup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ov9640_res_roundup(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %38, %2
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([7 x i32], [7 x i32]* @ov9640_res_roundup.res_x, i64 0, i64 0))
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %41

10:                                               ; preds = %6
  %11 = load i32, i32* %5, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds [7 x i32], [7 x i32]* @ov9640_res_roundup.res_x, i64 0, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* %15, align 4
  %17 = icmp sge i32 %14, %16
  br i1 %17, label %18, label %37

18:                                               ; preds = %10
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds [7 x i32], [7 x i32]* @ov9640_res_roundup.res_y, i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* %23, align 4
  %25 = icmp sge i32 %22, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %18
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds [7 x i32], [7 x i32]* @ov9640_res_roundup.res_x, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %3, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %5, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds [7 x i32], [7 x i32]* @ov9640_res_roundup.res_y, i64 0, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %4, align 8
  store i32 %35, i32* %36, align 4
  br label %46

37:                                               ; preds = %18, %10
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %5, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %6

41:                                               ; preds = %6
  %42 = load i32, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @ov9640_res_roundup.res_x, i64 0, i64 6), align 8
  %43 = load i32*, i32** %3, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @ov9640_res_roundup.res_y, i64 0, i64 6), align 8
  %45 = load i32*, i32** %4, align 8
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %41, %26
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
