; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/admtek/extr_adm8211.c_adm8211_rf_set_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/admtek/extr_adm8211.c_adm8211_rf_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32, %struct.adm8211_priv* }
%struct.adm8211_priv = type { i32, i32, i32, i32, i32, i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32*, i32*, i32*, i32*, i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }

@adm8211_rf_set_channel.adm8211_rfmd2958_reg5 = internal constant [14 x i32] [i32 8893, i32 8914, i32 8936, i32 8958, i32 8980, i32 9002, i32 9024, i32 9045, i32 9067, i32 9089, i32 9111, i32 9133, i32 9154, i32 9207], align 16
@adm8211_rf_set_channel.adm8211_rfmd2958_reg6 = internal constant [14 x i32] [i32 23831, i32 238312, i32 190650, i32 142987, i32 95325, i32 47662, i32 0, i32 214481, i32 166818, i32 119156, i32 71493, i32 23831, i32 238312, i32 71493], align 16
@SI4126_MAIN_CONF = common dso_local global i32 0, align 4
@SI4126_MAIN_XINDIV2 = common dso_local global i32 0, align 4
@SI4126_POWERDOWN = common dso_local global i32 0, align 4
@SI4126_POWERDOWN_PDIB = common dso_local global i32 0, align 4
@SI4126_POWERDOWN_PDRB = common dso_local global i32 0, align 4
@SI4126_PHASE_DET_GAIN = common dso_local global i32 0, align 4
@SI4126_RF2_N_DIV = common dso_local global i32 0, align 4
@SI4126_IF_N_DIV = common dso_local global i32 0, align 4
@SI4126_RF2_R_DIV = common dso_local global i32 0, align 4
@SI4126_IF_R_DIV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unsupported transceiver type %d\0A\00", align 1
@ADM8211_TYPE_RFMD = common dso_local global i64 0, align 8
@GPIO = common dso_local global i32 0, align 4
@ADM8211_CSR_GPIO_EN0 = common dso_local global i32 0, align 4
@ADM8211_CSR_GPIO_O0 = common dso_local global i32 0, align 4
@ADM8211_REV_CA = common dso_local global i64 0, align 8
@PLCPHD = common dso_local global i32 0, align 4
@SYNRF = common dso_local global i32 0, align 4
@ADM8211_SYNRF_SELRF = common dso_local global i32 0, align 4
@ADM8211_SYNRF_PE1 = common dso_local global i32 0, align 4
@ADM8211_SYNRF_PHYRST = common dso_local global i32 0, align 4
@RF3000_TX_VAR_GAIN__TX_LEN_EXT = common dso_local global i32 0, align 4
@RF3000_LOW_GAIN_CALIB = common dso_local global i32 0, align 4
@RF3000_HIGH_GAIN_CALIB = common dso_local global i32 0, align 4
@ADM8211_REV_BA = common dso_local global i64 0, align 8
@ADM8211_TYPE_ADMTEK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"unsupported BBP type %d\0A\00", align 1
@CAP0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32)* @adm8211_rf_set_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm8211_rf_set_channel(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.adm8211_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 1
  %13 = load %struct.adm8211_priv*, %struct.adm8211_priv** %12, align 8
  store %struct.adm8211_priv* %13, %struct.adm8211_priv** %5, align 8
  %14 = load %struct.adm8211_priv*, %struct.adm8211_priv** %5, align 8
  %15 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sgt i32 %16, 63
  br i1 %17, label %18, label %29

18:                                               ; preds = %2
  %19 = load %struct.adm8211_priv*, %struct.adm8211_priv** %5, align 8
  %20 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %19, i32 0, i32 6
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sub i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  br label %33

29:                                               ; preds = %2
  %30 = load %struct.adm8211_priv*, %struct.adm8211_priv** %5, align 8
  %31 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  br label %33

33:                                               ; preds = %29, %18
  %34 = phi i32 [ %28, %18 ], [ %32, %29 ]
  store i32 %34, i32* %6, align 4
  %35 = load %struct.adm8211_priv*, %struct.adm8211_priv** %5, align 8
  %36 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp sgt i32 %37, 63
  br i1 %38, label %39, label %50

39:                                               ; preds = %33
  %40 = load %struct.adm8211_priv*, %struct.adm8211_priv** %5, align 8
  %41 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %40, i32 0, i32 6
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sub i32 %45, 1
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = load i32, i32* %48, align 4
  br label %54

50:                                               ; preds = %33
  %51 = load %struct.adm8211_priv*, %struct.adm8211_priv** %5, align 8
  %52 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  br label %54

54:                                               ; preds = %50, %39
  %55 = phi i32 [ %49, %39 ], [ %53, %50 ]
  store i32 %55, i32* %7, align 4
  %56 = load %struct.adm8211_priv*, %struct.adm8211_priv** %5, align 8
  %57 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, 255
  br i1 %59, label %60, label %71

60:                                               ; preds = %54
  %61 = load %struct.adm8211_priv*, %struct.adm8211_priv** %5, align 8
  %62 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %61, i32 0, i32 6
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sub i32 %66, 1
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i32, i32* %69, align 4
  br label %75

71:                                               ; preds = %54
  %72 = load %struct.adm8211_priv*, %struct.adm8211_priv** %5, align 8
  %73 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  br label %75

75:                                               ; preds = %71, %60
  %76 = phi i32 [ %70, %60 ], [ %74, %71 ]
  store i32 %76, i32* %8, align 4
  %77 = load %struct.adm8211_priv*, %struct.adm8211_priv** %5, align 8
  %78 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 255
  br i1 %80, label %81, label %92

81:                                               ; preds = %75
  %82 = load %struct.adm8211_priv*, %struct.adm8211_priv** %5, align 8
  %83 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %82, i32 0, i32 6
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %4, align 4
  %88 = sub i32 %87, 1
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  %91 = load i32, i32* %90, align 4
  br label %96

92:                                               ; preds = %75
  %93 = load %struct.adm8211_priv*, %struct.adm8211_priv** %5, align 8
  %94 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  br label %96

96:                                               ; preds = %92, %81
  %97 = phi i32 [ %91, %81 ], [ %95, %92 ]
  store i32 %97, i32* %9, align 4
  %98 = call i32 (...) @ADM8211_IDLE()
  %99 = load %struct.adm8211_priv*, %struct.adm8211_priv** %5, align 8
  %100 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  switch i32 %101, label %180 [
    i32 129, label %102
    i32 128, label %102
    i32 130, label %121
    i32 131, label %156
    i32 132, label %168
  ]

102:                                              ; preds = %96, %96
  %103 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %104 = call i32 @adm8211_rf_write_syn_rfmd2958(%struct.ieee80211_hw* %103, i32 0, i32 16391)
  %105 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %106 = call i32 @adm8211_rf_write_syn_rfmd2958(%struct.ieee80211_hw* %105, i32 2, i32 51)
  %107 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %108 = load i32, i32* %4, align 4
  %109 = sub i32 %108, 1
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds [14 x i32], [14 x i32]* @adm8211_rf_set_channel.adm8211_rfmd2958_reg5, i64 0, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @adm8211_rf_write_syn_rfmd2958(%struct.ieee80211_hw* %107, i32 5, i32 %112)
  %114 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %115 = load i32, i32* %4, align 4
  %116 = sub i32 %115, 1
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds [14 x i32], [14 x i32]* @adm8211_rf_set_channel.adm8211_rfmd2958_reg6, i64 0, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @adm8211_rf_write_syn_rfmd2958(%struct.ieee80211_hw* %114, i32 6, i32 %119)
  br label %189

121:                                              ; preds = %96
  %122 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %123 = load i32, i32* @SI4126_MAIN_CONF, align 4
  %124 = load i32, i32* @SI4126_MAIN_XINDIV2, align 4
  %125 = call i32 @adm8211_rf_write_syn_rfmd2948(%struct.ieee80211_hw* %122, i32 %123, i32 %124)
  %126 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %127 = load i32, i32* @SI4126_POWERDOWN, align 4
  %128 = load i32, i32* @SI4126_POWERDOWN_PDIB, align 4
  %129 = load i32, i32* @SI4126_POWERDOWN_PDRB, align 4
  %130 = or i32 %128, %129
  %131 = call i32 @adm8211_rf_write_syn_rfmd2948(%struct.ieee80211_hw* %126, i32 %127, i32 %130)
  %132 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %133 = load i32, i32* @SI4126_PHASE_DET_GAIN, align 4
  %134 = call i32 @adm8211_rf_write_syn_rfmd2948(%struct.ieee80211_hw* %132, i32 %133, i32 0)
  %135 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %136 = load i32, i32* @SI4126_RF2_N_DIV, align 4
  %137 = load i32, i32* %4, align 4
  %138 = icmp eq i32 %137, 14
  br i1 %138, label %139, label %140

139:                                              ; preds = %121
  br label %144

140:                                              ; preds = %121
  %141 = load i32, i32* %4, align 4
  %142 = mul i32 %141, 5
  %143 = add i32 2033, %142
  br label %144

144:                                              ; preds = %140, %139
  %145 = phi i32 [ 2110, %139 ], [ %143, %140 ]
  %146 = call i32 @adm8211_rf_write_syn_rfmd2948(%struct.ieee80211_hw* %135, i32 %136, i32 %145)
  %147 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %148 = load i32, i32* @SI4126_IF_N_DIV, align 4
  %149 = call i32 @adm8211_rf_write_syn_rfmd2948(%struct.ieee80211_hw* %147, i32 %148, i32 1496)
  %150 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %151 = load i32, i32* @SI4126_RF2_R_DIV, align 4
  %152 = call i32 @adm8211_rf_write_syn_rfmd2948(%struct.ieee80211_hw* %150, i32 %151, i32 44)
  %153 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %154 = load i32, i32* @SI4126_IF_R_DIV, align 4
  %155 = call i32 @adm8211_rf_write_syn_rfmd2948(%struct.ieee80211_hw* %153, i32 %154, i32 44)
  br label %189

156:                                              ; preds = %96
  %157 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %158 = load i32, i32* %4, align 4
  %159 = icmp eq i32 %158, 14
  br i1 %159, label %160, label %161

160:                                              ; preds = %156
  br label %165

161:                                              ; preds = %156
  %162 = load i32, i32* %4, align 4
  %163 = mul i32 %162, 5
  %164 = add i32 7, %163
  br label %165

165:                                              ; preds = %161, %160
  %166 = phi i32 [ 84, %160 ], [ %164, %161 ]
  %167 = call i32 @adm8211_rf_write_syn_max2820(%struct.ieee80211_hw* %157, i32 3, i32 %166)
  br label %189

168:                                              ; preds = %96
  %169 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %170 = load i32, i32* %4, align 4
  %171 = icmp eq i32 %170, 14
  br i1 %171, label %172, label %173

172:                                              ; preds = %168
  br label %177

173:                                              ; preds = %168
  %174 = load i32, i32* %4, align 4
  %175 = mul i32 %174, 5
  %176 = add i32 141671, %175
  br label %177

177:                                              ; preds = %173, %172
  %178 = phi i32 [ 141748, %172 ], [ %176, %173 ]
  %179 = call i32 @adm8211_rf_write_syn_al2210l(%struct.ieee80211_hw* %169, i32 0, i32 %178)
  br label %189

180:                                              ; preds = %96
  %181 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %182 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.adm8211_priv*, %struct.adm8211_priv** %5, align 8
  %185 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 8
  %187 = sext i32 %186 to i64
  %188 = call i32 @wiphy_debug(i32 %183, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %187)
  br label %189

189:                                              ; preds = %180, %177, %165, %144, %102
  %190 = load %struct.adm8211_priv*, %struct.adm8211_priv** %5, align 8
  %191 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %190, i32 0, i32 5
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @ADM8211_TYPE_RFMD, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %327

195:                                              ; preds = %189
  %196 = load %struct.adm8211_priv*, %struct.adm8211_priv** %5, align 8
  %197 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 8
  %199 = icmp eq i32 %198, 130
  br i1 %199, label %200, label %218

200:                                              ; preds = %195
  %201 = load i32, i32* @GPIO, align 4
  %202 = call i32 @ADM8211_CSR_READ(i32 %201)
  store i32 %202, i32* %10, align 4
  %203 = load i32, i32* %10, align 4
  %204 = and i32 %203, -262144
  store i32 %204, i32* %10, align 4
  %205 = load i32, i32* @ADM8211_CSR_GPIO_EN0, align 4
  %206 = load i32, i32* %10, align 4
  %207 = or i32 %206, %205
  store i32 %207, i32* %10, align 4
  %208 = load i32, i32* %4, align 4
  %209 = icmp ne i32 %208, 14
  br i1 %209, label %210, label %214

210:                                              ; preds = %200
  %211 = load i32, i32* @ADM8211_CSR_GPIO_O0, align 4
  %212 = load i32, i32* %10, align 4
  %213 = or i32 %212, %211
  store i32 %213, i32* %10, align 4
  br label %214

214:                                              ; preds = %210, %200
  %215 = load i32, i32* @GPIO, align 4
  %216 = load i32, i32* %10, align 4
  %217 = call i32 @ADM8211_CSR_WRITE(i32 %215, i32 %216)
  br label %218

218:                                              ; preds = %214, %195
  %219 = load %struct.adm8211_priv*, %struct.adm8211_priv** %5, align 8
  %220 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 8
  %222 = icmp eq i32 %221, 129
  br i1 %222, label %223, label %258

223:                                              ; preds = %218
  %224 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %225 = call i32 @adm8211_rf_write_syn_rfmd2958(%struct.ieee80211_hw* %224, i32 11, i32 28928)
  %226 = load %struct.adm8211_priv*, %struct.adm8211_priv** %5, align 8
  %227 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %226, i32 0, i32 6
  %228 = load %struct.TYPE_4__*, %struct.TYPE_4__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 6
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @le16_to_cpu(i32 %230)
  store i32 %231, i32* %10, align 4
  %232 = load i32, i32* %10, align 4
  %233 = ashr i32 %232, 13
  store i32 %233, i32* %10, align 4
  %234 = load i32, i32* %10, align 4
  %235 = shl i32 %234, 15
  store i32 %235, i32* %10, align 4
  %236 = load i32, i32* %6, align 4
  %237 = shl i32 %236, 9
  %238 = load i32, i32* %10, align 4
  %239 = or i32 %238, %237
  store i32 %239, i32* %10, align 4
  %240 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %241 = load i32, i32* %10, align 4
  %242 = call i32 @adm8211_rf_write_syn_rfmd2958(%struct.ieee80211_hw* %240, i32 10, i32 %241)
  %243 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %244 = load %struct.adm8211_priv*, %struct.adm8211_priv** %5, align 8
  %245 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %244, i32 0, i32 7
  %246 = load %struct.TYPE_3__*, %struct.TYPE_3__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* @ADM8211_REV_CA, align 8
  %250 = icmp slt i64 %248, %249
  br i1 %250, label %251, label %253

251:                                              ; preds = %223
  %252 = load i32, i32* %7, align 4
  br label %254

253:                                              ; preds = %223
  br label %254

254:                                              ; preds = %253, %251
  %255 = phi i32 [ %252, %251 ], [ 0, %253 ]
  %256 = or i32 80, %255
  %257 = call i32 @adm8211_rf_write_syn_rfmd2958(%struct.ieee80211_hw* %243, i32 9, i32 %256)
  br label %270

258:                                              ; preds = %218
  %259 = load i32, i32* @PLCPHD, align 4
  %260 = call i32 @ADM8211_CSR_READ(i32 %259)
  store i32 %260, i32* %10, align 4
  %261 = load i32, i32* %10, align 4
  %262 = and i32 %261, -16711681
  store i32 %262, i32* %10, align 4
  %263 = load i32, i32* %7, align 4
  %264 = shl i32 %263, 18
  %265 = load i32, i32* %10, align 4
  %266 = or i32 %265, %264
  store i32 %266, i32* %10, align 4
  %267 = load i32, i32* @PLCPHD, align 4
  %268 = load i32, i32* %10, align 4
  %269 = call i32 @ADM8211_CSR_WRITE(i32 %267, i32 %268)
  br label %270

270:                                              ; preds = %258, %254
  %271 = load i32, i32* @SYNRF, align 4
  %272 = load i32, i32* @ADM8211_SYNRF_SELRF, align 4
  %273 = load i32, i32* @ADM8211_SYNRF_PE1, align 4
  %274 = or i32 %272, %273
  %275 = load i32, i32* @ADM8211_SYNRF_PHYRST, align 4
  %276 = or i32 %274, %275
  %277 = call i32 @ADM8211_CSR_WRITE(i32 %271, i32 %276)
  %278 = load i32, i32* @SYNRF, align 4
  %279 = call i32 @ADM8211_CSR_READ(i32 %278)
  %280 = call i32 @msleep(i32 30)
  %281 = load %struct.adm8211_priv*, %struct.adm8211_priv** %5, align 8
  %282 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %281, i32 0, i32 4
  %283 = load i32, i32* %282, align 8
  %284 = icmp ne i32 %283, 129
  br i1 %284, label %285, label %291

285:                                              ; preds = %270
  %286 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %287 = load i32, i32* @RF3000_TX_VAR_GAIN__TX_LEN_EXT, align 4
  %288 = load i32, i32* %7, align 4
  %289 = shl i32 %288, 2
  %290 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %286, i32 %287, i32 %289)
  br label %291

