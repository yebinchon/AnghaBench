; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-hisi-femac.c_hisi_femac_mdio_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-hisi-femac.c_hisi_femac_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.hisi_femac_mdio_data* }
%struct.hisi_femac_mdio_data = type { i64 }

@BIT_PHY_ADDR_OFFSET = common dso_local global i32 0, align 4
@MDIO_RWCTRL = common dso_local global i64 0, align 8
@MDIO_RO_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32)* @hisi_femac_mdio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_femac_mdio_read(%struct.mii_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hisi_femac_mdio_data*, align 8
  %9 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %11 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %10, i32 0, i32 0
  %12 = load %struct.hisi_femac_mdio_data*, %struct.hisi_femac_mdio_data** %11, align 8
  store %struct.hisi_femac_mdio_data* %12, %struct.hisi_femac_mdio_data** %8, align 8
  %13 = load %struct.hisi_femac_mdio_data*, %struct.hisi_femac_mdio_data** %8, align 8
  %14 = call i32 @hisi_femac_mdio_wait_ready(%struct.hisi_femac_mdio_data* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %4, align 4
  br label %45

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @BIT_PHY_ADDR_OFFSET, align 4
  %22 = shl i32 %20, %21
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.hisi_femac_mdio_data*, %struct.hisi_femac_mdio_data** %8, align 8
  %26 = getelementptr inbounds %struct.hisi_femac_mdio_data, %struct.hisi_femac_mdio_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MDIO_RWCTRL, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel(i32 %24, i64 %29)
  %31 = load %struct.hisi_femac_mdio_data*, %struct.hisi_femac_mdio_data** %8, align 8
  %32 = call i32 @hisi_femac_mdio_wait_ready(%struct.hisi_femac_mdio_data* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %19
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %4, align 4
  br label %45

37:                                               ; preds = %19
  %38 = load %struct.hisi_femac_mdio_data*, %struct.hisi_femac_mdio_data** %8, align 8
  %39 = getelementptr inbounds %struct.hisi_femac_mdio_data, %struct.hisi_femac_mdio_data* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @MDIO_RO_DATA, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @readl(i64 %42)
  %44 = and i32 %43, 65535
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %37, %35, %17
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @hisi_femac_mdio_wait_ready(%struct.hisi_femac_mdio_data*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
