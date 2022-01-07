; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_ethtool.c_qlcnic_set_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_ethtool.c_qlcnic_set_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i64, i64, i64 }
%struct.qlcnic_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@QLCNIC_GBE = common dso_local global i64 0, align 8
@QLCNIC_NIU_MAX_GBE_PORTS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@QLCNIC_NIU_GB_PAUSE_CTL = common dso_local global i32 0, align 4
@QLCNIC_XGBE = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@QLCNIC_NIU_MAX_XG_PORTS = common dso_local global i32 0, align 4
@QLCNIC_NIU_XG_PAUSE_CTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Unknown board type: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_pauseparam*)* @qlcnic_set_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_set_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_pauseparam*, align 8
  %6 = alloca %struct.qlcnic_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.qlcnic_adapter* @netdev_priv(%struct.net_device* %10)
  store %struct.qlcnic_adapter* %11, %struct.qlcnic_adapter** %6, align 8
  %12 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %13 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %17 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %18 = call i64 @qlcnic_83xx_check(%struct.qlcnic_adapter* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %22 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %23 = call i32 @qlcnic_83xx_set_pauseparam(%struct.qlcnic_adapter* %21, %struct.ethtool_pauseparam* %22)
  store i32 %23, i32* %3, align 4
  br label %224

24:                                               ; preds = %2
  %25 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %26 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @QLCNIC_GBE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %140

32:                                               ; preds = %24
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @QLCNIC_NIU_MAX_GBE_PORTS, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35, %32
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %224

42:                                               ; preds = %35
  %43 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @QLCNIC_NIU_GB_MAC_CONFIG_0(i32 %44)
  %46 = call i32 @QLCRD32(%struct.qlcnic_adapter* %43, i32 %45, i32* %8)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %3, align 4
  br label %224

53:                                               ; preds = %42
  %54 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %55 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @qlcnic_gb_rx_flowctl(i32 %59)
  br label %64

61:                                               ; preds = %53
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @qlcnic_gb_unset_rx_flowctl(i32 %62)
  br label %64

64:                                               ; preds = %61, %58
  %65 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @QLCNIC_NIU_GB_MAC_CONFIG_0(i32 %66)
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @QLCWR32(%struct.qlcnic_adapter* %65, i32 %67, i32 %68)
  %70 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @QLCNIC_NIU_GB_MAC_CONFIG_0(i32 %71)
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @QLCWR32(%struct.qlcnic_adapter* %70, i32 %72, i32 %73)
  %75 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %76 = load i32, i32* @QLCNIC_NIU_GB_PAUSE_CTL, align 4
  %77 = call i32 @QLCRD32(%struct.qlcnic_adapter* %75, i32 %76, i32* %8)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @EIO, align 4
  %80 = sub nsw i32 0, %79
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %64
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %3, align 4
  br label %224

84:                                               ; preds = %64
  %85 = load i32, i32* %7, align 4
  switch i32 %85, label %123 [
    i32 0, label %86
    i32 1, label %98
    i32 2, label %110
    i32 3, label %122
  ]

86:                                               ; preds = %84
  %87 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %88 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @qlcnic_gb_unset_gb0_mask(i32 %92)
  br label %97

94:                                               ; preds = %86
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @qlcnic_gb_set_gb0_mask(i32 %95)
  br label %97

97:                                               ; preds = %94, %91
  br label %135

98:                                               ; preds = %84
  %99 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %100 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @qlcnic_gb_unset_gb1_mask(i32 %104)
  br label %109

106:                                              ; preds = %98
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @qlcnic_gb_set_gb1_mask(i32 %107)
  br label %109

109:                                              ; preds = %106, %103
  br label %135

110:                                              ; preds = %84
  %111 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %112 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @qlcnic_gb_unset_gb2_mask(i32 %116)
  br label %121

118:                                              ; preds = %110
  %119 = load i32, i32* %9, align 4
  %120 = call i32 @qlcnic_gb_set_gb2_mask(i32 %119)
  br label %121

121:                                              ; preds = %118, %115
  br label %135

122:                                              ; preds = %84
  br label %123

123:                                              ; preds = %84, %122
  %124 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %125 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load i32, i32* %9, align 4
  %130 = call i32 @qlcnic_gb_unset_gb3_mask(i32 %129)
  br label %134

131:                                              ; preds = %123
  %132 = load i32, i32* %9, align 4
  %133 = call i32 @qlcnic_gb_set_gb3_mask(i32 %132)
  br label %134

134:                                              ; preds = %131, %128
  br label %135

135:                                              ; preds = %134, %121, %109, %97
  %136 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %137 = load i32, i32* @QLCNIC_NIU_GB_PAUSE_CTL, align 4
  %138 = load i32, i32* %9, align 4
  %139 = call i32 @QLCWR32(%struct.qlcnic_adapter* %136, i32 %137, i32 %138)
  br label %223

140:                                              ; preds = %24
  %141 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %142 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %141, i32 0, i32 0
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @QLCNIC_XGBE, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %213

148:                                              ; preds = %140
  %149 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %150 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %148
  %154 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %155 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %153, %148
  %159 = load i32, i32* @EOPNOTSUPP, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %3, align 4
  br label %224

161:                                              ; preds = %153
  %162 = load i32, i32* %7, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %168, label %164

164:                                              ; preds = %161
  %165 = load i32, i32* %7, align 4
  %166 = load i32, i32* @QLCNIC_NIU_MAX_XG_PORTS, align 4
  %167 = icmp sgt i32 %165, %166
  br i1 %167, label %168, label %171

168:                                              ; preds = %164, %161
  %169 = load i32, i32* @EIO, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %3, align 4
  br label %224

171:                                              ; preds = %164
  %172 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %173 = load i32, i32* @QLCNIC_NIU_XG_PAUSE_CTL, align 4
  %174 = call i32 @QLCRD32(%struct.qlcnic_adapter* %172, i32 %173, i32* %8)
  store i32 %174, i32* %9, align 4
  %175 = load i32, i32* %8, align 4
  %176 = load i32, i32* @EIO, align 4
  %177 = sub nsw i32 0, %176
  %178 = icmp eq i32 %175, %177
  br i1 %178, label %179, label %181

179:                                              ; preds = %171
  %180 = load i32, i32* %8, align 4
  store i32 %180, i32* %3, align 4
  br label %224

181:                                              ; preds = %171
  %182 = load i32, i32* %7, align 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %196

184:                                              ; preds = %181
  %185 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %186 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %184
  %190 = load i32, i32* %9, align 4
  %191 = call i32 @qlcnic_xg_unset_xg0_mask(i32 %190)
  br label %195

192:                                              ; preds = %184
  %193 = load i32, i32* %9, align 4
  %194 = call i32 @qlcnic_xg_set_xg0_mask(i32 %193)
  br label %195

195:                                              ; preds = %192, %189
  br label %208

196:                                              ; preds = %181
  %197 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %198 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %196
  %202 = load i32, i32* %9, align 4
  %203 = call i32 @qlcnic_xg_unset_xg1_mask(i32 %202)
  br label %207

204:                                              ; preds = %196
  %205 = load i32, i32* %9, align 4
  %206 = call i32 @qlcnic_xg_set_xg1_mask(i32 %205)
  br label %207

207:                                              ; preds = %204, %201
  br label %208

208:                                              ; preds = %207, %195
  %209 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %210 = load i32, i32* @QLCNIC_NIU_XG_PAUSE_CTL, align 4
  %211 = load i32, i32* %9, align 4
  %212 = call i32 @QLCWR32(%struct.qlcnic_adapter* %209, i32 %210, i32 %211)
  br label %222

213:                                              ; preds = %140
  %214 = load %struct.net_device*, %struct.net_device** %4, align 8
  %215 = getelementptr inbounds %struct.net_device, %struct.net_device* %214, i32 0, i32 0
  %216 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %217 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %216, i32 0, i32 0
  %218 = load %struct.TYPE_2__*, %struct.TYPE_2__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = call i32 @dev_err(i32* %215, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %220)
  br label %222

222:                                              ; preds = %213, %208
  br label %223

223:                                              ; preds = %222, %135
  store i32 0, i32* %3, align 4
  br label %224

224:                                              ; preds = %223, %179, %168, %158, %82, %51, %39, %20
  %225 = load i32, i32* %3, align 4
  ret i32 %225
}

