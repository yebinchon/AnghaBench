; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_a2065.c_lance_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_a2065.c_lance_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.lance_private = type { %struct.lance_regs* }
%struct.lance_regs = type { i32, i32 }

@LE_CSR0 = common dso_local global i32 0, align 4
@LE_C0_STOP = common dso_local global i32 0, align 4
@IRQ_AMIGA_PORTS = common dso_local global i32 0, align 4
@lance_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @lance_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lance_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.lance_private*, align 8
  %5 = alloca %struct.lance_regs*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.lance_private* @netdev_priv(%struct.net_device* %7)
  store %struct.lance_private* %8, %struct.lance_private** %4, align 8
  %9 = load %struct.lance_private*, %struct.lance_private** %4, align 8
  %10 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %9, i32 0, i32 0
  %11 = load %struct.lance_regs*, %struct.lance_regs** %10, align 8
  store %struct.lance_regs* %11, %struct.lance_regs** %5, align 8
  %12 = load i32, i32* @LE_CSR0, align 4
  %13 = load %struct.lance_regs*, %struct.lance_regs** %5, align 8
  %14 = getelementptr inbounds %struct.lance_regs, %struct.lance_regs* %13, i32 0, i32 1
  store volatile i32 %12, i32* %14, align 4
  %15 = load i32, i32* @LE_C0_STOP, align 4
  %16 = load %struct.lance_regs*, %struct.lance_regs** %5, align 8
  %17 = getelementptr inbounds %struct.lance_regs, %struct.lance_regs* %16, i32 0, i32 0
  store volatile i32 %15, i32* %17, align 4
  %18 = load i32, i32* @IRQ_AMIGA_PORTS, align 4
  %19 = load i32, i32* @lance_interrupt, align 4
  %20 = load i32, i32* @IRQF_SHARED, align 4
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = call i32 @request_irq(i32 %18, i32 %19, i32 %20, i32 %23, %struct.net_device* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %39

30:                                               ; preds = %1
  %31 = load %struct.lance_private*, %struct.lance_private** %4, align 8
  %32 = call i32 @load_csrs(%struct.lance_private* %31)
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  %34 = call i32 @lance_init_ring(%struct.net_device* %33)
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = call i32 @netif_start_queue(%struct.net_device* %35)
  %37 = load %struct.lance_private*, %struct.lance_private** %4, align 8
  %38 = call i32 @init_restart_lance(%struct.lance_private* %37)
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %30, %28
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.lance_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @load_csrs(%struct.lance_private*) #1

declare dso_local i32 @lance_init_ring(%struct.net_device*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @init_restart_lance(%struct.lance_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
