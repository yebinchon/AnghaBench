; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_de4x5_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_de4x5_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.de4x5_private = type { i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_4__, i32, i64, i64 }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i16, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i32, i32 }

@DE4X5_MFC = common dso_local global i32 0, align 4
@MFC_FOCM = common dso_local global i32 0, align 4
@RD_FS = common dso_local global i64 0, align 8
@RD_LS = common dso_local global i64 0, align 8
@RD_ES = common dso_local global i64 0, align 8
@RD_RF = common dso_local global i64 0, align 8
@RD_TL = common dso_local global i64 0, align 8
@RD_CE = common dso_local global i64 0, align 8
@RD_OF = common dso_local global i64 0, align 8
@RD_CS = common dso_local global i64 0, align 8
@RD_DB = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"%s: Insufficient memory; nuking packet.\0A\00", align 1
@R_OWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @de4x5_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @de4x5_rx(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.de4x5_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i16, align 2
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.de4x5_private* @netdev_priv(%struct.net_device* %9)
  store %struct.de4x5_private* %10, %struct.de4x5_private** %3, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %15 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %294, %1
  %18 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %19 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %18, i32 0, i32 3
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @le32_to_cpu(i8* %25)
  %27 = sext i32 %26 to i64
  %28 = icmp sge i64 %27, 0
  br i1 %28, label %29, label %298

29:                                               ; preds = %17
  %30 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %31 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %30, i32 0, i32 3
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @le32_to_cpu(i8* %37)
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %6, align 8
  %40 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %41 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %40, i32 0, i32 8
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %29
  %45 = load i32, i32* @DE4X5_MFC, align 4
  %46 = call i32 @inl(i32 %45)
  %47 = load i32, i32* @MFC_FOCM, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load %struct.net_device*, %struct.net_device** %2, align 8
  %52 = call i32 @de4x5_rx_ovfc(%struct.net_device* %51)
  br label %298

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53, %29
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* @RD_FS, align 8
  %57 = and i64 %55, %56
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %62 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %59, %54
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* @RD_LS, align 8
  %66 = and i64 %64, %65
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %283

68:                                               ; preds = %63
  %69 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %70 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %69, i32 0, i32 7
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %75 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %73, %68
  %79 = load i64, i64* %6, align 8
  %80 = load i64, i64* @RD_ES, align 8
  %81 = and i64 %79, %80
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %179

83:                                               ; preds = %78
  %84 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %85 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 7
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  %89 = load i64, i64* %6, align 8
  %90 = load i64, i64* @RD_RF, align 8
  %91 = load i64, i64* @RD_TL, align 8
  %92 = or i64 %90, %91
  %93 = and i64 %89, %92
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %83
  %96 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %97 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 8
  br label %101

101:                                              ; preds = %95, %83
  %102 = load i64, i64* %6, align 8
  %103 = load i64, i64* @RD_CE, align 8
  %104 = and i64 %102, %103
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  %107 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %108 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %107, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 4
  br label %112

112:                                              ; preds = %106, %101
  %113 = load i64, i64* %6, align 8
  %114 = load i64, i64* @RD_OF, align 8
  %115 = and i64 %113, %114
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %112
  %118 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %119 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 8
  br label %123

123:                                              ; preds = %117, %112
  %124 = load i64, i64* %6, align 8
  %125 = load i64, i64* @RD_TL, align 8
  %126 = and i64 %124, %125
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %123
  %129 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %130 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %129, i32 0, i32 4
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 4
  br label %134

134:                                              ; preds = %128, %123
  %135 = load i64, i64* %6, align 8
  %136 = load i64, i64* @RD_RF, align 8
  %137 = and i64 %135, %136
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %134
  %140 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %141 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %140, i32 0, i32 5
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %142, align 4
  br label %145

145:                                              ; preds = %139, %134
  %146 = load i64, i64* %6, align 8
  %147 = load i64, i64* @RD_CS, align 8
  %148 = and i64 %146, %147
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %145
  %151 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %152 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %151, i32 0, i32 5
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %153, align 8
  br label %156

156:                                              ; preds = %150, %145
  %157 = load i64, i64* %6, align 8
  %158 = load i64, i64* @RD_DB, align 8
  %159 = and i64 %157, %158
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %156
  %162 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %163 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %162, i32 0, i32 5
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %164, align 4
  br label %167

167:                                              ; preds = %161, %156
  %168 = load i64, i64* %6, align 8
  %169 = load i64, i64* @RD_OF, align 8
  %170 = and i64 %168, %169
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %167
  %173 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %174 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %173, i32 0, i32 5
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %175, align 8
  br label %178

178:                                              ; preds = %172, %167
  br label %241

179:                                              ; preds = %78
  %180 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %181 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %180, i32 0, i32 3
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %181, align 8
  %183 = load i32, i32* %5, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 0
  %187 = load i8*, i8** %186, align 8
  %188 = call i32 @le32_to_cpu(i8* %187)
  %189 = ashr i32 %188, 16
  %190 = trunc i32 %189 to i16
  %191 = sext i16 %190 to i32
  %192 = sub nsw i32 %191, 4
  %193 = trunc i32 %192 to i16
  store i16 %193, i16* %8, align 2
  %194 = load %struct.net_device*, %struct.net_device** %2, align 8
  %195 = load i32, i32* %5, align 4
  %196 = load i16, i16* %8, align 2
  %197 = call %struct.sk_buff* @de4x5_alloc_rx_buff(%struct.net_device* %194, i32 %195, i16 signext %196)
  store %struct.sk_buff* %197, %struct.sk_buff** %7, align 8
  %198 = icmp eq %struct.sk_buff* %197, null
  br i1 %198, label %199, label %209

199:                                              ; preds = %179
  %200 = load %struct.net_device*, %struct.net_device** %2, align 8
  %201 = getelementptr inbounds %struct.net_device, %struct.net_device* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %202)
  %204 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %205 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %204, i32 0, i32 4
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %206, align 8
  br label %240

