; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_entity.c_vsp1_subdev_enum_mbus_code.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_entity.c_vsp1_subdev_enum_mbus_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_mbus_code_enum = type { i64, i32, i32, i32 }
%struct.vsp1_entity = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vsp1_subdev_enum_mbus_code(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_mbus_code_enum* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.v4l2_subdev*, align 8
  %8 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %9 = alloca %struct.v4l2_subdev_mbus_code_enum*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.vsp1_entity*, align 8
  %13 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %14 = alloca %struct.v4l2_mbus_framefmt*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %7, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %8, align 8
  store %struct.v4l2_subdev_mbus_code_enum* %2, %struct.v4l2_subdev_mbus_code_enum** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %16 = call %struct.vsp1_entity* @to_vsp1_entity(%struct.v4l2_subdev* %15)
  store %struct.vsp1_entity* %16, %struct.vsp1_entity** %12, align 8
  %17 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %9, align 8
  %18 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %5
  %22 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %9, align 8
  %23 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %11, align 4
  %26 = icmp uge i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %76

30:                                               ; preds = %21
  %31 = load i32*, i32** %10, align 8
  %32 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %9, align 8
  %33 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %31, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %9, align 8
  %39 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  br label %75

40:                                               ; preds = %5
  %41 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %9, align 8
  %42 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %76

48:                                               ; preds = %40
  %49 = load %struct.vsp1_entity*, %struct.vsp1_entity** %12, align 8
  %50 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %8, align 8
  %51 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %9, align 8
  %52 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call %struct.v4l2_subdev_pad_config* @vsp1_entity_get_pad_config(%struct.vsp1_entity* %49, %struct.v4l2_subdev_pad_config* %50, i32 %53)
  store %struct.v4l2_subdev_pad_config* %54, %struct.v4l2_subdev_pad_config** %13, align 8
  %55 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %13, align 8
  %56 = icmp ne %struct.v4l2_subdev_pad_config* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %48
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %6, align 4
  br label %76

60:                                               ; preds = %48
  %61 = load %struct.vsp1_entity*, %struct.vsp1_entity** %12, align 8
  %62 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %61, i32 0, i32 0
  %63 = call i32 @mutex_lock(i32* %62)
  %64 = load %struct.vsp1_entity*, %struct.vsp1_entity** %12, align 8
  %65 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %13, align 8
  %66 = call %struct.v4l2_mbus_framefmt* @vsp1_entity_get_pad_format(%struct.vsp1_entity* %64, %struct.v4l2_subdev_pad_config* %65, i32 0)
  store %struct.v4l2_mbus_framefmt* %66, %struct.v4l2_mbus_framefmt** %14, align 8
  %67 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %14, align 8
  %68 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %9, align 8
  %71 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  %72 = load %struct.vsp1_entity*, %struct.vsp1_entity** %12, align 8
  %73 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %72, i32 0, i32 0
  %74 = call i32 @mutex_unlock(i32* %73)
  br label %75

75:                                               ; preds = %60, %30
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %75, %57, %45, %27
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local %struct.vsp1_entity* @to_vsp1_entity(%struct.v4l2_subdev*) #1

declare dso_local %struct.v4l2_subdev_pad_config* @vsp1_entity_get_pad_config(%struct.vsp1_entity*, %struct.v4l2_subdev_pad_config*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.v4l2_mbus_framefmt* @vsp1_entity_get_pad_format(%struct.vsp1_entity*, %struct.v4l2_subdev_pad_config*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
