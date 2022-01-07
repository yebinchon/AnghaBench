; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-hdmi.c_adv748x_hdmi_fill_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-hdmi.c_adv748x_hdmi_fill_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv748x_hdmi = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.v4l2_mbus_framefmt = type { i64, i32, i32, i32, i32 }

@MEDIA_BUS_FMT_RGB888_1X24 = common dso_local global i32 0, align 4
@V4L2_FIELD_ALTERNATE = common dso_local global i64 0, align 8
@V4L2_FIELD_NONE = common dso_local global i64 0, align 8
@V4L2_COLORSPACE_SRGB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adv748x_hdmi*, %struct.v4l2_mbus_framefmt*)* @adv748x_hdmi_fill_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adv748x_hdmi_fill_format(%struct.adv748x_hdmi* %0, %struct.v4l2_mbus_framefmt* %1) #0 {
  %3 = alloca %struct.adv748x_hdmi*, align 8
  %4 = alloca %struct.v4l2_mbus_framefmt*, align 8
  store %struct.adv748x_hdmi* %0, %struct.adv748x_hdmi** %3, align 8
  store %struct.v4l2_mbus_framefmt* %1, %struct.v4l2_mbus_framefmt** %4, align 8
  %5 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %6 = call i32 @memset(%struct.v4l2_mbus_framefmt* %5, i32 0, i32 24)
  %7 = load i32, i32* @MEDIA_BUS_FMT_RGB888_1X24, align 4
  %8 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %9 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %8, i32 0, i32 4
  store i32 %7, i32* %9, align 4
  %10 = load %struct.adv748x_hdmi*, %struct.adv748x_hdmi** %3, align 8
  %11 = getelementptr inbounds %struct.adv748x_hdmi, %struct.adv748x_hdmi* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i64, i64* @V4L2_FIELD_ALTERNATE, align 8
  br label %20

18:                                               ; preds = %2
  %19 = load i64, i64* @V4L2_FIELD_NONE, align 8
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i64 [ %17, %16 ], [ %19, %18 ]
  %22 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %23 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load i32, i32* @V4L2_COLORSPACE_SRGB, align 4
  %25 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %26 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  %27 = load %struct.adv748x_hdmi*, %struct.adv748x_hdmi** %3, align 8
  %28 = getelementptr inbounds %struct.adv748x_hdmi, %struct.adv748x_hdmi* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %33 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.adv748x_hdmi*, %struct.adv748x_hdmi** %3, align 8
  %35 = getelementptr inbounds %struct.adv748x_hdmi, %struct.adv748x_hdmi* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %40 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %42 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @V4L2_FIELD_ALTERNATE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %20
  %47 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %48 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = sdiv i32 %49, 2
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %46, %20
  ret void
}

declare dso_local i32 @memset(%struct.v4l2_mbus_framefmt*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
