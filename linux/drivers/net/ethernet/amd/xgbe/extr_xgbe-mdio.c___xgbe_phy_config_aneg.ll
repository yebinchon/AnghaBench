; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-mdio.c___xgbe_phy_config_aneg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-mdio.c___xgbe_phy_config_aneg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.xgbe_prv_data.0*)* }
%struct.xgbe_prv_data.0 = type opaque

@XGBE_LINK_INIT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"AN redriver support\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"AN PHY configuration\0A\00", align 1
@XGBE_MODE_KR = common dso_local global i32 0, align 4
@XGBE_MODE_KX_2500 = common dso_local global i32 0, align 4
@XGBE_MODE_KX_1000 = common dso_local global i32 0, align 4
@XGBE_MODE_SFI = common dso_local global i32 0, align 4
@XGBE_MODE_X = common dso_local global i32 0, align 4
@XGBE_MODE_SGMII_1000 = common dso_local global i32 0, align 4
@XGBE_MODE_SGMII_100 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@XGBE_AN_READY = common dso_local global i8* null, align 8
@XGBE_RX_BPA = common dso_local global i8* null, align 8
@XGBE_LINK_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*, i32)* @__xgbe_phy_config_aneg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__xgbe_phy_config_aneg(%struct.xgbe_prv_data* %0, i32 %1) #0 {
  %3 = alloca %struct.xgbe_prv_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %7 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load i32, i32* @XGBE_LINK_INIT, align 4
  %10 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %11 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %10, i32 0, i32 1
  %12 = call i32 @set_bit(i32 %9, i32* %11)
  %13 = load i32, i32* @jiffies, align 4
  %14 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %15 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %14, i32 0, i32 11
  store i32 %13, i32* %15, align 8
  %16 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %17 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %16, i32 0, i32 10
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32 (%struct.xgbe_prv_data.0*)*, i32 (%struct.xgbe_prv_data.0*)** %19, align 8
  %21 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %22 = bitcast %struct.xgbe_prv_data* %21 to %struct.xgbe_prv_data.0*
  %23 = call i32 %20(%struct.xgbe_prv_data.0* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %168

27:                                               ; preds = %2
  %28 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %29 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %28, i32 0, i32 9
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @AUTONEG_ENABLE, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %27
  %35 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %36 = call i32 @xgbe_phy_config_fixed(%struct.xgbe_prv_data* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %41 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %40, i32 0, i32 8
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39, %34
  br label %168

45:                                               ; preds = %39
  %46 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %47 = load i32, i32* @link, align 4
  %48 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %49 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @netif_dbg(%struct.xgbe_prv_data* %46, i32 %47, i32 %50, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %59

52:                                               ; preds = %27
  %53 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %54 = load i32, i32* @link, align 4
  %55 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %56 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @netif_dbg(%struct.xgbe_prv_data* %53, i32 %54, i32 %57, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %59

59:                                               ; preds = %52, %45
  %60 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %61 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @disable_irq(i32 %62)
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %143

66:                                               ; preds = %59
  %67 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %68 = load i32, i32* @XGBE_MODE_KR, align 4
  %69 = call i64 @xgbe_use_mode(%struct.xgbe_prv_data* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %73 = load i32, i32* @XGBE_MODE_KR, align 4
  %74 = call i32 @xgbe_set_mode(%struct.xgbe_prv_data* %72, i32 %73)
  br label %142

75:                                               ; preds = %66
  %76 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %77 = load i32, i32* @XGBE_MODE_KX_2500, align 4
  %78 = call i64 @xgbe_use_mode(%struct.xgbe_prv_data* %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %82 = load i32, i32* @XGBE_MODE_KX_2500, align 4
  %83 = call i32 @xgbe_set_mode(%struct.xgbe_prv_data* %81, i32 %82)
  br label %141

84:                                               ; preds = %75
  %85 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %86 = load i32, i32* @XGBE_MODE_KX_1000, align 4
  %87 = call i64 @xgbe_use_mode(%struct.xgbe_prv_data* %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %91 = load i32, i32* @XGBE_MODE_KX_1000, align 4
  %92 = call i32 @xgbe_set_mode(%struct.xgbe_prv_data* %90, i32 %91)
  br label %140

93:                                               ; preds = %84
  %94 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %95 = load i32, i32* @XGBE_MODE_SFI, align 4
  %96 = call i64 @xgbe_use_mode(%struct.xgbe_prv_data* %94, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %100 = load i32, i32* @XGBE_MODE_SFI, align 4
  %101 = call i32 @xgbe_set_mode(%struct.xgbe_prv_data* %99, i32 %100)
  br label %139

102:                                              ; preds = %93
  %103 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %104 = load i32, i32* @XGBE_MODE_X, align 4
  %105 = call i64 @xgbe_use_mode(%struct.xgbe_prv_data* %103, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %109 = load i32, i32* @XGBE_MODE_X, align 4
  %110 = call i32 @xgbe_set_mode(%struct.xgbe_prv_data* %108, i32 %109)
  br label %138

111:                                              ; preds = %102
  %112 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %113 = load i32, i32* @XGBE_MODE_SGMII_1000, align 4
  %114 = call i64 @xgbe_use_mode(%struct.xgbe_prv_data* %112, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %118 = load i32, i32* @XGBE_MODE_SGMII_1000, align 4
  %119 = call i32 @xgbe_set_mode(%struct.xgbe_prv_data* %117, i32 %118)
  br label %137

120:                                              ; preds = %111
  %121 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %122 = load i32, i32* @XGBE_MODE_SGMII_100, align 4
  %123 = call i64 @xgbe_use_mode(%struct.xgbe_prv_data* %121, i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %120
  %126 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %127 = load i32, i32* @XGBE_MODE_SGMII_100, align 4
  %128 = call i32 @xgbe_set_mode(%struct.xgbe_prv_data* %126, i32 %127)
  br label %136

129:                                              ; preds = %120
  %130 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %131 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @enable_irq(i32 %132)
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %5, align 4
  br label %168

136:                                              ; preds = %125
  br label %137

137:                                              ; preds = %136, %116
  br label %138

138:                                              ; preds = %137, %107
  br label %139

139:                                              ; preds = %138, %98
  br label %140

140:                                              ; preds = %139, %89
  br label %141

141:                                              ; preds = %140, %80
  br label %142

142:                                              ; preds = %141, %71
  br label %143

143:                                              ; preds = %142, %59
  %144 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %145 = call i32 @xgbe_an_disable_all(%struct.xgbe_prv_data* %144)
  %146 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %147 = call i32 @xgbe_an_clear_interrupts_all(%struct.xgbe_prv_data* %146)
  %148 = load i8*, i8** @XGBE_AN_READY, align 8
  %149 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %150 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %149, i32 0, i32 6
  store i8* %148, i8** %150, align 8
  %151 = load i8*, i8** @XGBE_AN_READY, align 8
  %152 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %153 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %152, i32 0, i32 5
  store i8* %151, i8** %153, align 8
  %154 = load i8*, i8** @XGBE_RX_BPA, align 8
  %155 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %156 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %155, i32 0, i32 4
  store i8* %154, i8** %156, align 8
  %157 = load i8*, i8** @XGBE_RX_BPA, align 8
  %158 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %159 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %158, i32 0, i32 3
  store i8* %157, i8** %159, align 8
  %160 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %161 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @enable_irq(i32 %162)
  %164 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %165 = call i32 @xgbe_an_init(%struct.xgbe_prv_data* %164)
  %166 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %167 = call i32 @xgbe_an_restart(%struct.xgbe_prv_data* %166)
  br label %168

168:                                              ; preds = %143, %129, %44, %26
  %169 = load i32, i32* %5, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %168
  %172 = load i32, i32* @XGBE_LINK_ERR, align 4
  %173 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %174 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %173, i32 0, i32 1
  %175 = call i32 @set_bit(i32 %172, i32* %174)
  br label %181

176:                                              ; preds = %168
  %177 = load i32, i32* @XGBE_LINK_ERR, align 4
  %178 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %179 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %178, i32 0, i32 1
  %180 = call i32 @clear_bit(i32 %177, i32* %179)
  br label %181

181:                                              ; preds = %176, %171
  %182 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %183 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %182, i32 0, i32 0
  %184 = call i32 @mutex_unlock(i32* %183)
  %185 = load i32, i32* %5, align 4
  ret i32 %185
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @xgbe_phy_config_fixed(%struct.xgbe_prv_data*) #1

declare dso_local i32 @netif_dbg(%struct.xgbe_prv_data*, i32, i32, i8*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i64 @xgbe_use_mode(%struct.xgbe_prv_data*, i32) #1

declare dso_local i32 @xgbe_set_mode(%struct.xgbe_prv_data*, i32) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @xgbe_an_disable_all(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_an_clear_interrupts_all(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_an_init(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_an_restart(%struct.xgbe_prv_data*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
