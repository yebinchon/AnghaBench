; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-bcm-iproc.c_iproc_mdio_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-bcm-iproc.c_iproc_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.iproc_mdio_priv* }
%struct.iproc_mdio_priv = type { i64 }

@MII_DATA_TA_VAL = common dso_local global i32 0, align 4
@MII_DATA_TA_SHIFT = common dso_local global i32 0, align 4
@MII_DATA_RA_SHIFT = common dso_local global i32 0, align 4
@MII_DATA_PA_SHIFT = common dso_local global i32 0, align 4
@MII_DATA_SB_SHIFT = common dso_local global i32 0, align 4
@MII_DATA_OP_READ = common dso_local global i32 0, align 4
@MII_DATA_OP_SHIFT = common dso_local global i32 0, align 4
@MII_DATA_OFFSET = common dso_local global i64 0, align 8
@MII_DATA_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32)* @iproc_mdio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iproc_mdio_read(%struct.mii_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.iproc_mdio_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %12 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %11, i32 0, i32 0
  %13 = load %struct.iproc_mdio_priv*, %struct.iproc_mdio_priv** %12, align 8
  store %struct.iproc_mdio_priv* %13, %struct.iproc_mdio_priv** %8, align 8
  %14 = load %struct.iproc_mdio_priv*, %struct.iproc_mdio_priv** %8, align 8
  %15 = getelementptr inbounds %struct.iproc_mdio_priv, %struct.iproc_mdio_priv* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @iproc_mdio_wait_for_idle(i64 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %4, align 4
  br label %66

22:                                               ; preds = %3
  %23 = load i32, i32* @MII_DATA_TA_VAL, align 4
  %24 = load i32, i32* @MII_DATA_TA_SHIFT, align 4
  %25 = shl i32 %23, %24
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @MII_DATA_RA_SHIFT, align 4
  %28 = shl i32 %26, %27
  %29 = or i32 %25, %28
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @MII_DATA_PA_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = or i32 %29, %32
  %34 = load i32, i32* @MII_DATA_SB_SHIFT, align 4
  %35 = call i32 @BIT(i32 %34)
  %36 = or i32 %33, %35
  %37 = load i32, i32* @MII_DATA_OP_READ, align 4
  %38 = load i32, i32* @MII_DATA_OP_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = or i32 %36, %39
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.iproc_mdio_priv*, %struct.iproc_mdio_priv** %8, align 8
  %43 = getelementptr inbounds %struct.iproc_mdio_priv, %struct.iproc_mdio_priv* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @MII_DATA_OFFSET, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writel(i32 %41, i64 %46)
  %48 = load %struct.iproc_mdio_priv*, %struct.iproc_mdio_priv** %8, align 8
  %49 = getelementptr inbounds %struct.iproc_mdio_priv, %struct.iproc_mdio_priv* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @iproc_mdio_wait_for_idle(i64 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %22
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %4, align 4
  br label %66

56:                                               ; preds = %22
  %57 = load %struct.iproc_mdio_priv*, %struct.iproc_mdio_priv** %8, align 8
  %58 = getelementptr inbounds %struct.iproc_mdio_priv, %struct.iproc_mdio_priv* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @MII_DATA_OFFSET, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @readl(i64 %61)
  %63 = load i32, i32* @MII_DATA_MASK, align 4
  %64 = and i32 %62, %63
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %56, %54, %20
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @iproc_mdio_wait_for_idle(i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
