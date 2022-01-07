; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lantiq_gswip.c_gswip_mdio_wr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lantiq_gswip.c_gswip_mdio_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { i32, %struct.gswip_priv* }
%struct.gswip_priv = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"waiting for MDIO bus busy timed out\0A\00", align 1
@GSWIP_MDIO_WRITE = common dso_local global i32 0, align 4
@GSWIP_MDIO_CTRL_BUSY = common dso_local global i32 0, align 4
@GSWIP_MDIO_CTRL_WR = common dso_local global i32 0, align 4
@GSWIP_MDIO_CTRL_PHYAD_MASK = common dso_local global i32 0, align 4
@GSWIP_MDIO_CTRL_PHYAD_SHIFT = common dso_local global i32 0, align 4
@GSWIP_MDIO_CTRL_REGAD_MASK = common dso_local global i32 0, align 4
@GSWIP_MDIO_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32, i32)* @gswip_mdio_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gswip_mdio_wr(%struct.mii_bus* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mii_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.gswip_priv*, align 8
  %11 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %13 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %12, i32 0, i32 1
  %14 = load %struct.gswip_priv*, %struct.gswip_priv** %13, align 8
  store %struct.gswip_priv* %14, %struct.gswip_priv** %10, align 8
  %15 = load %struct.gswip_priv*, %struct.gswip_priv** %10, align 8
  %16 = call i32 @gswip_mdio_poll(%struct.gswip_priv* %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %21 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %20, i32 0, i32 0
  %22 = call i32 @dev_err(i32* %21, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %5, align 4
  br label %45

24:                                               ; preds = %4
  %25 = load %struct.gswip_priv*, %struct.gswip_priv** %10, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @GSWIP_MDIO_WRITE, align 4
  %28 = call i32 @gswip_mdio_w(%struct.gswip_priv* %25, i32 %26, i32 %27)
  %29 = load %struct.gswip_priv*, %struct.gswip_priv** %10, align 8
  %30 = load i32, i32* @GSWIP_MDIO_CTRL_BUSY, align 4
  %31 = load i32, i32* @GSWIP_MDIO_CTRL_WR, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @GSWIP_MDIO_CTRL_PHYAD_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @GSWIP_MDIO_CTRL_PHYAD_SHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = or i32 %32, %37
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @GSWIP_MDIO_CTRL_REGAD_MASK, align 4
  %41 = and i32 %39, %40
  %42 = or i32 %38, %41
  %43 = load i32, i32* @GSWIP_MDIO_CTRL, align 4
  %44 = call i32 @gswip_mdio_w(%struct.gswip_priv* %29, i32 %42, i32 %43)
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %24, %19
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @gswip_mdio_poll(%struct.gswip_priv*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @gswip_mdio_w(%struct.gswip_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
