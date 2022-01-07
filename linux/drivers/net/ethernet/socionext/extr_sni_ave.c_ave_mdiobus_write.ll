; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_sni_ave.c_ave_mdiobus_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_sni_ave.c_ave_mdiobus_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.ave_private = type { i64 }

@AVE_MDIOAR = common dso_local global i64 0, align 8
@AVE_MDIOWDR = common dso_local global i64 0, align 8
@AVE_MDIOCTR = common dso_local global i64 0, align 8
@AVE_MDIOCTR_WREQ = common dso_local global i32 0, align 4
@AVE_MDIOCTR_RREQ = common dso_local global i32 0, align 4
@AVE_MDIOSR = common dso_local global i64 0, align 8
@AVE_MDIOSR_STS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to write (phy:%d reg:%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32, i32)* @ave_mdiobus_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ave_mdiobus_write(%struct.mii_bus* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.ave_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %15 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %14, i32 0, i32 0
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %9, align 8
  %17 = load %struct.net_device*, %struct.net_device** %9, align 8
  %18 = call %struct.ave_private* @netdev_priv(%struct.net_device* %17)
  store %struct.ave_private* %18, %struct.ave_private** %10, align 8
  %19 = load i32, i32* %6, align 4
  %20 = shl i32 %19, 8
  %21 = load i32, i32* %7, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.ave_private*, %struct.ave_private** %10, align 8
  %24 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @AVE_MDIOAR, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writel(i32 %22, i64 %27)
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.ave_private*, %struct.ave_private** %10, align 8
  %31 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @AVE_MDIOWDR, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writel(i32 %29, i64 %34)
  %36 = load %struct.ave_private*, %struct.ave_private** %10, align 8
  %37 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @AVE_MDIOCTR, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @readl(i64 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @AVE_MDIOCTR_WREQ, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @AVE_MDIOCTR_RREQ, align 4
  %46 = xor i32 %45, -1
  %47 = and i32 %44, %46
  %48 = load %struct.ave_private*, %struct.ave_private** %10, align 8
  %49 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @AVE_MDIOCTR, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @writel(i32 %47, i64 %52)
  %54 = load %struct.ave_private*, %struct.ave_private** %10, align 8
  %55 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @AVE_MDIOSR, align 8
  %58 = add nsw i64 %56, %57
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* @AVE_MDIOSR_STS, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i32 @readl_poll_timeout(i64 %58, i32 %59, i32 %65, i32 20, i32 2000)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %4
  %70 = load %struct.net_device*, %struct.net_device** %9, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @netdev_err(%struct.net_device* %70, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %69, %4
  %75 = load i32, i32* %13, align 4
  ret i32 %75
}

declare dso_local %struct.ave_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
