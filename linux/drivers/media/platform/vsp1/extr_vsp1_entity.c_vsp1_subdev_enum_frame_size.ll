; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_entity.c_vsp1_subdev_enum_frame_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_entity.c_vsp1_subdev_enum_frame_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_frame_size_enum = type { i64, i32, i32, i32, i32, i32, i64, i32 }
%struct.vsp1_entity = type { i32 }
%struct.v4l2_mbus_framefmt = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vsp1_subdev_enum_frame_size(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_frame_size_enum* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.v4l2_subdev*, align 8
  %10 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %11 = alloca %struct.v4l2_subdev_frame_size_enum*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.vsp1_entity*, align 8
  %17 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %18 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %19 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %9, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %10, align 8
  store %struct.v4l2_subdev_frame_size_enum* %2, %struct.v4l2_subdev_frame_size_enum** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %21 = call %struct.vsp1_entity* @to_vsp1_entity(%struct.v4l2_subdev* %20)
  store %struct.vsp1_entity* %21, %struct.vsp1_entity** %16, align 8
  store i32 0, i32* %19, align 4
  %22 = load %struct.vsp1_entity*, %struct.vsp1_entity** %16, align 8
  %23 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %10, align 8
  %24 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %11, align 8
  %25 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.v4l2_subdev_pad_config* @vsp1_entity_get_pad_config(%struct.vsp1_entity* %22, %struct.v4l2_subdev_pad_config* %23, i32 %26)
  store %struct.v4l2_subdev_pad_config* %27, %struct.v4l2_subdev_pad_config** %17, align 8
  %28 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %17, align 8
  %29 = icmp ne %struct.v4l2_subdev_pad_config* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %7
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %8, align 4
  br label %103

33:                                               ; preds = %7
  %34 = load %struct.vsp1_entity*, %struct.vsp1_entity** %16, align 8
  %35 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %17, align 8
  %36 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %11, align 8
  %37 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = call %struct.v4l2_mbus_framefmt* @vsp1_entity_get_pad_format(%struct.vsp1_entity* %34, %struct.v4l2_subdev_pad_config* %35, i32 %38)
  store %struct.v4l2_mbus_framefmt* %39, %struct.v4l2_mbus_framefmt** %18, align 8
  %40 = load %struct.vsp1_entity*, %struct.vsp1_entity** %16, align 8
  %41 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %40, i32 0, i32 0
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %11, align 8
  %44 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %43, i32 0, i32 6
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %33
  %48 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %11, align 8
  %49 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %18, align 8
  %52 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %50, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %47, %33
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %19, align 4
  br label %98

58:                                               ; preds = %47
  %59 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %11, align 8
  %60 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %58
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %11, align 8
  %66 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* %14, align 4
  %68 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %11, align 8
  %69 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* %13, align 4
  %71 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %11, align 8
  %72 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* %15, align 4
  %74 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %11, align 8
  %75 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 4
  br label %97

76:                                               ; preds = %58
  %77 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %18, align 8
  %78 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %11, align 8
  %81 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  %82 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %18, align 8
  %83 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %11, align 8
  %86 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 4
  %87 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %18, align 8
  %88 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %11, align 8
  %91 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 8
  %92 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %18, align 8
  %93 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %11, align 8
  %96 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %76, %63
  br label %98

98:                                               ; preds = %97, %55
  %99 = load %struct.vsp1_entity*, %struct.vsp1_entity** %16, align 8
  %100 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %99, i32 0, i32 0
  %101 = call i32 @mutex_unlock(i32* %100)
  %102 = load i32, i32* %19, align 4
  store i32 %102, i32* %8, align 4
  br label %103

103:                                              ; preds = %98, %30
  %104 = load i32, i32* %8, align 4
  ret i32 %104
}

declare dso_local %struct.vsp1_entity* @to_vsp1_entity(%struct.v4l2_subdev*) #1

declare dso_local %struct.v4l2_subdev_pad_config* @vsp1_entity_get_pad_config(%struct.vsp1_entity*, %struct.v4l2_subdev_pad_config*, i32) #1

declare dso_local %struct.v4l2_mbus_framefmt* @vsp1_entity_get_pad_format(%struct.vsp1_entity*, %struct.v4l2_subdev_pad_config*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
