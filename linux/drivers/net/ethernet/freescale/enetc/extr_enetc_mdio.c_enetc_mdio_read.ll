; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_mdio.c_enetc_mdio_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_mdio.c_enetc_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { i32, %struct.enetc_mdio_priv* }
%struct.enetc_mdio_priv = type { %struct.enetc_hw* }
%struct.enetc_hw = type { i32 }

@ENETC_MDC_DIV = common dso_local global i32 0, align 4
@MDIO_CFG_NEG = common dso_local global i32 0, align 4
@MII_ADDR_C45 = common dso_local global i32 0, align 4
@MDIO_CFG_ENC45 = common dso_local global i32 0, align 4
@MDIO_CFG = common dso_local global i32 0, align 4
@MDIO_CTL = common dso_local global i32 0, align 4
@MDIO_ADDR = common dso_local global i32 0, align 4
@MDIO_CTL_READ = common dso_local global i32 0, align 4
@MDIO_CFG_RD_ER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Error while reading PHY%d reg at %d.%hhu\0A\00", align 1
@MDIO_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @enetc_mdio_read(%struct.mii_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.enetc_mdio_priv*, align 8
  %9 = alloca %struct.enetc_hw*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %16 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %15, i32 0, i32 1
  %17 = load %struct.enetc_mdio_priv*, %struct.enetc_mdio_priv** %16, align 8
  store %struct.enetc_mdio_priv* %17, %struct.enetc_mdio_priv** %8, align 8
  %18 = load %struct.enetc_mdio_priv*, %struct.enetc_mdio_priv** %8, align 8
  %19 = getelementptr inbounds %struct.enetc_mdio_priv, %struct.enetc_mdio_priv* %18, i32 0, i32 0
  %20 = load %struct.enetc_hw*, %struct.enetc_hw** %19, align 8
  store %struct.enetc_hw* %20, %struct.enetc_hw** %9, align 8
  %21 = load i32, i32* @ENETC_MDC_DIV, align 4
  %22 = call i32 @MDIO_CFG_CLKDIV(i32 %21)
  %23 = load i32, i32* @MDIO_CFG_NEG, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @MII_ADDR_C45, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %3
  %30 = load i32, i32* %7, align 4
  %31 = ashr i32 %30, 16
  %32 = and i32 %31, 31
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* @MDIO_CFG_ENC45, align 4
  %34 = load i32, i32* %11, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %11, align 4
  br label %43

36:                                               ; preds = %3
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, 31
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* @MDIO_CFG_ENC45, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %11, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %36, %29
  %44 = load %struct.enetc_hw*, %struct.enetc_hw** %9, align 8
  %45 = load i32, i32* @MDIO_CFG, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @enetc_mdio_wr(%struct.enetc_hw* %44, i32 %45, i32 %46)
  %48 = load %struct.enetc_hw*, %struct.enetc_hw** %9, align 8
  %49 = call i32 @enetc_mdio_wait_complete(%struct.enetc_hw* %48)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = load i32, i32* %14, align 4
  store i32 %53, i32* %4, align 4
  br label %114

54:                                               ; preds = %43
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @MDIO_CTL_PORT_ADDR(i32 %55)
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @MDIO_CTL_DEV_ADDR(i32 %57)
  %59 = or i32 %56, %58
  store i32 %59, i32* %10, align 4
  %60 = load %struct.enetc_hw*, %struct.enetc_hw** %9, align 8
  %61 = load i32, i32* @MDIO_CTL, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @enetc_mdio_wr(%struct.enetc_hw* %60, i32 %61, i32 %62)
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @MII_ADDR_C45, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %54
  %69 = load %struct.enetc_hw*, %struct.enetc_hw** %9, align 8
  %70 = load i32, i32* @MDIO_ADDR, align 4
  %71 = load i32, i32* %7, align 4
  %72 = and i32 %71, 65535
  %73 = call i32 @enetc_mdio_wr(%struct.enetc_hw* %69, i32 %70, i32 %72)
  %74 = load %struct.enetc_hw*, %struct.enetc_hw** %9, align 8
  %75 = call i32 @enetc_mdio_wait_complete(%struct.enetc_hw* %74)
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %14, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %68
  %79 = load i32, i32* %14, align 4
  store i32 %79, i32* %4, align 4
  br label %114

80:                                               ; preds = %68
  br label %81

81:                                               ; preds = %80, %54
  %82 = load %struct.enetc_hw*, %struct.enetc_hw** %9, align 8
  %83 = load i32, i32* @MDIO_CTL, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @MDIO_CTL_READ, align 4
  %86 = or i32 %84, %85
  %87 = call i32 @enetc_mdio_wr(%struct.enetc_hw* %82, i32 %83, i32 %86)
  %88 = load %struct.enetc_hw*, %struct.enetc_hw** %9, align 8
  %89 = call i32 @enetc_mdio_wait_complete(%struct.enetc_hw* %88)
  store i32 %89, i32* %14, align 4
  %90 = load i32, i32* %14, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %81
  %93 = load i32, i32* %14, align 4
  store i32 %93, i32* %4, align 4
  br label %114

94:                                               ; preds = %81
  %95 = load %struct.enetc_hw*, %struct.enetc_hw** %9, align 8
  %96 = load i32, i32* @MDIO_CFG, align 4
  %97 = call i32 @enetc_mdio_rd(%struct.enetc_hw* %95, i32 %96)
  %98 = load i32, i32* @MDIO_CFG_RD_ER, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %94
  %102 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %103 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %102, i32 0, i32 0
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @dev_dbg(i32* %103, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %104, i32 %105, i32 %106)
  store i32 65535, i32* %4, align 4
  br label %114

108:                                              ; preds = %94
  %109 = load %struct.enetc_hw*, %struct.enetc_hw** %9, align 8
  %110 = load i32, i32* @MDIO_DATA, align 4
  %111 = call i32 @enetc_mdio_rd(%struct.enetc_hw* %109, i32 %110)
  %112 = and i32 %111, 65535
  store i32 %112, i32* %13, align 4
  %113 = load i32, i32* %13, align 4
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %108, %101, %92, %78, %52
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @MDIO_CFG_CLKDIV(i32) #1

declare dso_local i32 @enetc_mdio_wr(%struct.enetc_hw*, i32, i32) #1

declare dso_local i32 @enetc_mdio_wait_complete(%struct.enetc_hw*) #1

declare dso_local i32 @MDIO_CTL_PORT_ADDR(i32) #1

declare dso_local i32 @MDIO_CTL_DEV_ADDR(i32) #1

declare dso_local i32 @enetc_mdio_rd(%struct.enetc_hw*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
