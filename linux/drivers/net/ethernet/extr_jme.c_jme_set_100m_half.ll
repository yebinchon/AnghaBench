; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_set_100m_half.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_set_100m_half.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_adapter = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@BMCR_SPEED100 = common dso_local global i32 0, align 4
@BMCR_SPEED1000 = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@JME_GHC = common dso_local global i32 0, align 4
@GHC_SPEED_100M = common dso_local global i32 0, align 4
@GHC_LINK_POLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jme_adapter*)* @jme_set_100m_half to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jme_set_100m_half(%struct.jme_adapter* %0) #0 {
  %2 = alloca %struct.jme_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.jme_adapter* %0, %struct.jme_adapter** %2, align 8
  %5 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %6 = call i32 @jme_phy_on(%struct.jme_adapter* %5)
  %7 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @MII_BMCR, align 4
  %15 = call i32 @jme_mdio_read(i32 %9, i32 %13, i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @BMCR_ANENABLE, align 4
  %18 = load i32, i32* @BMCR_SPEED100, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @BMCR_SPEED1000, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @BMCR_FULLDPLX, align 4
  %23 = or i32 %21, %22
  %24 = xor i32 %23, -1
  %25 = and i32 %16, %24
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* @BMCR_SPEED100, align 4
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %1
  %33 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %34 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %37 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @MII_BMCR, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @jme_mdio_write(i32 %35, i32 %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %32, %1
  %44 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %45 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %50 = load i32, i32* @JME_GHC, align 4
  %51 = load i32, i32* @GHC_SPEED_100M, align 4
  %52 = load i32, i32* @GHC_LINK_POLL, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @jwrite32(%struct.jme_adapter* %49, i32 %50, i32 %53)
  br label %60

55:                                               ; preds = %43
  %56 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %57 = load i32, i32* @JME_GHC, align 4
  %58 = load i32, i32* @GHC_SPEED_100M, align 4
  %59 = call i32 @jwrite32(%struct.jme_adapter* %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %55, %48
  ret void
}

declare dso_local i32 @jme_phy_on(%struct.jme_adapter*) #1

declare dso_local i32 @jme_mdio_read(i32, i32, i32) #1

declare dso_local i32 @jme_mdio_write(i32, i32, i32, i32) #1

declare dso_local i32 @jwrite32(%struct.jme_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
