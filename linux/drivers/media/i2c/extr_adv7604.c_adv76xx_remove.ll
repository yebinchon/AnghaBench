; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7604.c_adv76xx_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7604.c_adv76xx_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.v4l2_subdev = type { i32, i32 }
%struct.adv76xx_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @adv76xx_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv76xx_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.adv76xx_state*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %6 = call %struct.v4l2_subdev* @i2c_get_clientdata(%struct.i2c_client* %5)
  store %struct.v4l2_subdev* %6, %struct.v4l2_subdev** %3, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = call %struct.adv76xx_state* @to_state(%struct.v4l2_subdev* %7)
  store %struct.adv76xx_state* %8, %struct.adv76xx_state** %4, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %10 = call i32 @io_write(%struct.v4l2_subdev* %9, i32 64, i32 0)
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %12 = call i32 @io_write(%struct.v4l2_subdev* %11, i32 65, i32 0)
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %14 = call i32 @io_write(%struct.v4l2_subdev* %13, i32 70, i32 0)
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %16 = call i32 @io_write(%struct.v4l2_subdev* %15, i32 110, i32 0)
  %17 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %18 = call i32 @io_write(%struct.v4l2_subdev* %17, i32 115, i32 0)
  %19 = load %struct.adv76xx_state*, %struct.adv76xx_state** %4, align 8
  %20 = getelementptr inbounds %struct.adv76xx_state, %struct.adv76xx_state* %19, i32 0, i32 0
  %21 = call i32 @cancel_delayed_work(i32* %20)
  %22 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %23 = call i32 @v4l2_async_unregister_subdev(%struct.v4l2_subdev* %22)
  %24 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %25 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %24, i32 0, i32 1
  %26 = call i32 @media_entity_cleanup(i32* %25)
  %27 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %28 = call %struct.adv76xx_state* @to_state(%struct.v4l2_subdev* %27)
  %29 = call i32 @adv76xx_unregister_clients(%struct.adv76xx_state* %28)
  %30 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %31 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @v4l2_ctrl_handler_free(i32 %32)
  ret i32 0
}

declare dso_local %struct.v4l2_subdev* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local %struct.adv76xx_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @io_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @v4l2_async_unregister_subdev(%struct.v4l2_subdev*) #1

declare dso_local i32 @media_entity_cleanup(i32*) #1

declare dso_local i32 @adv76xx_unregister_clients(%struct.adv76xx_state*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
