; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_xilinx_axienet_mdio.c_axienet_mdio_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_xilinx_axienet_mdio.c_axienet_mdio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.axienet_local* }
%struct.axienet_local = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"axienet_mdio_write(phy_id=%i, reg=%x, val=%x)\0A\00", align 1
@XAE_MDIO_MWD_OFFSET = common dso_local global i32 0, align 4
@XAE_MDIO_MCR_OFFSET = common dso_local global i32 0, align 4
@XAE_MDIO_MCR_PHYAD_SHIFT = common dso_local global i32 0, align 4
@XAE_MDIO_MCR_PHYAD_MASK = common dso_local global i32 0, align 4
@XAE_MDIO_MCR_REGAD_SHIFT = common dso_local global i32 0, align 4
@XAE_MDIO_MCR_REGAD_MASK = common dso_local global i32 0, align 4
@XAE_MDIO_MCR_INITIATE_MASK = common dso_local global i32 0, align 4
@XAE_MDIO_MCR_OP_WRITE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32, i64)* @axienet_mdio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axienet_mdio_write(%struct.mii_bus* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mii_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.axienet_local*, align 8
  store %struct.mii_bus* %0, %struct.mii_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %12 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %13 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %12, i32 0, i32 0
  %14 = load %struct.axienet_local*, %struct.axienet_local** %13, align 8
  store %struct.axienet_local* %14, %struct.axienet_local** %11, align 8
  %15 = load %struct.axienet_local*, %struct.axienet_local** %11, align 8
  %16 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i64, i64* %9, align 8
  %21 = call i32 @dev_dbg(i32 %17, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19, i64 %20)
  %22 = load %struct.axienet_local*, %struct.axienet_local** %11, align 8
  %23 = call i32 @axienet_mdio_wait_until_ready(%struct.axienet_local* %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %5, align 4
  br label %59

28:                                               ; preds = %4
  %29 = load %struct.axienet_local*, %struct.axienet_local** %11, align 8
  %30 = load i32, i32* @XAE_MDIO_MWD_OFFSET, align 4
  %31 = load i64, i64* %9, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i32 @axienet_iow(%struct.axienet_local* %29, i32 %30, i32 %32)
  %34 = load %struct.axienet_local*, %struct.axienet_local** %11, align 8
  %35 = load i32, i32* @XAE_MDIO_MCR_OFFSET, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @XAE_MDIO_MCR_PHYAD_SHIFT, align 4
  %38 = shl i32 %36, %37
  %39 = load i32, i32* @XAE_MDIO_MCR_PHYAD_MASK, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @XAE_MDIO_MCR_REGAD_SHIFT, align 4
  %43 = shl i32 %41, %42
  %44 = load i32, i32* @XAE_MDIO_MCR_REGAD_MASK, align 4
  %45 = and i32 %43, %44
  %46 = or i32 %40, %45
  %47 = load i32, i32* @XAE_MDIO_MCR_INITIATE_MASK, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @XAE_MDIO_MCR_OP_WRITE_MASK, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @axienet_iow(%struct.axienet_local* %34, i32 %35, i32 %50)
  %52 = load %struct.axienet_local*, %struct.axienet_local** %11, align 8
  %53 = call i32 @axienet_mdio_wait_until_ready(%struct.axienet_local* %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %28
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %5, align 4
  br label %59

58:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %58, %56, %26
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i64) #1

declare dso_local i32 @axienet_mdio_wait_until_ready(%struct.axienet_local*) #1

declare dso_local i32 @axienet_iow(%struct.axienet_local*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