291:                                              ; preds = %285, %270
  %292 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %293 = load i32, i32* @RF3000_LOW_GAIN_CALIB, align 4
  %294 = load i32, i32* %8, align 4
  %295 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %292, i32 %293, i32 %294)
  %296 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %297 = load i32, i32* @RF3000_HIGH_GAIN_CALIB, align 4
  %298 = load i32, i32* %9, align 4
  %299 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %296, i32 %297, i32 %298)
  %300 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %301 = load %struct.adm8211_priv*, %struct.adm8211_priv** %5, align 8
  %302 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %301, i32 0, i32 7
  %303 = load %struct.TYPE_3__*, %struct.TYPE_3__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = load i64, i64* @ADM8211_REV_BA, align 8
  %307 = icmp eq i64 %305, %306
  br i1 %307, label %308, label %314

308:                                              ; preds = %291
  %309 = load %struct.adm8211_priv*, %struct.adm8211_priv** %5, align 8
  %310 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %309, i32 0, i32 6
  %311 = load %struct.TYPE_4__*, %struct.TYPE_4__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %311, i32 0, i32 4
  %313 = load i32, i32* %312, align 8
  br label %315

314:                                              ; preds = %291
  br label %315

315:                                              ; preds = %314, %308
  %316 = phi i32 [ %313, %308 ], [ 0, %314 ]
  %317 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %300, i32 28, i32 %316)
  %318 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %319 = load %struct.adm8211_priv*, %struct.adm8211_priv** %5, align 8
  %320 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %319, i32 0, i32 6
  %321 = load %struct.TYPE_4__*, %struct.TYPE_4__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %321, i32 0, i32 5
  %323 = load i32, i32* %322, align 4
  %324 = call i32 @adm8211_write_bbp(%struct.ieee80211_hw* %318, i32 29, i32 %323)
  %325 = load i32, i32* @SYNRF, align 4
  %326 = call i32 @ADM8211_CSR_WRITE(i32 %325, i32 0)
  br label %342

