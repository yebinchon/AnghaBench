; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_mii_get_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_mii_get_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.net_device = type { i32, i32 }
%struct.de4x5_private = type { i64, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }

@phy_info = common dso_local global %struct.TYPE_7__* null, align 8
@DE4X5_MII = common dso_local global i32 0, align 4
@DE4X5_MAX_PHY = common dso_local global i32 0, align 4
@DE4X5_MAX_MII = common dso_local global i32 0, align 4
@GENERIC_REG = common dso_local global i32 0, align 4
@GENERIC_MASK = common dso_local global i32 0, align 4
@GENERIC_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [115 x i8] c"%s: Using generic MII device control. If the board doesn't operate,\0Aplease mail the following dump to the author:\0A\00", align 1
@de4x5_debug = common dso_local global i32 0, align 4
@DEBUG_MII = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@MII_CR_RST = common dso_local global i32 0, align 4
@MII_CR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @mii_get_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mii_get_phy(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.de4x5_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call %struct.de4x5_private* @netdev_priv(%struct.net_device* %11)
  store %struct.de4x5_private* %12, %struct.de4x5_private** %3, align 8
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %4, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** @phy_info, align 8
  %17 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %16)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %19 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %21 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %20, i32 0, i32 1
  store i32 1, i32* %21, align 8
  store i32 0, i32* %8, align 4
  %22 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %23 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %22, i32 0, i32 2
  store i32 0, i32* %23, align 4
  store i32 1, i32* %5, align 4
  br label %24

24:                                               ; preds = %235, %1
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* %8, align 4
  %29 = icmp eq i32 %28, 1
  br label %30

30:                                               ; preds = %27, %24
  %31 = phi i1 [ false, %24 ], [ %29, %27 ]
  %32 = xor i1 %31, true
  br i1 %32, label %33, label %240

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %36 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %35, i32 0, i32 3
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %39 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store i32 %34, i32* %42, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %33
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %45, %33
  br label %49

49:                                               ; preds = %53, %48
  %50 = load %struct.net_device*, %struct.net_device** %2, align 8
  %51 = call i64 @de4x5_reset_phy(%struct.net_device* %50)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = call i32 @udelay(i32 100)
  br label %49

55:                                               ; preds = %49
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @DE4X5_MII, align 4
  %58 = call i32 @mii_get_oui(i32 %56, i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %55
  %62 = load i32, i32* %10, align 4
  %63 = icmp eq i32 %62, 65535
  br i1 %63, label %64, label %65

64:                                               ; preds = %61, %55
  br label %235

65:                                               ; preds = %61
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %137, %65
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %140

70:                                               ; preds = %66
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** @phy_info, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %71, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %70
  br label %137

80:                                               ; preds = %70
  store i32 0, i32* %7, align 4
  br label %81

81:                                               ; preds = %98, %80
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @DE4X5_MAX_PHY, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %81
  %86 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %87 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %86, i32 0, i32 3
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br label %95

95:                                               ; preds = %85, %81
  %96 = phi i1 [ false, %81 ], [ %94, %85 ]
  br i1 %96, label %97, label %101

97:                                               ; preds = %95
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %81

101:                                              ; preds = %95
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @DE4X5_MAX_PHY, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %135

105:                                              ; preds = %101
  %106 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %107 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %106, i32 0, i32 3
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i64 %110
  %112 = bitcast %struct.TYPE_6__* %111 to i8*
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** @phy_info, align 8
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i64 %115
  %117 = bitcast %struct.TYPE_7__* %116 to i8*
  %118 = call i32 @memcpy(i8* %112, i8* %117, i32 4)
  %119 = load i32, i32* %5, align 4
  %120 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %121 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %120, i32 0, i32 3
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  store i32 %119, i32* %126, align 4
  %127 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %128 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 4
  %131 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %132 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %132, align 8
  br label %136

135:                                              ; preds = %101
  br label %241

136:                                              ; preds = %105
  br label %140

137:                                              ; preds = %79
  %138 = load i32, i32* %6, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %6, align 4
  br label %66

140:                                              ; preds = %136, %66
  %141 = load i32, i32* %6, align 4
  %142 = load i32, i32* %9, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %234

144:                                              ; preds = %140
  %145 = load i32, i32* %5, align 4
  %146 = load i32, i32* @DE4X5_MAX_MII, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %234

148:                                              ; preds = %144
  store i32 0, i32* %7, align 4
  br label %149

149:                                              ; preds = %166, %148
  %150 = load i32, i32* %7, align 4
  %151 = load i32, i32* @DE4X5_MAX_PHY, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %163

153:                                              ; preds = %149
  %154 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %155 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %154, i32 0, i32 3
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %155, align 8
  %157 = load i32, i32* %7, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = icmp ne i32 %161, 0
  br label %163

163:                                              ; preds = %153, %149
  %164 = phi i1 [ false, %149 ], [ %162, %153 ]
  br i1 %164, label %165, label %169

165:                                              ; preds = %163
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %7, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %7, align 4
  br label %149

169:                                              ; preds = %163
  %170 = load i32, i32* %5, align 4
  %171 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %172 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %171, i32 0, i32 3
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %172, align 8
  %174 = load i32, i32* %7, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 0
  store i32 %170, i32* %177, align 4
  %178 = load i32, i32* %10, align 4
  %179 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %180 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %179, i32 0, i32 3
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %180, align 8
  %182 = load i32, i32* %7, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 1
  store i32 %178, i32* %185, align 4
  %186 = load i32, i32* @GENERIC_REG, align 4
  %187 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %188 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %187, i32 0, i32 3
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %188, align 8
  %190 = load i32, i32* %7, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 2
  store i32 %186, i32* %194, align 4
  %195 = load i32, i32* @GENERIC_MASK, align 4
  %196 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %197 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %196, i32 0, i32 3
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %197, align 8
  %199 = load i32, i32* %7, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 1
  store i32 %195, i32* %203, align 4
  %204 = load i32, i32* @GENERIC_VALUE, align 4
  %205 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %206 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %205, i32 0, i32 3
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %206, align 8
  %208 = load i32, i32* %7, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 0
  store i32 %204, i32* %212, align 4
  %213 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %214 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %214, align 4
  %217 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %218 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = add i64 %219, 1
  store i64 %220, i64* %218, align 8
  %221 = load %struct.net_device*, %struct.net_device** %2, align 8
  %222 = getelementptr inbounds %struct.net_device, %struct.net_device* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str, i64 0, i64 0), i32 %223)
  %225 = load i32, i32* @de4x5_debug, align 4
  store i32 %225, i32* %6, align 4
  %226 = load i32, i32* @DEBUG_MII, align 4
  %227 = load i32, i32* @de4x5_debug, align 4
  %228 = or i32 %227, %226
  store i32 %228, i32* @de4x5_debug, align 4
  %229 = load %struct.net_device*, %struct.net_device** %2, align 8
  %230 = load i32, i32* %7, align 4
  %231 = call i32 @de4x5_dbg_mii(%struct.net_device* %229, i32 %230)
  %232 = load i32, i32* %6, align 4
  store i32 %232, i32* @de4x5_debug, align 4
  %233 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %234

