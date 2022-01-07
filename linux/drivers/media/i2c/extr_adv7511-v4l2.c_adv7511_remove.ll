; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7511-v4l2.c_adv7511_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7511-v4l2.c_adv7511_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_subdev = type { i32, i32 }
%struct.adv7511_state = type { i32, i32, i32, i32, i32, i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s removed @ 0x%x (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @adv7511_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7511_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.adv7511_state*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %6 = call %struct.v4l2_subdev* @i2c_get_clientdata(%struct.i2c_client* %5)
  store %struct.v4l2_subdev* %6, %struct.v4l2_subdev** %3, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = call %struct.adv7511_state* @get_adv7511_state(%struct.v4l2_subdev* %7)
  store %struct.adv7511_state* %8, %struct.adv7511_state** %4, align 8
  %9 = load %struct.adv7511_state*, %struct.adv7511_state** %4, align 8
  %10 = getelementptr inbounds %struct.adv7511_state, %struct.adv7511_state* %9, i32 0, i32 0
  store i32 -1, i32* %10, align 4
  %11 = load i32, i32* @debug, align 4
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = shl i32 %18, 1
  %20 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @v4l2_dbg(i32 1, i32 %11, %struct.v4l2_subdev* %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %19, i32 %24)
  %26 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %27 = call i32 @adv7511_set_isr(%struct.v4l2_subdev* %26, i32 0)
  %28 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %29 = call i32 @adv7511_init_setup(%struct.v4l2_subdev* %28)
  %30 = load %struct.adv7511_state*, %struct.adv7511_state** %4, align 8
  %31 = getelementptr inbounds %struct.adv7511_state, %struct.adv7511_state* %30, i32 0, i32 5
  %32 = call i32 @cancel_delayed_work(i32* %31)
  %33 = load %struct.adv7511_state*, %struct.adv7511_state** %4, align 8
  %34 = getelementptr inbounds %struct.adv7511_state, %struct.adv7511_state* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @i2c_unregister_device(i32 %35)
  %37 = load %struct.adv7511_state*, %struct.adv7511_state** %4, align 8
  %38 = getelementptr inbounds %struct.adv7511_state, %struct.adv7511_state* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @i2c_unregister_device(i32 %39)
  %41 = load %struct.adv7511_state*, %struct.adv7511_state** %4, align 8
  %42 = getelementptr inbounds %struct.adv7511_state, %struct.adv7511_state* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @i2c_unregister_device(i32 %43)
  %45 = load %struct.adv7511_state*, %struct.adv7511_state** %4, align 8
  %46 = getelementptr inbounds %struct.adv7511_state, %struct.adv7511_state* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @destroy_workqueue(i32 %47)
  %49 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %50 = call i32 @v4l2_device_unregister_subdev(%struct.v4l2_subdev* %49)
  %51 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %52 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %51, i32 0, i32 1
  %53 = call i32 @media_entity_cleanup(i32* %52)
  %54 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %55 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @v4l2_ctrl_handler_free(i32 %56)
  ret i32 0
}

declare dso_local %struct.v4l2_subdev* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local %struct.adv7511_state* @get_adv7511_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32, i32, i32) #1

declare dso_local i32 @adv7511_set_isr(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @adv7511_init_setup(%struct.v4l2_subdev*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @i2c_unregister_device(i32) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @v4l2_device_unregister_subdev(%struct.v4l2_subdev*) #1

declare dso_local i32 @media_entity_cleanup(i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
