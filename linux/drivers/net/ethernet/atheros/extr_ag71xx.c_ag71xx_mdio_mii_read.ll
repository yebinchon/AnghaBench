; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/extr_ag71xx.c_ag71xx_mdio_mii_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/extr_ag71xx.c_ag71xx_mdio_mii_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.ag71xx* }
%struct.ag71xx = type { i32 }

@AG71XX_REG_MII_ADDR = common dso_local global i32 0, align 4
@MII_ADDR_SHIFT = common dso_local global i32 0, align 4
@AG71XX_REG_MII_CMD = common dso_local global i32 0, align 4
@MII_CMD_READ = common dso_local global i32 0, align 4
@AG71XX_REG_MII_STATUS = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"mii_read: addr=%04x, reg=%04x, value=%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32)* @ag71xx_mdio_mii_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ag71xx_mdio_mii_read(%struct.mii_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ag71xx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %12 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %11, i32 0, i32 0
  %13 = load %struct.ag71xx*, %struct.ag71xx** %12, align 8
  store %struct.ag71xx* %13, %struct.ag71xx** %8, align 8
  %14 = load %struct.ag71xx*, %struct.ag71xx** %8, align 8
  %15 = call i32 @ag71xx_mdio_wait_busy(%struct.ag71xx* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %4, align 4
  br label %58

20:                                               ; preds = %3
  %21 = load %struct.ag71xx*, %struct.ag71xx** %8, align 8
  %22 = load i32, i32* @AG71XX_REG_MII_ADDR, align 4
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, 31
  %25 = load i32, i32* @MII_ADDR_SHIFT, align 4
  %26 = shl i32 %24, %25
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, 255
  %29 = or i32 %26, %28
  %30 = call i32 @ag71xx_wr(%struct.ag71xx* %21, i32 %22, i32 %29)
  %31 = load %struct.ag71xx*, %struct.ag71xx** %8, align 8
  %32 = load i32, i32* @AG71XX_REG_MII_CMD, align 4
  %33 = load i32, i32* @MII_CMD_READ, align 4
  %34 = call i32 @ag71xx_wr(%struct.ag71xx* %31, i32 %32, i32 %33)
  %35 = load %struct.ag71xx*, %struct.ag71xx** %8, align 8
  %36 = call i32 @ag71xx_mdio_wait_busy(%struct.ag71xx* %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %20
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %4, align 4
  br label %58

41:                                               ; preds = %20
  %42 = load %struct.ag71xx*, %struct.ag71xx** %8, align 8
  %43 = load i32, i32* @AG71XX_REG_MII_STATUS, align 4
  %44 = call i32 @ag71xx_rr(%struct.ag71xx* %42, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load %struct.ag71xx*, %struct.ag71xx** %8, align 8
  %46 = load i32, i32* @AG71XX_REG_MII_CMD, align 4
  %47 = call i32 @ag71xx_wr(%struct.ag71xx* %45, i32 %46, i32 0)
  %48 = load %struct.ag71xx*, %struct.ag71xx** %8, align 8
  %49 = load i32, i32* @link, align 4
  %50 = load %struct.ag71xx*, %struct.ag71xx** %8, align 8
  %51 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @netif_dbg(%struct.ag71xx* %48, i32 %49, i32 %52, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %54, i32 %55)
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %41, %39, %18
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @ag71xx_mdio_wait_busy(%struct.ag71xx*) #1

declare dso_local i32 @ag71xx_wr(%struct.ag71xx*, i32, i32) #1

declare dso_local i32 @ag71xx_rr(%struct.ag71xx*, i32) #1

declare dso_local i32 @netif_dbg(%struct.ag71xx*, i32, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
