; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp7002.c_tvp7002_write_inittab.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp7002.c_tvp7002_write_inittab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.i2c_reg_value = type { i64, i64, i32 }

@TVP7002_EOR = common dso_local global i64 0, align 8
@TVP7002_WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.i2c_reg_value*)* @tvp7002_write_inittab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvp7002_write_inittab(%struct.v4l2_subdev* %0, %struct.i2c_reg_value* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.i2c_reg_value*, align 8
  %5 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.i2c_reg_value* %1, %struct.i2c_reg_value** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %27, %2
  %7 = load i64, i64* @TVP7002_EOR, align 8
  %8 = load %struct.i2c_reg_value*, %struct.i2c_reg_value** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_reg_value, %struct.i2c_reg_value* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %7, %10
  br i1 %11, label %12, label %30

12:                                               ; preds = %6
  %13 = load i64, i64* @TVP7002_WRITE, align 8
  %14 = load %struct.i2c_reg_value*, %struct.i2c_reg_value** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_reg_value, %struct.i2c_reg_value* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %12
  %19 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %20 = load %struct.i2c_reg_value*, %struct.i2c_reg_value** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_reg_value, %struct.i2c_reg_value* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.i2c_reg_value*, %struct.i2c_reg_value** %4, align 8
  %24 = getelementptr inbounds %struct.i2c_reg_value, %struct.i2c_reg_value* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @tvp7002_write_err(%struct.v4l2_subdev* %19, i64 %22, i32 %25, i32* %5)
  br label %27

27:                                               ; preds = %18, %12
  %28 = load %struct.i2c_reg_value*, %struct.i2c_reg_value** %4, align 8
  %29 = getelementptr inbounds %struct.i2c_reg_value, %struct.i2c_reg_value* %28, i32 1
  store %struct.i2c_reg_value* %29, %struct.i2c_reg_value** %4, align 8
  br label %6

30:                                               ; preds = %6
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @tvp7002_write_err(%struct.v4l2_subdev*, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
