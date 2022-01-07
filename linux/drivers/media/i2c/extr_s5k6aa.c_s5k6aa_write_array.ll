; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6aa.c_s5k6aa_write_array.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6aa.c_s5k6aa_write_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.s5k6aa_regval = type { i64, i64 }
%struct.i2c_client = type { i32 }

@S5K6AA_TERM = common dso_local global i64 0, align 8
@REG_CMDWR_ADDRL = common dso_local global i32 0, align 4
@REG_CMDBUF0_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.s5k6aa_regval*)* @s5k6aa_write_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k6aa_write_array(%struct.v4l2_subdev* %0, %struct.s5k6aa_regval* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.s5k6aa_regval*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.s5k6aa_regval* %1, %struct.s5k6aa_regval** %4, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %9 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %8)
  store %struct.i2c_client* %9, %struct.i2c_client** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %40, %2
  %11 = load %struct.s5k6aa_regval*, %struct.s5k6aa_regval** %4, align 8
  %12 = getelementptr inbounds %struct.s5k6aa_regval, %struct.s5k6aa_regval* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @S5K6AA_TERM, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %52

16:                                               ; preds = %10
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 2
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %21 = load i32, i32* @REG_CMDWR_ADDRL, align 4
  %22 = load %struct.s5k6aa_regval*, %struct.s5k6aa_regval** %4, align 8
  %23 = getelementptr inbounds %struct.s5k6aa_regval, %struct.s5k6aa_regval* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @s5k6aa_i2c_write(%struct.i2c_client* %20, i32 %21, i64 %24)
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %19, %16
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %52

30:                                               ; preds = %26
  %31 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %32 = load i32, i32* @REG_CMDBUF0_ADDR, align 4
  %33 = load %struct.s5k6aa_regval*, %struct.s5k6aa_regval** %4, align 8
  %34 = getelementptr inbounds %struct.s5k6aa_regval, %struct.s5k6aa_regval* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @s5k6aa_i2c_write(%struct.i2c_client* %31, i32 %32, i64 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %52

40:                                               ; preds = %30
  %41 = load %struct.s5k6aa_regval*, %struct.s5k6aa_regval** %4, align 8
  %42 = getelementptr inbounds %struct.s5k6aa_regval, %struct.s5k6aa_regval* %41, i64 1
  %43 = getelementptr inbounds %struct.s5k6aa_regval, %struct.s5k6aa_regval* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.s5k6aa_regval*, %struct.s5k6aa_regval** %4, align 8
  %46 = getelementptr inbounds %struct.s5k6aa_regval, %struct.s5k6aa_regval* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %44, %47
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %6, align 4
  %50 = load %struct.s5k6aa_regval*, %struct.s5k6aa_regval** %4, align 8
  %51 = getelementptr inbounds %struct.s5k6aa_regval, %struct.s5k6aa_regval* %50, i32 1
  store %struct.s5k6aa_regval* %51, %struct.s5k6aa_regval** %4, align 8
  br label %10

52:                                               ; preds = %39, %29, %10
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @s5k6aa_i2c_write(%struct.i2c_client*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
