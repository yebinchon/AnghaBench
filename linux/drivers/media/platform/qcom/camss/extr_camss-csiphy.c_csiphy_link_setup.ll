; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-csiphy.c_csiphy_link_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-csiphy.c_csiphy_link_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_entity = type { i32 }
%struct.media_pad = type { i32, %struct.media_entity* }
%struct.v4l2_subdev = type { i32 }
%struct.csiphy_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.csid_device = type { i32 }

@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@MEDIA_LNK_FL_ENABLED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.media_entity*, %struct.media_pad*, %struct.media_pad*, i32)* @csiphy_link_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csiphy_link_setup(%struct.media_entity* %0, %struct.media_pad* %1, %struct.media_pad* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.media_entity*, align 8
  %7 = alloca %struct.media_pad*, align 8
  %8 = alloca %struct.media_pad*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.v4l2_subdev*, align 8
  %11 = alloca %struct.csiphy_device*, align 8
  %12 = alloca %struct.csid_device*, align 8
  store %struct.media_entity* %0, %struct.media_entity** %6, align 8
  store %struct.media_pad* %1, %struct.media_pad** %7, align 8
  store %struct.media_pad* %2, %struct.media_pad** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %14 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @MEDIA_PAD_FL_SOURCE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %50

19:                                               ; preds = %4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @MEDIA_LNK_FL_ENABLED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %50

24:                                               ; preds = %19
  %25 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %26 = call i64 @media_entity_remote_pad(%struct.media_pad* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %51

31:                                               ; preds = %24
  %32 = load %struct.media_entity*, %struct.media_entity** %6, align 8
  %33 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity* %32)
  store %struct.v4l2_subdev* %33, %struct.v4l2_subdev** %10, align 8
  %34 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %10, align 8
  %35 = call i8* @v4l2_get_subdevdata(%struct.v4l2_subdev* %34)
  %36 = bitcast i8* %35 to %struct.csiphy_device*
  store %struct.csiphy_device* %36, %struct.csiphy_device** %11, align 8
  %37 = load %struct.media_pad*, %struct.media_pad** %8, align 8
  %38 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %37, i32 0, i32 1
  %39 = load %struct.media_entity*, %struct.media_entity** %38, align 8
  %40 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity* %39)
  store %struct.v4l2_subdev* %40, %struct.v4l2_subdev** %10, align 8
  %41 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %10, align 8
  %42 = call i8* @v4l2_get_subdevdata(%struct.v4l2_subdev* %41)
  %43 = bitcast i8* %42 to %struct.csid_device*
  store %struct.csid_device* %43, %struct.csid_device** %12, align 8
  %44 = load %struct.csid_device*, %struct.csid_device** %12, align 8
  %45 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.csiphy_device*, %struct.csiphy_device** %11, align 8
  %48 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 4
  br label %50

50:                                               ; preds = %31, %19, %4
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %50, %28
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i64 @media_entity_remote_pad(%struct.media_pad*) #1

declare dso_local %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity*) #1

declare dso_local i8* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
