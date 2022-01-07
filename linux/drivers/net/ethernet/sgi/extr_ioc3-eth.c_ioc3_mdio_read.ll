; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sgi/extr_ioc3-eth.c_ioc3_mdio_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sgi/extr_ioc3-eth.c_ioc3_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ioc3_private = type { %struct.ioc3_ethregs* }
%struct.ioc3_ethregs = type { i32, i32 }

@MICR_BUSY = common dso_local global i32 0, align 4
@MICR_PHYADDR_SHIFT = common dso_local global i32 0, align 4
@MICR_READTRIG = common dso_local global i32 0, align 4
@MIDR_DATA_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @ioc3_mdio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioc3_mdio_read(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ioc3_private*, align 8
  %8 = alloca %struct.ioc3_ethregs*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.ioc3_private* @netdev_priv(%struct.net_device* %9)
  store %struct.ioc3_private* %10, %struct.ioc3_private** %7, align 8
  %11 = load %struct.ioc3_private*, %struct.ioc3_private** %7, align 8
  %12 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %11, i32 0, i32 0
  %13 = load %struct.ioc3_ethregs*, %struct.ioc3_ethregs** %12, align 8
  store %struct.ioc3_ethregs* %13, %struct.ioc3_ethregs** %8, align 8
  br label %14

14:                                               ; preds = %21, %3
  %15 = load %struct.ioc3_ethregs*, %struct.ioc3_ethregs** %8, align 8
  %16 = getelementptr inbounds %struct.ioc3_ethregs, %struct.ioc3_ethregs* %15, i32 0, i32 1
  %17 = call i32 @readl(i32* %16)
  %18 = load i32, i32* @MICR_BUSY, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %14

22:                                               ; preds = %14
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @MICR_PHYADDR_SHIFT, align 4
  %25 = shl i32 %23, %24
  %26 = load i32, i32* %6, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @MICR_READTRIG, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.ioc3_ethregs*, %struct.ioc3_ethregs** %8, align 8
  %31 = getelementptr inbounds %struct.ioc3_ethregs, %struct.ioc3_ethregs* %30, i32 0, i32 1
  %32 = call i32 @writel(i32 %29, i32* %31)
  br label %33

33:                                               ; preds = %40, %22
  %34 = load %struct.ioc3_ethregs*, %struct.ioc3_ethregs** %8, align 8
  %35 = getelementptr inbounds %struct.ioc3_ethregs, %struct.ioc3_ethregs* %34, i32 0, i32 1
  %36 = call i32 @readl(i32* %35)
  %37 = load i32, i32* @MICR_BUSY, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %33

41:                                               ; preds = %33
  %42 = load %struct.ioc3_ethregs*, %struct.ioc3_ethregs** %8, align 8
  %43 = getelementptr inbounds %struct.ioc3_ethregs, %struct.ioc3_ethregs* %42, i32 0, i32 0
  %44 = call i32 @readl(i32* %43)
  %45 = load i32, i32* @MIDR_DATA_MASK, align 4
  %46 = and i32 %44, %45
  ret i32 %46
}

declare dso_local %struct.ioc3_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
