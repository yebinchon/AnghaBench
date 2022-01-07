; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_xilinx_axienet_mdio.c_axienet_mdio_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_xilinx_axienet_mdio.c_axienet_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.axienet_local* }
%struct.axienet_local = type { i32 }

@XAE_MDIO_MCR_OFFSET = common dso_local global i32 0, align 4
@XAE_MDIO_MCR_PHYAD_SHIFT = common dso_local global i32 0, align 4
@XAE_MDIO_MCR_PHYAD_MASK = common dso_local global i32 0, align 4
@XAE_MDIO_MCR_REGAD_SHIFT = common dso_local global i32 0, align 4
@XAE_MDIO_MCR_REGAD_MASK = common dso_local global i32 0, align 4
@XAE_MDIO_MCR_INITIATE_MASK = common dso_local global i32 0, align 4
@XAE_MDIO_MCR_OP_READ_MASK = common dso_local global i32 0, align 4
@XAE_MDIO_MRD_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"axienet_mdio_read(phy_id=%i, reg=%x) == %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32)* @axienet_mdio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axienet_mdio_read(%struct.mii_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.axienet_local*, align 8
  store %struct.mii_bus* %0, %struct.mii_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %12 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %11, i32 0, i32 0
  %13 = load %struct.axienet_local*, %struct.axienet_local** %12, align 8
  store %struct.axienet_local* %13, %struct.axienet_local** %10, align 8
  %14 = load %struct.axienet_local*, %struct.axienet_local** %10, align 8
  %15 = call i32 @axienet_mdio_wait_until_ready(%struct.axienet_local* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %4, align 4
  br label %58

20:                                               ; preds = %3
  %21 = load %struct.axienet_local*, %struct.axienet_local** %10, align 8
  %22 = load i32, i32* @XAE_MDIO_MCR_OFFSET, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @XAE_MDIO_MCR_PHYAD_SHIFT, align 4
  %25 = shl i32 %23, %24
  %26 = load i32, i32* @XAE_MDIO_MCR_PHYAD_MASK, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @XAE_MDIO_MCR_REGAD_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = load i32, i32* @XAE_MDIO_MCR_REGAD_MASK, align 4
  %32 = and i32 %30, %31
  %33 = or i32 %27, %32
  %34 = load i32, i32* @XAE_MDIO_MCR_INITIATE_MASK, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @XAE_MDIO_MCR_OP_READ_MASK, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @axienet_iow(%struct.axienet_local* %21, i32 %22, i32 %37)
  %39 = load %struct.axienet_local*, %struct.axienet_local** %10, align 8
  %40 = call i32 @axienet_mdio_wait_until_ready(%struct.axienet_local* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %20
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %4, align 4
  br label %58

45:                                               ; preds = %20
  %46 = load %struct.axienet_local*, %struct.axienet_local** %10, align 8
  %47 = load i32, i32* @XAE_MDIO_MRD_OFFSET, align 4
  %48 = call i32 @axienet_ior(%struct.axienet_local* %46, i32 %47)
  %49 = and i32 %48, 65535
  store i32 %49, i32* %8, align 4
  %50 = load %struct.axienet_local*, %struct.axienet_local** %10, align 8
  %51 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @dev_dbg(i32 %52, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %54, i32 %55)
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %45, %43, %18
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @axienet_mdio_wait_until_ready(%struct.axienet_local*) #1

declare dso_local i32 @axienet_iow(%struct.axienet_local*, i32, i32) #1

declare dso_local i32 @axienet_ior(%struct.axienet_local*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
