; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/extr_ag71xx.c_ag71xx_mdio_mii_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/extr_ag71xx.c_ag71xx_mdio_mii_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.ag71xx* }
%struct.ag71xx = type { i32 }

@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"mii_write: addr=%04x, reg=%04x, value=%04x\0A\00", align 1
@AG71XX_REG_MII_ADDR = common dso_local global i32 0, align 4
@MII_ADDR_SHIFT = common dso_local global i32 0, align 4
@AG71XX_REG_MII_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32, i32)* @ag71xx_mdio_mii_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ag71xx_mdio_mii_write(%struct.mii_bus* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ag71xx*, align 8
  store %struct.mii_bus* %0, %struct.mii_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %11 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %10, i32 0, i32 0
  %12 = load %struct.ag71xx*, %struct.ag71xx** %11, align 8
  store %struct.ag71xx* %12, %struct.ag71xx** %9, align 8
  %13 = load %struct.ag71xx*, %struct.ag71xx** %9, align 8
  %14 = load i32, i32* @link, align 4
  %15 = load %struct.ag71xx*, %struct.ag71xx** %9, align 8
  %16 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @netif_dbg(%struct.ag71xx* %13, i32 %14, i32 %17, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19, i32 %20)
  %22 = load %struct.ag71xx*, %struct.ag71xx** %9, align 8
  %23 = load i32, i32* @AG71XX_REG_MII_ADDR, align 4
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, 31
  %26 = load i32, i32* @MII_ADDR_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, 255
  %30 = or i32 %27, %29
  %31 = call i32 @ag71xx_wr(%struct.ag71xx* %22, i32 %23, i32 %30)
  %32 = load %struct.ag71xx*, %struct.ag71xx** %9, align 8
  %33 = load i32, i32* @AG71XX_REG_MII_CTRL, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @ag71xx_wr(%struct.ag71xx* %32, i32 %33, i32 %34)
  %36 = load %struct.ag71xx*, %struct.ag71xx** %9, align 8
  %37 = call i32 @ag71xx_mdio_wait_busy(%struct.ag71xx* %36)
  ret i32 %37
}

declare dso_local i32 @netif_dbg(%struct.ag71xx*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @ag71xx_wr(%struct.ag71xx*, i32, i32) #1

declare dso_local i32 @ag71xx_mdio_wait_busy(%struct.ag71xx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
