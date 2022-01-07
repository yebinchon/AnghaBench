; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-hisi-femac.c_hisi_femac_mdio_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-hisi-femac.c_hisi_femac_mdio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.hisi_femac_mdio_data* }
%struct.hisi_femac_mdio_data = type { i64 }

@MDIO_WRITE = common dso_local global i32 0, align 4
@BIT_WR_DATA_OFFSET = common dso_local global i32 0, align 4
@BIT_PHY_ADDR_OFFSET = common dso_local global i32 0, align 4
@MDIO_RWCTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32, i32)* @hisi_femac_mdio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_femac_mdio_write(%struct.mii_bus* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mii_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hisi_femac_mdio_data*, align 8
  %11 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %13 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %12, i32 0, i32 0
  %14 = load %struct.hisi_femac_mdio_data*, %struct.hisi_femac_mdio_data** %13, align 8
  store %struct.hisi_femac_mdio_data* %14, %struct.hisi_femac_mdio_data** %10, align 8
  %15 = load %struct.hisi_femac_mdio_data*, %struct.hisi_femac_mdio_data** %10, align 8
  %16 = call i32 @hisi_femac_mdio_wait_ready(%struct.hisi_femac_mdio_data* %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %5, align 4
  br label %41

21:                                               ; preds = %4
  %22 = load i32, i32* @MDIO_WRITE, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @BIT_WR_DATA_OFFSET, align 4
  %25 = shl i32 %23, %24
  %26 = or i32 %22, %25
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @BIT_PHY_ADDR_OFFSET, align 4
  %29 = shl i32 %27, %28
  %30 = or i32 %26, %29
  %31 = load i32, i32* %8, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.hisi_femac_mdio_data*, %struct.hisi_femac_mdio_data** %10, align 8
  %34 = getelementptr inbounds %struct.hisi_femac_mdio_data, %struct.hisi_femac_mdio_data* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MDIO_RWCTRL, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel(i32 %32, i64 %37)
  %39 = load %struct.hisi_femac_mdio_data*, %struct.hisi_femac_mdio_data** %10, align 8
  %40 = call i32 @hisi_femac_mdio_wait_ready(%struct.hisi_femac_mdio_data* %39)
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %21, %19
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @hisi_femac_mdio_wait_ready(%struct.hisi_femac_mdio_data*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