209:                                              ; preds = %179
  %210 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %211 = load i16, i16* %8, align 2
  %212 = call i32 @de4x5_dbg_rx(%struct.sk_buff* %210, i16 signext %211)
  %213 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %214 = load %struct.net_device*, %struct.net_device** %2, align 8
  %215 = call i32 @eth_type_trans(%struct.sk_buff* %213, %struct.net_device* %214)
  %216 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %217 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %216, i32 0, i32 1
  store i32 %215, i32* %217, align 4
  %218 = load %struct.net_device*, %struct.net_device** %2, align 8
  %219 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %220 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load i16, i16* %8, align 2
  %223 = call i32 @de4x5_local_stats(%struct.net_device* %218, i32 %221, i16 signext %222)
  %224 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %225 = call i32 @netif_rx(%struct.sk_buff* %224)
  %226 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %227 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %226, i32 0, i32 4
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %228, align 4
  %231 = load i16, i16* %8, align 2
  %232 = sext i16 %231 to i32
  %233 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %234 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %233, i32 0, i32 4
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 0
  %236 = load i16, i16* %235, align 8
  %237 = sext i16 %236 to i32
  %238 = add nsw i32 %237, %232
  %239 = trunc i32 %238 to i16
  store i16 %239, i16* %235, align 8
  br label %240

240:                                              ; preds = %209, %199
  br label %241

241:                                              ; preds = %240, %178
  br label %242

242:                                              ; preds = %261, %241
  %243 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %244 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* %5, align 4
  %247 = icmp ne i32 %245, %246
  br i1 %247, label %248, label %272

248:                                              ; preds = %242
  %249 = load i32, i32* @R_OWN, align 4
  %250 = call i8* @cpu_to_le32(i32 %249)
  %251 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %252 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %251, i32 0, i32 3
  %253 = load %struct.TYPE_6__*, %struct.TYPE_6__** %252, align 8
  %254 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %255 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i32 0, i32 0
  store i8* %250, i8** %259, align 8
  %260 = call i32 (...) @barrier()
  br label %261

261:                                              ; preds = %248
  %262 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %263 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = add nsw i32 %264, 1
  %266 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %267 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 8
  %269 = srem i32 %265, %268
  %270 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %271 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %270, i32 0, i32 1
  store i32 %269, i32* %271, align 4
  br label %242

272:                                              ; preds = %242
  %273 = load i32, i32* @R_OWN, align 4
  %274 = call i8* @cpu_to_le32(i32 %273)
  %275 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %276 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %275, i32 0, i32 3
  %277 = load %struct.TYPE_6__*, %struct.TYPE_6__** %276, align 8
  %278 = load i32, i32* %5, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %280, i32 0, i32 0
  store i8* %274, i8** %281, align 8
  %282 = call i32 (...) @barrier()
  br label %283

283:                                              ; preds = %272, %63
  %284 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %285 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = add nsw i32 %286, 1
  %288 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %289 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 8
  %291 = srem i32 %287, %290
  %292 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %293 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %292, i32 0, i32 0
  store i32 %291, i32* %293, align 8
  br label %294

294:                                              ; preds = %283
  %295 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %296 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  store i32 %297, i32* %5, align 4
  br label %17

298:                                              ; preds = %50, %17
  ret i32 0
}

declare dso_local %struct.de4x5_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @de4x5_rx_ovfc(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @de4x5_alloc_rx_buff(%struct.net_device*, i32, i16 signext) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @de4x5_dbg_rx(%struct.sk_buff*, i16 signext) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @de4x5_local_stats(%struct.net_device*, i32, i16 signext) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @barrier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
