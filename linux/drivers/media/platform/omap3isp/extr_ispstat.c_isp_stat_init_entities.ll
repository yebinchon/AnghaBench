; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispstat.c_isp_stat_init_entities.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispstat.c_isp_stat_init_entities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ispstat = type { %struct.TYPE_2__, %struct.v4l2_subdev }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_subdev = type { i32, i32, i32, %struct.media_entity }
%struct.media_entity = type { i32* }
%struct.v4l2_subdev_ops = type { i32 }

@V4L2_SUBDEV_NAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"OMAP3 ISP %s\00", align 1
@V4L2_SUBDEV_FL_HAS_EVENTS = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_MUST_CONNECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ispstat*, i8*, %struct.v4l2_subdev_ops*)* @isp_stat_init_entities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp_stat_init_entities(%struct.ispstat* %0, i8* %1, %struct.v4l2_subdev_ops* %2) #0 {
  %4 = alloca %struct.ispstat*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_subdev_ops*, align 8
  %7 = alloca %struct.v4l2_subdev*, align 8
  %8 = alloca %struct.media_entity*, align 8
  store %struct.ispstat* %0, %struct.ispstat** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_subdev_ops* %2, %struct.v4l2_subdev_ops** %6, align 8
  %9 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %10 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %9, i32 0, i32 1
  store %struct.v4l2_subdev* %10, %struct.v4l2_subdev** %7, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %11, i32 0, i32 3
  store %struct.media_entity* %12, %struct.media_entity** %8, align 8
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %14 = load %struct.v4l2_subdev_ops*, %struct.v4l2_subdev_ops** %6, align 8
  %15 = call i32 @v4l2_subdev_init(%struct.v4l2_subdev* %13, %struct.v4l2_subdev_ops* %14)
  %16 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @V4L2_SUBDEV_NAME_SIZE, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @snprintf(i32 %18, i32 %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = call i32 @BIT(i32 16)
  %23 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @V4L2_SUBDEV_FL_HAS_EVENTS, align 4
  %26 = load i32, i32* @V4L2_SUBDEV_FL_HAS_DEVNODE, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %33 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %34 = call i32 @v4l2_set_subdevdata(%struct.v4l2_subdev* %32, %struct.ispstat* %33)
  %35 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  %36 = load i32, i32* @MEDIA_PAD_FL_MUST_CONNECT, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %39 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = load %struct.media_entity*, %struct.media_entity** %8, align 8
  %42 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %41, i32 0, i32 0
  store i32* null, i32** %42, align 8
  %43 = load %struct.media_entity*, %struct.media_entity** %8, align 8
  %44 = load %struct.ispstat*, %struct.ispstat** %4, align 8
  %45 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %44, i32 0, i32 0
  %46 = call i32 @media_entity_pads_init(%struct.media_entity* %43, i32 1, %struct.TYPE_2__* %45)
  ret i32 %46
}

declare dso_local i32 @v4l2_subdev_init(%struct.v4l2_subdev*, %struct.v4l2_subdev_ops*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @v4l2_set_subdevdata(%struct.v4l2_subdev*, %struct.ispstat*) #1

declare dso_local i32 @media_entity_pads_init(%struct.media_entity*, i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
