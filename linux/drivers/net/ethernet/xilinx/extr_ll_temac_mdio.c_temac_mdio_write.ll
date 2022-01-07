; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_ll_temac_mdio.c_temac_mdio_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_ll_temac_mdio.c_temac_mdio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.temac_local* }
%struct.temac_local = type { i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"temac_mdio_write(phy_id=%i, reg=%x, val=%x)\0A\00", align 1
@XTE_MGTDR_OFFSET = common dso_local global i32 0, align 4
@XTE_MIIMAI_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32, i32)* @temac_mdio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @temac_mdio_write(%struct.mii_bus* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.temac_local*, align 8
  %10 = alloca i64, align 8
  store %struct.mii_bus* %0, %struct.mii_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %12 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %11, i32 0, i32 0
  %13 = load %struct.temac_local*, %struct.temac_local** %12, align 8
  store %struct.temac_local* %13, %struct.temac_local** %9, align 8
  %14 = load %struct.temac_local*, %struct.temac_local** %9, align 8
  %15 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @dev_dbg(i32 %16, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18, i32 %19)
  %21 = load %struct.temac_local*, %struct.temac_local** %9, align 8
  %22 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* %10, align 8
  %25 = call i32 @spin_lock_irqsave(i32 %23, i64 %24)
  %26 = load %struct.temac_local*, %struct.temac_local** %9, align 8
  %27 = load i32, i32* @XTE_MGTDR_OFFSET, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @temac_indirect_out32_locked(%struct.temac_local* %26, i32 %27, i32 %28)
  %30 = load %struct.temac_local*, %struct.temac_local** %9, align 8
  %31 = load i32, i32* @XTE_MIIMAI_OFFSET, align 4
  %32 = load i32, i32* %6, align 4
  %33 = shl i32 %32, 5
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @temac_indirect_out32_locked(%struct.temac_local* %30, i32 %31, i32 %35)
  %37 = load %struct.temac_local*, %struct.temac_local** %9, align 8
  %38 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* %10, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32 %39, i64 %40)
  ret i32 0
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @temac_indirect_out32_locked(%struct.temac_local*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
