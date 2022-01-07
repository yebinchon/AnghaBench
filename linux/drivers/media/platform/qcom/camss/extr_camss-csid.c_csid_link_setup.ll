; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-csid.c_csid_link_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-csid.c_csid_link_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_entity = type { i32 }
%struct.media_pad = type { i32, %struct.media_entity* }
%struct.v4l2_subdev = type { i32 }
%struct.csid_device = type { i32, %struct.TYPE_10__, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.csiphy_device = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.csiphy_lanes_cfg }
%struct.csiphy_lanes_cfg = type { i32 }
%struct.v4l2_subdev_format = type { i32, i32, i32 }

@MEDIA_LNK_FL_ENABLED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@MSM_CSID_PAD_SRC = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.media_entity*, %struct.media_pad*, %struct.media_pad*, i32)* @csid_link_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csid_link_setup(%struct.media_entity* %0, %struct.media_pad* %1, %struct.media_pad* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.media_entity*, align 8
  %7 = alloca %struct.media_pad*, align 8
  %8 = alloca %struct.media_pad*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.v4l2_subdev*, align 8
  %11 = alloca %struct.csid_device*, align 8
  %12 = alloca %struct.csiphy_device*, align 8
  %13 = alloca %struct.csiphy_lanes_cfg*, align 8
  %14 = alloca %struct.v4l2_subdev_format, align 4
  store %struct.media_entity* %0, %struct.media_entity** %6, align 8
  store %struct.media_pad* %1, %struct.media_pad** %7, align 8
  store %struct.media_pad* %2, %struct.media_pad** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @MEDIA_LNK_FL_ENABLED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %4
  %20 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %21 = call i64 @media_entity_remote_pad(%struct.media_pad* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %103

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26, %4
  %28 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %29 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %102

34:                                               ; preds = %27
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @MEDIA_LNK_FL_ENABLED, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %102

39:                                               ; preds = %34
  %40 = bitcast %struct.v4l2_subdev_format* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %40, i8 0, i64 12, i1 false)
  %41 = load %struct.media_entity*, %struct.media_entity** %6, align 8
  %42 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity* %41)
  store %struct.v4l2_subdev* %42, %struct.v4l2_subdev** %10, align 8
  %43 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %10, align 8
  %44 = call i8* @v4l2_get_subdevdata(%struct.v4l2_subdev* %43)
  %45 = bitcast i8* %44 to %struct.csid_device*
  store %struct.csid_device* %45, %struct.csid_device** %11, align 8
  %46 = load %struct.csid_device*, %struct.csid_device** %11, align 8
  %47 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %46, i32 0, i32 2
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %39
  %54 = load i32, i32* @EBUSY, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %103

56:                                               ; preds = %39
  %57 = load %struct.media_pad*, %struct.media_pad** %8, align 8
  %58 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %57, i32 0, i32 1
  %59 = load %struct.media_entity*, %struct.media_entity** %58, align 8
  %60 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity* %59)
  store %struct.v4l2_subdev* %60, %struct.v4l2_subdev** %10, align 8
  %61 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %10, align 8
  %62 = call i8* @v4l2_get_subdevdata(%struct.v4l2_subdev* %61)
  %63 = bitcast i8* %62 to %struct.csiphy_device*
  store %struct.csiphy_device* %63, %struct.csiphy_device** %12, align 8
  %64 = load %struct.csiphy_device*, %struct.csiphy_device** %12, align 8
  %65 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = icmp ne %struct.TYPE_8__* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %56
  %70 = load i32, i32* @EPERM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  br label %103

72:                                               ; preds = %56
  %73 = load %struct.csiphy_device*, %struct.csiphy_device** %12, align 8
  %74 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.csid_device*, %struct.csid_device** %11, align 8
  %77 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 2
  store i32 %75, i32* %78, align 4
  %79 = load %struct.csiphy_device*, %struct.csiphy_device** %12, align 8
  %80 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  store %struct.csiphy_lanes_cfg* %83, %struct.csiphy_lanes_cfg** %13, align 8
  %84 = load %struct.csiphy_lanes_cfg*, %struct.csiphy_lanes_cfg** %13, align 8
  %85 = getelementptr inbounds %struct.csiphy_lanes_cfg, %struct.csiphy_lanes_cfg* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.csid_device*, %struct.csid_device** %11, align 8
  %88 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  store i32 %86, i32* %89, align 4
  %90 = load %struct.csiphy_lanes_cfg*, %struct.csiphy_lanes_cfg** %13, align 8
  %91 = call i32 @csid_get_lane_assign(%struct.csiphy_lanes_cfg* %90)
  %92 = load %struct.csid_device*, %struct.csid_device** %11, align 8
  %93 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  store i32 %91, i32* %94, align 4
  %95 = load i32, i32* @MSM_CSID_PAD_SRC, align 4
  %96 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %14, i32 0, i32 1
  store i32 %95, i32* %96, align 4
  %97 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  %98 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %14, i32 0, i32 0
  store i32 %97, i32* %98, align 4
  %99 = load %struct.csid_device*, %struct.csid_device** %11, align 8
  %100 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %99, i32 0, i32 0
  %101 = call i32 @csid_set_format(i32* %100, i32* null, %struct.v4l2_subdev_format* %14)
  br label %102

102:                                              ; preds = %72, %34, %27
  store i32 0, i32* %5, align 4
  br label %103

103:                                              ; preds = %102, %69, %53, %23
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i64 @media_entity_remote_pad(%struct.media_pad*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity*) #1

declare dso_local i8* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @csid_get_lane_assign(%struct.csiphy_lanes_cfg*) #1

declare dso_local i32 @csid_set_format(i32*, i32*, %struct.v4l2_subdev_format*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
