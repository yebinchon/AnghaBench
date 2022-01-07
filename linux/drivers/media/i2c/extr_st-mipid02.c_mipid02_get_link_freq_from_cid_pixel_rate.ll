; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_st-mipid02.c_mipid02_get_link_freq_from_cid_pixel_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_st-mipid02.c_mipid02_get_link_freq_from_cid_pixel_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipid02_dev = type { %struct.TYPE_4__, %struct.v4l2_fwnode_endpoint }
%struct.TYPE_4__ = type { i32 }
%struct.v4l2_fwnode_endpoint = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_ctrl = type { i32 }

@V4L2_CID_PIXEL_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipid02_dev*, %struct.v4l2_subdev*)* @mipid02_get_link_freq_from_cid_pixel_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mipid02_get_link_freq_from_cid_pixel_rate(%struct.mipid02_dev* %0, %struct.v4l2_subdev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mipid02_dev*, align 8
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_fwnode_endpoint*, align 8
  %7 = alloca %struct.v4l2_ctrl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mipid02_dev* %0, %struct.mipid02_dev** %4, align 8
  store %struct.v4l2_subdev* %1, %struct.v4l2_subdev** %5, align 8
  %10 = load %struct.mipid02_dev*, %struct.mipid02_dev** %4, align 8
  %11 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %10, i32 0, i32 1
  store %struct.v4l2_fwnode_endpoint* %11, %struct.v4l2_fwnode_endpoint** %6, align 8
  %12 = load %struct.mipid02_dev*, %struct.mipid02_dev** %4, align 8
  %13 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @bpp_from_code(i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %18 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @V4L2_CID_PIXEL_RATE, align 4
  %21 = call %struct.v4l2_ctrl* @v4l2_ctrl_find(i32 %19, i32 %20)
  store %struct.v4l2_ctrl* %21, %struct.v4l2_ctrl** %7, align 8
  %22 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %23 = icmp ne %struct.v4l2_ctrl* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %38

25:                                               ; preds = %2
  %26 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %27 = call i32 @v4l2_ctrl_g_ctrl_int64(%struct.v4l2_ctrl* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = mul nsw i32 %28, %29
  %31 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %6, align 8
  %32 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 2, %35
  %37 = sdiv i32 %30, %36
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %25, %24
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @bpp_from_code(i32) #1

declare dso_local %struct.v4l2_ctrl* @v4l2_ctrl_find(i32, i32) #1

declare dso_local i32 @v4l2_ctrl_g_ctrl_int64(%struct.v4l2_ctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
