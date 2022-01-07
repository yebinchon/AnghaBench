; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_entity.c_uvc_mc_init_entity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_entity.c_uvc_mc_init_entity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_video_chain = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.uvc_entity = type { i32, %struct.TYPE_7__*, i32, i32, %struct.TYPE_8__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__, i32 }

@UVC_TT_STREAMING = common dso_local global i64 0, align 8
@uvc_subdev_ops = common dso_local global i32 0, align 4
@UVC_ENTITY_FLAG_DEFAULT = common dso_local global i32 0, align 4
@MEDIA_ENT_FL_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvc_video_chain*, %struct.uvc_entity*)* @uvc_mc_init_entity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_mc_init_entity(%struct.uvc_video_chain* %0, %struct.uvc_entity* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uvc_video_chain*, align 8
  %5 = alloca %struct.uvc_entity*, align 8
  %6 = alloca i32, align 4
  store %struct.uvc_video_chain* %0, %struct.uvc_video_chain** %4, align 8
  store %struct.uvc_entity* %1, %struct.uvc_entity** %5, align 8
  %7 = load %struct.uvc_entity*, %struct.uvc_entity** %5, align 8
  %8 = call i64 @UVC_ENTITY_TYPE(%struct.uvc_entity* %7)
  %9 = load i64, i64* @UVC_TT_STREAMING, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %45

11:                                               ; preds = %2
  %12 = load %struct.uvc_entity*, %struct.uvc_entity** %5, align 8
  %13 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %12, i32 0, i32 4
  %14 = call i32 @v4l2_subdev_init(%struct.TYPE_8__* %13, i32* @uvc_subdev_ops)
  %15 = load %struct.uvc_entity*, %struct.uvc_entity** %5, align 8
  %16 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.uvc_entity*, %struct.uvc_entity** %5, align 8
  %20 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @strscpy(i32 %18, i32 %21, i32 4)
  %23 = load %struct.uvc_entity*, %struct.uvc_entity** %5, align 8
  %24 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %struct.uvc_entity*, %struct.uvc_entity** %5, align 8
  %27 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.uvc_entity*, %struct.uvc_entity** %5, align 8
  %30 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @media_entity_pads_init(%struct.TYPE_9__* %25, i32 %28, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %11
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %82

37:                                               ; preds = %11
  %38 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %4, align 8
  %39 = getelementptr inbounds %struct.uvc_video_chain, %struct.uvc_video_chain* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load %struct.uvc_entity*, %struct.uvc_entity** %5, align 8
  %43 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %42, i32 0, i32 4
  %44 = call i32 @v4l2_device_register_subdev(i32* %41, %struct.TYPE_8__* %43)
  store i32 %44, i32* %6, align 4
  br label %80

45:                                               ; preds = %2
  %46 = load %struct.uvc_entity*, %struct.uvc_entity** %5, align 8
  %47 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %46, i32 0, i32 1
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = icmp ne %struct.TYPE_7__* %48, null
  br i1 %49, label %50, label %78

50:                                               ; preds = %45
  %51 = load %struct.uvc_entity*, %struct.uvc_entity** %5, align 8
  %52 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %51, i32 0, i32 1
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load %struct.uvc_entity*, %struct.uvc_entity** %5, align 8
  %56 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.uvc_entity*, %struct.uvc_entity** %5, align 8
  %59 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @media_entity_pads_init(%struct.TYPE_9__* %54, i32 %57, i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load %struct.uvc_entity*, %struct.uvc_entity** %5, align 8
  %63 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @UVC_ENTITY_FLAG_DEFAULT, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %50
  %69 = load i32, i32* @MEDIA_ENT_FL_DEFAULT, align 4
  %70 = load %struct.uvc_entity*, %struct.uvc_entity** %5, align 8
  %71 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %70, i32 0, i32 1
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %69
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %68, %50
  br label %79

78:                                               ; preds = %45
  store i32 0, i32* %6, align 4
  br label %79

79:                                               ; preds = %78, %77
  br label %80

80:                                               ; preds = %79, %37
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %80, %35
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i64 @UVC_ENTITY_TYPE(%struct.uvc_entity*) #1

declare dso_local i32 @v4l2_subdev_init(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @strscpy(i32, i32, i32) #1

declare dso_local i32 @media_entity_pads_init(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @v4l2_device_register_subdev(i32*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
