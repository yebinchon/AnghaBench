; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss.c_camss_find_sensor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss.c_camss_find_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_entity = type { i64, %struct.media_pad* }
%struct.media_pad = type { i32, %struct.media_entity* }

@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@MEDIA_ENT_F_CAM_SENSOR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.media_entity* @camss_find_sensor(%struct.media_entity* %0) #0 {
  %2 = alloca %struct.media_entity*, align 8
  %3 = alloca %struct.media_entity*, align 8
  %4 = alloca %struct.media_pad*, align 8
  store %struct.media_entity* %0, %struct.media_entity** %3, align 8
  br label %5

5:                                                ; preds = %1, %40
  %6 = load %struct.media_entity*, %struct.media_entity** %3, align 8
  %7 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %6, i32 0, i32 1
  %8 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %9 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %8, i64 0
  store %struct.media_pad* %9, %struct.media_pad** %4, align 8
  %10 = load %struct.media_pad*, %struct.media_pad** %4, align 8
  %11 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %5
  store %struct.media_entity* null, %struct.media_entity** %2, align 8
  br label %41

17:                                               ; preds = %5
  %18 = load %struct.media_pad*, %struct.media_pad** %4, align 8
  %19 = call %struct.media_pad* @media_entity_remote_pad(%struct.media_pad* %18)
  store %struct.media_pad* %19, %struct.media_pad** %4, align 8
  %20 = load %struct.media_pad*, %struct.media_pad** %4, align 8
  %21 = icmp ne %struct.media_pad* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.media_pad*, %struct.media_pad** %4, align 8
  %24 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %23, i32 0, i32 1
  %25 = load %struct.media_entity*, %struct.media_entity** %24, align 8
  %26 = call i32 @is_media_entity_v4l2_subdev(%struct.media_entity* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %22, %17
  store %struct.media_entity* null, %struct.media_entity** %2, align 8
  br label %41

29:                                               ; preds = %22
  %30 = load %struct.media_pad*, %struct.media_pad** %4, align 8
  %31 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %30, i32 0, i32 1
  %32 = load %struct.media_entity*, %struct.media_entity** %31, align 8
  store %struct.media_entity* %32, %struct.media_entity** %3, align 8
  %33 = load %struct.media_entity*, %struct.media_entity** %3, align 8
  %34 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MEDIA_ENT_F_CAM_SENSOR, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load %struct.media_entity*, %struct.media_entity** %3, align 8
  store %struct.media_entity* %39, %struct.media_entity** %2, align 8
  br label %41

40:                                               ; preds = %29
  br label %5

41:                                               ; preds = %38, %28, %16
  %42 = load %struct.media_entity*, %struct.media_entity** %2, align 8
  ret %struct.media_entity* %42
}

declare dso_local %struct.media_pad* @media_entity_remote_pad(%struct.media_pad*) #1

declare dso_local i32 @is_media_entity_v4l2_subdev(%struct.media_entity*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
