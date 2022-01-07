; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9v032.c_mt9v032_configure_pixel_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9v032.c_mt9v032_configure_pixel_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt9v032 = type { i32, i32, i32, i32 }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"failed to set pixel rate (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt9v032*)* @mt9v032_configure_pixel_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt9v032_configure_pixel_rate(%struct.mt9v032* %0) #0 {
  %2 = alloca %struct.mt9v032*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  store %struct.mt9v032* %0, %struct.mt9v032** %2, align 8
  %5 = load %struct.mt9v032*, %struct.mt9v032** %2, align 8
  %6 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %5, i32 0, i32 3
  %7 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %6)
  store %struct.i2c_client* %7, %struct.i2c_client** %3, align 8
  %8 = load %struct.mt9v032*, %struct.mt9v032** %2, align 8
  %9 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.mt9v032*, %struct.mt9v032** %2, align 8
  %12 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.mt9v032*, %struct.mt9v032** %2, align 8
  %15 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = sdiv i32 %13, %16
  %18 = call i32 @v4l2_ctrl_s_ctrl_int64(i32 %10, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 0
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @dev_warn(i32* %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %21, %1
  ret void
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @v4l2_ctrl_s_ctrl_int64(i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
