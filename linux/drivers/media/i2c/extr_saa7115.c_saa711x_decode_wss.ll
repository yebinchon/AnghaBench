; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa7115.c_saa711x_decode_wss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa7115.c_saa711x_decode_wss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@saa711x_decode_wss.wss_bits = internal constant [8 x i32] [i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 1, i32 1], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @saa711x_decode_wss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa711x_decode_wss(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %42, %1
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 16
  br i1 %11, label %12, label %45

12:                                               ; preds = %9
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 7
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* @saa711x_decode_wss.wss_bits, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %26, 3
  %28 = and i32 %27, 7
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* @saa711x_decode_wss.wss_bits, i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %12
  store i32 -1, i32* %2, align 4
  br label %70

36:                                               ; preds = %12
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %6, align 4
  %39 = shl i32 %37, %38
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %36
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %9

45:                                               ; preds = %9
  %46 = load i32, i32* %5, align 4
  %47 = and i32 %46, 15
  %48 = trunc i32 %47 to i8
  store i8 %48, i8* %4, align 1
  %49 = load i8, i8* %4, align 1
  %50 = zext i8 %49 to i32
  %51 = ashr i32 %50, 2
  %52 = load i8, i8* %4, align 1
  %53 = zext i8 %52 to i32
  %54 = xor i32 %53, %51
  %55 = trunc i32 %54 to i8
  store i8 %55, i8* %4, align 1
  %56 = load i8, i8* %4, align 1
  %57 = zext i8 %56 to i32
  %58 = ashr i32 %57, 1
  %59 = load i8, i8* %4, align 1
  %60 = zext i8 %59 to i32
  %61 = xor i32 %60, %58
  %62 = trunc i32 %61 to i8
  store i8 %62, i8* %4, align 1
  %63 = load i8, i8* %4, align 1
  %64 = zext i8 %63 to i32
  %65 = and i32 %64, 1
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %45
  store i32 -1, i32* %2, align 4
  br label %70

68:                                               ; preds = %45
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %68, %67, %35
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
