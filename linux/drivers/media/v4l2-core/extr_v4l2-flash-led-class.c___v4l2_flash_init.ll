; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-flash-led-class.c___v4l2_flash_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-flash-led-class.c___v4l2_flash_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_flash = type { %struct.v4l2_flash_ops*, %struct.led_classdev*, %struct.led_classdev_flash*, %struct.v4l2_subdev }
%struct.v4l2_subdev = type { %struct.TYPE_3__, i32, %struct.fwnode_handle*, i32, i32, i32*, %struct.device* }
%struct.TYPE_3__ = type { i32 }
%struct.device = type { i32 }
%struct.fwnode_handle = type { i32 }
%struct.led_classdev_flash = type { i32 }
%struct.led_classdev = type { i32 }
%struct.v4l2_flash_ops = type { i32 }
%struct.v4l2_flash_config = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@v4l2_flash_subdev_ops = common dso_local global i32 0, align 4
@v4l2_flash_subdev_internal_ops = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@MEDIA_ENT_F_FLASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.v4l2_flash* (%struct.device*, %struct.fwnode_handle*, %struct.led_classdev_flash*, %struct.led_classdev*, %struct.v4l2_flash_ops*, %struct.v4l2_flash_config*)* @__v4l2_flash_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.v4l2_flash* @__v4l2_flash_init(%struct.device* %0, %struct.fwnode_handle* %1, %struct.led_classdev_flash* %2, %struct.led_classdev* %3, %struct.v4l2_flash_ops* %4, %struct.v4l2_flash_config* %5) #0 {
  %7 = alloca %struct.v4l2_flash*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.fwnode_handle*, align 8
  %10 = alloca %struct.led_classdev_flash*, align 8
  %11 = alloca %struct.led_classdev*, align 8
  %12 = alloca %struct.v4l2_flash_ops*, align 8
  %13 = alloca %struct.v4l2_flash_config*, align 8
  %14 = alloca %struct.v4l2_flash*, align 8
  %15 = alloca %struct.v4l2_subdev*, align 8
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %8, align 8
  store %struct.fwnode_handle* %1, %struct.fwnode_handle** %9, align 8
  store %struct.led_classdev_flash* %2, %struct.led_classdev_flash** %10, align 8
  store %struct.led_classdev* %3, %struct.led_classdev** %11, align 8
  store %struct.v4l2_flash_ops* %4, %struct.v4l2_flash_ops** %12, align 8
  store %struct.v4l2_flash_config* %5, %struct.v4l2_flash_config** %13, align 8
  %17 = load %struct.v4l2_flash_config*, %struct.v4l2_flash_config** %13, align 8
  %18 = icmp ne %struct.v4l2_flash_config* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %6
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.v4l2_flash* @ERR_PTR(i32 %21)
  store %struct.v4l2_flash* %22, %struct.v4l2_flash** %7, align 8
  br label %121

23:                                               ; preds = %6
  %24 = load %struct.device*, %struct.device** %8, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.v4l2_flash* @devm_kzalloc(%struct.device* %24, i32 64, i32 %25)
  store %struct.v4l2_flash* %26, %struct.v4l2_flash** %14, align 8
  %27 = load %struct.v4l2_flash*, %struct.v4l2_flash** %14, align 8
  %28 = icmp ne %struct.v4l2_flash* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  %32 = call %struct.v4l2_flash* @ERR_PTR(i32 %31)
  store %struct.v4l2_flash* %32, %struct.v4l2_flash** %7, align 8
  br label %121

33:                                               ; preds = %23
  %34 = load %struct.v4l2_flash*, %struct.v4l2_flash** %14, align 8
  %35 = getelementptr inbounds %struct.v4l2_flash, %struct.v4l2_flash* %34, i32 0, i32 3
  store %struct.v4l2_subdev* %35, %struct.v4l2_subdev** %15, align 8
  %36 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %10, align 8
  %37 = load %struct.v4l2_flash*, %struct.v4l2_flash** %14, align 8
  %38 = getelementptr inbounds %struct.v4l2_flash, %struct.v4l2_flash* %37, i32 0, i32 2
  store %struct.led_classdev_flash* %36, %struct.led_classdev_flash** %38, align 8
  %39 = load %struct.led_classdev*, %struct.led_classdev** %11, align 8
  %40 = load %struct.v4l2_flash*, %struct.v4l2_flash** %14, align 8
  %41 = getelementptr inbounds %struct.v4l2_flash, %struct.v4l2_flash* %40, i32 0, i32 1
  store %struct.led_classdev* %39, %struct.led_classdev** %41, align 8
  %42 = load %struct.v4l2_flash_ops*, %struct.v4l2_flash_ops** %12, align 8
  %43 = load %struct.v4l2_flash*, %struct.v4l2_flash** %14, align 8
  %44 = getelementptr inbounds %struct.v4l2_flash, %struct.v4l2_flash* %43, i32 0, i32 0
  store %struct.v4l2_flash_ops* %42, %struct.v4l2_flash_ops** %44, align 8
  %45 = load %struct.device*, %struct.device** %8, align 8
  %46 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %15, align 8
  %47 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %46, i32 0, i32 6
  store %struct.device* %45, %struct.device** %47, align 8
  %48 = load %struct.fwnode_handle*, %struct.fwnode_handle** %9, align 8
  %49 = icmp ne %struct.fwnode_handle* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %33
  %51 = load %struct.fwnode_handle*, %struct.fwnode_handle** %9, align 8
  br label %55

