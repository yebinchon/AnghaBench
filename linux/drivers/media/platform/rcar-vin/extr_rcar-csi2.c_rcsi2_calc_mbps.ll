; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-csi2.c_rcsi2_calc_mbps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-csi2.c_rcsi2_calc_mbps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_csi2 = type { i32, i32, %struct.v4l2_subdev* }
%struct.v4l2_subdev = type { i32, i32 }
%struct.v4l2_ctrl = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@V4L2_CID_PIXEL_RATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"no pixel rate control in subdev %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rcar_csi2*, i32)* @rcsi2_calc_mbps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcsi2_calc_mbps(%struct.rcar_csi2* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rcar_csi2*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca %struct.v4l2_ctrl*, align 8
  %8 = alloca i32, align 4
  store %struct.rcar_csi2* %0, %struct.rcar_csi2** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.rcar_csi2*, %struct.rcar_csi2** %4, align 8
  %10 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %9, i32 0, i32 2
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %10, align 8
  %12 = icmp ne %struct.v4l2_subdev* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %49

16:                                               ; preds = %2
  %17 = load %struct.rcar_csi2*, %struct.rcar_csi2** %4, align 8
  %18 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %17, i32 0, i32 2
  %19 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %18, align 8
  store %struct.v4l2_subdev* %19, %struct.v4l2_subdev** %6, align 8
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %21 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @V4L2_CID_PIXEL_RATE, align 4
  %24 = call %struct.v4l2_ctrl* @v4l2_ctrl_find(i32 %22, i32 %23)
  store %struct.v4l2_ctrl* %24, %struct.v4l2_ctrl** %7, align 8
  %25 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %26 = icmp ne %struct.v4l2_ctrl* %25, null
  br i1 %26, label %37, label %27

27:                                               ; preds = %16
  %28 = load %struct.rcar_csi2*, %struct.rcar_csi2** %4, align 8
  %29 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %32 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %49

37:                                               ; preds = %16
  %38 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %39 = call i32 @v4l2_ctrl_g_ctrl_int64(%struct.v4l2_ctrl* %38)
  %40 = load i32, i32* %5, align 4
  %41 = mul i32 %39, %40
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.rcar_csi2*, %struct.rcar_csi2** %4, align 8
  %44 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = mul nsw i32 %45, 1000000
  %47 = call i32 @do_div(i32 %42, i32 %46)
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %37, %27, %13
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.v4l2_ctrl* @v4l2_ctrl_find(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @v4l2_ctrl_g_ctrl_int64(%struct.v4l2_ctrl*) #1

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
