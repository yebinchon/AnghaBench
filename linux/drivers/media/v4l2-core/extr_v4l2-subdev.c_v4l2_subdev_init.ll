; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-subdev.c_v4l2_subdev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-subdev.c_v4l2_subdev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i8*, %struct.TYPE_2__, i32*, i32*, i64, i64, i32*, %struct.v4l2_subdev_ops*, i32 }
%struct.TYPE_2__ = type { i8*, i32, i32 }
%struct.v4l2_subdev_ops = type { i32 }

@MEDIA_ENTITY_TYPE_V4L2_SUBDEV = common dso_local global i32 0, align 4
@MEDIA_ENT_F_V4L2_SUBDEV_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v4l2_subdev_init(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_ops* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_subdev_ops*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_subdev_ops* %1, %struct.v4l2_subdev_ops** %4, align 8
  %5 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %6 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %5, i32 0, i32 8
  %7 = call i32 @INIT_LIST_HEAD(i32* %6)
  %8 = load %struct.v4l2_subdev_ops*, %struct.v4l2_subdev_ops** %4, align 8
  %9 = icmp ne %struct.v4l2_subdev_ops* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.v4l2_subdev_ops*, %struct.v4l2_subdev_ops** %4, align 8
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %15 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %14, i32 0, i32 7
  store %struct.v4l2_subdev_ops* %13, %struct.v4l2_subdev_ops** %15, align 8
  %16 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %17 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %16, i32 0, i32 6
  store i32* null, i32** %17, align 8
  %18 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %19 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %18, i32 0, i32 5
  store i64 0, i64* %19, align 8
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %21 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  store i8 0, i8* %23, align 1
  %24 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %25 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %24, i32 0, i32 4
  store i64 0, i64* %25, align 8
  %26 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %27 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %26, i32 0, i32 3
  store i32* null, i32** %27, align 8
  %28 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %29 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %28, i32 0, i32 2
  store i32* null, i32** %29, align 8
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
