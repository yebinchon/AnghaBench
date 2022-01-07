; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_aq100x.c_t3_aq100x_phy_prep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_aq100x.c_t3_aq100x_phy_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cphy = type { i32 }
%struct.adapter = type { i32 }
%struct.mdio_ops = type { i32 }

@aq100x_ops = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_10000baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_TP = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@SUPPORTED_AUI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"1000/10GBASE-T\00", align 1
@F_GPIO10_OUT_VAL = common dso_local global i32 0, align 4
@F_GPIO6_OUT_VAL = common dso_local global i32 0, align 4
@A_T3DBG_GPIO_EN = common dso_local global i32 0, align 4
@MDIO_MMD_VEND1 = common dso_local global i32 0, align 4
@MDIO_CTRL1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"PHY%d: reset failed (0x%x, 0x%x).\0A\00", align 1
@AQ_RESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"PHY%d: reset timed out (0x%x).\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"PHY%d: reset took %ums\0A\00", align 1
@AQ_FW_VERSION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"PHY%d: unsupported firmware %d\0A\00", align 1
@AQ_LOWPOWER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"PHY%d does not start in low power mode.\0A\00", align 1
@MDIO_MMD_PHYXS = common dso_local global i32 0, align 4
@AQ_XAUI_RX_CFG = common dso_local global i32 0, align 4
@AQ_XAUI_TX_CFG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [46 x i8] c"PHY%d: incorrect XAUI settings (0x%x, 0x%x).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_aq100x_phy_prep(%struct.cphy* %0, %struct.adapter* %1, i32 %2, %struct.mdio_ops* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cphy*, align 8
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mdio_ops*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.cphy* %0, %struct.cphy** %6, align 8
  store %struct.adapter* %1, %struct.adapter** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.mdio_ops* %3, %struct.mdio_ops** %9, align 8
  %15 = load %struct.cphy*, %struct.cphy** %6, align 8
  %16 = load %struct.adapter*, %struct.adapter** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.mdio_ops*, %struct.mdio_ops** %9, align 8
  %19 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %20 = load i32, i32* @SUPPORTED_10000baseT_Full, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @SUPPORTED_TP, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @SUPPORTED_AUI, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @cphy_init(%struct.cphy* %15, %struct.adapter* %16, i32 %17, i32* @aq100x_ops, %struct.mdio_ops* %18, i32 %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32, i32* @F_GPIO10_OUT_VAL, align 4
  br label %35

33:                                               ; preds = %4
  %34 = load i32, i32* @F_GPIO6_OUT_VAL, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  store i32 %36, i32* %12, align 4
  %37 = load %struct.adapter*, %struct.adapter** %7, align 8
  %38 = load i32, i32* @A_T3DBG_GPIO_EN, align 4
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @t3_set_reg_field(%struct.adapter* %37, i32 %38, i32 %39, i32 0)
  %41 = call i32 @msleep(i32 1)
  %42 = load %struct.adapter*, %struct.adapter** %7, align 8
  %43 = load i32, i32* @A_T3DBG_GPIO_EN, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @t3_set_reg_field(%struct.adapter* %42, i32 %43, i32 %44, i32 %45)
  %47 = call i32 @msleep(i32 1000)
  store i32 500, i32* %13, align 4
  br label %48

48:                                               ; preds = %80, %35
  %49 = load %struct.cphy*, %struct.cphy** %6, align 8
  %50 = load i32, i32* @MDIO_MMD_VEND1, align 4
  %51 = load i32, i32* @MDIO_CTRL1, align 4
  %52 = call i32 @t3_mdio_read(%struct.cphy* %49, i32 %50, i32 %51, i32* %10)
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %48
  %56 = load i32, i32* %10, align 4
  %57 = icmp eq i32 %56, 65535
  br i1 %57, label %58, label %64

58:                                               ; preds = %55, %48
  %59 = load %struct.adapter*, %struct.adapter** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i32 (%struct.adapter*, i8*, i32, ...) @CH_WARN(%struct.adapter* %59, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %61, i32 %62)
  br label %165

64:                                               ; preds = %55
  %65 = load i32, i32* @AQ_RESET, align 4
  %66 = load i32, i32* %10, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = call i32 @msleep(i32 10)
  br label %72

72:                                               ; preds = %70, %64
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i32, i32* %13, align 4
  %78 = add i32 %77, -1
  store i32 %78, i32* %13, align 4
  %79 = icmp ne i32 %78, 0
  br label %80

80:                                               ; preds = %76, %73
  %81 = phi i1 [ false, %73 ], [ %79, %76 ]
  br i1 %81, label %48, label %82

82:                                               ; preds = %80
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  %86 = load %struct.adapter*, %struct.adapter** %7, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %10, align 4
  %89 = call i32 (%struct.adapter*, i8*, i32, ...) @CH_WARN(%struct.adapter* %86, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %87, i32 %88)
  br label %165

90:                                               ; preds = %82
  %91 = load i32, i32* %13, align 4
  %92 = sub i32 500, %91
  %93 = mul i32 %92, 10
  %94 = add i32 %93, 1000
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %13, align 4
  %96 = icmp ugt i32 %95, 3000
  br i1 %96, label %97, label %102

97:                                               ; preds = %90
  %98 = load %struct.adapter*, %struct.adapter** %7, align 8
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %13, align 4
  %101 = call i32 (%struct.adapter*, i8*, i32, ...) @CH_WARN(%struct.adapter* %98, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %97, %90
  %103 = load %struct.cphy*, %struct.cphy** %6, align 8
  %104 = load i32, i32* @MDIO_MMD_VEND1, align 4
  %105 = load i32, i32* @AQ_FW_VERSION, align 4
  %106 = call i32 @t3_mdio_read(%struct.cphy* %103, i32 %104, i32 %105, i32* %10)
  %107 = load i32, i32* %10, align 4
  %108 = icmp ne i32 %107, 101
  br i1 %108, label %109, label %114

109:                                              ; preds = %102
  %110 = load %struct.adapter*, %struct.adapter** %7, align 8
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %10, align 4
  %113 = call i32 (%struct.adapter*, i8*, i32, ...) @CH_WARN(%struct.adapter* %110, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %109, %102
  %115 = load %struct.cphy*, %struct.cphy** %6, align 8
  %116 = load i32, i32* @MDIO_MMD_VEND1, align 4
  %117 = load i32, i32* @MDIO_CTRL1, align 4
  %118 = call i32 @t3_mdio_read(%struct.cphy* %115, i32 %116, i32 %117, i32* %10)
  store i32 %118, i32* %14, align 4
  %119 = load i32, i32* %14, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %114
  %122 = load i32, i32* %14, align 4
  store i32 %122, i32* %5, align 4
  br label %167

123:                                              ; preds = %114
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* @AQ_LOWPOWER, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %140

128:                                              ; preds = %123
  %129 = load %struct.cphy*, %struct.cphy** %6, align 8
  %130 = load i32, i32* @MDIO_MMD_VEND1, align 4
  %131 = load i32, i32* @MDIO_CTRL1, align 4
  %132 = load i32, i32* @AQ_LOWPOWER, align 4
  %133 = call i32 @t3_mdio_change_bits(%struct.cphy* %129, i32 %130, i32 %131, i32 %132, i32 0)
  store i32 %133, i32* %14, align 4
  %134 = load i32, i32* %14, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %128
  %137 = load i32, i32* %14, align 4
  store i32 %137, i32* %5, align 4
  br label %167

138:                                              ; preds = %128
  %139 = call i32 @msleep(i32 10)
  br label %144

140:                                              ; preds = %123
  %141 = load %struct.adapter*, %struct.adapter** %7, align 8
  %142 = load i32, i32* %8, align 4
  %143 = call i32 (%struct.adapter*, i8*, i32, ...) @CH_WARN(%struct.adapter* %141, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %142)
  br label %144

144:                                              ; preds = %140, %138
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  %145 = load %struct.cphy*, %struct.cphy** %6, align 8
  %146 = load i32, i32* @MDIO_MMD_PHYXS, align 4
  %147 = load i32, i32* @AQ_XAUI_RX_CFG, align 4
  %148 = call i32 @t3_mdio_read(%struct.cphy* %145, i32 %146, i32 %147, i32* %10)
  %149 = load %struct.cphy*, %struct.cphy** %6, align 8
  %150 = load i32, i32* @MDIO_MMD_PHYXS, align 4
  %151 = load i32, i32* @AQ_XAUI_TX_CFG, align 4
  %152 = call i32 @t3_mdio_read(%struct.cphy* %149, i32 %150, i32 %151, i32* %11)
  %153 = load i32, i32* %10, align 4
  %154 = icmp ne i32 %153, 27
  br i1 %154, label %158, label %155

155:                                              ; preds = %144
  %156 = load i32, i32* %11, align 4
  %157 = icmp ne i32 %156, 27
  br i1 %157, label %158, label %164

158:                                              ; preds = %155, %144
  %159 = load %struct.adapter*, %struct.adapter** %7, align 8
  %160 = load i32, i32* %8, align 4
  %161 = load i32, i32* %10, align 4
  %162 = load i32, i32* %11, align 4
  %163 = call i32 (%struct.adapter*, i8*, i32, ...) @CH_WARN(%struct.adapter* %159, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i32 %160, i32 %161, i32 %162)
  br label %164

164:                                              ; preds = %158, %155
  br label %165

165:                                              ; preds = %164, %85, %58
  %166 = load i32, i32* %14, align 4
  store i32 %166, i32* %5, align 4
  br label %167

167:                                              ; preds = %165, %136, %121
  %168 = load i32, i32* %5, align 4
  ret i32 %168
}

declare dso_local i32 @cphy_init(%struct.cphy*, %struct.adapter*, i32, i32*, %struct.mdio_ops*, i32, i8*) #1

declare dso_local i32 @t3_set_reg_field(%struct.adapter*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @t3_mdio_read(%struct.cphy*, i32, i32, i32*) #1

declare dso_local i32 @CH_WARN(%struct.adapter*, i8*, i32, ...) #1

declare dso_local i32 @t3_mdio_change_bits(%struct.cphy*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
