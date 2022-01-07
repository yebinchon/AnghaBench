; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ak7375.c_ak7375_set_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ak7375.c_ak7375_set_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i64, i32 }
%struct.ak7375_device = type { i32 }

@V4L2_CID_FOCUS_ABSOLUTE = common dso_local global i64 0, align 8
@AK7375_REG_POSITION = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @ak7375_set_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ak7375_set_ctrl(%struct.v4l2_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_ctrl*, align 8
  %4 = alloca %struct.ak7375_device*, align 8
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %3, align 8
  %5 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %6 = call %struct.ak7375_device* @to_ak7375_vcm(%struct.v4l2_ctrl* %5)
  store %struct.ak7375_device* %6, %struct.ak7375_device** %4, align 8
  %7 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %8 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @V4L2_CID_FOCUS_ABSOLUTE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.ak7375_device*, %struct.ak7375_device** %4, align 8
  %14 = load i32, i32* @AK7375_REG_POSITION, align 4
  %15 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %16 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = shl i32 %17, 4
  %19 = call i32 @ak7375_i2c_write(%struct.ak7375_device* %13, i32 %14, i32 %18, i32 2)
  store i32 %19, i32* %2, align 4
  br label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %20, %12
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local %struct.ak7375_device* @to_ak7375_vcm(%struct.v4l2_ctrl*) #1

declare dso_local i32 @ak7375_i2c_write(%struct.ak7375_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
