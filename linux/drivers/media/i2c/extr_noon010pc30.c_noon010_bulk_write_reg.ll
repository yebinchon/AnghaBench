; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_noon010pc30.c_noon010_bulk_write_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_noon010pc30.c_noon010_bulk_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.i2c_regval = type { i64, i32 }

@REG_TERM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.i2c_regval*)* @noon010_bulk_write_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @noon010_bulk_write_reg(%struct.v4l2_subdev* %0, %struct.i2c_regval* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.i2c_regval*, align 8
  %6 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.i2c_regval* %1, %struct.i2c_regval** %5, align 8
  br label %7

7:                                                ; preds = %26, %2
  %8 = load %struct.i2c_regval*, %struct.i2c_regval** %5, align 8
  %9 = getelementptr inbounds %struct.i2c_regval, %struct.i2c_regval* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @REG_TERM, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %7
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %15 = load %struct.i2c_regval*, %struct.i2c_regval** %5, align 8
  %16 = getelementptr inbounds %struct.i2c_regval, %struct.i2c_regval* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.i2c_regval*, %struct.i2c_regval** %5, align 8
  %19 = getelementptr inbounds %struct.i2c_regval, %struct.i2c_regval* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @cam_i2c_write(%struct.v4l2_subdev* %14, i64 %17, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %13
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %30

26:                                               ; preds = %13
  %27 = load %struct.i2c_regval*, %struct.i2c_regval** %5, align 8
  %28 = getelementptr inbounds %struct.i2c_regval, %struct.i2c_regval* %27, i32 1
  store %struct.i2c_regval* %28, %struct.i2c_regval** %5, align 8
  br label %7

29:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %24
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @cam_i2c_write(%struct.v4l2_subdev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
