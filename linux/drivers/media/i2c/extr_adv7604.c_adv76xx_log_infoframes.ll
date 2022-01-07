; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7604.c_adv76xx_log_infoframes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7604.c_adv76xx_log_infoframes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%union.hdmi_infoframe = type { i32 }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"receive DVI-D signal, no infoframes\0A\00", align 1
@adv76xx_cri = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_subdev*)* @adv76xx_log_infoframes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adv76xx_log_infoframes(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %union.hdmi_infoframe, align 4
  %5 = alloca %struct.i2c_client*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %6 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %7 = call i32 @is_hdmi(%struct.v4l2_subdev* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %11 = call i32 @v4l2_info(%struct.v4l2_subdev* %10, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %34

12:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %31, %12
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @adv76xx_cri, align 4
  %16 = call i32 @ARRAY_SIZE(i32 %15)
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %13
  %19 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %20 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %19)
  store %struct.i2c_client* %20, %struct.i2c_client** %5, align 8
  %21 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i64 @adv76xx_read_infoframe(%struct.v4l2_subdev* %21, i32 %22, %union.hdmi_infoframe* %4)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %34

26:                                               ; preds = %18
  %27 = load i32, i32* @KERN_INFO, align 4
  %28 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 0
  %30 = call i32 @hdmi_infoframe_log(i32 %27, i32* %29, %union.hdmi_infoframe* %4)
  br label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %13

34:                                               ; preds = %9, %25, %13
  ret void
}

declare dso_local i32 @is_hdmi(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_info(%struct.v4l2_subdev*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i64 @adv76xx_read_infoframe(%struct.v4l2_subdev*, i32, %union.hdmi_infoframe*) #1

declare dso_local i32 @hdmi_infoframe_log(i32, i32*, %union.hdmi_infoframe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
