; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_noon010pc30.c_noon010_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_noon010pc30.c_noon010_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.noon010_info = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @noon010_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @noon010_set_params(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.noon010_info*, align 8
  %5 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  %6 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %7 = call %struct.noon010_info* @to_noon010(%struct.v4l2_subdev* %6)
  store %struct.noon010_info* %7, %struct.noon010_info** %4, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %9 = call i32 @VDO_CTL_REG(i32 0)
  %10 = load %struct.noon010_info*, %struct.noon010_info** %4, align 8
  %11 = getelementptr inbounds %struct.noon010_info, %struct.noon010_info* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @cam_i2c_write(%struct.v4l2_subdev* %8, i32 %9, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %29

20:                                               ; preds = %1
  %21 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %22 = call i32 @ISP_CTL_REG(i32 0)
  %23 = load %struct.noon010_info*, %struct.noon010_info** %4, align 8
  %24 = getelementptr inbounds %struct.noon010_info, %struct.noon010_info* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @cam_i2c_write(%struct.v4l2_subdev* %21, i32 %22, i32 %27)
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %20, %18
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.noon010_info* @to_noon010(%struct.v4l2_subdev*) #1

declare dso_local i32 @cam_i2c_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @VDO_CTL_REG(i32) #1

declare dso_local i32 @ISP_CTL_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
