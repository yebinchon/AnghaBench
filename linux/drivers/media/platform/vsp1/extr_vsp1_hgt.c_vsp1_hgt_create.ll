; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_hgt.c_vsp1_hgt_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_hgt.c_vsp1_hgt_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_hgt = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.vsp1_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@hgt_hue_areas = common dso_local global i32 0, align 4
@VSP1_ENTITY_HGT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"hgt\00", align 1
@hgt_entity_ops = common dso_local global i32 0, align 4
@hgt_mbus_formats = common dso_local global i32 0, align 4
@HGT_DATA_SIZE = common dso_local global i32 0, align 4
@V4L2_META_FMT_VSP1_HGT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vsp1_hgt* @vsp1_hgt_create(%struct.vsp1_device* %0) #0 {
  %2 = alloca %struct.vsp1_hgt*, align 8
  %3 = alloca %struct.vsp1_device*, align 8
  %4 = alloca %struct.vsp1_hgt*, align 8
  %5 = alloca i32, align 4
  store %struct.vsp1_device* %0, %struct.vsp1_device** %3, align 8
  %6 = load %struct.vsp1_device*, %struct.vsp1_device** %3, align 8
  %7 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.vsp1_hgt* @devm_kzalloc(i32 %8, i32 16, i32 %9)
  store %struct.vsp1_hgt* %10, %struct.vsp1_hgt** %4, align 8
  %11 = load %struct.vsp1_hgt*, %struct.vsp1_hgt** %4, align 8
  %12 = icmp eq %struct.vsp1_hgt* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.vsp1_hgt* @ERR_PTR(i32 %15)
  store %struct.vsp1_hgt* %16, %struct.vsp1_hgt** %2, align 8
  br label %55

17:                                               ; preds = %1
  %18 = load %struct.vsp1_hgt*, %struct.vsp1_hgt** %4, align 8
  %19 = getelementptr inbounds %struct.vsp1_hgt, %struct.vsp1_hgt* %18, i32 0, i32 0
  %20 = call i32 @v4l2_ctrl_handler_init(i32* %19, i32 1)
  %21 = load %struct.vsp1_hgt*, %struct.vsp1_hgt** %4, align 8
  %22 = getelementptr inbounds %struct.vsp1_hgt, %struct.vsp1_hgt* %21, i32 0, i32 0
  %23 = call i32 @v4l2_ctrl_new_custom(i32* %22, i32* @hgt_hue_areas, i32* null)
  %24 = load %struct.vsp1_hgt*, %struct.vsp1_hgt** %4, align 8
  %25 = getelementptr inbounds %struct.vsp1_hgt, %struct.vsp1_hgt* %24, i32 0, i32 0
  %26 = load %struct.vsp1_hgt*, %struct.vsp1_hgt** %4, align 8
  %27 = getelementptr inbounds %struct.vsp1_hgt, %struct.vsp1_hgt* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32* %25, i32** %30, align 8
  %31 = load %struct.vsp1_device*, %struct.vsp1_device** %3, align 8
  %32 = load %struct.vsp1_hgt*, %struct.vsp1_hgt** %4, align 8
  %33 = getelementptr inbounds %struct.vsp1_hgt, %struct.vsp1_hgt* %32, i32 0, i32 1
  %34 = load i32, i32* @VSP1_ENTITY_HGT, align 4
  %35 = load i32, i32* @hgt_mbus_formats, align 4
  %36 = load i32, i32* @hgt_mbus_formats, align 4
  %37 = call i32 @ARRAY_SIZE(i32 %36)
  %38 = load i32, i32* @HGT_DATA_SIZE, align 4
  %39 = load i32, i32* @V4L2_META_FMT_VSP1_HGT, align 4
  %40 = call i32 @vsp1_histogram_init(%struct.vsp1_device* %31, %struct.TYPE_5__* %33, i32 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* @hgt_entity_ops, i32 %35, i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %17
  %44 = load %struct.vsp1_hgt*, %struct.vsp1_hgt** %4, align 8
  %45 = getelementptr inbounds %struct.vsp1_hgt, %struct.vsp1_hgt* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = call i32 @vsp1_entity_destroy(%struct.TYPE_6__* %46)
  %48 = load i32, i32* %5, align 4
  %49 = call %struct.vsp1_hgt* @ERR_PTR(i32 %48)
  store %struct.vsp1_hgt* %49, %struct.vsp1_hgt** %2, align 8
  br label %55

50:                                               ; preds = %17
  %51 = load %struct.vsp1_hgt*, %struct.vsp1_hgt** %4, align 8
  %52 = getelementptr inbounds %struct.vsp1_hgt, %struct.vsp1_hgt* %51, i32 0, i32 0
  %53 = call i32 @v4l2_ctrl_handler_setup(i32* %52)
  %54 = load %struct.vsp1_hgt*, %struct.vsp1_hgt** %4, align 8
  store %struct.vsp1_hgt* %54, %struct.vsp1_hgt** %2, align 8
  br label %55

55:                                               ; preds = %50, %43, %13
  %56 = load %struct.vsp1_hgt*, %struct.vsp1_hgt** %2, align 8
  ret %struct.vsp1_hgt* %56
}

declare dso_local %struct.vsp1_hgt* @devm_kzalloc(i32, i32, i32) #1

declare dso_local %struct.vsp1_hgt* @ERR_PTR(i32) #1

declare dso_local i32 @v4l2_ctrl_handler_init(i32*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_custom(i32*, i32*, i32*) #1

declare dso_local i32 @vsp1_histogram_init(%struct.vsp1_device*, %struct.TYPE_5__*, i32, i8*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @vsp1_entity_destroy(%struct.TYPE_6__*) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
