; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_fc2580.c_fc2580_get_v4l2_subdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_fc2580.c_fc2580_get_v4l2_subdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i64 }
%struct.i2c_client = type { i32 }
%struct.fc2580_dev = type { %struct.v4l2_subdev }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.v4l2_subdev* (%struct.i2c_client*)* @fc2580_get_v4l2_subdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.v4l2_subdev* @fc2580_get_v4l2_subdev(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.fc2580_dev*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %6 = call %struct.fc2580_dev* @i2c_get_clientdata(%struct.i2c_client* %5)
  store %struct.fc2580_dev* %6, %struct.fc2580_dev** %4, align 8
  %7 = load %struct.fc2580_dev*, %struct.fc2580_dev** %4, align 8
  %8 = getelementptr inbounds %struct.fc2580_dev, %struct.fc2580_dev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.fc2580_dev*, %struct.fc2580_dev** %4, align 8
  %14 = getelementptr inbounds %struct.fc2580_dev, %struct.fc2580_dev* %13, i32 0, i32 0
  store %struct.v4l2_subdev* %14, %struct.v4l2_subdev** %2, align 8
  br label %16

15:                                               ; preds = %1
  store %struct.v4l2_subdev* null, %struct.v4l2_subdev** %2, align 8
  br label %16

16:                                               ; preds = %15, %12
  %17 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  ret %struct.v4l2_subdev* %17
}

declare dso_local %struct.fc2580_dev* @i2c_get_clientdata(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
