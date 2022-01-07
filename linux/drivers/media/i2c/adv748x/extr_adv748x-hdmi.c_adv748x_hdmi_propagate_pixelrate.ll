; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-hdmi.c_adv748x_hdmi_propagate_pixelrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-hdmi.c_adv748x_hdmi_propagate_pixelrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv748x_hdmi = type { i32, i32* }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_dv_timings = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ADV748X_HDMI_SOURCE = common dso_local global i64 0, align 8
@ENOLINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adv748x_hdmi*)* @adv748x_hdmi_propagate_pixelrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv748x_hdmi_propagate_pixelrate(%struct.adv748x_hdmi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adv748x_hdmi*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_dv_timings, align 4
  store %struct.adv748x_hdmi* %0, %struct.adv748x_hdmi** %3, align 8
  %6 = load %struct.adv748x_hdmi*, %struct.adv748x_hdmi** %3, align 8
  %7 = getelementptr inbounds %struct.adv748x_hdmi, %struct.adv748x_hdmi* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = load i64, i64* @ADV748X_HDMI_SOURCE, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = call %struct.v4l2_subdev* @adv748x_get_remote_sd(i32* %10)
  store %struct.v4l2_subdev* %11, %struct.v4l2_subdev** %4, align 8
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %13 = icmp ne %struct.v4l2_subdev* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOLINK, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %26

17:                                               ; preds = %1
  %18 = load %struct.adv748x_hdmi*, %struct.adv748x_hdmi** %3, align 8
  %19 = getelementptr inbounds %struct.adv748x_hdmi, %struct.adv748x_hdmi* %18, i32 0, i32 0
  %20 = call i32 @adv748x_hdmi_query_dv_timings(i32* %19, %struct.v4l2_dv_timings* %5)
  %21 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %22 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %5, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @adv748x_csi2_set_pixelrate(%struct.v4l2_subdev* %21, i32 %24)
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %17, %14
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local %struct.v4l2_subdev* @adv748x_get_remote_sd(i32*) #1

declare dso_local i32 @adv748x_hdmi_query_dv_timings(i32*, %struct.v4l2_dv_timings*) #1

declare dso_local i32 @adv748x_csi2_set_pixelrate(%struct.v4l2_subdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
