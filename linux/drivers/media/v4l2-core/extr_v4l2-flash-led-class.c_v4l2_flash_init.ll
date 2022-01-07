; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-flash-led-class.c_v4l2_flash_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-flash-led-class.c_v4l2_flash_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_flash = type { i32 }
%struct.device = type { i32 }
%struct.fwnode_handle = type { i32 }
%struct.led_classdev_flash = type { i32 }
%struct.v4l2_flash_ops = type { i32 }
%struct.v4l2_flash_config = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.v4l2_flash* @v4l2_flash_init(%struct.device* %0, %struct.fwnode_handle* %1, %struct.led_classdev_flash* %2, %struct.v4l2_flash_ops* %3, %struct.v4l2_flash_config* %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.fwnode_handle*, align 8
  %8 = alloca %struct.led_classdev_flash*, align 8
  %9 = alloca %struct.v4l2_flash_ops*, align 8
  %10 = alloca %struct.v4l2_flash_config*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.fwnode_handle* %1, %struct.fwnode_handle** %7, align 8
  store %struct.led_classdev_flash* %2, %struct.led_classdev_flash** %8, align 8
  store %struct.v4l2_flash_ops* %3, %struct.v4l2_flash_ops** %9, align 8
  store %struct.v4l2_flash_config* %4, %struct.v4l2_flash_config** %10, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = load %struct.fwnode_handle*, %struct.fwnode_handle** %7, align 8
  %13 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %8, align 8
  %14 = load %struct.v4l2_flash_ops*, %struct.v4l2_flash_ops** %9, align 8
  %15 = load %struct.v4l2_flash_config*, %struct.v4l2_flash_config** %10, align 8
  %16 = call %struct.v4l2_flash* @__v4l2_flash_init(%struct.device* %11, %struct.fwnode_handle* %12, %struct.led_classdev_flash* %13, i32* null, %struct.v4l2_flash_ops* %14, %struct.v4l2_flash_config* %15)
  ret %struct.v4l2_flash* %16
}

declare dso_local %struct.v4l2_flash* @__v4l2_flash_init(%struct.device*, %struct.fwnode_handle*, %struct.led_classdev_flash*, i32*, %struct.v4l2_flash_ops*, %struct.v4l2_flash_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
