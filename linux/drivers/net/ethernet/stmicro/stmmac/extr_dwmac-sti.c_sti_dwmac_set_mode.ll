; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-sti.c_sti_dwmac_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-sti.c_sti_dwmac_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sti_dwmac = type { i32, i32, i32 (%struct.sti_dwmac*, i32)*, i64, i32, %struct.regmap* }
%struct.regmap = type { i32 }

@EN_MASK = common dso_local global i32 0, align 4
@EN = common dso_local global i32 0, align 4
@MII_PHY_SEL_MASK = common dso_local global i32 0, align 4
@phy_intf_sels = common dso_local global i32* null, align 8
@PHY_INTERFACE_MODE_REVMII = common dso_local global i32 0, align 4
@ENMII = common dso_local global i32 0, align 4
@ENMII_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sti_dwmac*)* @sti_dwmac_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sti_dwmac_set_mode(%struct.sti_dwmac* %0) #0 {
  %2 = alloca %struct.sti_dwmac*, align 8
  %3 = alloca %struct.regmap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sti_dwmac* %0, %struct.sti_dwmac** %2, align 8
  %7 = load %struct.sti_dwmac*, %struct.sti_dwmac** %2, align 8
  %8 = getelementptr inbounds %struct.sti_dwmac, %struct.sti_dwmac* %7, i32 0, i32 5
  %9 = load %struct.regmap*, %struct.regmap** %8, align 8
  store %struct.regmap* %9, %struct.regmap** %3, align 8
  %10 = load %struct.sti_dwmac*, %struct.sti_dwmac** %2, align 8
  %11 = getelementptr inbounds %struct.sti_dwmac, %struct.sti_dwmac* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %4, align 4
  %13 = load %struct.sti_dwmac*, %struct.sti_dwmac** %2, align 8
  %14 = getelementptr inbounds %struct.sti_dwmac, %struct.sti_dwmac* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %5, align 4
  %16 = load %struct.sti_dwmac*, %struct.sti_dwmac** %2, align 8
  %17 = getelementptr inbounds %struct.sti_dwmac, %struct.sti_dwmac* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load %struct.regmap*, %struct.regmap** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @EN_MASK, align 4
  %24 = load i32, i32* @EN, align 4
  %25 = call i32 @regmap_update_bits(%struct.regmap* %21, i32 %22, i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %20, %1
  %27 = load %struct.regmap*, %struct.regmap** %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @MII_PHY_SEL_MASK, align 4
  %30 = load i32*, i32** @phy_intf_sels, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @regmap_update_bits(%struct.regmap* %27, i32 %28, i32 %29, i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @PHY_INTERFACE_MODE_REVMII, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %26
  br label %42

40:                                               ; preds = %26
  %41 = load i32, i32* @ENMII, align 4
  br label %42

42:                                               ; preds = %40, %39
  %43 = phi i32 [ 0, %39 ], [ %41, %40 ]
  store i32 %43, i32* %6, align 4
  %44 = load %struct.regmap*, %struct.regmap** %3, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @ENMII_MASK, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @regmap_update_bits(%struct.regmap* %44, i32 %45, i32 %46, i32 %47)
  %49 = load %struct.sti_dwmac*, %struct.sti_dwmac** %2, align 8
  %50 = getelementptr inbounds %struct.sti_dwmac, %struct.sti_dwmac* %49, i32 0, i32 2
  %51 = load i32 (%struct.sti_dwmac*, i32)*, i32 (%struct.sti_dwmac*, i32)** %50, align 8
  %52 = load %struct.sti_dwmac*, %struct.sti_dwmac** %2, align 8
  %53 = load %struct.sti_dwmac*, %struct.sti_dwmac** %2, align 8
  %54 = getelementptr inbounds %struct.sti_dwmac, %struct.sti_dwmac* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 %51(%struct.sti_dwmac* %52, i32 %55)
  ret i32 0
}

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
