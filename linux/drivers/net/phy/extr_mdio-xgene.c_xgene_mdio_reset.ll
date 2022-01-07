; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-xgene.c_xgene_mdio_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-xgene.c_xgene_mdio_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_mdio_pdata = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgene_mdio_pdata*)* @xgene_mdio_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_mdio_reset(%struct.xgene_mdio_pdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xgene_mdio_pdata*, align 8
  %4 = alloca i32, align 4
  store %struct.xgene_mdio_pdata* %0, %struct.xgene_mdio_pdata** %3, align 8
  %5 = load %struct.xgene_mdio_pdata*, %struct.xgene_mdio_pdata** %3, align 8
  %6 = getelementptr inbounds %struct.xgene_mdio_pdata, %struct.xgene_mdio_pdata* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %1
  %12 = load %struct.xgene_mdio_pdata*, %struct.xgene_mdio_pdata** %3, align 8
  %13 = getelementptr inbounds %struct.xgene_mdio_pdata, %struct.xgene_mdio_pdata* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @clk_prepare_enable(i32 %14)
  %16 = call i32 @udelay(i32 5)
  %17 = load %struct.xgene_mdio_pdata*, %struct.xgene_mdio_pdata** %3, align 8
  %18 = getelementptr inbounds %struct.xgene_mdio_pdata, %struct.xgene_mdio_pdata* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @clk_disable_unprepare(i32 %19)
  %21 = call i32 @udelay(i32 5)
  %22 = load %struct.xgene_mdio_pdata*, %struct.xgene_mdio_pdata** %3, align 8
  %23 = getelementptr inbounds %struct.xgene_mdio_pdata, %struct.xgene_mdio_pdata* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @clk_prepare_enable(i32 %24)
  %26 = call i32 @udelay(i32 5)
  br label %28

27:                                               ; preds = %1
  br label %28

28:                                               ; preds = %27, %11
  %29 = load %struct.xgene_mdio_pdata*, %struct.xgene_mdio_pdata** %3, align 8
  %30 = call i32 @xgene_enet_ecc_init(%struct.xgene_mdio_pdata* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %28
  %34 = load %struct.xgene_mdio_pdata*, %struct.xgene_mdio_pdata** %3, align 8
  %35 = getelementptr inbounds %struct.xgene_mdio_pdata, %struct.xgene_mdio_pdata* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load %struct.xgene_mdio_pdata*, %struct.xgene_mdio_pdata** %3, align 8
  %42 = getelementptr inbounds %struct.xgene_mdio_pdata, %struct.xgene_mdio_pdata* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @clk_disable_unprepare(i32 %43)
  br label %45

45:                                               ; preds = %40, %33
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %50

47:                                               ; preds = %28
  %48 = load %struct.xgene_mdio_pdata*, %struct.xgene_mdio_pdata** %3, align 8
  %49 = call i32 @xgene_gmac_reset(%struct.xgene_mdio_pdata* %48)
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %47, %45
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @xgene_enet_ecc_init(%struct.xgene_mdio_pdata*) #1

declare dso_local i32 @xgene_gmac_reset(%struct.xgene_mdio_pdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
