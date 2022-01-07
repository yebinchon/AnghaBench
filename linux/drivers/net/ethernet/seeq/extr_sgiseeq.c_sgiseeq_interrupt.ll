; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/seeq/extr_sgiseeq.c_sgiseeq_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/seeq/extr_sgiseeq.c_sgiseeq_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sgiseeq_private = type { i64, i64, i32, %struct.sgiseeq_regs*, %struct.hpc3_ethregs* }
%struct.sgiseeq_regs = type { i32 }
%struct.hpc3_ethregs = type { i32 }

@HPC3_ERST_CLRIRQ = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sgiseeq_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sgiseeq_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sgiseeq_private*, align 8
  %7 = alloca %struct.hpc3_ethregs*, align 8
  %8 = alloca %struct.sgiseeq_regs*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.net_device*
  store %struct.net_device* %10, %struct.net_device** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.sgiseeq_private* @netdev_priv(%struct.net_device* %11)
  store %struct.sgiseeq_private* %12, %struct.sgiseeq_private** %6, align 8
  %13 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %14 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %13, i32 0, i32 4
  %15 = load %struct.hpc3_ethregs*, %struct.hpc3_ethregs** %14, align 8
  store %struct.hpc3_ethregs* %15, %struct.hpc3_ethregs** %7, align 8
  %16 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %17 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %16, i32 0, i32 3
  %18 = load %struct.sgiseeq_regs*, %struct.sgiseeq_regs** %17, align 8
  store %struct.sgiseeq_regs* %18, %struct.sgiseeq_regs** %8, align 8
  %19 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %20 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %19, i32 0, i32 2
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load i32, i32* @HPC3_ERST_CLRIRQ, align 4
  %23 = load %struct.hpc3_ethregs*, %struct.hpc3_ethregs** %7, align 8
  %24 = getelementptr inbounds %struct.hpc3_ethregs, %struct.hpc3_ethregs* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.net_device*, %struct.net_device** %5, align 8
  %26 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %27 = load %struct.hpc3_ethregs*, %struct.hpc3_ethregs** %7, align 8
  %28 = load %struct.sgiseeq_regs*, %struct.sgiseeq_regs** %8, align 8
  %29 = call i32 @sgiseeq_rx(%struct.net_device* %25, %struct.sgiseeq_private* %26, %struct.hpc3_ethregs* %27, %struct.sgiseeq_regs* %28)
  %30 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %31 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %34 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %2
  %38 = load %struct.net_device*, %struct.net_device** %5, align 8
  %39 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %40 = load %struct.hpc3_ethregs*, %struct.hpc3_ethregs** %7, align 8
  %41 = load %struct.sgiseeq_regs*, %struct.sgiseeq_regs** %8, align 8
  %42 = call i32 @sgiseeq_tx(%struct.net_device* %38, %struct.sgiseeq_private* %39, %struct.hpc3_ethregs* %40, %struct.sgiseeq_regs* %41)
  br label %43

43:                                               ; preds = %37, %2
  %44 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %45 = call i64 @TX_BUFFS_AVAIL(%struct.sgiseeq_private* %44)
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load %struct.net_device*, %struct.net_device** %5, align 8
  %49 = call i64 @netif_queue_stopped(%struct.net_device* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load %struct.net_device*, %struct.net_device** %5, align 8
  %53 = call i32 @netif_wake_queue(%struct.net_device* %52)
  br label %54

54:                                               ; preds = %51, %47, %43
  %55 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %56 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %55, i32 0, i32 2
  %57 = call i32 @spin_unlock(i32* %56)
  %58 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %58
}

declare dso_local %struct.sgiseeq_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @sgiseeq_rx(%struct.net_device*, %struct.sgiseeq_private*, %struct.hpc3_ethregs*, %struct.sgiseeq_regs*) #1

declare dso_local i32 @sgiseeq_tx(%struct.net_device*, %struct.sgiseeq_private*, %struct.hpc3_ethregs*, %struct.sgiseeq_regs*) #1

declare dso_local i64 @TX_BUFFS_AVAIL(%struct.sgiseeq_private*) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
