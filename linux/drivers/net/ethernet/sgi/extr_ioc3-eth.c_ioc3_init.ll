; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sgi/extr_ioc3-eth.c_ioc3_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sgi/extr_ioc3-eth.c_ioc3_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ioc3_private = type { i32, i32, i32, %struct.ioc3_ethregs* }
%struct.ioc3_ethregs = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@EMCR_RST = common dso_local global i32 0, align 4
@ERBAR_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ioc3_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioc3_init(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ioc3_private*, align 8
  %4 = alloca %struct.ioc3_ethregs*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.ioc3_private* @netdev_priv(%struct.net_device* %5)
  store %struct.ioc3_private* %6, %struct.ioc3_private** %3, align 8
  %7 = load %struct.ioc3_private*, %struct.ioc3_private** %3, align 8
  %8 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %7, i32 0, i32 3
  %9 = load %struct.ioc3_ethregs*, %struct.ioc3_ethregs** %8, align 8
  store %struct.ioc3_ethregs* %9, %struct.ioc3_ethregs** %4, align 8
  %10 = load %struct.ioc3_private*, %struct.ioc3_private** %3, align 8
  %11 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %10, i32 0, i32 2
  %12 = call i32 @del_timer_sync(i32* %11)
  %13 = load i32, i32* @EMCR_RST, align 4
  %14 = load %struct.ioc3_ethregs*, %struct.ioc3_ethregs** %4, align 8
  %15 = getelementptr inbounds %struct.ioc3_ethregs, %struct.ioc3_ethregs* %14, i32 0, i32 7
  %16 = call i32 @writel(i32 %13, i32* %15)
  %17 = load %struct.ioc3_ethregs*, %struct.ioc3_ethregs** %4, align 8
  %18 = getelementptr inbounds %struct.ioc3_ethregs, %struct.ioc3_ethregs* %17, i32 0, i32 7
  %19 = call i32 @readl(i32* %18)
  %20 = call i32 @udelay(i32 4)
  %21 = load %struct.ioc3_ethregs*, %struct.ioc3_ethregs** %4, align 8
  %22 = getelementptr inbounds %struct.ioc3_ethregs, %struct.ioc3_ethregs* %21, i32 0, i32 7
  %23 = call i32 @writel(i32 0, i32* %22)
  %24 = load %struct.ioc3_ethregs*, %struct.ioc3_ethregs** %4, align 8
  %25 = getelementptr inbounds %struct.ioc3_ethregs, %struct.ioc3_ethregs* %24, i32 0, i32 7
  %26 = call i32 @readl(i32* %25)
  %27 = load i32, i32* @ERBAR_VAL, align 4
  %28 = load %struct.ioc3_ethregs*, %struct.ioc3_ethregs** %4, align 8
  %29 = getelementptr inbounds %struct.ioc3_ethregs, %struct.ioc3_ethregs* %28, i32 0, i32 6
  %30 = call i32 @writel(i32 %27, i32* %29)
  %31 = load %struct.ioc3_ethregs*, %struct.ioc3_ethregs** %4, align 8
  %32 = getelementptr inbounds %struct.ioc3_ethregs, %struct.ioc3_ethregs* %31, i32 0, i32 5
  %33 = call i32 @readl(i32* %32)
  %34 = load %struct.ioc3_ethregs*, %struct.ioc3_ethregs** %4, align 8
  %35 = getelementptr inbounds %struct.ioc3_ethregs, %struct.ioc3_ethregs* %34, i32 0, i32 4
  %36 = call i32 @writel(i32 15, i32* %35)
  %37 = load %struct.ioc3_ethregs*, %struct.ioc3_ethregs** %4, align 8
  %38 = getelementptr inbounds %struct.ioc3_ethregs, %struct.ioc3_ethregs* %37, i32 0, i32 3
  %39 = call i32 @writel(i32 0, i32* %38)
  %40 = load %struct.net_device*, %struct.net_device** %2, align 8
  %41 = call i32 @__ioc3_set_mac_address(%struct.net_device* %40)
  %42 = load %struct.ioc3_private*, %struct.ioc3_private** %3, align 8
  %43 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.ioc3_ethregs*, %struct.ioc3_ethregs** %4, align 8
  %46 = getelementptr inbounds %struct.ioc3_ethregs, %struct.ioc3_ethregs* %45, i32 0, i32 2
  %47 = call i32 @writel(i32 %44, i32* %46)
  %48 = load %struct.ioc3_private*, %struct.ioc3_private** %3, align 8
  %49 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ioc3_ethregs*, %struct.ioc3_ethregs** %4, align 8
  %52 = getelementptr inbounds %struct.ioc3_ethregs, %struct.ioc3_ethregs* %51, i32 0, i32 1
  %53 = call i32 @writel(i32 %50, i32* %52)
  %54 = load %struct.ioc3_ethregs*, %struct.ioc3_ethregs** %4, align 8
  %55 = getelementptr inbounds %struct.ioc3_ethregs, %struct.ioc3_ethregs* %54, i32 0, i32 0
  %56 = call i32 @writel(i32 42, i32* %55)
  ret void
}

declare dso_local %struct.ioc3_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @__ioc3_set_mac_address(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
