; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_uds.c_uds_enum_frame_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_uds.c_uds_enum_frame_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_frame_size_enum = type { i64, i64, i8*, i8*, i8*, i8*, i64, i32 }
%struct.vsp1_uds = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.v4l2_mbus_framefmt = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@UDS_PAD_SINK = common dso_local global i64 0, align 8
@UDS_MIN_SIZE = common dso_local global i8* null, align 8
@UDS_MAX_SIZE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_frame_size_enum*)* @uds_enum_frame_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uds_enum_frame_size(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_frame_size_enum* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_frame_size_enum*, align 8
  %8 = alloca %struct.vsp1_uds*, align 8
  %9 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %10 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %11 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_frame_size_enum* %2, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %13 = call %struct.vsp1_uds* @to_uds(%struct.v4l2_subdev* %12)
  store %struct.vsp1_uds* %13, %struct.vsp1_uds** %8, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.vsp1_uds*, %struct.vsp1_uds** %8, align 8
  %15 = getelementptr inbounds %struct.vsp1_uds, %struct.vsp1_uds* %14, i32 0, i32 0
  %16 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %17 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.v4l2_subdev_pad_config* @vsp1_entity_get_pad_config(%struct.TYPE_3__* %15, %struct.v4l2_subdev_pad_config* %16, i32 %19)
  store %struct.v4l2_subdev_pad_config* %20, %struct.v4l2_subdev_pad_config** %9, align 8
  %21 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %9, align 8
  %22 = icmp ne %struct.v4l2_subdev_pad_config* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %94

26:                                               ; preds = %3
  %27 = load %struct.vsp1_uds*, %struct.vsp1_uds** %8, align 8
  %28 = getelementptr inbounds %struct.vsp1_uds, %struct.vsp1_uds* %27, i32 0, i32 0
  %29 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %9, align 8
  %30 = load i64, i64* @UDS_PAD_SINK, align 8
  %31 = call %struct.v4l2_mbus_framefmt* @vsp1_entity_get_pad_format(%struct.TYPE_3__* %28, %struct.v4l2_subdev_pad_config* %29, i64 %30)
  store %struct.v4l2_mbus_framefmt* %31, %struct.v4l2_mbus_framefmt** %10, align 8
  %32 = load %struct.vsp1_uds*, %struct.vsp1_uds** %8, align 8
  %33 = getelementptr inbounds %struct.vsp1_uds, %struct.vsp1_uds* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %37 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %36, i32 0, i32 6
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %26
  %41 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %42 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %10, align 8
  %45 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %43, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %40, %26
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %11, align 4
  br label %88

51:                                               ; preds = %40
  %52 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %53 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @UDS_PAD_SINK, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %51
  %58 = load i8*, i8** @UDS_MIN_SIZE, align 8
  %59 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %60 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %59, i32 0, i32 5
  store i8* %58, i8** %60, align 8
  %61 = load i8*, i8** @UDS_MAX_SIZE, align 8
  %62 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %63 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %62, i32 0, i32 4
  store i8* %61, i8** %63, align 8
  %64 = load i8*, i8** @UDS_MIN_SIZE, align 8
  %65 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %66 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %65, i32 0, i32 3
  store i8* %64, i8** %66, align 8
  %67 = load i8*, i8** @UDS_MAX_SIZE, align 8
  %68 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %69 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %68, i32 0, i32 2
  store i8* %67, i8** %69, align 8
  br label %87

70:                                               ; preds = %51
  %71 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %10, align 8
  %72 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %75 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %74, i32 0, i32 5
  %76 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %77 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %76, i32 0, i32 4
  %78 = call i32 @uds_output_limits(i32 %73, i8** %75, i8** %77)
  %79 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %10, align 8
  %80 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %83 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %82, i32 0, i32 3
  %84 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %85 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %84, i32 0, i32 2
  %86 = call i32 @uds_output_limits(i32 %81, i8** %83, i8** %85)
  br label %87

87:                                               ; preds = %70, %57
  br label %88

88:                                               ; preds = %87, %48
  %89 = load %struct.vsp1_uds*, %struct.vsp1_uds** %8, align 8
  %90 = getelementptr inbounds %struct.vsp1_uds, %struct.vsp1_uds* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = call i32 @mutex_unlock(i32* %91)
  %93 = load i32, i32* %11, align 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %88, %23
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local %struct.vsp1_uds* @to_uds(%struct.v4l2_subdev*) #1

declare dso_local %struct.v4l2_subdev_pad_config* @vsp1_entity_get_pad_config(%struct.TYPE_3__*, %struct.v4l2_subdev_pad_config*, i32) #1

declare dso_local %struct.v4l2_mbus_framefmt* @vsp1_entity_get_pad_format(%struct.TYPE_3__*, %struct.v4l2_subdev_pad_config*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @uds_output_limits(i32, i8**, i8**) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
