; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_sni_ave.c_ave_mdiobus_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_sni_ave.c_ave_mdiobus_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.ave_private = type { i64 }

@AVE_MDIOAR = common dso_local global i64 0, align 8
@AVE_MDIOCTR = common dso_local global i64 0, align 8
@AVE_MDIOCTR_RREQ = common dso_local global i32 0, align 4
@AVE_MDIOCTR_WREQ = common dso_local global i32 0, align 4
@AVE_MDIOSR = common dso_local global i64 0, align 8
@AVE_MDIOSR_STS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to read (phy:%d reg:%x)\0A\00", align 1
@AVE_MDIORDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32)* @ave_mdiobus_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ave_mdiobus_read(%struct.mii_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.ave_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %14 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %13, i32 0, i32 0
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %8, align 8
  %16 = load %struct.net_device*, %struct.net_device** %8, align 8
  %17 = call %struct.ave_private* @netdev_priv(%struct.net_device* %16)
  store %struct.ave_private* %17, %struct.ave_private** %9, align 8
  %18 = load i32, i32* %6, align 4
  %19 = shl i32 %18, 8
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.ave_private*, %struct.ave_private** %9, align 8
  %23 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @AVE_MDIOAR, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel(i32 %21, i64 %26)
  %28 = load %struct.ave_private*, %struct.ave_private** %9, align 8
  %29 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AVE_MDIOCTR, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @readl(i64 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @AVE_MDIOCTR_RREQ, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @AVE_MDIOCTR_WREQ, align 4
  %38 = xor i32 %37, -1
  %39 = and i32 %36, %38
  %40 = load %struct.ave_private*, %struct.ave_private** %9, align 8
  %41 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @AVE_MDIOCTR, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writel(i32 %39, i64 %44)
  %46 = load %struct.ave_private*, %struct.ave_private** %9, align 8
  %47 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @AVE_MDIOSR, align 8
  %50 = add nsw i64 %48, %49
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @AVE_MDIOSR_STS, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i32 @readl_poll_timeout(i64 %50, i32 %51, i32 %57, i32 20, i32 2000)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %3
  %62 = load %struct.net_device*, %struct.net_device** %8, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @netdev_err(%struct.net_device* %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %64)
  %66 = load i32, i32* %12, align 4
  store i32 %66, i32* %4, align 4
  br label %76

67:                                               ; preds = %3
  %68 = load %struct.ave_private*, %struct.ave_private** %9, align 8
  %69 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @AVE_MDIORDR, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @readl(i64 %72)
  %74 = call i32 @GENMASK(i32 15, i32 0)
  %75 = and i32 %73, %74
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %67, %61
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local %struct.ave_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32, i32) #1

declare dso_local i32 @GENMASK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
