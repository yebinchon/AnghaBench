; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-core.c_s5c73m3_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-core.c_s5c73m3_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.v4l2_subdev = type { i32, i32 }
%struct.s5c73m3 = type { %struct.v4l2_subdev }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @s5c73m3_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5c73m3_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.s5c73m3*, align 8
  %5 = alloca %struct.v4l2_subdev*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %7 = call %struct.v4l2_subdev* @i2c_get_clientdata(%struct.i2c_client* %6)
  store %struct.v4l2_subdev* %7, %struct.v4l2_subdev** %3, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %9 = call %struct.s5c73m3* @oif_sd_to_s5c73m3(%struct.v4l2_subdev* %8)
  store %struct.s5c73m3* %9, %struct.s5c73m3** %4, align 8
  %10 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %11 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %10, i32 0, i32 0
  store %struct.v4l2_subdev* %11, %struct.v4l2_subdev** %5, align 8
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %13 = call i32 @v4l2_async_unregister_subdev(%struct.v4l2_subdev* %12)
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %15 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @v4l2_ctrl_handler_free(i32 %16)
  %18 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %19 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %18, i32 0, i32 0
  %20 = call i32 @media_entity_cleanup(i32* %19)
  %21 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %22 = call i32 @v4l2_device_unregister_subdev(%struct.v4l2_subdev* %21)
  %23 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %24 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %23, i32 0, i32 0
  %25 = call i32 @media_entity_cleanup(i32* %24)
  %26 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %27 = call i32 @s5c73m3_unregister_spi_driver(%struct.s5c73m3* %26)
  ret i32 0
}

declare dso_local %struct.v4l2_subdev* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local %struct.s5c73m3* @oif_sd_to_s5c73m3(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_async_unregister_subdev(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32) #1

declare dso_local i32 @media_entity_cleanup(i32*) #1

declare dso_local i32 @v4l2_device_unregister_subdev(%struct.v4l2_subdev*) #1

declare dso_local i32 @s5c73m3_unregister_spi_driver(%struct.s5c73m3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
