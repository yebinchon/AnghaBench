; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_ll_temac_mdio.c_temac_mdio_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_ll_temac_mdio.c_temac_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.temac_local* }
%struct.temac_local = type { i32, i32 }

@XTE_LSW0_OFFSET = common dso_local global i32 0, align 4
@XTE_MIIMAI_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"temac_mdio_read(phy_id=%i, reg=%x) == %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32)* @temac_mdio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @temac_mdio_read(%struct.mii_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mii_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.temac_local*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.mii_bus* %0, %struct.mii_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %11 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %10, i32 0, i32 0
  %12 = load %struct.temac_local*, %struct.temac_local** %11, align 8
  store %struct.temac_local* %12, %struct.temac_local** %7, align 8
  %13 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %14 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i64, i64* %9, align 8
  %17 = call i32 @spin_lock_irqsave(i32 %15, i64 %16)
  %18 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %19 = load i32, i32* @XTE_LSW0_OFFSET, align 4
  %20 = load i32, i32* %5, align 4
  %21 = shl i32 %20, 5
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @temac_iow(%struct.temac_local* %18, i32 %19, i32 %23)
  %25 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %26 = load i32, i32* @XTE_MIIMAI_OFFSET, align 4
  %27 = call i32 @temac_indirect_in32_locked(%struct.temac_local* %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %29 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* %9, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32 %30, i64 %31)
  %33 = load %struct.temac_local*, %struct.temac_local** %7, align 8
  %34 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @dev_dbg(i32 %35, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37, i32 %38)
  %40 = load i32, i32* %8, align 4
  ret i32 %40
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @temac_iow(%struct.temac_local*, i32, i32) #1

declare dso_local i32 @temac_indirect_in32_locked(%struct.temac_local*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
