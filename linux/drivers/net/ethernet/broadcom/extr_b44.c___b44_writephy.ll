; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c___b44_writephy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c___b44_writephy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b44 = type { i32 }

@B44_EMAC_ISTAT = common dso_local global i32 0, align 4
@EMAC_INT_MII = common dso_local global i32 0, align 4
@B44_MDIO_DATA = common dso_local global i32 0, align 4
@MDIO_DATA_SB_START = common dso_local global i32 0, align 4
@MDIO_OP_WRITE = common dso_local global i32 0, align 4
@MDIO_DATA_OP_SHIFT = common dso_local global i32 0, align 4
@MDIO_DATA_PMD_SHIFT = common dso_local global i32 0, align 4
@MDIO_DATA_RA_SHIFT = common dso_local global i32 0, align 4
@MDIO_TA_VALID = common dso_local global i32 0, align 4
@MDIO_DATA_TA_SHIFT = common dso_local global i32 0, align 4
@MDIO_DATA_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b44*, i32, i32, i32)* @__b44_writephy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__b44_writephy(%struct.b44* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.b44*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.b44* %0, %struct.b44** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.b44*, %struct.b44** %5, align 8
  %10 = load i32, i32* @B44_EMAC_ISTAT, align 4
  %11 = load i32, i32* @EMAC_INT_MII, align 4
  %12 = call i32 @bw32(%struct.b44* %9, i32 %10, i32 %11)
  %13 = load %struct.b44*, %struct.b44** %5, align 8
  %14 = load i32, i32* @B44_MDIO_DATA, align 4
  %15 = load i32, i32* @MDIO_DATA_SB_START, align 4
  %16 = load i32, i32* @MDIO_OP_WRITE, align 4
  %17 = load i32, i32* @MDIO_DATA_OP_SHIFT, align 4
  %18 = shl i32 %16, %17
  %19 = or i32 %15, %18
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @MDIO_DATA_PMD_SHIFT, align 4
  %22 = shl i32 %20, %21
  %23 = or i32 %19, %22
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @MDIO_DATA_RA_SHIFT, align 4
  %26 = shl i32 %24, %25
  %27 = or i32 %23, %26
  %28 = load i32, i32* @MDIO_TA_VALID, align 4
  %29 = load i32, i32* @MDIO_DATA_TA_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = or i32 %27, %30
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @MDIO_DATA_DATA, align 4
  %34 = and i32 %32, %33
  %35 = or i32 %31, %34
  %36 = call i32 @bw32(%struct.b44* %13, i32 %14, i32 %35)
  %37 = load %struct.b44*, %struct.b44** %5, align 8
  %38 = load i32, i32* @B44_EMAC_ISTAT, align 4
  %39 = load i32, i32* @EMAC_INT_MII, align 4
  %40 = call i32 @b44_wait_bit(%struct.b44* %37, i32 %38, i32 %39, i32 100, i32 0)
  ret i32 %40
}

declare dso_local i32 @bw32(%struct.b44*, i32, i32) #1

declare dso_local i32 @b44_wait_bit(%struct.b44*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
