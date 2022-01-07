; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-core.c_rvin_group_entity_to_csi_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-core.c_rvin_group_entity_to_csi_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvin_group = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.v4l2_subdev* }
%struct.v4l2_subdev = type { i32 }
%struct.media_entity = type { i32 }

@RVIN_CSI_MAX = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvin_group*, %struct.media_entity*)* @rvin_group_entity_to_csi_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rvin_group_entity_to_csi_id(%struct.rvin_group* %0, %struct.media_entity* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rvin_group*, align 8
  %5 = alloca %struct.media_entity*, align 8
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca i32, align 4
  store %struct.rvin_group* %0, %struct.rvin_group** %4, align 8
  store %struct.media_entity* %1, %struct.media_entity** %5, align 8
  %8 = load %struct.media_entity*, %struct.media_entity** %5, align 8
  %9 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity* %8)
  store %struct.v4l2_subdev* %9, %struct.v4l2_subdev** %6, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %28, %2
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @RVIN_CSI_MAX, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %10
  %15 = load %struct.rvin_group*, %struct.rvin_group** %4, align 8
  %16 = getelementptr inbounds %struct.rvin_group, %struct.rvin_group* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %21, align 8
  %23 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %24 = icmp eq %struct.v4l2_subdev* %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %14
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %34

27:                                               ; preds = %14
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %7, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %7, align 4
  br label %10

31:                                               ; preds = %10
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %31, %25
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(%struct.media_entity*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
