; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_histo.c_histo_set_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_histo.c_histo_set_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_selection = type { i64, i64, i32 }
%struct.vsp1_histogram = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@HISTO_PAD_SINK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_SEL_TGT_CROP = common dso_local global i64 0, align 8
@V4L2_SEL_TGT_COMPOSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_selection*)* @histo_set_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @histo_set_selection(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_selection*, align 8
  %8 = alloca %struct.vsp1_histogram*, align 8
  %9 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %10 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_selection* %2, %struct.v4l2_subdev_selection** %7, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %12 = call %struct.vsp1_histogram* @subdev_to_histo(%struct.v4l2_subdev* %11)
  store %struct.vsp1_histogram* %12, %struct.vsp1_histogram** %8, align 8
  %13 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @HISTO_PAD_SINK, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %71

21:                                               ; preds = %3
  %22 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %8, align 8
  %23 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %8, align 8
  %27 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %26, i32 0, i32 0
  %28 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %29 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.v4l2_subdev_pad_config* @vsp1_entity_get_pad_config(%struct.TYPE_2__* %27, %struct.v4l2_subdev_pad_config* %28, i32 %31)
  store %struct.v4l2_subdev_pad_config* %32, %struct.v4l2_subdev_pad_config** %9, align 8
  %33 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %9, align 8
  %34 = icmp ne %struct.v4l2_subdev_pad_config* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %21
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %10, align 4
  br label %65

38:                                               ; preds = %21
  %39 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @V4L2_SEL_TGT_CROP, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %46 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %9, align 8
  %47 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %48 = call i32 @histo_set_crop(%struct.v4l2_subdev* %45, %struct.v4l2_subdev_pad_config* %46, %struct.v4l2_subdev_selection* %47)
  store i32 %48, i32* %10, align 4
  br label %64

49:                                               ; preds = %38
  %50 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %51 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @V4L2_SEL_TGT_COMPOSE, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %57 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %9, align 8
  %58 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %59 = call i32 @histo_set_compose(%struct.v4l2_subdev* %56, %struct.v4l2_subdev_pad_config* %57, %struct.v4l2_subdev_selection* %58)
  store i32 %59, i32* %10, align 4
  br label %63

60:                                               ; preds = %49
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %60, %55
  br label %64

64:                                               ; preds = %63, %44
  br label %65

65:                                               ; preds = %64, %35
  %66 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %8, align 8
  %67 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %65, %18
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local %struct.vsp1_histogram* @subdev_to_histo(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.v4l2_subdev_pad_config* @vsp1_entity_get_pad_config(%struct.TYPE_2__*, %struct.v4l2_subdev_pad_config*, i32) #1

declare dso_local i32 @histo_set_crop(%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_selection*) #1

declare dso_local i32 @histo_set_compose(%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_selection*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
