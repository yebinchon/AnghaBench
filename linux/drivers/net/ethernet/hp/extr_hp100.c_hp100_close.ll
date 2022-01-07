; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hp/extr_hp100.c_hp100_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hp/extr_hp100.c_hp100_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32 }
%struct.hp100_private = type { i64, i32 }

@PERFORMANCE = common dso_local global i32 0, align 4
@IRQ_MASK = common dso_local global i32 0, align 4
@HP100_LAN_100 = common dso_local global i64 0, align 8
@OPTION_LSW = common dso_local global i32 0, align 4
@TRACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @hp100_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hp100_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.hp100_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = getelementptr inbounds %struct.net_device, %struct.net_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.hp100_private* @netdev_priv(%struct.net_device* %8)
  store %struct.hp100_private* %9, %struct.hp100_private** %4, align 8
  %10 = load i32, i32* @PERFORMANCE, align 4
  %11 = call i32 @hp100_page(i32 %10)
  %12 = load i32, i32* @IRQ_MASK, align 4
  %13 = call i32 @hp100_outw(i32 65278, i32 %12)
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = call i32 @hp100_stop_interface(%struct.net_device* %14)
  %16 = load %struct.hp100_private*, %struct.hp100_private** %4, align 8
  %17 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @HP100_LAN_100, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = call i32 @hp100_login_to_vg_hub(%struct.net_device* %22, i32 0)
  %24 = load %struct.hp100_private*, %struct.hp100_private** %4, align 8
  %25 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  br label %26

26:                                               ; preds = %21, %1
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = call i32 @netif_stop_queue(%struct.net_device* %27)
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = call i32 @free_irq(i32 %31, %struct.net_device* %32)
  ret i32 0
}

declare dso_local %struct.hp100_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @hp100_page(i32) #1

declare dso_local i32 @hp100_outw(i32, i32) #1

declare dso_local i32 @hp100_stop_interface(%struct.net_device*) #1

declare dso_local i32 @hp100_login_to_vg_hub(%struct.net_device*, i32) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
