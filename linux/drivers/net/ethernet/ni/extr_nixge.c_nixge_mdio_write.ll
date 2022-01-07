; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ni/extr_nixge.c_nixge_mdio_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ni/extr_nixge.c_nixge_mdio_write.c"
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
@NIXGE_MDIO_C45_WRITE = common dso_local global i32 0, align 4
@NIXGE_REG_MDIO_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"timeout setting write command\00", align 1
@NIXGE_MDIO_CLAUSE22 = common dso_local global i32 0, align 4
@NIXGE_MDIO_C22_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32, i32)* @nixge_mdio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nixge_mdio_write(%struct.mii_bus* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mii_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nixge_priv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %16 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %15, i32 0, i32 0
  %17 = load %struct.nixge_priv*, %struct.nixge_priv** %16, align 8
  store %struct.nixge_priv* %17, %struct.nixge_priv** %10, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @MII_ADDR_C45, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %99

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = ashr i32 %23, 16
  %25 = and i32 %24, 31
  store i32 %25, i32* %13, align 4
  %26 = load %struct.nixge_priv*, %struct.nixge_priv** %10, align 8
  %27 = load i32, i32* @NIXGE_REG_MDIO_ADDR, align 4
  %28 = load i32, i32* %8, align 4
  %29 = and i32 %28, 65535
  %30 = call i32 @nixge_ctrl_write_reg(%struct.nixge_priv* %26, i32 %27, i32 %29)
  %31 = load i32, i32* @NIXGE_MDIO_CLAUSE45, align 4
  %32 = load i32, i32* @NIXGE_MDIO_OP_ADDRESS, align 4
  %33 = call i32 @NIXGE_MDIO_OP(i32 %32)
  %34 = or i32 %31, %33
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @NIXGE_MDIO_ADDR(i32 %35)
  %37 = or i32 %34, %36
  %38 = load i32, i32* %13, align 4
  %39 = call i32 @NIXGE_MDIO_MMD(i32 %38)
  %40 = or i32 %37, %39
  store i32 %40, i32* %12, align 4
  %41 = load %struct.nixge_priv*, %struct.nixge_priv** %10, align 8
  %42 = load i32, i32* @NIXGE_REG_MDIO_OP, align 4
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @nixge_ctrl_write_reg(%struct.nixge_priv* %41, i32 %42, i32 %43)
  %45 = load %struct.nixge_priv*, %struct.nixge_priv** %10, align 8
  %46 = load i32, i32* @NIXGE_REG_MDIO_CTRL, align 4
  %47 = call i32 @nixge_ctrl_write_reg(%struct.nixge_priv* %45, i32 %46, i32 1)
  %48 = load %struct.nixge_priv*, %struct.nixge_priv** %10, align 8
  %49 = load i32, i32* @NIXGE_REG_MDIO_CTRL, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i32 @nixge_ctrl_poll_timeout(%struct.nixge_priv* %48, i32 %49, i32 %50, i32 %54, i32 10, i32 1000)
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %22
  %59 = load %struct.nixge_priv*, %struct.nixge_priv** %10, align 8
  %60 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @dev_err(i32 %61, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %63 = load i32, i32* %14, align 4
  store i32 %63, i32* %5, align 4
  br label %141

64:                                               ; preds = %22
  %65 = load i32, i32* @NIXGE_MDIO_CLAUSE45, align 4
  %66 = load i32, i32* @NIXGE_MDIO_C45_WRITE, align 4
  %67 = call i32 @NIXGE_MDIO_OP(i32 %66)
  %68 = or i32 %65, %67
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @NIXGE_MDIO_ADDR(i32 %69)
  %71 = or i32 %68, %70
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @NIXGE_MDIO_MMD(i32 %72)
  %74 = or i32 %71, %73
  store i32 %74, i32* %12, align 4
  %75 = load %struct.nixge_priv*, %struct.nixge_priv** %10, align 8
  %76 = load i32, i32* @NIXGE_REG_MDIO_DATA, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @nixge_ctrl_write_reg(%struct.nixge_priv* %75, i32 %76, i32 %77)
  %79 = load %struct.nixge_priv*, %struct.nixge_priv** %10, align 8
  %80 = load i32, i32* @NIXGE_REG_MDIO_OP, align 4
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @nixge_ctrl_write_reg(%struct.nixge_priv* %79, i32 %80, i32 %81)
  %83 = load %struct.nixge_priv*, %struct.nixge_priv** %10, align 8
  %84 = load i32, i32* @NIXGE_REG_MDIO_CTRL, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = call i32 @nixge_ctrl_poll_timeout(%struct.nixge_priv* %83, i32 %84, i32 %85, i32 %89, i32 10, i32 1000)
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %14, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %64
  %94 = load %struct.nixge_priv*, %struct.nixge_priv** %10, align 8
  %95 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @dev_err(i32 %96, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %98

98:                                               ; preds = %93, %64
  br label %139

99:                                               ; preds = %4
  %100 = load i32, i32* %8, align 4
  %101 = and i32 %100, 31
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* @NIXGE_MDIO_CLAUSE22, align 4
  %103 = load i32, i32* @NIXGE_MDIO_C22_WRITE, align 4
  %104 = call i32 @NIXGE_MDIO_OP(i32 %103)
  %105 = or i32 %102, %104
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @NIXGE_MDIO_ADDR(i32 %106)
  %108 = or i32 %105, %107
  %109 = load i32, i32* %13, align 4
  %110 = call i32 @NIXGE_MDIO_MMD(i32 %109)
  %111 = or i32 %108, %110
  store i32 %111, i32* %12, align 4
  %112 = load %struct.nixge_priv*, %struct.nixge_priv** %10, align 8
  %113 = load i32, i32* @NIXGE_REG_MDIO_DATA, align 4
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @nixge_ctrl_write_reg(%struct.nixge_priv* %112, i32 %113, i32 %114)
  %116 = load %struct.nixge_priv*, %struct.nixge_priv** %10, align 8
  %117 = load i32, i32* @NIXGE_REG_MDIO_OP, align 4
  %118 = load i32, i32* %12, align 4
  %119 = call i32 @nixge_ctrl_write_reg(%struct.nixge_priv* %116, i32 %117, i32 %118)
  %120 = load %struct.nixge_priv*, %struct.nixge_priv** %10, align 8
  %121 = load i32, i32* @NIXGE_REG_MDIO_CTRL, align 4
  %122 = call i32 @nixge_ctrl_write_reg(%struct.nixge_priv* %120, i32 %121, i32 1)
  %123 = load %struct.nixge_priv*, %struct.nixge_priv** %10, align 8
  %124 = load i32, i32* @NIXGE_REG_MDIO_CTRL, align 4
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* %11, align 4
  %127 = icmp ne i32 %126, 0
  %128 = xor i1 %127, true
  %129 = zext i1 %128 to i32
  %130 = call i32 @nixge_ctrl_poll_timeout(%struct.nixge_priv* %123, i32 %124, i32 %125, i32 %129, i32 10, i32 1000)
  store i32 %130, i32* %14, align 4
  %131 = load i32, i32* %14, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %99
  %134 = load %struct.nixge_priv*, %struct.nixge_priv** %10, align 8
  %135 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @dev_err(i32 %136, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %138

138:                                              ; preds = %133, %99
  br label %139

139:                                              ; preds = %138, %98
  %140 = load i32, i32* %14, align 4
  store i32 %140, i32* %5, align 4
  br label %141

141:                                              ; preds = %139, %58
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local i32 @nixge_ctrl_write_reg(%struct.nixge_priv*, i32, i32) #1

declare dso_local i32 @NIXGE_MDIO_OP(i32) #1

declare dso_local i32 @NIXGE_MDIO_ADDR(i32) #1

declare dso_local i32 @NIXGE_MDIO_MMD(i32) #1

declare dso_local i32 @nixge_ctrl_poll_timeout(%struct.nixge_priv*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
