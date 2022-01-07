; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_media.c_tulip_find_mii.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_media.c_tulip_find_mii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.tulip_private = type { i32*, i32, i32*, i64, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }

@MII_BMSR = common dso_local global i32 0, align 4
@BMSR_100BASE4 = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@ADVERTISE_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"tulip%d:  MII transceiver #%d config %04x status %04x advertising %04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"tulip%d:  Advertising %04x on PHY %d, previously advertising %04x\0A\00", align 1
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@BMCR_ANRESTART = common dso_local global i32 0, align 4
@BMCR_CTST = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@BMCR_ISOLATE = common dso_local global i32 0, align 4
@BMCR_PDOWN = common dso_local global i32 0, align 4
@BMCR_SPEED100 = common dso_local global i32 0, align 4
@BMCR_LOOPBACK = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@tulip_media_cap = common dso_local global i32* null, align 8
@MediaIs100 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"tulip%d: ***WARNING***: No MII transceiver found!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tulip_find_mii(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tulip_private*, align 8
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
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = call %struct.tulip_private* @netdev_priv(%struct.net_device* %16)
  store %struct.tulip_private* %17, %struct.tulip_private** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %6, align 4
  br label %18

18:                                               ; preds = %235, %2
  %19 = load i32, i32* %6, align 4
  %20 = icmp sle i32 %19, 32
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.tulip_private*, %struct.tulip_private** %5, align 8
  %24 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @ARRAY_SIZE(i32* %25)
  %27 = icmp slt i32 %22, %26
  br label %28

28:                                               ; preds = %21, %18
  %29 = phi i1 [ false, %18 ], [ %27, %21 ]
  br i1 %29, label %30, label %238

30:                                               ; preds = %28
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, 31
  store i32 %32, i32* %13, align 4
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* @MII_BMSR, align 4
  %36 = call i8* @tulip_mdio_read(%struct.net_device* %33, i32 %34, i32 %35)
  %37 = ptrtoint i8* %36 to i32
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = and i32 %38, 33537
  %40 = icmp eq i32 %39, 32769
  br i1 %40, label %50, label %41

41:                                               ; preds = %30
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* @BMSR_100BASE4, align 4
  %44 = and i32 %42, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load i32, i32* %14, align 4
  %48 = and i32 %47, 30720
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46, %30
  br label %52

51:                                               ; preds = %46, %41
  br label %235

52:                                               ; preds = %50
  %53 = load %struct.net_device*, %struct.net_device** %3, align 8
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @MII_BMCR, align 4
  %56 = call i8* @tulip_mdio_read(%struct.net_device* %53, i32 %54, i32 %55)
  %57 = ptrtoint i8* %56 to i32
  store i32 %57, i32* %8, align 4
  %58 = load %struct.net_device*, %struct.net_device** %3, align 8
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* @MII_ADVERTISE, align 4
  %61 = call i8* @tulip_mdio_read(%struct.net_device* %58, i32 %59, i32 %60)
  %62 = ptrtoint i8* %61 to i32
  store i32 %62, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @ADVERTISE_ALL, align 4
  %65 = and i32 %63, %64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %52
  %68 = load %struct.net_device*, %struct.net_device** %3, align 8
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* @MII_BMSR, align 4
  %71 = call i8* @tulip_mdio_read(%struct.net_device* %68, i32 %69, i32 %70)
  %72 = ptrtoint i8* %71 to i32
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %15, align 4
  %74 = lshr i32 %73, 6
  %75 = and i32 %74, 992
  %76 = or i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %67, %52
  %78 = load %struct.tulip_private*, %struct.tulip_private** %5, align 8
  %79 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %77
  %83 = load %struct.tulip_private*, %struct.tulip_private** %5, align 8
  %84 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %10, align 4
  %86 = load %struct.tulip_private*, %struct.tulip_private** %5, align 8
  %87 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 %85, i32* %91, align 4
  br label %120