327:                                              ; preds = %189
  %328 = load %struct.adm8211_priv*, %struct.adm8211_priv** %5, align 8
  %329 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %328, i32 0, i32 5
  %330 = load i64, i64* %329, align 8
  %331 = load i64, i64* @ADM8211_TYPE_ADMTEK, align 8
  %332 = icmp ne i64 %330, %331
  br i1 %332, label %333, label %341

333:                                              ; preds = %327
  %334 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %335 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = load %struct.adm8211_priv*, %struct.adm8211_priv** %5, align 8
  %338 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %337, i32 0, i32 5
  %339 = load i64, i64* %338, align 8
  %340 = call i32 @wiphy_debug(i32 %336, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %339)
  br label %341

341:                                              ; preds = %333, %327
  br label %342

342:                                              ; preds = %341, %315
  %343 = call i32 (...) @ADM8211_RESTORE()
  %344 = load i32, i32* @CAP0, align 4
  %345 = call i32 @ADM8211_CSR_READ(i32 %344)
  store i32 %345, i32* %10, align 4
  %346 = load i32, i32* %10, align 4
  %347 = and i32 %346, -16
  store i32 %347, i32* %10, align 4
  %348 = load i32, i32* %4, align 4
  %349 = load i32, i32* %10, align 4
  %350 = or i32 %349, %348
  store i32 %350, i32* %10, align 4
  %351 = load i32, i32* @CAP0, align 4
  %352 = load i32, i32* %10, align 4
  %353 = call i32 @ADM8211_CSR_WRITE(i32 %351, i32 %352)
  ret i32 0
}

declare dso_local i32 @ADM8211_IDLE(...) #1

declare dso_local i32 @adm8211_rf_write_syn_rfmd2958(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @adm8211_rf_write_syn_rfmd2948(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @adm8211_rf_write_syn_max2820(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @adm8211_rf_write_syn_al2210l(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @wiphy_debug(i32, i8*, i64) #1

declare dso_local i32 @ADM8211_CSR_READ(i32) #1

declare dso_local i32 @ADM8211_CSR_WRITE(i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @adm8211_write_bbp(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @ADM8211_RESTORE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
