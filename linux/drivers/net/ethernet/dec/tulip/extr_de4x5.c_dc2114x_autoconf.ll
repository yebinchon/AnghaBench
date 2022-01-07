; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_dc2114x_autoconf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_dc2114x_autoconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.de4x5_private = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@DE4X5_AUTOSENSE_MS = common dso_local global i32 0, align 4
@DISABLE_IRQs = common dso_local global i32 0, align 4
@AUTO = common dso_local global i32 0, align 4
@TIMER_CB = common dso_local global i32 0, align 4
@TP = common dso_local global i32 0, align 4
@MII_SR_ANC = common dso_local global i32 0, align 4
@MII_ANA_TAF = common dso_local global i32 0, align 4
@MII_ANA_CSMA = common dso_local global i32 0, align 4
@MII_ANA_FDAM = common dso_local global i32 0, align 4
@MII_ANA = common dso_local global i32 0, align 4
@DE4X5_MII = common dso_local global i32 0, align 4
@MII_CR_ASSE = common dso_local global i32 0, align 4
@MII_CR_RAN = common dso_local global i32 0, align 4
@MII_CR = common dso_local global i32 0, align 4
@MII_SR = common dso_local global i32 0, align 4
@MII_SR_ASSC = common dso_local global i32 0, align 4
@MII_ANLPA = common dso_local global i32 0, align 4
@MII_ANLPA_RF = common dso_local global i32 0, align 4
@MII_ANLPA_TAF = common dso_local global i32 0, align 4
@MII_ANA_100M = common dso_local global i32 0, align 4
@MII_ANA_10M = common dso_local global i32 0, align 4
@DE4X5_OMR = common dso_local global i32 0, align 4
@OMR_FDX = common dso_local global i32 0, align 4
@DE4X5_SISR = common dso_local global i32 0, align 4
@SISR_SRA = common dso_local global i32 0, align 4
@PDET_LINK_WAIT = common dso_local global i32 0, align 4
@SET_10Mb = common dso_local global i32 0, align 4
@SET_100Mb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Huh?: media:%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @dc2114x_autoconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dc2114x_autoconf(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.de4x5_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = call %struct.de4x5_private* @netdev_priv(%struct.net_device* %18)
  store %struct.de4x5_private* %19, %struct.de4x5_private** %4, align 8
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @DE4X5_AUTOSENSE_MS, align 4
  store i32 %23, i32* %17, align 4
  %24 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %25 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %693 [
    i32 131, label %27
    i32 136, label %182
    i32 135, label %340
    i32 134, label %411
    i32 133, label %414
    i32 132, label %500
    i32 130, label %503
    i32 128, label %605
    i32 129, label %649
  ]

27:                                               ; preds = %1
  %28 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %29 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %73

32:                                               ; preds = %27
  %33 = load i32, i32* @DISABLE_IRQs, align 4
  %34 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %35 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %34, i32 0, i32 2
  store i32 0, i32* %35, align 8
  %36 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %37 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %36, i32 0, i32 11
  store i32 0, i32* %37, align 8
  %38 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %39 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %38, i32 0, i32 1
  store i32 -1, i32* %39, align 4
  %40 = load %struct.net_device*, %struct.net_device** %3, align 8
  %41 = call i32 @de4x5_save_skbs(%struct.net_device* %40)
  %42 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %43 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %42, i32 0, i32 13
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @AUTO, align 4
  %47 = xor i32 %46, -1
  %48 = and i32 %45, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %72

50:                                               ; preds = %32
  %51 = load %struct.net_device*, %struct.net_device** %3, align 8
  %52 = call i32 @srom_map_media(%struct.net_device* %51)
  %53 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %54 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %57 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %56, i32 0, i32 13
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %55, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %50
  %62 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %63 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %62, i32 0, i32 9
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 8
  %66 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %67 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %66, i32 0, i32 0
  store i32 131, i32* %67, align 8
  %68 = load i32, i32* %17, align 4
  store i32 %68, i32* %2, align 4
  br label %706

69:                                               ; preds = %50
  %70 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %71 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %70, i32 0, i32 0
  store i32 131, i32* %71, align 8
  br label %72

72:                                               ; preds = %69, %32
  br label %73

73:                                               ; preds = %72, %27
  %74 = load %struct.net_device*, %struct.net_device** %3, align 8
  %75 = call i32 @de4x5_reset_phy(%struct.net_device* %74)
  store i32 %75, i32* %17, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = load i32, i32* @TIMER_CB, align 4
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %17, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %17, align 4
  br label %181

82:                                               ; preds = %73
  %83 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %84 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 129
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %89 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %88, i32 0, i32 0
  store i32 129, i32* %89, align 8
  br label %176

90:                                               ; preds = %82
  %91 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %92 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 128
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %97 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %96, i32 0, i32 0
  store i32 128, i32* %97, align 8
  br label %175

98:                                               ; preds = %90
  %99 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %100 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @TP, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %98
  %105 = load i32, i32* @TP, align 4
  %106 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %107 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  br label %174

108:                                              ; preds = %98
  %109 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %110 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 133
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %115 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %114, i32 0, i32 0
  store i32 133, i32* %115, align 8
  br label %173

116:                                              ; preds = %108
  %117 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %118 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %119, 135
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %123 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %122, i32 0, i32 0
  store i32 135, i32* %123, align 8
  br label %172

124:                                              ; preds = %116
  %125 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %126 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %125, i32 0, i32 0
  store i32 130, i32* %126, align 8
  %127 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %128 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = icmp eq i32 %129, 136
  br i1 %130, label %131, label %171

131:                                              ; preds = %124
  %132 = load %struct.net_device*, %struct.net_device** %3, align 8
  %133 = call i32 @is_anc_capable(%struct.net_device* %132)
  store i32 %133, i32* %15, align 4
  %134 = load i32, i32* @MII_SR_ANC, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %171

137:                                              ; preds = %131
  %138 = load i32, i32* %15, align 4
  %139 = ashr i32 %138, 6
  %140 = load i32, i32* @MII_ANA_TAF, align 4
  %141 = and i32 %139, %140
  %142 = load i32, i32* @MII_ANA_CSMA, align 4
  %143 = or i32 %141, %142
  store i32 %143, i32* %8, align 4
  %144 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %145 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %137
  br label %152

149:                                              ; preds = %137
  %150 = load i32, i32* @MII_ANA_FDAM, align 4
  %151 = xor i32 %150, -1
  br label %152

152:                                              ; preds = %149, %148
  %153 = phi i32 [ -1, %148 ], [ %151, %149 ]
  %154 = load i32, i32* %8, align 4
  %155 = and i32 %154, %153
  store i32 %155, i32* %8, align 4
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* @MII_ANA, align 4
  %158 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %159 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %158, i32 0, i32 12
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %159, align 8
  %161 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %162 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %161, i32 0, i32 6
  %163 = load i64, i64* %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @DE4X5_MII, align 4
  %168 = call i32 @mii_wr(i32 %156, i32 %157, i32 %166, i32 %167)
  %169 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %170 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %169, i32 0, i32 0
  store i32 136, i32* %170, align 8
  br label %171

171:                                              ; preds = %152, %131, %124
  br label %172

172:                                              ; preds = %171, %121
  br label %173

173:                                              ; preds = %172, %113
  br label %174

174:                                              ; preds = %173, %104
  br label %175

175:                                              ; preds = %174, %95
  br label %176

176:                                              ; preds = %175, %87
  %177 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %178 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %177, i32 0, i32 7
  store i32 0, i32* %178, align 8
  %179 = load %struct.net_device*, %struct.net_device** %3, align 8
  %180 = call i32 @dc2114x_autoconf(%struct.net_device* %179)
  store i32 %180, i32* %17, align 4
  br label %181

181:                                              ; preds = %176, %77
  br label %704

182:                                              ; preds = %1
  %183 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %184 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %183, i32 0, i32 7
  %185 = load i32, i32* %184, align 8
  switch i32 %185, label %339 [
    i32 0, label %186
    i32 1, label %236
  ]

186:                                              ; preds = %182
  %187 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %188 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %207

191:                                              ; preds = %186
  %192 = load i32, i32* @MII_CR_ASSE, align 4
  %193 = load i32, i32* @MII_CR_RAN, align 4
  %194 = or i32 %192, %193
  %195 = load i32, i32* @MII_CR, align 4
  %196 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %197 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %196, i32 0, i32 12
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %197, align 8
  %199 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %200 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %199, i32 0, i32 6
  %201 = load i64, i64* %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @DE4X5_MII, align 4
  %206 = call i32 @mii_wr(i32 %194, i32 %195, i32 %204, i32 %205)
  br label %207

207:                                              ; preds = %191, %186
  %208 = load %struct.net_device*, %struct.net_device** %3, align 8
  %209 = load i32, i32* @MII_CR, align 4
  %210 = load i32, i32* @MII_CR_RAN, align 4
  %211 = call i32 @test_mii_reg(%struct.net_device* %208, i32 %209, i32 %210, i32 0, i32 500)
  store i32 %211, i32* %6, align 4
  %212 = load i32, i32* %6, align 4
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %207
  %215 = load i32, i32* %6, align 4
  %216 = load i32, i32* @TIMER_CB, align 4
  %217 = xor i32 %216, -1
  %218 = and i32 %215, %217
  store i32 %218, i32* %17, align 4
  br label %235

219:                                              ; preds = %207
  %220 = load i32, i32* %6, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %227

222:                                              ; preds = %219
  %223 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %224 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %223, i32 0, i32 7
  store i32 0, i32* %224, align 8
  %225 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %226 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %225, i32 0, i32 0
  store i32 130, i32* %226, align 8
  br label %232

227:                                              ; preds = %219
  %228 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %229 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %228, i32 0, i32 7
  %230 = load i32, i32* %229, align 8
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %229, align 8
  br label %232

232:                                              ; preds = %227, %222
  %233 = load %struct.net_device*, %struct.net_device** %3, align 8
  %234 = call i32 @dc2114x_autoconf(%struct.net_device* %233)
  store i32 %234, i32* %17, align 4
  br label %235

235:                                              ; preds = %232, %214
  br label %339

236:                                              ; preds = %182
  %237 = load %struct.net_device*, %struct.net_device** %3, align 8
  %238 = load i32, i32* @MII_SR, align 4
  %239 = load i32, i32* @MII_SR_ASSC, align 4
  %240 = call i32 @test_mii_reg(%struct.net_device* %237, i32 %238, i32 %239, i32 1, i32 2000)
  store i32 %240, i32* %15, align 4
  %241 = load i32, i32* %15, align 4
  %242 = icmp slt i32 %241, 0
  br i1 %242, label %243, label %248

243:                                              ; preds = %236
  %244 = load i32, i32* %15, align 4
  %245 = load i32, i32* @TIMER_CB, align 4
  %246 = xor i32 %245, -1
  %247 = and i32 %244, %246
  store i32 %247, i32* %17, align 4
  br label %338

248:                                              ; preds = %236
  %249 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %250 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %249, i32 0, i32 0
  store i32 130, i32* %250, align 8
  %251 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %252 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %251, i32 0, i32 7
  store i32 0, i32* %252, align 8
  %253 = load i32, i32* %15, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %335

255:                                              ; preds = %248
  %256 = load i32, i32* @MII_SR_ASSC, align 4
  %257 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %258 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %257, i32 0, i32 8
  store i32 %256, i32* %258, align 4
  %259 = load i32, i32* @MII_ANLPA, align 4
  %260 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %261 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %260, i32 0, i32 12
  %262 = load %struct.TYPE_3__*, %struct.TYPE_3__** %261, align 8
  %263 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %264 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %263, i32 0, i32 6
  %265 = load i64, i64* %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %262, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* @DE4X5_MII, align 4
  %270 = call i32 @mii_rd(i32 %259, i32 %268, i32 %269)
  store i32 %270, i32* %7, align 4
  %271 = load i32, i32* @MII_ANA, align 4
  %272 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %273 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %272, i32 0, i32 12
  %274 = load %struct.TYPE_3__*, %struct.TYPE_3__** %273, align 8
  %275 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %276 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %275, i32 0, i32 6
  %277 = load i64, i64* %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %274, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* @DE4X5_MII, align 4
  %282 = call i32 @mii_rd(i32 %271, i32 %280, i32 %281)
  store i32 %282, i32* %8, align 4
  %283 = load i32, i32* %7, align 4
  %284 = load i32, i32* @MII_ANLPA_RF, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %334, label %287

287:                                              ; preds = %255
  %288 = load i32, i32* %7, align 4
  %289 = load i32, i32* @MII_ANLPA_TAF, align 4
  %290 = and i32 %288, %289
  %291 = load i32, i32* %8, align 4
  %292 = and i32 %290, %291
  store i32 %292, i32* %9, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %334

294:                                              ; preds = %287
  %295 = load i32, i32* %9, align 4
  %296 = load i32, i32* @MII_ANA_100M, align 4
  %297 = and i32 %295, %296
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %313

299:                                              ; preds = %294
  %300 = load i32, i32* %8, align 4
  %301 = load i32, i32* %7, align 4
  %302 = and i32 %300, %301
  %303 = load i32, i32* @MII_ANA_FDAM, align 4
  %304 = and i32 %302, %303
  %305 = load i32, i32* @MII_ANA_100M, align 4
  %306 = and i32 %304, %305
  %307 = icmp ne i32 %306, 0
  %308 = zext i1 %307 to i32
  %309 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %310 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %309, i32 0, i32 5
  store i32 %308, i32* %310, align 4
  %311 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %312 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %311, i32 0, i32 0
  store i32 129, i32* %312, align 8
  br label %333

313:                                              ; preds = %294
  %314 = load i32, i32* %9, align 4
  %315 = load i32, i32* @MII_ANA_10M, align 4
  %316 = and i32 %314, %315
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %332

318:                                              ; preds = %313
  %319 = load i32, i32* %8, align 4
  %320 = load i32, i32* %7, align 4
  %321 = and i32 %319, %320
  %322 = load i32, i32* @MII_ANA_FDAM, align 4
  %323 = and i32 %321, %322
  %324 = load i32, i32* @MII_ANA_10M, align 4
  %325 = and i32 %323, %324
  %326 = icmp ne i32 %325, 0
  %327 = zext i1 %326 to i32
  %328 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %329 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %328, i32 0, i32 5
  store i32 %327, i32* %329, align 4
  %330 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %331 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %330, i32 0, i32 0
  store i32 128, i32* %331, align 8
  br label %332

332:                                              ; preds = %318, %313
  br label %333

333:                                              ; preds = %332, %299
  br label %334

334:                                              ; preds = %333, %287, %255
  br label %335

335:                                              ; preds = %334, %248
  %336 = load %struct.net_device*, %struct.net_device** %3, align 8
  %337 = call i32 @dc2114x_autoconf(%struct.net_device* %336)
  store i32 %337, i32* %17, align 4
  br label %338

338:                                              ; preds = %335, %243
  br label %339

339:                                              ; preds = %182, %338, %235
  br label %704

340:                                              ; preds = %1
  %341 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %342 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %341, i32 0, i32 2
  %343 = load i32, i32* %342, align 8
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %395, label %345

345:                                              ; preds = %340
  %346 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %347 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = icmp slt i32 %348, 0
  br i1 %349, label %350, label %359

350:                                              ; preds = %345
  %351 = load i32, i32* @DE4X5_OMR, align 4
  %352 = call i32 @inl(i32 %351)
  store i32 %352, i32* %13, align 4
  %353 = load i32, i32* %13, align 4
  %354 = load i32, i32* @OMR_FDX, align 4
  %355 = xor i32 %354, -1
  %356 = and i32 %353, %355
  %357 = load i32, i32* @DE4X5_OMR, align 4
  %358 = call i32 @outl(i32 %356, i32 %357)
  br label %359

359:                                              ; preds = %350, %345
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %360 = load %struct.net_device*, %struct.net_device** %3, align 8
  %361 = load i32, i32* %10, align 4
  %362 = load i32, i32* %11, align 4
  %363 = call i32 @test_media(%struct.net_device* %360, i32 %361, i32 %362, i32 0, i32 0, i32 0, i32 1000)
  store i32 %363, i32* %16, align 4
  %364 = load i32, i32* %16, align 4
  %365 = icmp slt i32 %364, 0
  br i1 %365, label %366, label %371

366:                                              ; preds = %359
  %367 = load i32, i32* %16, align 4
  %368 = load i32, i32* @TIMER_CB, align 4
  %369 = xor i32 %368, -1
  %370 = and i32 %367, %369
  store i32 %370, i32* %17, align 4
  br label %394

371:                                              ; preds = %359
  %372 = load i32, i32* @DE4X5_SISR, align 4
  %373 = call i32 @inl(i32 %372)
  %374 = load i32, i32* @SISR_SRA, align 4
  %375 = and i32 %373, %374
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %388, label %377

377:                                              ; preds = %371
  %378 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %379 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %378, i32 0, i32 3
  %380 = load i32, i32* %379, align 4
  %381 = load i32, i32* @AUTO, align 4
  %382 = icmp eq i32 %380, %381
  br i1 %382, label %383, label %388

383:                                              ; preds = %377
  %384 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %385 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %384, i32 0, i32 0
  store i32 133, i32* %385, align 8
  %386 = load %struct.net_device*, %struct.net_device** %3, align 8
  %387 = call i32 @dc2114x_autoconf(%struct.net_device* %386)
  store i32 %387, i32* %17, align 4
  br label %393

388:                                              ; preds = %377, %371
  %389 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %390 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %389, i32 0, i32 7
  store i32 1, i32* %390, align 8
  %391 = load %struct.net_device*, %struct.net_device** %3, align 8
  %392 = call i32 @de4x5_init_connection(%struct.net_device* %391)
  br label %393

393:                                              ; preds = %388, %383
  br label %394

394:                                              ; preds = %393, %366
  br label %410

395:                                              ; preds = %340
  %396 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %397 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %396, i32 0, i32 11
  %398 = load i32, i32* %397, align 8
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %409, label %400

400:                                              ; preds = %395
  %401 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %402 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %401, i32 0, i32 3
  %403 = load i32, i32* %402, align 4
  %404 = load i32, i32* @AUTO, align 4
  %405 = icmp eq i32 %403, %404
  br i1 %405, label %406, label %409

406:                                              ; preds = %400
  %407 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %408 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %407, i32 0, i32 0
  store i32 134, i32* %408, align 8
  store i32 3000, i32* %17, align 4
  br label %409

409:                                              ; preds = %406, %400, %395
  br label %410

410:                                              ; preds = %409, %394
  br label %704

411:                                              ; preds = %1
  %412 = load %struct.net_device*, %struct.net_device** %3, align 8
  %413 = call i32 @de4x5_suspect_state(%struct.net_device* %412, i32 1000, i32 135, i32 (%struct.net_device*, i32)* @ping_media, i32 (%struct.net_device*)* @dc2114x_autoconf)
  store i32 %413, i32* %17, align 4
  br label %704

414:                                              ; preds = %1
  %415 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %416 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %415, i32 0, i32 7
  %417 = load i32, i32* %416, align 8
  switch i32 %417, label %499 [
    i32 0, label %418
    i32 1, label %452
  ]

418:                                              ; preds = %414
  %419 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %420 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %419, i32 0, i32 1
  %421 = load i32, i32* %420, align 4
  %422 = icmp slt i32 %421, 0
  br i1 %422, label %423, label %432

423:                                              ; preds = %418
  %424 = load i32, i32* @DE4X5_OMR, align 4
  %425 = call i32 @inl(i32 %424)
  store i32 %425, i32* %13, align 4
  %426 = load i32, i32* %13, align 4
  %427 = load i32, i32* @OMR_FDX, align 4
  %428 = xor i32 %427, -1
  %429 = and i32 %426, %428
  %430 = load i32, i32* @DE4X5_OMR, align 4
  %431 = call i32 @outl(i32 %429, i32 %430)
  br label %432

432:                                              ; preds = %423, %418
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %433 = load %struct.net_device*, %struct.net_device** %3, align 8
  %434 = load i32, i32* %10, align 4
  %435 = load i32, i32* %11, align 4
  %436 = call i32 @test_media(%struct.net_device* %433, i32 %434, i32 %435, i32 0, i32 0, i32 0, i32 1000)
  store i32 %436, i32* %16, align 4
  %437 = load i32, i32* %16, align 4
  %438 = icmp slt i32 %437, 0
  br i1 %438, label %439, label %444

439:                                              ; preds = %432
  %440 = load i32, i32* %16, align 4
  %441 = load i32, i32* @TIMER_CB, align 4
  %442 = xor i32 %441, -1
  %443 = and i32 %440, %442
  store i32 %443, i32* %17, align 4
  br label %451

444:                                              ; preds = %432
  %445 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %446 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %445, i32 0, i32 7
  %447 = load i32, i32* %446, align 8
  %448 = add nsw i32 %447, 1
  store i32 %448, i32* %446, align 8
  %449 = load %struct.net_device*, %struct.net_device** %3, align 8
  %450 = call i32 @dc2114x_autoconf(%struct.net_device* %449)
  store i32 %450, i32* %17, align 4
  br label %451

451:                                              ; preds = %444, %439
  br label %499

452:                                              ; preds = %414
  %453 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %454 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %453, i32 0, i32 2
  %455 = load i32, i32* %454, align 8
  %456 = icmp ne i32 %455, 0
  br i1 %456, label %483, label %457

457:                                              ; preds = %452
  %458 = load %struct.net_device*, %struct.net_device** %3, align 8
  %459 = call i32 @ping_media(%struct.net_device* %458, i32 3000)
  store i32 %459, i32* %16, align 4
  %460 = icmp slt i32 %459, 0
  br i1 %460, label %461, label %466

461:                                              ; preds = %457
  %462 = load i32, i32* %16, align 4
  %463 = load i32, i32* @TIMER_CB, align 4
  %464 = xor i32 %463, -1
  %465 = and i32 %462, %464
  store i32 %465, i32* %17, align 4
  br label %482

466:                                              ; preds = %457
  %467 = load i32, i32* %16, align 4
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %469, label %478

469:                                              ; preds = %466
  %470 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %471 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %470, i32 0, i32 7
  store i32 0, i32* %471, align 8
  %472 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %473 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %472, i32 0, i32 9
  %474 = load i32, i32* %473, align 8
  %475 = add nsw i32 %474, 1
  store i32 %475, i32* %473, align 8
  %476 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %477 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %476, i32 0, i32 0
  store i32 131, i32* %477, align 8
  br label %481

478:                                              ; preds = %466
  %479 = load %struct.net_device*, %struct.net_device** %3, align 8
  %480 = call i32 @de4x5_init_connection(%struct.net_device* %479)
  br label %481

481:                                              ; preds = %478, %469
  br label %482

482:                                              ; preds = %481, %461
  br label %498

483:                                              ; preds = %452
  %484 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %485 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %484, i32 0, i32 11
  %486 = load i32, i32* %485, align 8
  %487 = icmp ne i32 %486, 0
  br i1 %487, label %497, label %488

488:                                              ; preds = %483
  %489 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %490 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %489, i32 0, i32 3
  %491 = load i32, i32* %490, align 4
  %492 = load i32, i32* @AUTO, align 4
  %493 = icmp eq i32 %491, %492
  br i1 %493, label %494, label %497

494:                                              ; preds = %488
  %495 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %496 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %495, i32 0, i32 0
  store i32 132, i32* %496, align 8
  store i32 3000, i32* %17, align 4
  br label %497

497:                                              ; preds = %494, %488, %483
  br label %498

498:                                              ; preds = %497, %482
  br label %499

499:                                              ; preds = %414, %498, %451
  br label %704

500:                                              ; preds = %1
  %501 = load %struct.net_device*, %struct.net_device** %3, align 8
  %502 = call i32 @de4x5_suspect_state(%struct.net_device* %501, i32 1000, i32 133, i32 (%struct.net_device*, i32)* @ping_media, i32 (%struct.net_device*)* @dc2114x_autoconf)
  store i32 %502, i32* %17, align 4
  br label %704

503:                                              ; preds = %1
  %504 = load %struct.net_device*, %struct.net_device** %3, align 8
  %505 = call i32 @srom_map_media(%struct.net_device* %504)
  %506 = icmp slt i32 %505, 0
  br i1 %506, label %507, label %515

507:                                              ; preds = %503
  %508 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %509 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %508, i32 0, i32 9
  %510 = load i32, i32* %509, align 8
  %511 = add nsw i32 %510, 1
  store i32 %511, i32* %509, align 8
  %512 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %513 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %512, i32 0, i32 0
  store i32 131, i32* %513, align 8
  %514 = load i32, i32* %17, align 4
  store i32 %514, i32* %2, align 4
  br label %706

515:                                              ; preds = %503
  %516 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %517 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %516, i32 0, i32 0
  %518 = load i32, i32* %517, align 8
  %519 = icmp eq i32 %518, 129
  br i1 %519, label %520, label %532

520:                                              ; preds = %515
  %521 = load %struct.net_device*, %struct.net_device** %3, align 8
  %522 = call i32 @test_for_100Mb(%struct.net_device* %521, i32 6500)
  store i32 %522, i32* %14, align 4
  %523 = icmp slt i32 %522, 0
  br i1 %523, label %524, label %531

524:                                              ; preds = %520
  %525 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %526 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %525, i32 0, i32 0
  store i32 130, i32* %526, align 8
  %527 = load i32, i32* %14, align 4
  %528 = load i32, i32* @TIMER_CB, align 4
  %529 = xor i32 %528, -1
  %530 = and i32 %527, %529
  store i32 %530, i32* %2, align 4
  br label %706

531:                                              ; preds = %520
  br label %541

532:                                              ; preds = %515
  %533 = load %struct.net_device*, %struct.net_device** %3, align 8
  %534 = call i32 @wait_for_link(%struct.net_device* %533)
  %535 = icmp slt i32 %534, 0
  br i1 %535, label %536, label %540

536:                                              ; preds = %532
  %537 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %538 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %537, i32 0, i32 0
  store i32 130, i32* %538, align 8
  %539 = load i32, i32* @PDET_LINK_WAIT, align 4
  store i32 %539, i32* %2, align 4
  br label %706

540:                                              ; preds = %532
  br label %541

541:                                              ; preds = %540, %531
  %542 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %543 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %542, i32 0, i32 0
  %544 = load i32, i32* %543, align 8
  %545 = icmp eq i32 %544, 136
  br i1 %545, label %546, label %559

546:                                              ; preds = %541
  %547 = load %struct.net_device*, %struct.net_device** %3, align 8
  %548 = call i32 @is_spd_100(%struct.net_device* %547)
  %549 = icmp ne i32 %548, 0
  br i1 %549, label %550, label %553

550:                                              ; preds = %546
  %551 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %552 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %551, i32 0, i32 0
  store i32 129, i32* %552, align 8
  br label %556

553:                                              ; preds = %546
  %554 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %555 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %554, i32 0, i32 0
  store i32 128, i32* %555, align 8
  br label %556

556:                                              ; preds = %553, %550
  %557 = load %struct.net_device*, %struct.net_device** %3, align 8
  %558 = call i32 @dc2114x_autoconf(%struct.net_device* %557)
  store i32 %558, i32* %17, align 4
  br label %604

559:                                              ; preds = %541
  %560 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %561 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %560, i32 0, i32 0
  %562 = load i32, i32* %561, align 8
  %563 = icmp eq i32 %562, 129
  br i1 %563, label %564, label %568

564:                                              ; preds = %559
  %565 = load %struct.net_device*, %struct.net_device** %3, align 8
  %566 = call i32 @is_100_up(%struct.net_device* %565)
  %567 = icmp ne i32 %566, 0
  br i1 %567, label %593, label %568

568:                                              ; preds = %564, %559
  %569 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %570 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %569, i32 0, i32 0
  %571 = load i32, i32* %570, align 8
  %572 = icmp eq i32 %571, 128
  br i1 %572, label %589, label %573

573:                                              ; preds = %568
  %574 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %575 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %574, i32 0, i32 0
  %576 = load i32, i32* %575, align 8
  %577 = load i32, i32* @TP, align 4
  %578 = icmp eq i32 %576, %577
  br i1 %578, label %589, label %579

579:                                              ; preds = %573
  %580 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %581 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %580, i32 0, i32 0
  %582 = load i32, i32* %581, align 8
  %583 = icmp eq i32 %582, 133
  br i1 %583, label %589, label %584

584:                                              ; preds = %579
  %585 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %586 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %585, i32 0, i32 0
  %587 = load i32, i32* %586, align 8
  %588 = icmp eq i32 %587, 135
  br i1 %588, label %589, label %596

589:                                              ; preds = %584, %579, %573, %568
  %590 = load %struct.net_device*, %struct.net_device** %3, align 8
  %591 = call i32 @is_10_up(%struct.net_device* %590)
  %592 = icmp ne i32 %591, 0
  br i1 %592, label %593, label %596

593:                                              ; preds = %589, %564
  %594 = load %struct.net_device*, %struct.net_device** %3, align 8
  %595 = call i32 @dc2114x_autoconf(%struct.net_device* %594)
  store i32 %595, i32* %17, align 4
  br label %603

596:                                              ; preds = %589, %584
  %597 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %598 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %597, i32 0, i32 9
  %599 = load i32, i32* %598, align 8
  %600 = add nsw i32 %599, 1
  store i32 %600, i32* %598, align 8
  %601 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %602 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %601, i32 0, i32 0
  store i32 131, i32* %602, align 8
  br label %603

603:                                              ; preds = %596, %593
  br label %604

604:                                              ; preds = %603, %556
  br label %704

605:                                              ; preds = %1
  store i32 3000, i32* %17, align 4
  %606 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %607 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %606, i32 0, i32 2
  %608 = load i32, i32* %607, align 8
  %609 = icmp ne i32 %608, 0
  br i1 %609, label %614, label %610

610:                                              ; preds = %605
  %611 = load i32, i32* @SET_10Mb, align 4
  %612 = load %struct.net_device*, %struct.net_device** %3, align 8
  %613 = call i32 @de4x5_init_connection(%struct.net_device* %612)
  br label %648

614:                                              ; preds = %605
  %615 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %616 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %615, i32 0, i32 11
  %617 = load i32, i32* %616, align 8
  %618 = icmp ne i32 %617, 0
  br i1 %618, label %647, label %619

619:                                              ; preds = %614
  %620 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %621 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %620, i32 0, i32 3
  %622 = load i32, i32* %621, align 4
  %623 = load i32, i32* @AUTO, align 4
  %624 = icmp eq i32 %622, %623
  br i1 %624, label %625, label %647

625:                                              ; preds = %619
  %626 = load %struct.net_device*, %struct.net_device** %3, align 8
  %627 = call i32 @is_10_up(%struct.net_device* %626)
  %628 = icmp ne i32 %627, 0
  br i1 %628, label %629, label %638

629:                                              ; preds = %625
  %630 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %631 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %630, i32 0, i32 10
  %632 = load i32, i32* %631, align 4
  %633 = icmp ne i32 %632, 0
  br i1 %633, label %646, label %634

634:                                              ; preds = %629
  %635 = load %struct.net_device*, %struct.net_device** %3, align 8
  %636 = call i32 @is_spd_100(%struct.net_device* %635)
  %637 = icmp ne i32 %636, 0
  br i1 %637, label %638, label %646

638:                                              ; preds = %634, %625
  %639 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %640 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %639, i32 0, i32 0
  store i32 131, i32* %640, align 8
  %641 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %642 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %641, i32 0, i32 9
  %643 = load i32, i32* %642, align 8
  %644 = add nsw i32 %643, 1
  store i32 %644, i32* %642, align 8
  %645 = load i32, i32* @DE4X5_AUTOSENSE_MS, align 4
  store i32 %645, i32* %17, align 4
  br label %646

646:                                              ; preds = %638, %634, %629
  br label %647

647:                                              ; preds = %646, %619, %614
  br label %648

648:                                              ; preds = %647, %610
  br label %704

649:                                              ; preds = %1
  store i32 3000, i32* %17, align 4
  %650 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %651 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %650, i32 0, i32 2
  %652 = load i32, i32* %651, align 8
  %653 = icmp ne i32 %652, 0
  br i1 %653, label %658, label %654

654:                                              ; preds = %649
  %655 = load i32, i32* @SET_100Mb, align 4
  %656 = load %struct.net_device*, %struct.net_device** %3, align 8
  %657 = call i32 @de4x5_init_connection(%struct.net_device* %656)
  br label %692

658:                                              ; preds = %649
  %659 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %660 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %659, i32 0, i32 11
  %661 = load i32, i32* %660, align 8
  %662 = icmp ne i32 %661, 0
  br i1 %662, label %691, label %663

663:                                              ; preds = %658
  %664 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %665 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %664, i32 0, i32 3
  %666 = load i32, i32* %665, align 4
  %667 = load i32, i32* @AUTO, align 4
  %668 = icmp eq i32 %666, %667
  br i1 %668, label %669, label %691

669:                                              ; preds = %663
  %670 = load %struct.net_device*, %struct.net_device** %3, align 8
  %671 = call i32 @is_100_up(%struct.net_device* %670)
  %672 = icmp ne i32 %671, 0
  br i1 %672, label %673, label %682

673:                                              ; preds = %669
  %674 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %675 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %674, i32 0, i32 10
  %676 = load i32, i32* %675, align 4
  %677 = icmp ne i32 %676, 0
  br i1 %677, label %690, label %678

678:                                              ; preds = %673
  %679 = load %struct.net_device*, %struct.net_device** %3, align 8
  %680 = call i32 @is_spd_100(%struct.net_device* %679)
  %681 = icmp ne i32 %680, 0
  br i1 %681, label %690, label %682

682:                                              ; preds = %678, %669
  %683 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %684 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %683, i32 0, i32 0
  store i32 131, i32* %684, align 8
  %685 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %686 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %685, i32 0, i32 9
  %687 = load i32, i32* %686, align 8
  %688 = add nsw i32 %687, 1
  store i32 %688, i32* %686, align 8
  %689 = load i32, i32* @DE4X5_AUTOSENSE_MS, align 4
  store i32 %689, i32* %17, align 4
  br label %690

690:                                              ; preds = %682, %678, %673
  br label %691

691:                                              ; preds = %690, %663, %658
  br label %692

692:                                              ; preds = %691, %654
  br label %704

693:                                              ; preds = %1
  %694 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %695 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %694, i32 0, i32 9
  %696 = load i32, i32* %695, align 8
  %697 = add nsw i32 %696, 1
  store i32 %697, i32* %695, align 8
  %698 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %699 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %698, i32 0, i32 0
  %700 = load i32, i32* %699, align 8
  %701 = call i32 @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %700)
  %702 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %703 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %702, i32 0, i32 0
  store i32 131, i32* %703, align 8
  br label %704