234:                                              ; preds = %169, %144, %140
  br label %235

235:                                              ; preds = %234, %64
  %236 = load i32, i32* %5, align 4
  %237 = add nsw i32 %236, 1
  %238 = load i32, i32* @DE4X5_MAX_MII, align 4
  %239 = srem i32 %237, %238
  store i32 %239, i32* %5, align 4
  br label %24

240:                                              ; preds = %30
  br label %241

241:                                              ; preds = %240, %135
  %242 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %243 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %242, i32 0, i32 0
  store i64 0, i64* %243, align 8
  %244 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %245 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %244, i32 0, i32 3
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i64 0
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %305

251:                                              ; preds = %241
  store i32 0, i32* %7, align 4
  br label %252

252:                                              ; preds = %301, %251
  %253 = load i32, i32* %7, align 4
  %254 = load i32, i32* @DE4X5_MAX_PHY, align 4
  %255 = icmp slt i32 %253, %254
  br i1 %255, label %256, label %266

256:                                              ; preds = %252
  %257 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %258 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %257, i32 0, i32 3
  %259 = load %struct.TYPE_6__*, %struct.TYPE_6__** %258, align 8
  %260 = load i32, i32* %7, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = icmp ne i32 %264, 0
  br label %266

266:                                              ; preds = %256, %252
  %267 = phi i1 [ false, %252 ], [ %265, %256 ]
  br i1 %267, label %268, label %304

268:                                              ; preds = %266
  %269 = load i32, i32* @MII_CR_RST, align 4
  %270 = load i32, i32* @MII_CR, align 4
  %271 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %272 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %271, i32 0, i32 3
  %273 = load %struct.TYPE_6__*, %struct.TYPE_6__** %272, align 8
  %274 = load i32, i32* %7, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* @DE4X5_MII, align 4
  %280 = call i32 @mii_wr(i32 %269, i32 %270, i32 %278, i32 %279)
  br label %281

281:                                              ; preds = %296, %268
  %282 = load i32, i32* @MII_CR, align 4
  %283 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %284 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %283, i32 0, i32 3
  %285 = load %struct.TYPE_6__*, %struct.TYPE_6__** %284, align 8
  %286 = load i32, i32* %7, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* @DE4X5_MII, align 4
  %292 = call i32 @mii_rd(i32 %282, i32 %290, i32 %291)
  %293 = load i32, i32* @MII_CR_RST, align 4
  %294 = and i32 %292, %293
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %297

296:                                              ; preds = %281
  br label %281

297:                                              ; preds = %281
  %298 = load %struct.net_device*, %struct.net_device** %2, align 8
  %299 = load i32, i32* %7, align 4
  %300 = call i32 @de4x5_dbg_mii(%struct.net_device* %298, i32 %299)
  br label %301

301:                                              ; preds = %297
  %302 = load i32, i32* %7, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %7, align 4
  br label %252

304:                                              ; preds = %266
  br label %305

305:                                              ; preds = %304, %241
  %306 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %307 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %306, i32 0, i32 2
  %308 = load i32, i32* %307, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %313, label %310

310:                                              ; preds = %305
  %311 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %312 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %311, i32 0, i32 1
  store i32 0, i32* %312, align 8
  br label %313

313:                                              ; preds = %310, %305
  %314 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %315 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %314, i32 0, i32 2
  %316 = load i32, i32* %315, align 4
  ret i32 %316
}

declare dso_local %struct.de4x5_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__*) #1

declare dso_local i64 @de4x5_reset_phy(%struct.net_device*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mii_get_oui(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @de4x5_dbg_mii(%struct.net_device*, i32) #1

declare dso_local i32 @mii_wr(i32, i32, i32, i32) #1

declare dso_local i32 @mii_rd(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
