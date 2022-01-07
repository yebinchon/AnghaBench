; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_set_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_set_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.atl1_adapter = type { %struct.TYPE_4__*, i32, %struct.atl1_hw }
%struct.TYPE_4__ = type { i32 }
%struct.atl1_hw = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"ethtool shutting down adapter\0A\00", align 1
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@MEDIA_TYPE_AUTO_SENSOR = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"1000M half is invalid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MEDIA_TYPE_1000M_FULL = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i64 0, align 8
@MEDIA_TYPE_10M_HALF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"invalid ethtool speed/duplex setting\0A\00", align 1
@MII_CR_RESET = common dso_local global i32 0, align 4
@MII_CR_AUTO_NEG_EN = common dso_local global i32 0, align 4
@MII_CR_FULL_DUPLEX = common dso_local global i32 0, align 4
@MII_CR_SPEED_100 = common dso_local global i32 0, align 4
@MII_CR_SPEED_10 = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"ethtool starting adapter\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"ethtool resetting adapter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @atl1_set_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1_set_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_link_ksettings*, align 8
  %5 = alloca %struct.atl1_adapter*, align 8
  %6 = alloca %struct.atl1_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.atl1_adapter* @netdev_priv(%struct.net_device* %11)
  store %struct.atl1_adapter* %12, %struct.atl1_adapter** %5, align 8
  %13 = load %struct.atl1_adapter*, %struct.atl1_adapter** %5, align 8
  %14 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %13, i32 0, i32 2
  store %struct.atl1_hw* %14, %struct.atl1_hw** %6, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.atl1_hw*, %struct.atl1_hw** %6, align 8
  %16 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load %struct.atl1_adapter*, %struct.atl1_adapter** %5, align 8
  %19 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @netif_running(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %2
  %24 = load %struct.atl1_adapter*, %struct.atl1_adapter** %5, align 8
  %25 = call i64 @netif_msg_link(%struct.atl1_adapter* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load %struct.atl1_adapter*, %struct.atl1_adapter** %5, align 8
  %29 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = call i32 @dev_dbg(i32* %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %27, %23
  %34 = load %struct.atl1_adapter*, %struct.atl1_adapter** %5, align 8
  %35 = call i32 @atl1_down(%struct.atl1_adapter* %34)
  br label %36

36:                                               ; preds = %33, %2
  %37 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %38 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @AUTONEG_ENABLE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load i32, i32* @MEDIA_TYPE_AUTO_SENSOR, align 4
  %45 = load %struct.atl1_hw*, %struct.atl1_hw** %6, align 8
  %46 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  br label %114

47:                                               ; preds = %36
  %48 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %49 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %10, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* @SPEED_1000, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %79

55:                                               ; preds = %47
  %56 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %57 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @DUPLEX_FULL, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %75

62:                                               ; preds = %55
  %63 = load %struct.atl1_adapter*, %struct.atl1_adapter** %5, align 8
  %64 = call i64 @netif_msg_link(%struct.atl1_adapter* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load %struct.atl1_adapter*, %struct.atl1_adapter** %5, align 8
  %68 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = call i32 @dev_warn(i32* %70, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %72

72:                                               ; preds = %66, %62
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %8, align 4
  br label %177

75:                                               ; preds = %55
  %76 = load i32, i32* @MEDIA_TYPE_1000M_FULL, align 4
  %77 = load %struct.atl1_hw*, %struct.atl1_hw** %6, align 8
  %78 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  br label %113

79:                                               ; preds = %47
  %80 = load i64, i64* %10, align 8
  %81 = load i64, i64* @SPEED_100, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %97

83:                                               ; preds = %79
  %84 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %85 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @DUPLEX_FULL, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %83
  %91 = load %struct.atl1_hw*, %struct.atl1_hw** %6, align 8
  %92 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %91, i32 0, i32 0
  store i32 130, i32* %92, align 4
  br label %96

93:                                               ; preds = %83
  %94 = load %struct.atl1_hw*, %struct.atl1_hw** %6, align 8
  %95 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %94, i32 0, i32 0
  store i32 129, i32* %95, align 4
  br label %96

96:                                               ; preds = %93, %90
  br label %112

97:                                               ; preds = %79
  %98 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %99 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @DUPLEX_FULL, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %97
  %105 = load %struct.atl1_hw*, %struct.atl1_hw** %6, align 8
  %106 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %105, i32 0, i32 0
  store i32 128, i32* %106, align 4
  br label %111

107:                                              ; preds = %97
  %108 = load i32, i32* @MEDIA_TYPE_10M_HALF, align 4
  %109 = load %struct.atl1_hw*, %struct.atl1_hw** %6, align 8
  %110 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  br label %111

111:                                              ; preds = %107, %104
  br label %112

112:                                              ; preds = %111, %96
  br label %113

113:                                              ; preds = %112, %75
  br label %114

114:                                              ; preds = %113, %43
  %115 = load %struct.atl1_hw*, %struct.atl1_hw** %6, align 8
  %116 = call i64 @atl1_phy_setup_autoneg_adv(%struct.atl1_hw* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %131

118:                                              ; preds = %114
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %8, align 4
  %121 = load %struct.atl1_adapter*, %struct.atl1_adapter** %5, align 8
  %122 = call i64 @netif_msg_link(%struct.atl1_adapter* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %118
  %125 = load %struct.atl1_adapter*, %struct.atl1_adapter** %5, align 8
  %126 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %125, i32 0, i32 0
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = call i32 @dev_warn(i32* %128, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %130

130:                                              ; preds = %124, %118
  br label %177

131:                                              ; preds = %114
  %132 = load %struct.atl1_hw*, %struct.atl1_hw** %6, align 8
  %133 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @MEDIA_TYPE_AUTO_SENSOR, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %143, label %137

137:                                              ; preds = %131
  %138 = load %struct.atl1_hw*, %struct.atl1_hw** %6, align 8
  %139 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @MEDIA_TYPE_1000M_FULL, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %137, %131
  %144 = load i32, i32* @MII_CR_RESET, align 4
  %145 = load i32, i32* @MII_CR_AUTO_NEG_EN, align 4
  %146 = or i32 %144, %145
  store i32 %146, i32* %7, align 4
  br label %172

147:                                              ; preds = %137
  %148 = load %struct.atl1_hw*, %struct.atl1_hw** %6, align 8
  %149 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  switch i32 %150, label %167 [
    i32 130, label %151
    i32 129, label %157
    i32 128, label %161
  ]

151:                                              ; preds = %147
  %152 = load i32, i32* @MII_CR_FULL_DUPLEX, align 4
  %153 = load i32, i32* @MII_CR_SPEED_100, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* @MII_CR_RESET, align 4
  %156 = or i32 %154, %155
  store i32 %156, i32* %7, align 4
  br label %171

157:                                              ; preds = %147
  %158 = load i32, i32* @MII_CR_SPEED_100, align 4
  %159 = load i32, i32* @MII_CR_RESET, align 4
  %160 = or i32 %158, %159
  store i32 %160, i32* %7, align 4
  br label %171

161:                                              ; preds = %147
  %162 = load i32, i32* @MII_CR_FULL_DUPLEX, align 4
  %163 = load i32, i32* @MII_CR_SPEED_10, align 4
  %164 = or i32 %162, %163
  %165 = load i32, i32* @MII_CR_RESET, align 4
  %166 = or i32 %164, %165
  store i32 %166, i32* %7, align 4
  br label %171

167:                                              ; preds = %147
  %168 = load i32, i32* @MII_CR_SPEED_10, align 4
  %169 = load i32, i32* @MII_CR_RESET, align 4
  %170 = or i32 %168, %169
  store i32 %170, i32* %7, align 4
  br label %171

171:                                              ; preds = %167, %161, %157, %151
  br label %172

172:                                              ; preds = %171, %143
  %173 = load %struct.atl1_hw*, %struct.atl1_hw** %6, align 8
  %174 = load i32, i32* @MII_BMCR, align 4
  %175 = load i32, i32* %7, align 4
  %176 = call i32 @atl1_write_phy_reg(%struct.atl1_hw* %173, i32 %174, i32 %175)
  br label %177

177:                                              ; preds = %172, %130, %72
  %178 = load i32, i32* %8, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %177
  %181 = load i32, i32* %9, align 4
  %182 = load %struct.atl1_hw*, %struct.atl1_hw** %6, align 8
  %183 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 4
  br label %184

184:                                              ; preds = %180, %177
  %185 = load %struct.atl1_adapter*, %struct.atl1_adapter** %5, align 8
  %186 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = call i64 @netif_running(i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %203

190:                                              ; preds = %184
  %191 = load %struct.atl1_adapter*, %struct.atl1_adapter** %5, align 8
  %192 = call i64 @netif_msg_link(%struct.atl1_adapter* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %190
  %195 = load %struct.atl1_adapter*, %struct.atl1_adapter** %5, align 8
  %196 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %195, i32 0, i32 0
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 0
  %199 = call i32 @dev_dbg(i32* %198, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %200

200:                                              ; preds = %194, %190
  %201 = load %struct.atl1_adapter*, %struct.atl1_adapter** %5, align 8
  %202 = call i32 @atl1_up(%struct.atl1_adapter* %201)
  br label %220

203:                                              ; preds = %184
  %204 = load i32, i32* %8, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %219, label %206

206:                                              ; preds = %203
  %207 = load %struct.atl1_adapter*, %struct.atl1_adapter** %5, align 8
  %208 = call i64 @netif_msg_link(%struct.atl1_adapter* %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %216

210:                                              ; preds = %206
  %211 = load %struct.atl1_adapter*, %struct.atl1_adapter** %5, align 8
  %212 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %211, i32 0, i32 0
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 0
  %215 = call i32 @dev_dbg(i32* %214, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %216

216:                                              ; preds = %210, %206
  %217 = load %struct.atl1_adapter*, %struct.atl1_adapter** %5, align 8
  %218 = call i32 @atl1_reset(%struct.atl1_adapter* %217)
  br label %219

219:                                              ; preds = %216, %203
  br label %220

220:                                              ; preds = %219, %200
  %221 = load i32, i32* %8, align 4
  ret i32 %221
}

declare dso_local %struct.atl1_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(i32) #1

declare dso_local i64 @netif_msg_link(%struct.atl1_adapter*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @atl1_down(%struct.atl1_adapter*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i64 @atl1_phy_setup_autoneg_adv(%struct.atl1_hw*) #1

declare dso_local i32 @atl1_write_phy_reg(%struct.atl1_hw*, i32, i32) #1

declare dso_local i32 @atl1_up(%struct.atl1_adapter*) #1

declare dso_local i32 @atl1_reset(%struct.atl1_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