92:                                               ; preds = %77
  %93 = load %struct.tulip_private*, %struct.tulip_private** %5, align 8
  %94 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %92
  %102 = load %struct.tulip_private*, %struct.tulip_private** %5, align 8
  %103 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %10, align 4
  br label %119

109:                                              ; preds = %92
  %110 = load i32, i32* %9, align 4
  store i32 %110, i32* %10, align 4
  %111 = load %struct.tulip_private*, %struct.tulip_private** %5, align 8
  %112 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 8
  %113 = load %struct.tulip_private*, %struct.tulip_private** %5, align 8
  %114 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 %110, i32* %118, align 4
  br label %119

119:                                              ; preds = %109, %101
  br label %120

120:                                              ; preds = %119, %82
  %121 = load i32, i32* %13, align 4
  %122 = load %struct.tulip_private*, %struct.tulip_private** %5, align 8
  %123 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %7, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %7, align 4
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds i32, i32* %124, i64 %127
  store i32 %121, i32* %128, align 4
  %129 = load i32, i32* %4, align 4
  %130 = load i32, i32* %13, align 4
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* %14, align 4
  %133 = load i32, i32* %9, align 4
  %134 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %129, i32 %130, i32 %131, i32 %132, i32 %133)
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* %10, align 4
  %137 = icmp ne i32 %135, %136
  br i1 %137, label %138, label %148

138:                                              ; preds = %120
  %139 = load i32, i32* %4, align 4
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* %13, align 4
  %142 = load i32, i32* %9, align 4
  %143 = call i32 @pr_debug(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %139, i32 %140, i32 %141, i32 %142)
  %144 = load %struct.net_device*, %struct.net_device** %3, align 8
  %145 = load i32, i32* %13, align 4
  %146 = load i32, i32* %10, align 4
  %147 = call i32 @tulip_mdio_write(%struct.net_device* %144, i32 %145, i32 4, i32 %146)
  br label %148

148:                                              ; preds = %138, %120
  %149 = load %struct.tulip_private*, %struct.tulip_private** %5, align 8
  %150 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %165

153:                                              ; preds = %148
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* @BMCR_ANENABLE, align 4
  %156 = or i32 %154, %155
  store i32 %156, i32* %11, align 4
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* %8, align 4
  %159 = icmp ne i32 %157, %158
  br i1 %159, label %160, label %164

160:                                              ; preds = %153
  %161 = load i32, i32* @BMCR_ANRESTART, align 4
  %162 = load i32, i32* %11, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %164

164:                                              ; preds = %160, %153
  br label %175

165:                                              ; preds = %148
  %166 = load i32, i32* %8, align 4
  %167 = load i32, i32* @BMCR_ANENABLE, align 4
  %168 = xor i32 %167, -1
  %169 = and i32 %166, %168
  store i32 %169, i32* %11, align 4
  %170 = load i32, i32* %11, align 4
  %171 = load i32, i32* %8, align 4
  %172 = icmp ne i32 %170, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %165
  store i32 1, i32* %12, align 4
  br label %174

174:                                              ; preds = %173, %165
  br label %175

175:                                              ; preds = %174, %164
  %176 = load i32, i32* @BMCR_CTST, align 4
  %177 = load i32, i32* @BMCR_FULLDPLX, align 4
  %178 = or i32 %176, %177
  %179 = load i32, i32* @BMCR_ISOLATE, align 4
  %180 = or i32 %178, %179
  %181 = load i32, i32* @BMCR_PDOWN, align 4
  %182 = or i32 %180, %181
  %183 = load i32, i32* @BMCR_SPEED100, align 4
  %184 = or i32 %182, %183
  %185 = load i32, i32* @BMCR_LOOPBACK, align 4
  %186 = or i32 %184, %185
  %187 = load i32, i32* @BMCR_RESET, align 4
  %188 = or i32 %186, %187
  %189 = xor i32 %188, -1
  %190 = load i32, i32* %11, align 4
  %191 = and i32 %190, %189
  store i32 %191, i32* %11, align 4
  %192 = load %struct.tulip_private*, %struct.tulip_private** %5, align 8
  %193 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %192, i32 0, i32 6
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %175
  %197 = load i32, i32* @BMCR_FULLDPLX, align 4
  %198 = load i32, i32* %11, align 4
  %199 = or i32 %198, %197
  store i32 %199, i32* %11, align 4
  br label %200

