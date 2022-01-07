; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-core.c_s5c73m3_oif_registered.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-core.c_s5c73m3_oif_registered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.s5c73m3 = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Failed to register %s\0A\00", align 1
@S5C73M3_ISP_PAD = common dso_local global i32 0, align 4
@OIF_ISP_PAD = common dso_local global i32 0, align 4
@MEDIA_LNK_FL_IMMUTABLE = common dso_local global i32 0, align 4
@MEDIA_LNK_FL_ENABLED = common dso_local global i32 0, align 4
@S5C73M3_JPEG_PAD = common dso_local global i32 0, align 4
@OIF_JPEG_PAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @s5c73m3_oif_registered to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5c73m3_oif_registered(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.s5c73m3*, align 8
  %5 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  %6 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %7 = call %struct.s5c73m3* @oif_sd_to_s5c73m3(%struct.v4l2_subdev* %6)
  store %struct.s5c73m3* %7, %struct.s5c73m3** %4, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %9 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %12 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %11, i32 0, i32 1
  %13 = call i32 @v4l2_device_register_subdev(i32 %10, %struct.TYPE_4__* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %1
  %17 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %18 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %21 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @v4l2_err(i32 %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %52

26:                                               ; preds = %1
  %27 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %28 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* @S5C73M3_ISP_PAD, align 4
  %31 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %32 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* @OIF_ISP_PAD, align 4
  %35 = load i32, i32* @MEDIA_LNK_FL_IMMUTABLE, align 4
  %36 = load i32, i32* @MEDIA_LNK_FL_ENABLED, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @media_create_pad_link(i32* %29, i32 %30, i32* %33, i32 %34, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %40 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* @S5C73M3_JPEG_PAD, align 4
  %43 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %44 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* @OIF_JPEG_PAD, align 4
  %47 = load i32, i32* @MEDIA_LNK_FL_IMMUTABLE, align 4
  %48 = load i32, i32* @MEDIA_LNK_FL_ENABLED, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @media_create_pad_link(i32* %41, i32 %42, i32* %45, i32 %46, i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %26, %16
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.s5c73m3* @oif_sd_to_s5c73m3(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_device_register_subdev(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @v4l2_err(i32, i8*, i32) #1

declare dso_local i32 @media_create_pad_link(i32*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
