; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_au1000_eth.c_au1000_mdio_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_au1000_eth.c_au1000_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.au1000_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@MAC_MII_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"read_MII busy timeout!!\0A\00", align 1
@MAC_MII_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"mdio_read busy timeout!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @au1000_mdio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1000_mdio_read(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.au1000_private*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.au1000_private* @netdev_priv(%struct.net_device* %13)
  store %struct.au1000_private* %14, %struct.au1000_private** %8, align 8
  %15 = load %struct.au1000_private*, %struct.au1000_private** %8, align 8
  %16 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32* %18, i32** %9, align 8
  %19 = load %struct.au1000_private*, %struct.au1000_private** %8, align 8
  %20 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i32* %22, i32** %10, align 8
  store i32 20, i32* %11, align 4
  br label %23

23:                                               ; preds = %37, %3
  %24 = load i32*, i32** %9, align 8
  %25 = call i32 @readl(i32* %24)
  %26 = load i32, i32* @MAC_MII_BUSY, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = call i32 @mdelay(i32 1)
  %31 = load i32, i32* %11, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %11, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.net_device*, %struct.net_device** %5, align 8
  %36 = call i32 @netdev_err(%struct.net_device* %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %67

37:                                               ; preds = %29
  br label %23

38:                                               ; preds = %23
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @MAC_SET_MII_SELECT_REG(i32 %39)
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @MAC_SET_MII_SELECT_PHY(i32 %41)
  %43 = or i32 %40, %42
  %44 = load i32, i32* @MAC_MII_READ, align 4
  %45 = or i32 %43, %44
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32*, i32** %9, align 8
  %48 = call i32 @writel(i32 %46, i32* %47)
  store i32 20, i32* %11, align 4
  br label %49

49:                                               ; preds = %63, %38
  %50 = load i32*, i32** %9, align 8
  %51 = call i32 @readl(i32* %50)
  %52 = load i32, i32* @MAC_MII_BUSY, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %49
  %56 = call i32 @mdelay(i32 1)
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %11, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.net_device*, %struct.net_device** %5, align 8
  %62 = call i32 @netdev_err(%struct.net_device* %61, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %67

63:                                               ; preds = %55
  br label %49

64:                                               ; preds = %49
  %65 = load i32*, i32** %10, align 8
  %66 = call i32 @readl(i32* %65)
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %64, %60, %34
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.au1000_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @MAC_SET_MII_SELECT_REG(i32) #1

declare dso_local i32 @MAC_SET_MII_SELECT_PHY(i32) #1

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
