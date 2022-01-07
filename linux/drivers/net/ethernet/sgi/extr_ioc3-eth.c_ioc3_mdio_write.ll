; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sgi/extr_ioc3-eth.c_ioc3_mdio_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sgi/extr_ioc3-eth.c_ioc3_mdio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ioc3_private = type { %struct.ioc3_ethregs* }
%struct.ioc3_ethregs = type { i32, i32 }

@MICR_BUSY = common dso_local global i32 0, align 4
@MICR_PHYADDR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32, i32)* @ioc3_mdio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioc3_mdio_write(%struct.net_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ioc3_private*, align 8
  %10 = alloca %struct.ioc3_ethregs*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.ioc3_private* @netdev_priv(%struct.net_device* %11)
  store %struct.ioc3_private* %12, %struct.ioc3_private** %9, align 8
  %13 = load %struct.ioc3_private*, %struct.ioc3_private** %9, align 8
  %14 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %13, i32 0, i32 0
  %15 = load %struct.ioc3_ethregs*, %struct.ioc3_ethregs** %14, align 8
  store %struct.ioc3_ethregs* %15, %struct.ioc3_ethregs** %10, align 8
  br label %16

16:                                               ; preds = %23, %4
  %17 = load %struct.ioc3_ethregs*, %struct.ioc3_ethregs** %10, align 8
  %18 = getelementptr inbounds %struct.ioc3_ethregs, %struct.ioc3_ethregs* %17, i32 0, i32 0
  %19 = call i32 @readl(i32* %18)
  %20 = load i32, i32* @MICR_BUSY, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %16

24:                                               ; preds = %16
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.ioc3_ethregs*, %struct.ioc3_ethregs** %10, align 8
  %27 = getelementptr inbounds %struct.ioc3_ethregs, %struct.ioc3_ethregs* %26, i32 0, i32 1
  %28 = call i32 @writel(i32 %25, i32* %27)
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @MICR_PHYADDR_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.ioc3_ethregs*, %struct.ioc3_ethregs** %10, align 8
  %35 = getelementptr inbounds %struct.ioc3_ethregs, %struct.ioc3_ethregs* %34, i32 0, i32 0
  %36 = call i32 @writel(i32 %33, i32* %35)
  br label %37

37:                                               ; preds = %44, %24
  %38 = load %struct.ioc3_ethregs*, %struct.ioc3_ethregs** %10, align 8
  %39 = getelementptr inbounds %struct.ioc3_ethregs, %struct.ioc3_ethregs* %38, i32 0, i32 0
  %40 = call i32 @readl(i32* %39)
  %41 = load i32, i32* @MICR_BUSY, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %37

45:                                               ; preds = %37
  ret void
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
