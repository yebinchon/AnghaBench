; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_msp3400-driver.c_msp_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_msp3400-driver.c_msp_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.msp_state = type { i32, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @msp_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msp_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.msp_state*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call i32 @i2c_get_clientdata(%struct.i2c_client* %4)
  %6 = call %struct.msp_state* @to_state(i32 %5)
  store %struct.msp_state* %6, %struct.msp_state** %3, align 8
  %7 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %8 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %7, i32 0, i32 3
  %9 = call i32 @v4l2_device_unregister_subdev(i32* %8)
  %10 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %11 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %16 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %18 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @kthread_stop(i64 %19)
  br label %21

21:                                               ; preds = %14, %1
  %22 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %23 = call i32 @msp_reset(%struct.i2c_client* %22)
  %24 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %25 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %24, i32 0, i32 1
  %26 = call i32 @v4l2_ctrl_handler_free(i32* %25)
  ret i32 0
}

declare dso_local %struct.msp_state* @to_state(i32) #1

declare dso_local i32 @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @v4l2_device_unregister_subdev(i32*) #1

declare dso_local i32 @kthread_stop(i64) #1

declare dso_local i32 @msp_reset(%struct.i2c_client*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
