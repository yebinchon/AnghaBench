; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_imx319.c_imx319_write_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_imx319.c_imx319_write_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx319 = type { i32 }
%struct.imx319_reg = type { i32, i32 }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"write reg 0x%4.4x return err %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imx319*, %struct.imx319_reg*, i64)* @imx319_write_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx319_write_regs(%struct.imx319* %0, %struct.imx319_reg* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.imx319*, align 8
  %6 = alloca %struct.imx319_reg*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.imx319* %0, %struct.imx319** %5, align 8
  store %struct.imx319_reg* %1, %struct.imx319_reg** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.imx319*, %struct.imx319** %5, align 8
  %12 = getelementptr inbounds %struct.imx319, %struct.imx319* %11, i32 0, i32 0
  %13 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %12)
  store %struct.i2c_client* %13, %struct.i2c_client** %8, align 8
  store i64 0, i64* %10, align 8
  br label %14

14:                                               ; preds = %45, %3
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %48

18:                                               ; preds = %14
  %19 = load %struct.imx319*, %struct.imx319** %5, align 8
  %20 = load %struct.imx319_reg*, %struct.imx319_reg** %6, align 8
  %21 = load i64, i64* %10, align 8
  %22 = getelementptr inbounds %struct.imx319_reg, %struct.imx319_reg* %20, i64 %21
  %23 = getelementptr inbounds %struct.imx319_reg, %struct.imx319_reg* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.imx319_reg*, %struct.imx319_reg** %6, align 8
  %26 = load i64, i64* %10, align 8
  %27 = getelementptr inbounds %struct.imx319_reg, %struct.imx319_reg* %25, i64 %26
  %28 = getelementptr inbounds %struct.imx319_reg, %struct.imx319_reg* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @imx319_write_reg(%struct.imx319* %19, i32 %24, i32 1, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %18
  %34 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 0
  %36 = load %struct.imx319_reg*, %struct.imx319_reg** %6, align 8
  %37 = load i64, i64* %10, align 8
  %38 = getelementptr inbounds %struct.imx319_reg, %struct.imx319_reg* %36, i64 %37
  %39 = getelementptr inbounds %struct.imx319_reg, %struct.imx319_reg* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @dev_err_ratelimited(i32* %35, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41)
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %4, align 4
  br label %49

44:                                               ; preds = %18
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %10, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %10, align 8
  br label %14

48:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %33
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @imx319_write_reg(%struct.imx319*, i32, i32, i32) #1

declare dso_local i32 @dev_err_ratelimited(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
