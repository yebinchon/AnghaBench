; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-regs.c_float_to_u32_mul_1000000.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-regs.c_float_to_u32_mul_1000000.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"this is a negative number\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"NaN or other special number\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32)* @float_to_u32_mul_1000000 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @float_to_u32_mul_1000000(%struct.i2c_client* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp uge i32 %8, -2147483648
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = call i32 @dev_err(i32* %12, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %59

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, 2139095040
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 -1, i32* %3, align 4
  br label %59

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, 2139095040
  %21 = icmp eq i32 %20, 2139095040
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 0
  %25 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %59

26:                                               ; preds = %18
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %59

30:                                               ; preds = %26
  %31 = load i32, i32* %5, align 4
  %32 = icmp sgt i32 %31, 1333788672
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 -1, i32* %3, align 4
  br label %59

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4
  %36 = ashr i32 %35, 23
  %37 = sub nsw i32 %36, 127
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %5, align 4
  %39 = and i32 %38, 8388607
  %40 = or i32 %39, 8388608
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 1000000
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %34
  %47 = load i32, i32* %6, align 4
  %48 = sub nsw i32 0, %47
  %49 = load i32, i32* %7, align 4
  %50 = ashr i32 %49, %48
  store i32 %50, i32* %7, align 4
  br label %55

51:                                               ; preds = %34
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %7, align 4
  %54 = shl i32 %53, %52
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %51, %46
  %56 = load i32, i32* %7, align 4
  %57 = ashr i32 %56, 23
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %55, %33, %29, %22, %17, %10
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
