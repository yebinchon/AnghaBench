; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_mdio.c_enetc_mdio_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_mdio.c_enetc_mdio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.enetc_mdio_priv* }
%struct.enetc_mdio_priv = type { %struct.enetc_hw* }
%struct.enetc_hw = type { i32 }

@ENETC_MDC_DIV = common dso_local global i32 0, align 4
@MDIO_CFG_NEG = common dso_local global i32 0, align 4
@MII_ADDR_C45 = common dso_local global i32 0, align 4
@MDIO_CFG_ENC45 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @enetc_mdio_write(%struct.mii_bus* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mii_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.enetc_mdio_priv*, align 8
  %11 = alloca %struct.enetc_hw*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %17 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %16, i32 0, i32 0
  %18 = load %struct.enetc_mdio_priv*, %struct.enetc_mdio_priv** %17, align 8
  store %struct.enetc_mdio_priv* %18, %struct.enetc_mdio_priv** %10, align 8
  %19 = load %struct.enetc_mdio_priv*, %struct.enetc_mdio_priv** %10, align 8
  %20 = getelementptr inbounds %struct.enetc_mdio_priv, %struct.enetc_mdio_priv* %19, i32 0, i32 0
  %21 = load %struct.enetc_hw*, %struct.enetc_hw** %20, align 8
  store %struct.enetc_hw* %21, %struct.enetc_hw** %11, align 8
  %22 = load i32, i32* @ENETC_MDC_DIV, align 4
  %23 = call i32 @MDIO_CFG_CLKDIV(i32 %22)
  %24 = load i32, i32* @MDIO_CFG_NEG, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @MII_ADDR_C45, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %4
  %31 = load i32, i32* %8, align 4
  %32 = ashr i32 %31, 16
  %33 = and i32 %32, 31
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* @MDIO_CFG_ENC45, align 4
  %35 = load i32, i32* %13, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %13, align 4
  br label %44

37:                                               ; preds = %4
  %38 = load i32, i32* %8, align 4
  %39 = and i32 %38, 31
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* @MDIO_CFG_ENC45, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %13, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %13, align 4
  br label %44

44:                                               ; preds = %37, %30
  %45 = load %struct.enetc_hw*, %struct.enetc_hw** %11, align 8
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @enetc_mdio_wr(%struct.enetc_hw* %45, i32 (i32)* @MDIO_CFG, i32 %46)
  %48 = load %struct.enetc_hw*, %struct.enetc_hw** %11, align 8
  %49 = call i32 @enetc_mdio_wait_complete(%struct.enetc_hw* %48)
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %15, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i32, i32* %15, align 4
  store i32 %53, i32* %5, align 4
  br label %91

54:                                               ; preds = %44
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @MDIO_CTL_PORT_ADDR(i32 %55)
  %57 = load i32, i32* %14, align 4
  %58 = call i32 @MDIO_CTL_DEV_ADDR(i32 %57)
  %59 = or i32 %56, %58
  store i32 %59, i32* %12, align 4
  %60 = load %struct.enetc_hw*, %struct.enetc_hw** %11, align 8
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @enetc_mdio_wr(%struct.enetc_hw* %60, i32 (i32)* @MDIO_CTL, i32 %61)
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @MII_ADDR_C45, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %54
  %68 = load %struct.enetc_hw*, %struct.enetc_hw** %11, align 8
  %69 = load i32, i32* %8, align 4
  %70 = and i32 %69, 65535
  %71 = call i32 @enetc_mdio_wr(%struct.enetc_hw* %68, i32 (i32)* @MDIO_ADDR, i32 %70)
  %72 = load %struct.enetc_hw*, %struct.enetc_hw** %11, align 8
  %73 = call i32 @enetc_mdio_wait_complete(%struct.enetc_hw* %72)
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %15, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %67
  %77 = load i32, i32* %15, align 4
  store i32 %77, i32* %5, align 4
  br label %91

78:                                               ; preds = %67
  br label %79

79:                                               ; preds = %78, %54
  %80 = load %struct.enetc_hw*, %struct.enetc_hw** %11, align 8
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @MDIO_DATA(i32 %81)
  %83 = call i32 @enetc_mdio_wr(%struct.enetc_hw* %80, i32 (i32)* @MDIO_DATA, i32 %82)
  %84 = load %struct.enetc_hw*, %struct.enetc_hw** %11, align 8
  %85 = call i32 @enetc_mdio_wait_complete(%struct.enetc_hw* %84)
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* %15, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %79
  %89 = load i32, i32* %15, align 4
  store i32 %89, i32* %5, align 4
  br label %91

90:                                               ; preds = %79
  store i32 0, i32* %5, align 4
  br label %91

91:                                               ; preds = %90, %88, %76, %52
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @MDIO_CFG_CLKDIV(i32) #1

declare dso_local i32 @enetc_mdio_wr(%struct.enetc_hw*, i32 (i32)*, i32) #1

declare dso_local i32 @MDIO_CFG(i32) #1

declare dso_local i32 @enetc_mdio_wait_complete(%struct.enetc_hw*) #1

declare dso_local i32 @MDIO_CTL_PORT_ADDR(i32) #1

declare dso_local i32 @MDIO_CTL_DEV_ADDR(i32) #1

declare dso_local i32 @MDIO_CTL(i32) #1

declare dso_local i32 @MDIO_ADDR(i32) #1

declare dso_local i32 @MDIO_DATA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
