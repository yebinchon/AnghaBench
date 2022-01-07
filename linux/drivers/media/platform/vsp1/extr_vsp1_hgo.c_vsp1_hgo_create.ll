; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_hgo.c_vsp1_hgo_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_hgo.c_vsp1_hgo_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_hgo = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_8__ = type { i32, i8*, i8* }
%struct.vsp1_device = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@hgo_max_rgb_control = common dso_local global i32 0, align 4
@hgo_num_bins_control = common dso_local global i32 0, align 4
@VSP1_ENTITY_HGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"hgo\00", align 1
@hgo_entity_ops = common dso_local global i32 0, align 4
@hgo_mbus_formats = common dso_local global i32 0, align 4
@HGO_DATA_SIZE = common dso_local global i32 0, align 4
@V4L2_META_FMT_VSP1_HGO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vsp1_hgo* @vsp1_hgo_create(%struct.vsp1_device* %0) #0 {
  %2 = alloca %struct.vsp1_hgo*, align 8
  %3 = alloca %struct.vsp1_device*, align 8
  %4 = alloca %struct.vsp1_hgo*, align 8
  %5 = alloca i32, align 4
  store %struct.vsp1_device* %0, %struct.vsp1_device** %3, align 8
  %6 = load %struct.vsp1_device*, %struct.vsp1_device** %3, align 8
  %7 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.vsp1_hgo* @devm_kzalloc(i32 %8, i32 40, i32 %9)
  store %struct.vsp1_hgo* %10, %struct.vsp1_hgo** %4, align 8
  %11 = load %struct.vsp1_hgo*, %struct.vsp1_hgo** %4, align 8
  %12 = icmp eq %struct.vsp1_hgo* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.vsp1_hgo* @ERR_PTR(i32 %15)
  store %struct.vsp1_hgo* %16, %struct.vsp1_hgo** %2, align 8
  br label %85

17:                                               ; preds = %1
  %18 = load %struct.vsp1_hgo*, %struct.vsp1_hgo** %4, align 8
  %19 = getelementptr inbounds %struct.vsp1_hgo, %struct.vsp1_hgo* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load %struct.vsp1_device*, %struct.vsp1_device** %3, align 8
  %22 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 3
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 2, i32 1
  %29 = call i32 @v4l2_ctrl_handler_init(i32* %20, i32 %28)
  %30 = load %struct.vsp1_hgo*, %struct.vsp1_hgo** %4, align 8
  %31 = getelementptr inbounds %struct.vsp1_hgo, %struct.vsp1_hgo* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = call i8* @v4l2_ctrl_new_custom(i32* %32, i32* @hgo_max_rgb_control, i32* null)
  %34 = load %struct.vsp1_hgo*, %struct.vsp1_hgo** %4, align 8
  %35 = getelementptr inbounds %struct.vsp1_hgo, %struct.vsp1_hgo* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 2
  store i8* %33, i8** %36, align 8
  %37 = load %struct.vsp1_device*, %struct.vsp1_device** %3, align 8
  %38 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 3
  br i1 %42, label %43, label %51

43:                                               ; preds = %17
  %44 = load %struct.vsp1_hgo*, %struct.vsp1_hgo** %4, align 8
  %45 = getelementptr inbounds %struct.vsp1_hgo, %struct.vsp1_hgo* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = call i8* @v4l2_ctrl_new_custom(i32* %46, i32* @hgo_num_bins_control, i32* null)
  %48 = load %struct.vsp1_hgo*, %struct.vsp1_hgo** %4, align 8
  %49 = getelementptr inbounds %struct.vsp1_hgo, %struct.vsp1_hgo* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  store i8* %47, i8** %50, align 8
  br label %51

51:                                               ; preds = %43, %17
  %52 = load %struct.vsp1_hgo*, %struct.vsp1_hgo** %4, align 8
  %53 = getelementptr inbounds %struct.vsp1_hgo, %struct.vsp1_hgo* %52, i32 0, i32 0
  store i32 0, i32* %53, align 8
  %54 = load %struct.vsp1_hgo*, %struct.vsp1_hgo** %4, align 8
  %55 = getelementptr inbounds %struct.vsp1_hgo, %struct.vsp1_hgo* %54, i32 0, i32 1
  store i32 64, i32* %55, align 4
  %56 = load %struct.vsp1_hgo*, %struct.vsp1_hgo** %4, align 8
  %57 = getelementptr inbounds %struct.vsp1_hgo, %struct.vsp1_hgo* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load %struct.vsp1_hgo*, %struct.vsp1_hgo** %4, align 8
  %60 = getelementptr inbounds %struct.vsp1_hgo, %struct.vsp1_hgo* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  store i32* %58, i32** %63, align 8
  %64 = load %struct.vsp1_device*, %struct.vsp1_device** %3, align 8
  %65 = load %struct.vsp1_hgo*, %struct.vsp1_hgo** %4, align 8
  %66 = getelementptr inbounds %struct.vsp1_hgo, %struct.vsp1_hgo* %65, i32 0, i32 2
  %67 = load i32, i32* @VSP1_ENTITY_HGO, align 4
  %68 = load i32, i32* @hgo_mbus_formats, align 4
  %69 = load i32, i32* @hgo_mbus_formats, align 4
  %70 = call i32 @ARRAY_SIZE(i32 %69)
  %71 = load i32, i32* @HGO_DATA_SIZE, align 4
  %72 = load i32, i32* @V4L2_META_FMT_VSP1_HGO, align 4
  %73 = call i32 @vsp1_histogram_init(%struct.vsp1_device* %64, %struct.TYPE_9__* %66, i32 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* @hgo_entity_ops, i32 %68, i32 %70, i32 %71, i32 %72)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %51
  %77 = load %struct.vsp1_hgo*, %struct.vsp1_hgo** %4, align 8
  %78 = getelementptr inbounds %struct.vsp1_hgo, %struct.vsp1_hgo* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = call i32 @vsp1_entity_destroy(%struct.TYPE_10__* %79)
  %81 = load i32, i32* %5, align 4
  %82 = call %struct.vsp1_hgo* @ERR_PTR(i32 %81)
  store %struct.vsp1_hgo* %82, %struct.vsp1_hgo** %2, align 8
  br label %85

83:                                               ; preds = %51
  %84 = load %struct.vsp1_hgo*, %struct.vsp1_hgo** %4, align 8
  store %struct.vsp1_hgo* %84, %struct.vsp1_hgo** %2, align 8
  br label %85

85:                                               ; preds = %83, %76, %13
  %86 = load %struct.vsp1_hgo*, %struct.vsp1_hgo** %2, align 8
  ret %struct.vsp1_hgo* %86
}

declare dso_local %struct.vsp1_hgo* @devm_kzalloc(i32, i32, i32) #1

declare dso_local %struct.vsp1_hgo* @ERR_PTR(i32) #1

declare dso_local i32 @v4l2_ctrl_handler_init(i32*, i32) #1

declare dso_local i8* @v4l2_ctrl_new_custom(i32*, i32*, i32*) #1

declare dso_local i32 @vsp1_histogram_init(%struct.vsp1_device*, %struct.TYPE_9__*, i32, i8*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @vsp1_entity_destroy(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
