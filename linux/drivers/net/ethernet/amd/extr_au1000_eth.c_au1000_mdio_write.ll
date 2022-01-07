; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_au1000_eth.c_au1000_mdio_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_au1000_eth.c_au1000_mdio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.au1000_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@MAC_MII_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"mdio_write busy timeout!!\0A\00", align 1
@MAC_MII_WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32, i64)* @au1000_mdio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au1000_mdio_write(%struct.net_device* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.au1000_private*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.au1000_private* @netdev_priv(%struct.net_device* %14)
  store %struct.au1000_private* %15, %struct.au1000_private** %9, align 8
  %16 = load %struct.au1000_private*, %struct.au1000_private** %9, align 8
  %17 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i64* %19, i64** %10, align 8
  %20 = load %struct.au1000_private*, %struct.au1000_private** %9, align 8
  %21 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i64* %23, i64** %11, align 8
  store i64 20, i64* %12, align 8
  br label %24

24:                                               ; preds = %38, %4
  %25 = load i64*, i64** %10, align 8
  %26 = call i32 @readl(i64* %25)
  %27 = load i32, i32* @MAC_MII_BUSY, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %24
  %31 = call i32 @mdelay(i32 1)
  %32 = load i64, i64* %12, align 8
  %33 = add nsw i64 %32, -1
  store i64 %33, i64* %12, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.net_device*, %struct.net_device** %5, align 8
  %37 = call i32 @netdev_err(%struct.net_device* %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %53

38:                                               ; preds = %30
  br label %24

39:                                               ; preds = %24
  %40 = load i32, i32* %7, align 4
  %41 = call i64 @MAC_SET_MII_SELECT_REG(i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = call i64 @MAC_SET_MII_SELECT_PHY(i32 %42)
  %44 = or i64 %41, %43
  %45 = load i64, i64* @MAC_MII_WRITE, align 8
  %46 = or i64 %44, %45
  store i64 %46, i64* %13, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i64*, i64** %11, align 8
  %49 = call i32 @writel(i64 %47, i64* %48)
  %50 = load i64, i64* %13, align 8
  %51 = load i64*, i64** %10, align 8
  %52 = call i32 @writel(i64 %50, i64* %51)
  br label %53

53:                                               ; preds = %39, %35
  ret void
}

declare dso_local %struct.au1000_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @readl(i64*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i64 @MAC_SET_MII_SELECT_REG(i32) #1

declare dso_local i64 @MAC_SET_MII_SELECT_PHY(i32) #1

declare dso_local i32 @writel(i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
