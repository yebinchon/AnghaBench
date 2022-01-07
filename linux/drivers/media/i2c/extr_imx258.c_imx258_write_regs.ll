; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_imx258.c_imx258_write_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_imx258.c_imx258_write_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx258 = type { i32 }
%struct.imx258_reg = type { i32, i32 }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"Failed to write reg 0x%4.4x. error = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imx258*, %struct.imx258_reg*, i32)* @imx258_write_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx258_write_regs(%struct.imx258* %0, %struct.imx258_reg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.imx258*, align 8
  %6 = alloca %struct.imx258_reg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.imx258* %0, %struct.imx258** %5, align 8
  store %struct.imx258_reg* %1, %struct.imx258_reg** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.imx258*, %struct.imx258** %5, align 8
  %12 = getelementptr inbounds %struct.imx258, %struct.imx258* %11, i32 0, i32 0
  %13 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %12)
  store %struct.i2c_client* %13, %struct.i2c_client** %8, align 8
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %48, %3
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %51

18:                                               ; preds = %14
  %19 = load %struct.imx258*, %struct.imx258** %5, align 8
  %20 = load %struct.imx258_reg*, %struct.imx258_reg** %6, align 8
  %21 = load i32, i32* %9, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.imx258_reg, %struct.imx258_reg* %20, i64 %22
  %24 = getelementptr inbounds %struct.imx258_reg, %struct.imx258_reg* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.imx258_reg*, %struct.imx258_reg** %6, align 8
  %27 = load i32, i32* %9, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.imx258_reg, %struct.imx258_reg* %26, i64 %28
  %30 = getelementptr inbounds %struct.imx258_reg, %struct.imx258_reg* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @imx258_write_reg(%struct.imx258* %19, i32 %25, i32 1, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %18
  %36 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 0
  %38 = load %struct.imx258_reg*, %struct.imx258_reg** %6, align 8
  %39 = load i32, i32* %9, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.imx258_reg, %struct.imx258_reg* %38, i64 %40
  %42 = getelementptr inbounds %struct.imx258_reg, %struct.imx258_reg* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @dev_err_ratelimited(i32* %37, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44)
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %4, align 4
  br label %52

47:                                               ; preds = %18
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %9, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %14

51:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %35
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @imx258_write_reg(%struct.imx258*, i32, i32, i32) #1

declare dso_local i32 @dev_err_ratelimited(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
