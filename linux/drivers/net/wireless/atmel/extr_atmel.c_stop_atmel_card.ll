; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_atmel.c_stop_atmel_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_atmel.c_stop_atmel_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.atmel_private = type { i64, i32, i32 }

@BUS_TYPE_PCCARD = common dso_local global i64 0, align 8
@GCR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"driver/atmel\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stop_atmel_card(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.atmel_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.atmel_private* @netdev_priv(%struct.net_device* %4)
  store %struct.atmel_private* %5, %struct.atmel_private** %3, align 8
  %6 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %7 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @BUS_TYPE_PCCARD, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = load i32, i32* @GCR, align 4
  %14 = call i32 @atmel_write16(%struct.net_device* %12, i32 %13, i32 96)
  br label %15

15:                                               ; preds = %11, %1
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = load i32, i32* @GCR, align 4
  %18 = call i32 @atmel_write16(%struct.net_device* %16, i32 %17, i32 64)
  %19 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %20 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %19, i32 0, i32 2
  %21 = call i32 @del_timer_sync(i32* %20)
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = call i32 @unregister_netdev(%struct.net_device* %22)
  %24 = call i32 @remove_proc_entry(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* null)
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = call i32 @free_irq(i32 %27, %struct.net_device* %28)
  %30 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %31 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @kfree(i32 %32)
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @release_region(i32 %36, i32 32)
  %38 = load %struct.net_device*, %struct.net_device** %2, align 8
  %39 = call i32 @free_netdev(%struct.net_device* %38)
  ret void
}

declare dso_local %struct.atmel_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @atmel_write16(%struct.net_device*, i32, i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @remove_proc_entry(i8*, i32*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @release_region(i32, i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
