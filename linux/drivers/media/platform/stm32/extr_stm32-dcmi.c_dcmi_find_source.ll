; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/stm32/extr_stm32-dcmi.c_dcmi_find_source.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/stm32/extr_stm32-dcmi.c_dcmi_find_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_entity = type { %struct.media_pad* }
%struct.media_pad = type { i32, %struct.media_entity* }
%struct.stm32_dcmi = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.media_entity }

@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.media_entity* (%struct.stm32_dcmi*)* @dcmi_find_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.media_entity* @dcmi_find_source(%struct.stm32_dcmi* %0) #0 {
  %2 = alloca %struct.stm32_dcmi*, align 8
  %3 = alloca %struct.media_entity*, align 8
  %4 = alloca %struct.media_pad*, align 8
  store %struct.stm32_dcmi* %0, %struct.stm32_dcmi** %2, align 8
  %5 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %2, align 8
  %6 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.media_entity* %8, %struct.media_entity** %3, align 8
  br label %9

9:                                                ; preds = %1, %33
  %10 = load %struct.media_entity*, %struct.media_entity** %3, align 8
  %11 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %10, i32 0, i32 0
  %12 = load %struct.media_pad*, %struct.media_pad** %11, align 8
  %13 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %12, i64 0
  store %struct.media_pad* %13, %struct.media_pad** %4, align 8
  %14 = load %struct.media_pad*, %struct.media_pad** %4, align 8
  %15 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %9
  br label %37

21:                                               ; preds = %9
  %22 = load %struct.media_pad*, %struct.media_pad** %4, align 8
  %23 = call %struct.media_pad* @media_entity_remote_pad(%struct.media_pad* %22)
  store %struct.media_pad* %23, %struct.media_pad** %4, align 8
  %24 = load %struct.media_pad*, %struct.media_pad** %4, align 8
  %25 = icmp ne %struct.media_pad* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.media_pad*, %struct.media_pad** %4, align 8
  %28 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %27, i32 0, i32 1
  %29 = load %struct.media_entity*, %struct.media_entity** %28, align 8
  %30 = call i32 @is_media_entity_v4l2_subdev(%struct.media_entity* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %26, %21
  br label %37

33:                                               ; preds = %26
  %34 = load %struct.media_pad*, %struct.media_pad** %4, align 8
  %35 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %34, i32 0, i32 1
  %36 = load %struct.media_entity*, %struct.media_entity** %35, align 8
  store %struct.media_entity* %36, %struct.media_entity** %3, align 8
  br label %9

37:                                               ; preds = %32, %20
  %38 = load %struct.media_entity*, %struct.media_entity** %3, align 8
  ret %struct.media_entity* %38
}

declare dso_local %struct.media_pad* @media_entity_remote_pad(%struct.media_pad*) #1

declare dso_local i32 @is_media_entity_v4l2_subdev(%struct.media_entity*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