declare dso_local %struct.qlcnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @qlcnic_83xx_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_set_pauseparam(%struct.qlcnic_adapter*, %struct.ethtool_pauseparam*) #1

declare dso_local i32 @QLCRD32(%struct.qlcnic_adapter*, i32, i32*) #1

declare dso_local i32 @QLCNIC_NIU_GB_MAC_CONFIG_0(i32) #1

declare dso_local i32 @qlcnic_gb_rx_flowctl(i32) #1

declare dso_local i32 @qlcnic_gb_unset_rx_flowctl(i32) #1

declare dso_local i32 @QLCWR32(%struct.qlcnic_adapter*, i32, i32) #1

declare dso_local i32 @qlcnic_gb_unset_gb0_mask(i32) #1

declare dso_local i32 @qlcnic_gb_set_gb0_mask(i32) #1

declare dso_local i32 @qlcnic_gb_unset_gb1_mask(i32) #1

declare dso_local i32 @qlcnic_gb_set_gb1_mask(i32) #1

declare dso_local i32 @qlcnic_gb_unset_gb2_mask(i32) #1

declare dso_local i32 @qlcnic_gb_set_gb2_mask(i32) #1

declare dso_local i32 @qlcnic_gb_unset_gb3_mask(i32) #1

declare dso_local i32 @qlcnic_gb_set_gb3_mask(i32) #1

declare dso_local i32 @qlcnic_xg_unset_xg0_mask(i32) #1

declare dso_local i32 @qlcnic_xg_set_xg0_mask(i32) #1

declare dso_local i32 @qlcnic_xg_unset_xg1_mask(i32) #1

declare dso_local i32 @qlcnic_xg_set_xg1_mask(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
