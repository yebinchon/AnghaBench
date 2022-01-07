; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_txc43128_phy.c_txc_apply_defaults.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_txc43128_phy.c_txc_apply_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.ef4_nic*)* }

@MDIO_MMD_PHYXS = common dso_local global i32 0, align 4
@TXC_ALRGS_ATXPRE0 = common dso_local global i32 0, align 4
@TXC_ATXPRE_NONE = common dso_local global i32 0, align 4
@TXC_ALRGS_ATXPRE1 = common dso_local global i32 0, align 4
@TXC_ALRGS_ATXAMP0 = common dso_local global i32 0, align 4
@TXC_ATXAMP_0820_BOTH = common dso_local global i32 0, align 4
@TXC_ALRGS_ATXAMP1 = common dso_local global i32 0, align 4
@MDIO_MMD_PMAPMD = common dso_local global i32 0, align 4
@TXC_ATXPRE_DEFAULT = common dso_local global i32 0, align 4
@TXC_ATXAMP_DEFAULT = common dso_local global i32 0, align 4
@TXC_MRGS_CTL = common dso_local global i32 0, align 4
@TXC_MCTL_TXLED_LBN = common dso_local global i32 0, align 4
@TXC_MCTL_RXLED_LBN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ef4_nic*)* @txc_apply_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @txc_apply_defaults(%struct.ef4_nic* %0) #0 {
  %2 = alloca %struct.ef4_nic*, align 8
  %3 = alloca i32, align 4
  store %struct.ef4_nic* %0, %struct.ef4_nic** %2, align 8
  %4 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %5 = load i32, i32* @MDIO_MMD_PHYXS, align 4
  %6 = load i32, i32* @TXC_ALRGS_ATXPRE0, align 4
  %7 = load i32, i32* @TXC_ATXPRE_NONE, align 4
  %8 = call i32 @ef4_mdio_write(%struct.ef4_nic* %4, i32 %5, i32 %6, i32 %7)
  %9 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %10 = load i32, i32* @MDIO_MMD_PHYXS, align 4
  %11 = load i32, i32* @TXC_ALRGS_ATXPRE1, align 4
  %12 = load i32, i32* @TXC_ATXPRE_NONE, align 4
  %13 = call i32 @ef4_mdio_write(%struct.ef4_nic* %9, i32 %10, i32 %11, i32 %12)
  %14 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %15 = load i32, i32* @MDIO_MMD_PHYXS, align 4
  %16 = load i32, i32* @TXC_ALRGS_ATXAMP0, align 4
  %17 = load i32, i32* @TXC_ATXAMP_0820_BOTH, align 4
  %18 = call i32 @ef4_mdio_write(%struct.ef4_nic* %14, i32 %15, i32 %16, i32 %17)
  %19 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %20 = load i32, i32* @MDIO_MMD_PHYXS, align 4
  %21 = load i32, i32* @TXC_ALRGS_ATXAMP1, align 4
  %22 = load i32, i32* @TXC_ATXAMP_0820_BOTH, align 4
  %23 = call i32 @ef4_mdio_write(%struct.ef4_nic* %19, i32 %20, i32 %21, i32 %22)
  %24 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %25 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %26 = load i32, i32* @TXC_ALRGS_ATXPRE0, align 4
  %27 = load i32, i32* @TXC_ATXPRE_DEFAULT, align 4
  %28 = call i32 @ef4_mdio_write(%struct.ef4_nic* %24, i32 %25, i32 %26, i32 %27)
  %29 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %30 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %31 = load i32, i32* @TXC_ALRGS_ATXPRE1, align 4
  %32 = load i32, i32* @TXC_ATXPRE_DEFAULT, align 4
  %33 = call i32 @ef4_mdio_write(%struct.ef4_nic* %29, i32 %30, i32 %31, i32 %32)
  %34 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %35 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %36 = load i32, i32* @TXC_ALRGS_ATXAMP0, align 4
  %37 = load i32, i32* @TXC_ATXAMP_DEFAULT, align 4
  %38 = call i32 @ef4_mdio_write(%struct.ef4_nic* %34, i32 %35, i32 %36, i32 %37)
  %39 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %40 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %41 = load i32, i32* @TXC_ALRGS_ATXAMP1, align 4
  %42 = load i32, i32* @TXC_ATXAMP_DEFAULT, align 4
  %43 = call i32 @ef4_mdio_write(%struct.ef4_nic* %39, i32 %40, i32 %41, i32 %42)
  %44 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %45 = load i32, i32* @MDIO_MMD_PHYXS, align 4
  %46 = load i32, i32* @TXC_MRGS_CTL, align 4
  %47 = call i32 @ef4_mdio_read(%struct.ef4_nic* %44, i32 %45, i32 %46)
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* @TXC_MCTL_TXLED_LBN, align 4
  %49 = shl i32 1, %48
  %50 = load i32, i32* @TXC_MCTL_RXLED_LBN, align 4
  %51 = shl i32 1, %50
  %52 = or i32 %49, %51
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %3, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %3, align 4
  %56 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %57 = load i32, i32* @MDIO_MMD_PHYXS, align 4
  %58 = load i32, i32* @TXC_MRGS_CTL, align 4
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @ef4_mdio_write(%struct.ef4_nic* %56, i32 %57, i32 %58, i32 %59)
  %61 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %62 = call i32 @txc_reset_logic(%struct.ef4_nic* %61)
  %63 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %64 = call %struct.TYPE_4__* @falcon_board(%struct.ef4_nic* %63)
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32 (%struct.ef4_nic*)*, i32 (%struct.ef4_nic*)** %67, align 8
  %69 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %70 = call i32 %68(%struct.ef4_nic* %69)
  ret void
}

declare dso_local i32 @ef4_mdio_write(%struct.ef4_nic*, i32, i32, i32) #1

declare dso_local i32 @ef4_mdio_read(%struct.ef4_nic*, i32, i32) #1

declare dso_local i32 @txc_reset_logic(%struct.ef4_nic*) #1

declare dso_local %struct.TYPE_4__* @falcon_board(%struct.ef4_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
