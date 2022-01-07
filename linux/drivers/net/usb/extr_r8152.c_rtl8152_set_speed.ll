; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_rtl8152_set_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_rtl8152_set_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8152 = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i64 }
%struct.TYPE_3__ = type { i8* }

@AUTONEG_DISABLE = common dso_local global i64 0, align 8
@DUPLEX_HALF = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@BMCR_SPEED10 = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@FORCE_10M_FULL = common dso_local global i8* null, align 8
@FORCE_10M_HALF = common dso_local global i8* null, align 8
@BMCR_SPEED100 = common dso_local global i32 0, align 4
@FORCE_100M_FULL = common dso_local global i8* null, align 8
@FORCE_100M_HALF = common dso_local global i8* null, align 8
@BMCR_SPEED1000 = common dso_local global i32 0, align 4
@NWAY_1000M_FULL = common dso_local global i8* null, align 8
@RTL_ADVERTISED_10_HALF = common dso_local global i32 0, align 4
@RTL_ADVERTISED_10_FULL = common dso_local global i32 0, align 4
@RTL_ADVERTISED_100_HALF = common dso_local global i32 0, align 4
@RTL_ADVERTISED_100_FULL = common dso_local global i32 0, align 4
@RTL_ADVERTISED_1000_FULL = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@ADVERTISE_10HALF = common dso_local global i32 0, align 4
@ADVERTISE_10FULL = common dso_local global i32 0, align 4
@ADVERTISE_100HALF = common dso_local global i32 0, align 4
@ADVERTISE_100FULL = common dso_local global i32 0, align 4
@NWAY_10M_HALF = common dso_local global i8* null, align 8
@NWAY_10M_FULL = common dso_local global i8* null, align 8
@NWAY_100M_HALF = common dso_local global i8* null, align 8
@NWAY_100M_FULL = common dso_local global i8* null, align 8
@MII_CTRL1000 = common dso_local global i32 0, align 4
@ADVERTISE_1000FULL = common dso_local global i32 0, align 4
@ADVERTISE_1000HALF = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@BMCR_ANRESTART = common dso_local global i32 0, align 4
@PHY_RESET = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r8152*, i64, i32, i64, i32)* @rtl8152_set_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8152_set_speed(%struct.r8152* %0, i64 %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.r8152*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.r8152* %0, %struct.r8152** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @AUTONEG_DISABLE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %107

22:                                               ; preds = %5
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* @DUPLEX_HALF, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* @DUPLEX_FULL, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %295

33:                                               ; preds = %26, %22
  %34 = load i32, i32* %9, align 4
  switch i32 %34, label %88 [
    i32 130, label %35
    i32 129, label %54
    i32 128, label %73
  ]

35:                                               ; preds = %33
  %36 = load i32, i32* @BMCR_SPEED10, align 4
  store i32 %36, i32* %12, align 4
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* @DUPLEX_FULL, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load i32, i32* @BMCR_FULLDPLX, align 4
  %42 = load i32, i32* %12, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %12, align 4
  %44 = load i8*, i8** @FORCE_10M_FULL, align 8
  %45 = load %struct.r8152*, %struct.r8152** %7, align 8
  %46 = getelementptr inbounds %struct.r8152, %struct.r8152* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i8* %44, i8** %47, align 8
  br label %53

48:                                               ; preds = %35
  %49 = load i8*, i8** @FORCE_10M_HALF, align 8
  %50 = load %struct.r8152*, %struct.r8152** %7, align 8
  %51 = getelementptr inbounds %struct.r8152, %struct.r8152* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i8* %49, i8** %52, align 8
  br label %53

53:                                               ; preds = %48, %40
  br label %91

54:                                               ; preds = %33
  %55 = load i32, i32* @BMCR_SPEED100, align 4
  store i32 %55, i32* %12, align 4
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* @DUPLEX_FULL, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load i32, i32* @BMCR_FULLDPLX, align 4
  %61 = load i32, i32* %12, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %12, align 4
  %63 = load i8*, i8** @FORCE_100M_FULL, align 8
  %64 = load %struct.r8152*, %struct.r8152** %7, align 8
  %65 = getelementptr inbounds %struct.r8152, %struct.r8152* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  store i8* %63, i8** %66, align 8
  br label %72

67:                                               ; preds = %54
  %68 = load i8*, i8** @FORCE_100M_HALF, align 8
  %69 = load %struct.r8152*, %struct.r8152** %7, align 8
  %70 = getelementptr inbounds %struct.r8152, %struct.r8152* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  store i8* %68, i8** %71, align 8
  br label %72

72:                                               ; preds = %67, %59
  br label %91

73:                                               ; preds = %33
  %74 = load %struct.r8152*, %struct.r8152** %7, align 8
  %75 = getelementptr inbounds %struct.r8152, %struct.r8152* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %73
  %80 = load i32, i32* @BMCR_SPEED1000, align 4
  %81 = load i32, i32* @BMCR_FULLDPLX, align 4
  %82 = or i32 %80, %81
  store i32 %82, i32* %12, align 4
  %83 = load i8*, i8** @NWAY_1000M_FULL, align 8
  %84 = load %struct.r8152*, %struct.r8152** %7, align 8
  %85 = getelementptr inbounds %struct.r8152, %struct.r8152* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  store i8* %83, i8** %86, align 8
  br label %91

87:                                               ; preds = %73
  br label %88

88:                                               ; preds = %33, %87
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %13, align 4
  br label %293

91:                                               ; preds = %79, %72, %53
  %92 = load i64, i64* %10, align 8
  %93 = load i64, i64* @DUPLEX_FULL, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load %struct.r8152*, %struct.r8152** %7, align 8
  %97 = getelementptr inbounds %struct.r8152, %struct.r8152* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  store i32 1, i32* %98, align 8
  br label %103

99:                                               ; preds = %91
  %100 = load %struct.r8152*, %struct.r8152** %7, align 8
  %101 = getelementptr inbounds %struct.r8152, %struct.r8152* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  store i32 0, i32* %102, align 8
  br label %103

103:                                              ; preds = %99, %95
  %104 = load %struct.r8152*, %struct.r8152** %7, align 8
  %105 = getelementptr inbounds %struct.r8152, %struct.r8152* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  store i32 1, i32* %106, align 4
  br label %255

107:                                              ; preds = %5
  %108 = load i32, i32* @RTL_ADVERTISED_10_HALF, align 4
  %109 = load i32, i32* @RTL_ADVERTISED_10_FULL, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @RTL_ADVERTISED_100_HALF, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @RTL_ADVERTISED_100_FULL, align 4
  %114 = or i32 %112, %113
  store i32 %114, i32* %16, align 4
  %115 = load %struct.r8152*, %struct.r8152** %7, align 8
  %116 = getelementptr inbounds %struct.r8152, %struct.r8152* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %107
  %121 = load i32, i32* @RTL_ADVERTISED_1000_FULL, align 4
  %122 = load i32, i32* %16, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %16, align 4
  br label %124

124:                                              ; preds = %120, %107
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* %16, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %124
  %130 = load i32, i32* @EINVAL, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %6, align 4
  br label %295

132:                                              ; preds = %124
  %133 = load %struct.r8152*, %struct.r8152** %7, align 8
  %134 = load i32, i32* @MII_ADVERTISE, align 4
  %135 = call i32 @r8152_mdio_read(%struct.r8152* %133, i32 %134)
  store i32 %135, i32* %14, align 4
  %136 = load i32, i32* %14, align 4
  %137 = load i32, i32* @ADVERTISE_10HALF, align 4
  %138 = load i32, i32* @ADVERTISE_10FULL, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @ADVERTISE_100HALF, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @ADVERTISE_100FULL, align 4
  %143 = or i32 %141, %142
  %144 = xor i32 %143, -1
  %145 = and i32 %136, %144
  store i32 %145, i32* %15, align 4
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* @RTL_ADVERTISED_10_HALF, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %158

150:                                              ; preds = %132
  %151 = load i32, i32* @ADVERTISE_10HALF, align 4
  %152 = load i32, i32* %15, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %15, align 4
  %154 = load i8*, i8** @NWAY_10M_HALF, align 8
  %155 = load %struct.r8152*, %struct.r8152** %7, align 8
  %156 = getelementptr inbounds %struct.r8152, %struct.r8152* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  store i8* %154, i8** %157, align 8
  br label %158

158:                                              ; preds = %150, %132
  %159 = load i32, i32* %11, align 4
  %160 = load i32, i32* @RTL_ADVERTISED_10_FULL, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %171

163:                                              ; preds = %158
  %164 = load i32, i32* @ADVERTISE_10FULL, align 4
  %165 = load i32, i32* %15, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %15, align 4
  %167 = load i8*, i8** @NWAY_10M_FULL, align 8
  %168 = load %struct.r8152*, %struct.r8152** %7, align 8
  %169 = getelementptr inbounds %struct.r8152, %struct.r8152* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 0
  store i8* %167, i8** %170, align 8
  br label %171

171:                                              ; preds = %163, %158
  %172 = load i32, i32* %11, align 4
  %173 = load i32, i32* @RTL_ADVERTISED_100_HALF, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %184

176:                                              ; preds = %171
  %177 = load i32, i32* @ADVERTISE_100HALF, align 4
  %178 = load i32, i32* %15, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %15, align 4
  %180 = load i8*, i8** @NWAY_100M_HALF, align 8
  %181 = load %struct.r8152*, %struct.r8152** %7, align 8
  %182 = getelementptr inbounds %struct.r8152, %struct.r8152* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 0
  store i8* %180, i8** %183, align 8
  br label %184

184:                                              ; preds = %176, %171
  %185 = load i32, i32* %11, align 4
  %186 = load i32, i32* @RTL_ADVERTISED_100_FULL, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %197

189:                                              ; preds = %184
  %190 = load i32, i32* @ADVERTISE_100FULL, align 4
  %191 = load i32, i32* %15, align 4
  %192 = or i32 %191, %190
  store i32 %192, i32* %15, align 4
  %193 = load i8*, i8** @NWAY_100M_FULL, align 8
  %194 = load %struct.r8152*, %struct.r8152** %7, align 8
  %195 = getelementptr inbounds %struct.r8152, %struct.r8152* %194, i32 0, i32 2
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 0
  store i8* %193, i8** %196, align 8
  br label %197

197:                                              ; preds = %189, %184
  %198 = load i32, i32* %14, align 4
  %199 = load i32, i32* %15, align 4
  %200 = icmp ne i32 %198, %199
  br i1 %200, label %201, label %210

201:                                              ; preds = %197
  %202 = load %struct.r8152*, %struct.r8152** %7, align 8
  %203 = load i32, i32* @MII_ADVERTISE, align 4
  %204 = load i32, i32* %15, align 4
  %205 = call i32 @r8152_mdio_write(%struct.r8152* %202, i32 %203, i32 %204)
  %206 = load i32, i32* %15, align 4
  %207 = load %struct.r8152*, %struct.r8152** %7, align 8
  %208 = getelementptr inbounds %struct.r8152, %struct.r8152* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 2
  store i32 %206, i32* %209, align 8
  br label %210

210:                                              ; preds = %201, %197
  %211 = load %struct.r8152*, %struct.r8152** %7, align 8
  %212 = getelementptr inbounds %struct.r8152, %struct.r8152* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 3
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %248

216:                                              ; preds = %210
  %217 = load %struct.r8152*, %struct.r8152** %7, align 8
  %218 = load i32, i32* @MII_CTRL1000, align 4
  %219 = call i32 @r8152_mdio_read(%struct.r8152* %217, i32 %218)
  store i32 %219, i32* %17, align 4
  %220 = load i32, i32* %17, align 4
  %221 = load i32, i32* @ADVERTISE_1000FULL, align 4
  %222 = load i32, i32* @ADVERTISE_1000HALF, align 4
  %223 = or i32 %221, %222
  %224 = xor i32 %223, -1
  %225 = and i32 %220, %224
  store i32 %225, i32* %15, align 4
  %226 = load i32, i32* %11, align 4
  %227 = load i32, i32* @RTL_ADVERTISED_1000_FULL, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %238

230:                                              ; preds = %216
  %231 = load i32, i32* @ADVERTISE_1000FULL, align 4
  %232 = load i32, i32* %15, align 4
  %233 = or i32 %232, %231
  store i32 %233, i32* %15, align 4
  %234 = load i8*, i8** @NWAY_1000M_FULL, align 8
  %235 = load %struct.r8152*, %struct.r8152** %7, align 8
  %236 = getelementptr inbounds %struct.r8152, %struct.r8152* %235, i32 0, i32 2
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %236, i32 0, i32 0
  store i8* %234, i8** %237, align 8
  br label %238

238:                                              ; preds = %230, %216
  %239 = load i32, i32* %17, align 4
  %240 = load i32, i32* %15, align 4
  %241 = icmp ne i32 %239, %240
  br i1 %241, label %242, label %247

242:                                              ; preds = %238
  %243 = load %struct.r8152*, %struct.r8152** %7, align 8
  %244 = load i32, i32* @MII_CTRL1000, align 4
  %245 = load i32, i32* %15, align 4
  %246 = call i32 @r8152_mdio_write(%struct.r8152* %243, i32 %244, i32 %245)
  br label %247

247:                                              ; preds = %242, %238
  br label %248

248:                                              ; preds = %247, %210
  %249 = load i32, i32* @BMCR_ANENABLE, align 4
  %250 = load i32, i32* @BMCR_ANRESTART, align 4
  %251 = or i32 %249, %250
  store i32 %251, i32* %12, align 4
  %252 = load %struct.r8152*, %struct.r8152** %7, align 8
  %253 = getelementptr inbounds %struct.r8152, %struct.r8152* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i32 0, i32 1
  store i32 0, i32* %254, align 4
  br label %255

255:                                              ; preds = %248, %103
  %256 = load i32, i32* @PHY_RESET, align 4
  %257 = load %struct.r8152*, %struct.r8152** %7, align 8
  %258 = getelementptr inbounds %struct.r8152, %struct.r8152* %257, i32 0, i32 0
  %259 = call i64 @test_and_clear_bit(i32 %256, i32* %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %265

261:                                              ; preds = %255
  %262 = load i32, i32* @BMCR_RESET, align 4
  %263 = load i32, i32* %12, align 4
  %264 = or i32 %263, %262
  store i32 %264, i32* %12, align 4
  br label %265

265:                                              ; preds = %261, %255
  %266 = load %struct.r8152*, %struct.r8152** %7, align 8
  %267 = load i32, i32* @MII_BMCR, align 4
  %268 = load i32, i32* %12, align 4
  %269 = call i32 @r8152_mdio_write(%struct.r8152* %266, i32 %267, i32 %268)
  %270 = load i32, i32* %12, align 4
  %271 = load i32, i32* @BMCR_RESET, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %292

274:                                              ; preds = %265
  store i32 0, i32* %18, align 4
  br label %275

275:                                              ; preds = %288, %274
  %276 = load i32, i32* %18, align 4
  %277 = icmp slt i32 %276, 50
  br i1 %277, label %278, label %291

278:                                              ; preds = %275
  %279 = call i32 @msleep(i32 20)
  %280 = load %struct.r8152*, %struct.r8152** %7, align 8
  %281 = load i32, i32* @MII_BMCR, align 4
  %282 = call i32 @r8152_mdio_read(%struct.r8152* %280, i32 %281)
  %283 = load i32, i32* @BMCR_RESET, align 4
  %284 = and i32 %282, %283
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %278
  br label %291

287:                                              ; preds = %278
  br label %288

288:                                              ; preds = %287
  %289 = load i32, i32* %18, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %18, align 4
  br label %275

291:                                              ; preds = %286, %275
  br label %292

292:                                              ; preds = %291, %265
  br label %293

293:                                              ; preds = %292, %88
  %294 = load i32, i32* %13, align 4
  store i32 %294, i32* %6, align 4
  br label %295

295:                                              ; preds = %293, %129, %30
  %296 = load i32, i32* %6, align 4
  ret i32 %296
}

declare dso_local i32 @r8152_mdio_read(%struct.r8152*, i32) #1

declare dso_local i32 @r8152_mdio_write(%struct.r8152*, i32, i32) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
