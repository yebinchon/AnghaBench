; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/i825xx/extr_sun3_82586.c_sun3_82586_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/i825xx/extr_sun3_82586.c_sun3_82586_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }

@sun3_82586_interrupt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @sun3_82586_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun3_82586_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = call i32 (...) @sun3_disint()
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call i32 @alloc586(%struct.net_device* %6)
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call i32 @init586(%struct.net_device* %8)
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call i32 @startrecv586(%struct.net_device* %10)
  %12 = call i32 (...) @sun3_enaint()
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @sun3_82586_interrupt, align 4
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = call i32 @request_irq(i32 %15, i32 %16, i32 0, i32 %19, %struct.net_device* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = call i32 (...) @sun3_reset586()
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %30

27:                                               ; preds = %1
  %28 = load %struct.net_device*, %struct.net_device** %3, align 8
  %29 = call i32 @netif_start_queue(%struct.net_device* %28)
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @sun3_disint(...) #1

declare dso_local i32 @alloc586(%struct.net_device*) #1

declare dso_local i32 @init586(%struct.net_device*) #1

declare dso_local i32 @startrecv586(%struct.net_device*) #1

declare dso_local i32 @sun3_enaint(...) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @sun3_reset586(...) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
