; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2.c_bcm_sf2_sw_mdio_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2.c_bcm_sf2_sw_mdio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.bcm_sf2_priv* }
%struct.bcm_sf2_priv = type { i32, i32 }

@BRCM_PSEUDO_PHY_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32, i32)* @bcm_sf2_sw_mdio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_sf2_sw_mdio_write(%struct.mii_bus* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mii_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bcm_sf2_priv*, align 8
  store %struct.mii_bus* %0, %struct.mii_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %12 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %11, i32 0, i32 0
  %13 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %12, align 8
  store %struct.bcm_sf2_priv* %13, %struct.bcm_sf2_priv** %10, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @BRCM_PSEUDO_PHY_ADDR, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %31

17:                                               ; preds = %4
  %18 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %10, align 8
  %19 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @BIT(i32 %21)
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %17
  %26 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %10, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @bcm_sf2_sw_indir_rw(%struct.bcm_sf2_priv* %26, i32 0, i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %5, align 4
  br label %39

31:                                               ; preds = %17, %4
  %32 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %10, align 8
  %33 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @mdiobus_write_nested(i32 %34, i32 %35, i32 %36, i32 %37)
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %31, %25
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @bcm_sf2_sw_indir_rw(%struct.bcm_sf2_priv*, i32, i32, i32, i32) #1

declare dso_local i32 @mdiobus_write_nested(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
