; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lantiq_gswip.c_gswip_mdio_rd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lantiq_gswip.c_gswip_mdio_rd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { i32, %struct.gswip_priv* }
%struct.gswip_priv = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"waiting for MDIO bus busy timed out\0A\00", align 1
@GSWIP_MDIO_CTRL_BUSY = common dso_local global i32 0, align 4
@GSWIP_MDIO_CTRL_RD = common dso_local global i32 0, align 4
@GSWIP_MDIO_CTRL_PHYAD_MASK = common dso_local global i32 0, align 4
@GSWIP_MDIO_CTRL_PHYAD_SHIFT = common dso_local global i32 0, align 4
@GSWIP_MDIO_CTRL_REGAD_MASK = common dso_local global i32 0, align 4
@GSWIP_MDIO_CTRL = common dso_local global i32 0, align 4
@GSWIP_MDIO_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32)* @gswip_mdio_rd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gswip_mdio_rd(%struct.mii_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.gswip_priv*, align 8
  %9 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %11 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %10, i32 0, i32 1
  %12 = load %struct.gswip_priv*, %struct.gswip_priv** %11, align 8
  store %struct.gswip_priv* %12, %struct.gswip_priv** %8, align 8
  %13 = load %struct.gswip_priv*, %struct.gswip_priv** %8, align 8
  %14 = call i32 @gswip_mdio_poll(%struct.gswip_priv* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %19 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %18, i32 0, i32 0
  %20 = call i32 @dev_err(i32* %19, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %4, align 4
  br label %52

22:                                               ; preds = %3
  %23 = load %struct.gswip_priv*, %struct.gswip_priv** %8, align 8
  %24 = load i32, i32* @GSWIP_MDIO_CTRL_BUSY, align 4
  %25 = load i32, i32* @GSWIP_MDIO_CTRL_RD, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @GSWIP_MDIO_CTRL_PHYAD_MASK, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @GSWIP_MDIO_CTRL_PHYAD_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = or i32 %26, %31
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @GSWIP_MDIO_CTRL_REGAD_MASK, align 4
  %35 = and i32 %33, %34
  %36 = or i32 %32, %35
  %37 = load i32, i32* @GSWIP_MDIO_CTRL, align 4
  %38 = call i32 @gswip_mdio_w(%struct.gswip_priv* %23, i32 %36, i32 %37)
  %39 = load %struct.gswip_priv*, %struct.gswip_priv** %8, align 8
  %40 = call i32 @gswip_mdio_poll(%struct.gswip_priv* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %22
  %44 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %45 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %44, i32 0, i32 0
  %46 = call i32 @dev_err(i32* %45, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %4, align 4
  br label %52

48:                                               ; preds = %22
  %49 = load %struct.gswip_priv*, %struct.gswip_priv** %8, align 8
  %50 = load i32, i32* @GSWIP_MDIO_READ, align 4
  %51 = call i32 @gswip_mdio_r(%struct.gswip_priv* %49, i32 %50)
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %48, %43, %17
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @gswip_mdio_poll(%struct.gswip_priv*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @gswip_mdio_w(%struct.gswip_priv*, i32, i32) #1

declare dso_local i32 @gswip_mdio_r(%struct.gswip_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