52:                                               ; preds = %33
  %53 = load %struct.device*, %struct.device** %8, align 8
  %54 = call %struct.fwnode_handle* @dev_fwnode(%struct.device* %53)
  br label %55

55:                                               ; preds = %52, %50
  %56 = phi %struct.fwnode_handle* [ %51, %50 ], [ %54, %52 ]
  %57 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %15, align 8
  %58 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %57, i32 0, i32 2
  store %struct.fwnode_handle* %56, %struct.fwnode_handle** %58, align 8
  %59 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %15, align 8
  %60 = call i32 @v4l2_subdev_init(%struct.v4l2_subdev* %59, i32* @v4l2_flash_subdev_ops)
  %61 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %15, align 8
  %62 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %61, i32 0, i32 5
  store i32* @v4l2_flash_subdev_internal_ops, i32** %62, align 8
  %63 = load i32, i32* @V4L2_SUBDEV_FL_HAS_DEVNODE, align 4
  %64 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %15, align 8
  %65 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  %68 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %15, align 8
  %69 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.v4l2_flash_config*, %struct.v4l2_flash_config** %13, align 8
  %72 = getelementptr inbounds %struct.v4l2_flash_config, %struct.v4l2_flash_config* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @strscpy(i32 %70, i32 %73, i32 4)
  %75 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %15, align 8
  %76 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %75, i32 0, i32 0
  %77 = call i32 @media_entity_pads_init(%struct.TYPE_3__* %76, i32 0, i32* null)
  store i32 %77, i32* %16, align 4
  %78 = load i32, i32* %16, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %55
  %81 = load i32, i32* %16, align 4
  %82 = call %struct.v4l2_flash* @ERR_PTR(i32 %81)
  store %struct.v4l2_flash* %82, %struct.v4l2_flash** %7, align 8
  br label %121

83:                                               ; preds = %55
  %84 = load i32, i32* @MEDIA_ENT_F_FLASH, align 4
  %85 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %15, align 8
  %86 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 8
  %88 = load %struct.v4l2_flash*, %struct.v4l2_flash** %14, align 8
  %89 = load %struct.v4l2_flash_config*, %struct.v4l2_flash_config** %13, align 8
  %90 = call i32 @v4l2_flash_init_controls(%struct.v4l2_flash* %88, %struct.v4l2_flash_config* %89)
  store i32 %90, i32* %16, align 4
  %91 = load i32, i32* %16, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %83
  br label %115

94:                                               ; preds = %83
  %95 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %15, align 8
  %96 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %95, i32 0, i32 2
  %97 = load %struct.fwnode_handle*, %struct.fwnode_handle** %96, align 8
  %98 = call i32 @fwnode_handle_get(%struct.fwnode_handle* %97)
  %99 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %15, align 8
  %100 = call i32 @v4l2_async_register_subdev(%struct.v4l2_subdev* %99)
  store i32 %100, i32* %16, align 4
  %101 = load i32, i32* %16, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %94
  br label %106

104:                                              ; preds = %94
  %105 = load %struct.v4l2_flash*, %struct.v4l2_flash** %14, align 8
  store %struct.v4l2_flash* %105, %struct.v4l2_flash** %7, align 8
  br label %121

106:                                              ; preds = %103
  %107 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %15, align 8
  %108 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %107, i32 0, i32 2
  %109 = load %struct.fwnode_handle*, %struct.fwnode_handle** %108, align 8
  %110 = call i32 @fwnode_handle_put(%struct.fwnode_handle* %109)
  %111 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %15, align 8
  %112 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @v4l2_ctrl_handler_free(i32 %113)
  br label %115

115:                                              ; preds = %106, %93
  %116 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %15, align 8
  %117 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %116, i32 0, i32 0
  %118 = call i32 @media_entity_cleanup(%struct.TYPE_3__* %117)
  %119 = load i32, i32* %16, align 4
  %120 = call %struct.v4l2_flash* @ERR_PTR(i32 %119)
  store %struct.v4l2_flash* %120, %struct.v4l2_flash** %7, align 8
  br label %121

121:                                              ; preds = %115, %104, %80, %29, %19
  %122 = load %struct.v4l2_flash*, %struct.v4l2_flash** %7, align 8
  ret %struct.v4l2_flash* %122
}

declare dso_local %struct.v4l2_flash* @ERR_PTR(i32) #1

declare dso_local %struct.v4l2_flash* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.fwnode_handle* @dev_fwnode(%struct.device*) #1

declare dso_local i32 @v4l2_subdev_init(%struct.v4l2_subdev*, i32*) #1

declare dso_local i32 @strscpy(i32, i32, i32) #1

declare dso_local i32 @media_entity_pads_init(%struct.TYPE_3__*, i32, i32*) #1

declare dso_local i32 @v4l2_flash_init_controls(%struct.v4l2_flash*, %struct.v4l2_flash_config*) #1

declare dso_local i32 @fwnode_handle_get(%struct.fwnode_handle*) #1

declare dso_local i32 @v4l2_async_register_subdev(%struct.v4l2_subdev*) #1

declare dso_local i32 @fwnode_handle_put(%struct.fwnode_handle*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32) #1

declare dso_local i32 @media_entity_cleanup(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