200:                                              ; preds = %196, %175
  %201 = load i32*, i32** @tulip_media_cap, align 8
  %202 = load %struct.tulip_private*, %struct.tulip_private** %5, align 8
  %203 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %202, i32 0, i32 3
  %204 = load i64, i64* %203, align 8
  %205 = getelementptr inbounds i32, i32* %201, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @MediaIs100, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %200
  %211 = load i32, i32* @BMCR_SPEED100, align 4
  %212 = load i32, i32* %11, align 4
  %213 = or i32 %212, %211
  store i32 %213, i32* %11, align 4
  br label %214

214:                                              ; preds = %210, %200
  %215 = load i32, i32* %11, align 4
  %216 = load i32, i32* %8, align 4
  %217 = icmp ne i32 %215, %216
  br i1 %217, label %218, label %234

218:                                              ; preds = %214
  %219 = load i32, i32* %12, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %228

221:                                              ; preds = %218
  %222 = load %struct.net_device*, %struct.net_device** %3, align 8
  %223 = load i32, i32* %13, align 4
  %224 = load i32, i32* @MII_BMCR, align 4
  %225 = load i32, i32* %11, align 4
  %226 = call i32 @tulip_mdio_write(%struct.net_device* %222, i32 %223, i32 %224, i32 %225)
  %227 = call i32 @udelay(i32 10)
  br label %228

228:                                              ; preds = %221, %218
  %229 = load %struct.net_device*, %struct.net_device** %3, align 8
  %230 = load i32, i32* %13, align 4
  %231 = load i32, i32* @MII_BMCR, align 4
  %232 = load i32, i32* %11, align 4
  %233 = call i32 @tulip_mdio_write(%struct.net_device* %229, i32 %230, i32 %231, i32 %232)
  br label %234

234:                                              ; preds = %228, %214
  br label %235

235:                                              ; preds = %234, %51
  %236 = load i32, i32* %6, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %6, align 4
  br label %18

238:                                              ; preds = %28
  %239 = load i32, i32* %7, align 4
  %240 = load %struct.tulip_private*, %struct.tulip_private** %5, align 8
  %241 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %240, i32 0, i32 4
  store i32 %239, i32* %241, align 8
  %242 = load %struct.tulip_private*, %struct.tulip_private** %5, align 8
  %243 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %242, i32 0, i32 5
  %244 = load %struct.TYPE_2__*, %struct.TYPE_2__** %243, align 8
  %245 = icmp ne %struct.TYPE_2__* %244, null
  br i1 %245, label %246, label %263

246:                                              ; preds = %238
  %247 = load %struct.tulip_private*, %struct.tulip_private** %5, align 8
  %248 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %247, i32 0, i32 5
  %249 = load %struct.TYPE_2__*, %struct.TYPE_2__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %263

253:                                              ; preds = %246
  %254 = load i32, i32* %7, align 4
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %263

256:                                              ; preds = %253
  %257 = load i32, i32* %4, align 4
  %258 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %257)
  %259 = load %struct.tulip_private*, %struct.tulip_private** %5, align 8
  %260 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %259, i32 0, i32 0
  %261 = load i32*, i32** %260, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 0
  store i32 1, i32* %262, align 4
  br label %263

263:                                              ; preds = %256, %253, %246, %238
  ret void
}

declare dso_local %struct.tulip_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i8* @tulip_mdio_read(%struct.net_device*, i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32, ...) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @tulip_mdio_write(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
