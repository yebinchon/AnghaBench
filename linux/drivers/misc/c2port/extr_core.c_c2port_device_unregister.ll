; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/c2port/extr_core.c_c2port_device_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/c2port/extr_core.c_c2port_device_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c2port_device = type { i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"C2 port %s removed\0A\00", align 1
@c2port_idr_lock = common dso_local global i32 0, align 4
@c2port_idr = common dso_local global i32 0, align 4
@c2port_class = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c2port_device_unregister(%struct.c2port_device* %0) #0 {
  %2 = alloca %struct.c2port_device*, align 8
  store %struct.c2port_device* %0, %struct.c2port_device** %2, align 8
  %3 = load %struct.c2port_device*, %struct.c2port_device** %2, align 8
  %4 = icmp ne %struct.c2port_device* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %27

6:                                                ; preds = %1
  %7 = load %struct.c2port_device*, %struct.c2port_device** %2, align 8
  %8 = getelementptr inbounds %struct.c2port_device, %struct.c2port_device* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.c2port_device*, %struct.c2port_device** %2, align 8
  %11 = getelementptr inbounds %struct.c2port_device, %struct.c2port_device* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @dev_info(i32 %9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = call i32 @spin_lock_irq(i32* @c2port_idr_lock)
  %15 = load %struct.c2port_device*, %struct.c2port_device** %2, align 8
  %16 = getelementptr inbounds %struct.c2port_device, %struct.c2port_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @idr_remove(i32* @c2port_idr, i32 %17)
  %19 = call i32 @spin_unlock_irq(i32* @c2port_idr_lock)
  %20 = load i32, i32* @c2port_class, align 4
  %21 = load %struct.c2port_device*, %struct.c2port_device** %2, align 8
  %22 = getelementptr inbounds %struct.c2port_device, %struct.c2port_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @device_destroy(i32 %20, i32 %23)
  %25 = load %struct.c2port_device*, %struct.c2port_device** %2, align 8
  %26 = call i32 @kfree(%struct.c2port_device* %25)
  br label %27

27:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @kfree(%struct.c2port_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
