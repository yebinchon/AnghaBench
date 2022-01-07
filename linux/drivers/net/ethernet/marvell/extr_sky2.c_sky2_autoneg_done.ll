; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_autoneg_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_autoneg_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sky2_port = type { i32, i64, i32, i32, i32, %struct.sky2_hw* }
%struct.sky2_hw = type { i32, i64 }

@PHY_MARV_AUNE_ADV = common dso_local global i32 0, align 4
@PHY_MARV_AUNE_LP = common dso_local global i32 0, align 4
@PHY_M_AN_RF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"remote fault\0A\00", align 1
@PHY_M_PS_SPDUP_RES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"speed/duplex mismatch\0A\00", align 1
@PHY_M_PS_FULL_DUP = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i64 0, align 8
@DUPLEX_HALF = common dso_local global i64 0, align 8
@SKY2_HW_FIBRE_PHY = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_CAP = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_ASYM = common dso_local global i32 0, align 4
@LPA_PAUSE_CAP = common dso_local global i32 0, align 4
@LPA_PAUSE_ASYM = common dso_local global i32 0, align 4
@ADVERTISE_1000XPAUSE = common dso_local global i32 0, align 4
@ADVERTISE_1000XPSE_ASYM = common dso_local global i32 0, align 4
@LPA_1000XPAUSE = common dso_local global i32 0, align 4
@LPA_1000XPAUSE_ASYM = common dso_local global i32 0, align 4
@FC_NONE = common dso_local global i8* null, align 8
@FC_BOTH = common dso_local global i32 0, align 4
@FC_RX = common dso_local global i32 0, align 4
@FC_TX = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@CHIP_ID_YUKON_EC_U = common dso_local global i64 0, align 8
@CHIP_ID_YUKON_EX = common dso_local global i64 0, align 8
@GMAC_CTRL = common dso_local global i32 0, align 4
@GMC_PAUSE_ON = common dso_local global i32 0, align 4
@GMC_PAUSE_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sky2_port*, i32)* @sky2_autoneg_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sky2_autoneg_done(%struct.sky2_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sky2_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sky2_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sky2_port* %0, %struct.sky2_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.sky2_port*, %struct.sky2_port** %4, align 8
  %11 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %10, i32 0, i32 5
  %12 = load %struct.sky2_hw*, %struct.sky2_hw** %11, align 8
  store %struct.sky2_hw* %12, %struct.sky2_hw** %6, align 8
  %13 = load %struct.sky2_port*, %struct.sky2_port** %4, align 8
  %14 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  %16 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @PHY_MARV_AUNE_ADV, align 4
  %19 = call i32 @gm_phy_read(%struct.sky2_hw* %16, i32 %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @PHY_MARV_AUNE_LP, align 4
  %23 = call i32 @gm_phy_read(%struct.sky2_hw* %20, i32 %21, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @PHY_M_AN_RF, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load %struct.sky2_port*, %struct.sky2_port** %4, align 8
  %30 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @netdev_err(i32 %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %217

33:                                               ; preds = %2
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @PHY_M_PS_SPDUP_RES, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load %struct.sky2_port*, %struct.sky2_port** %4, align 8
  %40 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @netdev_err(i32 %41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %217

43:                                               ; preds = %33
  %44 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @sky2_phy_speed(%struct.sky2_hw* %44, i32 %45)
  %47 = load %struct.sky2_port*, %struct.sky2_port** %4, align 8
  %48 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @PHY_M_PS_FULL_DUP, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %43
  %54 = load i64, i64* @DUPLEX_FULL, align 8
  br label %57

55:                                               ; preds = %43
  %56 = load i64, i64* @DUPLEX_HALF, align 8
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i64 [ %54, %53 ], [ %56, %55 ]
  %59 = load %struct.sky2_port*, %struct.sky2_port** %4, align 8
  %60 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %62 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @SKY2_HW_FIBRE_PHY, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %116

67:                                               ; preds = %57
  %68 = load i32, i32* @ADVERTISE_PAUSE_CAP, align 4
  %69 = load i32, i32* @ADVERTISE_PAUSE_ASYM, align 4
  %70 = or i32 %68, %69
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %8, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* @LPA_PAUSE_CAP, align 4
  %75 = load i32, i32* @LPA_PAUSE_ASYM, align 4
  %76 = or i32 %74, %75
  %77 = xor i32 %76, -1
  %78 = load i32, i32* %9, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @ADVERTISE_1000XPAUSE, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %67
  %85 = load i32, i32* @ADVERTISE_PAUSE_CAP, align 4
  %86 = load i32, i32* %8, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %84, %67
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @ADVERTISE_1000XPSE_ASYM, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load i32, i32* @ADVERTISE_PAUSE_ASYM, align 4
  %95 = load i32, i32* %8, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %8, align 4
  br label %97

97:                                               ; preds = %93, %88
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @LPA_1000XPAUSE, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load i32, i32* @LPA_PAUSE_CAP, align 4
  %104 = load i32, i32* %9, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %9, align 4
  br label %106

106:                                              ; preds = %102, %97
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* @LPA_1000XPAUSE_ASYM, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load i32, i32* @LPA_PAUSE_ASYM, align 4
  %113 = load i32, i32* %9, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %9, align 4
  br label %115

115:                                              ; preds = %111, %106
  br label %116

116:                                              ; preds = %115, %57
  %117 = load i8*, i8** @FC_NONE, align 8
  %118 = ptrtoint i8* %117 to i32
  %119 = load %struct.sky2_port*, %struct.sky2_port** %4, align 8
  %120 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 8
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* @ADVERTISE_PAUSE_CAP, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %145

125:                                              ; preds = %116
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* @LPA_PAUSE_CAP, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %125
  %131 = load i32, i32* @FC_BOTH, align 4
  %132 = load %struct.sky2_port*, %struct.sky2_port** %4, align 8
  %133 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 8
  br label %144

134:                                              ; preds = %125
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* @ADVERTISE_PAUSE_ASYM, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %134
  %140 = load i32, i32* @FC_RX, align 4
  %141 = load %struct.sky2_port*, %struct.sky2_port** %4, align 8
  %142 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 8
  br label %143

143:                                              ; preds = %139, %134
  br label %144

144:                                              ; preds = %143, %130
  br label %166

145:                                              ; preds = %116
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* @ADVERTISE_PAUSE_ASYM, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %165

150:                                              ; preds = %145
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* @LPA_PAUSE_CAP, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %164

155:                                              ; preds = %150
  %156 = load i32, i32* %9, align 4
  %157 = load i32, i32* @LPA_PAUSE_ASYM, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %155
  %161 = load i32, i32* @FC_TX, align 4
  %162 = load %struct.sky2_port*, %struct.sky2_port** %4, align 8
  %163 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %162, i32 0, i32 2
  store i32 %161, i32* %163, align 8
  br label %164

164:                                              ; preds = %160, %155, %150
  br label %165

165:                                              ; preds = %164, %145
  br label %166

166:                                              ; preds = %165, %144
  %167 = load %struct.sky2_port*, %struct.sky2_port** %4, align 8
  %168 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @DUPLEX_HALF, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %195

172:                                              ; preds = %166
  %173 = load %struct.sky2_port*, %struct.sky2_port** %4, align 8
  %174 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @SPEED_1000, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %195

178:                                              ; preds = %172
  %179 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %180 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @CHIP_ID_YUKON_EC_U, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %195, label %184

184:                                              ; preds = %178
  %185 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %186 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @CHIP_ID_YUKON_EX, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %195, label %190

190:                                              ; preds = %184
  %191 = load i8*, i8** @FC_NONE, align 8
  %192 = ptrtoint i8* %191 to i32
  %193 = load %struct.sky2_port*, %struct.sky2_port** %4, align 8
  %194 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %193, i32 0, i32 2
  store i32 %192, i32* %194, align 8
  br label %195

195:                                              ; preds = %190, %184, %178, %172, %166
  %196 = load %struct.sky2_port*, %struct.sky2_port** %4, align 8
  %197 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @FC_TX, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %209

202:                                              ; preds = %195
  %203 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %204 = load i32, i32* %7, align 4
  %205 = load i32, i32* @GMAC_CTRL, align 4
  %206 = call i32 @SK_REG(i32 %204, i32 %205)
  %207 = load i32, i32* @GMC_PAUSE_ON, align 4
  %208 = call i32 @sky2_write8(%struct.sky2_hw* %203, i32 %206, i32 %207)
  br label %216

209:                                              ; preds = %195
  %210 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %211 = load i32, i32* %7, align 4
  %212 = load i32, i32* @GMAC_CTRL, align 4
  %213 = call i32 @SK_REG(i32 %211, i32 %212)
  %214 = load i32, i32* @GMC_PAUSE_OFF, align 4
  %215 = call i32 @sky2_write8(%struct.sky2_hw* %210, i32 %213, i32 %214)
  br label %216

216:                                              ; preds = %209, %202
  store i32 0, i32* %3, align 4
  br label %217

217:                                              ; preds = %216, %38, %28
  %218 = load i32, i32* %3, align 4
  ret i32 %218
}

declare dso_local i32 @gm_phy_read(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @sky2_phy_speed(%struct.sky2_hw*, i32) #1

declare dso_local i32 @sky2_write8(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @SK_REG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
