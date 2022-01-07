; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ni/extr_nixge.c_nixge_mdio_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ni/extr_nixge.c_nixge_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.nixge_priv* }
%struct.nixge_priv = type { i32 }

@MII_ADDR_C45 = common dso_local global i32 0, align 4
@NIXGE_REG_MDIO_ADDR = common dso_local global i32 0, align 4
@NIXGE_MDIO_CLAUSE45 = common dso_local global i32 0, align 4
@NIXGE_MDIO_OP_ADDRESS = common dso_local global i32 0, align 4
@NIXGE_REG_MDIO_OP = common dso_local global i32 0, align 4
@NIXGE_REG_MDIO_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"timeout setting address\00", align 1
@NIXGE_MDIO_C45_READ = common dso_local global i32 0, align 4
@NIXGE_MDIO_CLAUSE22 = common dso_local global i32 0, align 4
@NIXGE_MDIO_C22_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"timeout setting read command\00", align 1
@NIXGE_REG_MDIO_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32)* @nixge_mdio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nixge_mdio_read(%struct.mii_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nixge_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %14 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %13, i32 0, i32 0
  %15 = load %struct.nixge_priv*, %struct.nixge_priv** %14, align 8
  store %struct.nixge_priv* %15, %struct.nixge_priv** %8, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @MII_ADDR_C45, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %73

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = ashr i32 %21, 16
  %23 = and i32 %22, 31
  store i32 %23, i32* %12, align 4
  %24 = load %struct.nixge_priv*, %struct.nixge_priv** %8, align 8
  %25 = load i32, i32* @NIXGE_REG_MDIO_ADDR, align 4
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, 65535
  %28 = call i32 @nixge_ctrl_write_reg(%struct.nixge_priv* %24, i32 %25, i32 %27)
  %29 = load i32, i32* @NIXGE_MDIO_CLAUSE45, align 4
  %30 = load i32, i32* @NIXGE_MDIO_OP_ADDRESS, align 4
  %31 = call i32 @NIXGE_MDIO_OP(i32 %30)
  %32 = or i32 %29, %31
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @NIXGE_MDIO_ADDR(i32 %33)
  %35 = or i32 %32, %34
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @NIXGE_MDIO_MMD(i32 %36)
  %38 = or i32 %35, %37
  store i32 %38, i32* %10, align 4
  %39 = load %struct.nixge_priv*, %struct.nixge_priv** %8, align 8
  %40 = load i32, i32* @NIXGE_REG_MDIO_OP, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @nixge_ctrl_write_reg(%struct.nixge_priv* %39, i32 %40, i32 %41)
  %43 = load %struct.nixge_priv*, %struct.nixge_priv** %8, align 8
  %44 = load i32, i32* @NIXGE_REG_MDIO_CTRL, align 4
  %45 = call i32 @nixge_ctrl_write_reg(%struct.nixge_priv* %43, i32 %44, i32 1)
  %46 = load %struct.nixge_priv*, %struct.nixge_priv** %8, align 8
  %47 = load i32, i32* @NIXGE_REG_MDIO_CTRL, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i32 @nixge_ctrl_poll_timeout(%struct.nixge_priv* %46, i32 %47, i32 %48, i32 %52, i32 10, i32 1000)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %20
  %57 = load %struct.nixge_priv*, %struct.nixge_priv** %8, align 8
  %58 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* %11, align 4
  store i32 %61, i32* %4, align 4
  br label %115

62:                                               ; preds = %20
  %63 = load i32, i32* @NIXGE_MDIO_CLAUSE45, align 4
  %64 = load i32, i32* @NIXGE_MDIO_C45_READ, align 4
  %65 = call i32 @NIXGE_MDIO_OP(i32 %64)
  %66 = or i32 %63, %65
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @NIXGE_MDIO_ADDR(i32 %67)
  %69 = or i32 %66, %68
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @NIXGE_MDIO_MMD(i32 %70)
  %72 = or i32 %69, %71
  store i32 %72, i32* %10, align 4
  br label %86

73:                                               ; preds = %3
  %74 = load i32, i32* %7, align 4
  %75 = and i32 %74, 31
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* @NIXGE_MDIO_CLAUSE22, align 4
  %77 = load i32, i32* @NIXGE_MDIO_C22_READ, align 4
  %78 = call i32 @NIXGE_MDIO_OP(i32 %77)
  %79 = or i32 %76, %78
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @NIXGE_MDIO_ADDR(i32 %80)
  %82 = or i32 %79, %81
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @NIXGE_MDIO_MMD(i32 %83)
  %85 = or i32 %82, %84
  store i32 %85, i32* %10, align 4
  br label %86

86:                                               ; preds = %73, %62
  %87 = load %struct.nixge_priv*, %struct.nixge_priv** %8, align 8
  %88 = load i32, i32* @NIXGE_REG_MDIO_OP, align 4
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @nixge_ctrl_write_reg(%struct.nixge_priv* %87, i32 %88, i32 %89)
  %91 = load %struct.nixge_priv*, %struct.nixge_priv** %8, align 8
  %92 = load i32, i32* @NIXGE_REG_MDIO_CTRL, align 4
  %93 = call i32 @nixge_ctrl_write_reg(%struct.nixge_priv* %91, i32 %92, i32 1)
  %94 = load %struct.nixge_priv*, %struct.nixge_priv** %8, align 8
  %95 = load i32, i32* @NIXGE_REG_MDIO_CTRL, align 4
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = call i32 @nixge_ctrl_poll_timeout(%struct.nixge_priv* %94, i32 %95, i32 %96, i32 %100, i32 10, i32 1000)
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %11, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %86
  %105 = load %struct.nixge_priv*, %struct.nixge_priv** %8, align 8
  %106 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @dev_err(i32 %107, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %109 = load i32, i32* %11, align 4
  store i32 %109, i32* %4, align 4
  br label %115

110:                                              ; preds = %86
  %111 = load %struct.nixge_priv*, %struct.nixge_priv** %8, align 8
  %112 = load i32, i32* @NIXGE_REG_MDIO_DATA, align 4
  %113 = call i32 @nixge_ctrl_read_reg(%struct.nixge_priv* %111, i32 %112)
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %9, align 4
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %110, %104, %56
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i32 @nixge_ctrl_write_reg(%struct.nixge_priv*, i32, i32) #1

declare dso_local i32 @NIXGE_MDIO_OP(i32) #1

declare dso_local i32 @NIXGE_MDIO_ADDR(i32) #1

declare dso_local i32 @NIXGE_MDIO_MMD(i32) #1

declare dso_local i32 @nixge_ctrl_poll_timeout(%struct.nixge_priv*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @nixge_ctrl_read_reg(%struct.nixge_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