704:                                              ; preds = %693, %692, %648, %604, %500, %499, %411, %410, %339, %181
  %705 = load i32, i32* %17, align 4
  store i32 %705, i32* %2, align 4
  br label %706

706:                                              ; preds = %704, %536, %524, %507, %61
  %707 = load i32, i32* %2, align 4
  ret i32 %707
}

declare dso_local %struct.de4x5_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @de4x5_save_skbs(%struct.net_device*) #1

declare dso_local i32 @srom_map_media(%struct.net_device*) #1

declare dso_local i32 @de4x5_reset_phy(%struct.net_device*) #1

declare dso_local i32 @is_anc_capable(%struct.net_device*) #1

declare dso_local i32 @mii_wr(i32, i32, i32, i32) #1

declare dso_local i32 @test_mii_reg(%struct.net_device*, i32, i32, i32, i32) #1

declare dso_local i32 @mii_rd(i32, i32, i32) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @test_media(%struct.net_device*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @de4x5_init_connection(%struct.net_device*) #1

declare dso_local i32 @de4x5_suspect_state(%struct.net_device*, i32, i32, i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*)*) #1

declare dso_local i32 @ping_media(%struct.net_device*, i32) #1

declare dso_local i32 @test_for_100Mb(%struct.net_device*, i32) #1

declare dso_local i32 @wait_for_link(%struct.net_device*) #1

declare dso_local i32 @is_spd_100(%struct.net_device*) #1

declare dso_local i32 @is_100_up(%struct.net_device*) #1

declare dso_local i32 @is_10_up(%struct.net_device*) #1

declare dso_local i32 @printk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
