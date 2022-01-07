; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tc358743.c_tc358743_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tc358743.c_tc358743_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.v4l2_subdev = type { i32 }
%struct.tc358743_state = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @tc358743_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc358743_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.tc358743_state*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %6 = call %struct.v4l2_subdev* @i2c_get_clientdata(%struct.i2c_client* %5)
  store %struct.v4l2_subdev* %6, %struct.v4l2_subdev** %3, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = call %struct.tc358743_state* @to_state(%struct.v4l2_subdev* %7)
  store %struct.tc358743_state* %8, %struct.tc358743_state** %4, align 8
  %9 = load %struct.tc358743_state*, %struct.tc358743_state** %4, align 8
  %10 = getelementptr inbounds %struct.tc358743_state, %struct.tc358743_state* %9, i32 0, i32 6
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %1
  %16 = load %struct.tc358743_state*, %struct.tc358743_state** %4, align 8
  %17 = getelementptr inbounds %struct.tc358743_state, %struct.tc358743_state* %16, i32 0, i32 5
  %18 = call i32 @del_timer_sync(i32* %17)
  %19 = load %struct.tc358743_state*, %struct.tc358743_state** %4, align 8
  %20 = getelementptr inbounds %struct.tc358743_state, %struct.tc358743_state* %19, i32 0, i32 4
  %21 = call i32 @flush_work(i32* %20)
  br label %22

22:                                               ; preds = %15, %1
  %23 = load %struct.tc358743_state*, %struct.tc358743_state** %4, align 8
  %24 = getelementptr inbounds %struct.tc358743_state, %struct.tc358743_state* %23, i32 0, i32 3
  %25 = call i32 @cancel_delayed_work(i32* %24)
  %26 = load %struct.tc358743_state*, %struct.tc358743_state** %4, align 8
  %27 = getelementptr inbounds %struct.tc358743_state, %struct.tc358743_state* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @cec_unregister_adapter(i32 %28)
  %30 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %31 = call i32 @v4l2_async_unregister_subdev(%struct.v4l2_subdev* %30)
  %32 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %33 = call i32 @v4l2_device_unregister_subdev(%struct.v4l2_subdev* %32)
  %34 = load %struct.tc358743_state*, %struct.tc358743_state** %4, align 8
  %35 = getelementptr inbounds %struct.tc358743_state, %struct.tc358743_state* %34, i32 0, i32 1
  %36 = call i32 @mutex_destroy(i32* %35)
  %37 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %38 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %37, i32 0, i32 0
  %39 = call i32 @media_entity_cleanup(i32* %38)
  %40 = load %struct.tc358743_state*, %struct.tc358743_state** %4, align 8
  %41 = getelementptr inbounds %struct.tc358743_state, %struct.tc358743_state* %40, i32 0, i32 0
  %42 = call i32 @v4l2_ctrl_handler_free(i32* %41)
  ret i32 0
}

declare dso_local %struct.v4l2_subdev* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local %struct.tc358743_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @cec_unregister_adapter(i32) #1

declare dso_local i32 @v4l2_async_unregister_subdev(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_device_unregister_subdev(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @media_entity_cleanup(i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
