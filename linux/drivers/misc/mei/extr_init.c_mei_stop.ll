; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_init.c_mei_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_init.c_mei_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"stopping the device.\0A\00", align 1
@MEI_DEV_POWER_DOWN = common dso_local global i32 0, align 4
@MEI_DEV_DISABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mei_stop(%struct.mei_device* %0) #0 {
  %2 = alloca %struct.mei_device*, align 8
  store %struct.mei_device* %0, %struct.mei_device** %2, align 8
  %3 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %4 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @dev_dbg(i32 %5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %8 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %11 = load i32, i32* @MEI_DEV_POWER_DOWN, align 4
  %12 = call i32 @mei_set_devstate(%struct.mei_device* %10, i32 %11)
  %13 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %14 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %13, i32 0, i32 0
  %15 = call i32 @mutex_unlock(i32* %14)
  %16 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %17 = call i32 @mei_cl_bus_remove_devices(%struct.mei_device* %16)
  %18 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %19 = call i32 @mei_cancel_work(%struct.mei_device* %18)
  %20 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %21 = call i32 @mei_clear_interrupts(%struct.mei_device* %20)
  %22 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %23 = call i32 @mei_synchronize_irq(%struct.mei_device* %22)
  %24 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %25 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %24, i32 0, i32 0
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %28 = call i32 @mei_reset(%struct.mei_device* %27)
  %29 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %30 = load i32, i32* @MEI_DEV_DISABLED, align 4
  %31 = call i32 @mei_set_devstate(%struct.mei_device* %29, i32 %30)
  %32 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %33 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mei_set_devstate(%struct.mei_device*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mei_cl_bus_remove_devices(%struct.mei_device*) #1

declare dso_local i32 @mei_cancel_work(%struct.mei_device*) #1

declare dso_local i32 @mei_clear_interrupts(%struct.mei_device*) #1

declare dso_local i32 @mei_synchronize_irq(%struct.mei_device*) #1

declare dso_local i32 @mei_reset(%struct.mei_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
