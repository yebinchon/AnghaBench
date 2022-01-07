; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_set_hwtstamp_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_set_hwtstamp_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.xgbe_prv_data.0*, i32)* }
%struct.xgbe_prv_data.0 = type opaque
%struct.ifreq = type { i32 }
%struct.hwtstamp_config = type { i32, i32, i64 }

@EFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAC_TSCR = common dso_local global i32 0, align 4
@TSENA = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@TSENALL = common dso_local global i32 0, align 4
@TSVER2ENA = common dso_local global i32 0, align 4
@TSIPV4ENA = common dso_local global i32 0, align 4
@TSIPV6ENA = common dso_local global i32 0, align 4
@SNAPTYPSEL = common dso_local global i32 0, align 4
@TSEVNTENA = common dso_local global i32 0, align 4
@TSMSTRENA = common dso_local global i32 0, align 4
@AV8021ASMEN = common dso_local global i32 0, align 4
@TSIPENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*, %struct.ifreq*)* @xgbe_set_hwtstamp_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_set_hwtstamp_settings(%struct.xgbe_prv_data* %0, %struct.ifreq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xgbe_prv_data*, align 8
  %5 = alloca %struct.ifreq*, align 8
  %6 = alloca %struct.hwtstamp_config, align 8
  %7 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %4, align 8
  store %struct.ifreq* %1, %struct.ifreq** %5, align 8
  %8 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %9 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @copy_from_user(%struct.hwtstamp_config* %6, i32 %10, i32 16)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EFAULT, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %255

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %6, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %255

23:                                               ; preds = %16
  store i32 0, i32* %7, align 4
  %24 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %6, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %32 [
    i32 129, label %26
    i32 128, label %27
  ]

26:                                               ; preds = %23
  br label %35

27:                                               ; preds = %23
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @MAC_TSCR, align 4
  %30 = load i32, i32* @TSENA, align 4
  %31 = call i32 @XGMAC_SET_BITS(i32 %28, i32 %29, i32 %30, i32 1)
  br label %35

32:                                               ; preds = %23
  %33 = load i32, i32* @ERANGE, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %255

35:                                               ; preds = %27, %26
  %36 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %6, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %240 [
    i32 143, label %38
    i32 142, label %39
    i32 144, label %39
    i32 132, label %48
    i32 140, label %53
    i32 131, label %70
    i32 139, label %75
    i32 133, label %92
    i32 141, label %97
    i32 135, label %118
    i32 134, label %131
    i32 136, label %144
    i32 137, label %161
    i32 130, label %186
    i32 138, label %211
  ]

38:                                               ; preds = %35
  br label %243

39:                                               ; preds = %35, %35
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @MAC_TSCR, align 4
  %42 = load i32, i32* @TSENALL, align 4
  %43 = call i32 @XGMAC_SET_BITS(i32 %40, i32 %41, i32 %42, i32 1)
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @MAC_TSCR, align 4
  %46 = load i32, i32* @TSENA, align 4
  %47 = call i32 @XGMAC_SET_BITS(i32 %44, i32 %45, i32 %46, i32 1)
  br label %243

48:                                               ; preds = %35
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @MAC_TSCR, align 4
  %51 = load i32, i32* @TSVER2ENA, align 4
  %52 = call i32 @XGMAC_SET_BITS(i32 %49, i32 %50, i32 %51, i32 1)
  br label %53

53:                                               ; preds = %35, %48
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @MAC_TSCR, align 4
  %56 = load i32, i32* @TSIPV4ENA, align 4
  %57 = call i32 @XGMAC_SET_BITS(i32 %54, i32 %55, i32 %56, i32 1)
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @MAC_TSCR, align 4
  %60 = load i32, i32* @TSIPV6ENA, align 4
  %61 = call i32 @XGMAC_SET_BITS(i32 %58, i32 %59, i32 %60, i32 1)
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @MAC_TSCR, align 4
  %64 = load i32, i32* @SNAPTYPSEL, align 4
  %65 = call i32 @XGMAC_SET_BITS(i32 %62, i32 %63, i32 %64, i32 1)
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @MAC_TSCR, align 4
  %68 = load i32, i32* @TSENA, align 4
  %69 = call i32 @XGMAC_SET_BITS(i32 %66, i32 %67, i32 %68, i32 1)
  br label %243

70:                                               ; preds = %35
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @MAC_TSCR, align 4
  %73 = load i32, i32* @TSVER2ENA, align 4
  %74 = call i32 @XGMAC_SET_BITS(i32 %71, i32 %72, i32 %73, i32 1)
  br label %75

75:                                               ; preds = %35, %70
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @MAC_TSCR, align 4
  %78 = load i32, i32* @TSIPV4ENA, align 4
  %79 = call i32 @XGMAC_SET_BITS(i32 %76, i32 %77, i32 %78, i32 1)
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @MAC_TSCR, align 4
  %82 = load i32, i32* @TSIPV6ENA, align 4
  %83 = call i32 @XGMAC_SET_BITS(i32 %80, i32 %81, i32 %82, i32 1)
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @MAC_TSCR, align 4
  %86 = load i32, i32* @TSEVNTENA, align 4
  %87 = call i32 @XGMAC_SET_BITS(i32 %84, i32 %85, i32 %86, i32 1)
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @MAC_TSCR, align 4
  %90 = load i32, i32* @TSENA, align 4
  %91 = call i32 @XGMAC_SET_BITS(i32 %88, i32 %89, i32 %90, i32 1)
  br label %243

92:                                               ; preds = %35
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @MAC_TSCR, align 4
  %95 = load i32, i32* @TSVER2ENA, align 4
  %96 = call i32 @XGMAC_SET_BITS(i32 %93, i32 %94, i32 %95, i32 1)
  br label %97

97:                                               ; preds = %35, %92
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @MAC_TSCR, align 4
  %100 = load i32, i32* @TSIPV4ENA, align 4
  %101 = call i32 @XGMAC_SET_BITS(i32 %98, i32 %99, i32 %100, i32 1)
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @MAC_TSCR, align 4
  %104 = load i32, i32* @TSIPV6ENA, align 4
  %105 = call i32 @XGMAC_SET_BITS(i32 %102, i32 %103, i32 %104, i32 1)
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @MAC_TSCR, align 4
  %108 = load i32, i32* @TSEVNTENA, align 4
  %109 = call i32 @XGMAC_SET_BITS(i32 %106, i32 %107, i32 %108, i32 1)
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* @MAC_TSCR, align 4
  %112 = load i32, i32* @TSMSTRENA, align 4
  %113 = call i32 @XGMAC_SET_BITS(i32 %110, i32 %111, i32 %112, i32 1)
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* @MAC_TSCR, align 4
  %116 = load i32, i32* @TSENA, align 4
  %117 = call i32 @XGMAC_SET_BITS(i32 %114, i32 %115, i32 %116, i32 1)
  br label %243

118:                                              ; preds = %35
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* @MAC_TSCR, align 4
  %121 = load i32, i32* @AV8021ASMEN, align 4
  %122 = call i32 @XGMAC_SET_BITS(i32 %119, i32 %120, i32 %121, i32 1)
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* @MAC_TSCR, align 4
  %125 = load i32, i32* @SNAPTYPSEL, align 4
  %126 = call i32 @XGMAC_SET_BITS(i32 %123, i32 %124, i32 %125, i32 1)
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* @MAC_TSCR, align 4
  %129 = load i32, i32* @TSENA, align 4
  %130 = call i32 @XGMAC_SET_BITS(i32 %127, i32 %128, i32 %129, i32 1)
  br label %243

131:                                              ; preds = %35
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* @MAC_TSCR, align 4
  %134 = load i32, i32* @AV8021ASMEN, align 4
  %135 = call i32 @XGMAC_SET_BITS(i32 %132, i32 %133, i32 %134, i32 1)
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* @MAC_TSCR, align 4
  %138 = load i32, i32* @TSEVNTENA, align 4
  %139 = call i32 @XGMAC_SET_BITS(i32 %136, i32 %137, i32 %138, i32 1)
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* @MAC_TSCR, align 4
  %142 = load i32, i32* @TSENA, align 4
  %143 = call i32 @XGMAC_SET_BITS(i32 %140, i32 %141, i32 %142, i32 1)
  br label %243

144:                                              ; preds = %35
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* @MAC_TSCR, align 4
  %147 = load i32, i32* @AV8021ASMEN, align 4
  %148 = call i32 @XGMAC_SET_BITS(i32 %145, i32 %146, i32 %147, i32 1)
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* @MAC_TSCR, align 4
  %151 = load i32, i32* @TSMSTRENA, align 4
  %152 = call i32 @XGMAC_SET_BITS(i32 %149, i32 %150, i32 %151, i32 1)
  %153 = load i32, i32* %7, align 4
  %154 = load i32, i32* @MAC_TSCR, align 4
  %155 = load i32, i32* @TSEVNTENA, align 4
  %156 = call i32 @XGMAC_SET_BITS(i32 %153, i32 %154, i32 %155, i32 1)
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* @MAC_TSCR, align 4
  %159 = load i32, i32* @TSENA, align 4
  %160 = call i32 @XGMAC_SET_BITS(i32 %157, i32 %158, i32 %159, i32 1)
  br label %243

161:                                              ; preds = %35
  %162 = load i32, i32* %7, align 4
  %163 = load i32, i32* @MAC_TSCR, align 4
  %164 = load i32, i32* @TSVER2ENA, align 4
  %165 = call i32 @XGMAC_SET_BITS(i32 %162, i32 %163, i32 %164, i32 1)
  %166 = load i32, i32* %7, align 4
  %167 = load i32, i32* @MAC_TSCR, align 4
  %168 = load i32, i32* @TSIPENA, align 4
  %169 = call i32 @XGMAC_SET_BITS(i32 %166, i32 %167, i32 %168, i32 1)
  %170 = load i32, i32* %7, align 4
  %171 = load i32, i32* @MAC_TSCR, align 4
  %172 = load i32, i32* @TSIPV4ENA, align 4
  %173 = call i32 @XGMAC_SET_BITS(i32 %170, i32 %171, i32 %172, i32 1)
  %174 = load i32, i32* %7, align 4
  %175 = load i32, i32* @MAC_TSCR, align 4
  %176 = load i32, i32* @TSIPV6ENA, align 4
  %177 = call i32 @XGMAC_SET_BITS(i32 %174, i32 %175, i32 %176, i32 1)
  %178 = load i32, i32* %7, align 4
  %179 = load i32, i32* @MAC_TSCR, align 4
  %180 = load i32, i32* @SNAPTYPSEL, align 4
  %181 = call i32 @XGMAC_SET_BITS(i32 %178, i32 %179, i32 %180, i32 1)
  %182 = load i32, i32* %7, align 4
  %183 = load i32, i32* @MAC_TSCR, align 4
  %184 = load i32, i32* @TSENA, align 4
  %185 = call i32 @XGMAC_SET_BITS(i32 %182, i32 %183, i32 %184, i32 1)
  br label %243

186:                                              ; preds = %35
  %187 = load i32, i32* %7, align 4
  %188 = load i32, i32* @MAC_TSCR, align 4
  %189 = load i32, i32* @TSVER2ENA, align 4
  %190 = call i32 @XGMAC_SET_BITS(i32 %187, i32 %188, i32 %189, i32 1)
  %191 = load i32, i32* %7, align 4
  %192 = load i32, i32* @MAC_TSCR, align 4
  %193 = load i32, i32* @TSIPENA, align 4
  %194 = call i32 @XGMAC_SET_BITS(i32 %191, i32 %192, i32 %193, i32 1)
  %195 = load i32, i32* %7, align 4
  %196 = load i32, i32* @MAC_TSCR, align 4
  %197 = load i32, i32* @TSIPV4ENA, align 4
  %198 = call i32 @XGMAC_SET_BITS(i32 %195, i32 %196, i32 %197, i32 1)
  %199 = load i32, i32* %7, align 4
  %200 = load i32, i32* @MAC_TSCR, align 4
  %201 = load i32, i32* @TSIPV6ENA, align 4
  %202 = call i32 @XGMAC_SET_BITS(i32 %199, i32 %200, i32 %201, i32 1)
  %203 = load i32, i32* %7, align 4
  %204 = load i32, i32* @MAC_TSCR, align 4
  %205 = load i32, i32* @TSEVNTENA, align 4
  %206 = call i32 @XGMAC_SET_BITS(i32 %203, i32 %204, i32 %205, i32 1)
  %207 = load i32, i32* %7, align 4
  %208 = load i32, i32* @MAC_TSCR, align 4
  %209 = load i32, i32* @TSENA, align 4
  %210 = call i32 @XGMAC_SET_BITS(i32 %207, i32 %208, i32 %209, i32 1)
  br label %243

211:                                              ; preds = %35
  %212 = load i32, i32* %7, align 4
  %213 = load i32, i32* @MAC_TSCR, align 4
  %214 = load i32, i32* @TSVER2ENA, align 4
  %215 = call i32 @XGMAC_SET_BITS(i32 %212, i32 %213, i32 %214, i32 1)
  %216 = load i32, i32* %7, align 4
  %217 = load i32, i32* @MAC_TSCR, align 4
  %218 = load i32, i32* @TSIPENA, align 4
  %219 = call i32 @XGMAC_SET_BITS(i32 %216, i32 %217, i32 %218, i32 1)
  %220 = load i32, i32* %7, align 4
  %221 = load i32, i32* @MAC_TSCR, align 4
  %222 = load i32, i32* @TSIPV4ENA, align 4
  %223 = call i32 @XGMAC_SET_BITS(i32 %220, i32 %221, i32 %222, i32 1)
  %224 = load i32, i32* %7, align 4
  %225 = load i32, i32* @MAC_TSCR, align 4
  %226 = load i32, i32* @TSIPV6ENA, align 4
  %227 = call i32 @XGMAC_SET_BITS(i32 %224, i32 %225, i32 %226, i32 1)
  %228 = load i32, i32* %7, align 4
  %229 = load i32, i32* @MAC_TSCR, align 4
  %230 = load i32, i32* @TSMSTRENA, align 4
  %231 = call i32 @XGMAC_SET_BITS(i32 %228, i32 %229, i32 %230, i32 1)
  %232 = load i32, i32* %7, align 4
  %233 = load i32, i32* @MAC_TSCR, align 4
  %234 = load i32, i32* @TSEVNTENA, align 4
  %235 = call i32 @XGMAC_SET_BITS(i32 %232, i32 %233, i32 %234, i32 1)
  %236 = load i32, i32* %7, align 4
  %237 = load i32, i32* @MAC_TSCR, align 4
  %238 = load i32, i32* @TSENA, align 4
  %239 = call i32 @XGMAC_SET_BITS(i32 %236, i32 %237, i32 %238, i32 1)
  br label %243

240:                                              ; preds = %35
  %241 = load i32, i32* @ERANGE, align 4
  %242 = sub nsw i32 0, %241
  store i32 %242, i32* %3, align 4
  br label %255

243:                                              ; preds = %211, %186, %161, %144, %131, %118, %97, %75, %53, %39, %38
  %244 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %245 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i32 0, i32 0
  %247 = load i32 (%struct.xgbe_prv_data.0*, i32)*, i32 (%struct.xgbe_prv_data.0*, i32)** %246, align 8
  %248 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %249 = bitcast %struct.xgbe_prv_data* %248 to %struct.xgbe_prv_data.0*
  %250 = load i32, i32* %7, align 4
  %251 = call i32 %247(%struct.xgbe_prv_data.0* %249, i32 %250)
  %252 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %253 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %252, i32 0, i32 0
  %254 = call i32 @memcpy(i32* %253, %struct.hwtstamp_config* %6, i32 16)
  store i32 0, i32* %3, align 4
  br label %255

255:                                              ; preds = %243, %240, %32, %20, %13
  %256 = load i32, i32* %3, align 4
  ret i32 %256
}

declare dso_local i64 @copy_from_user(%struct.hwtstamp_config*, i32, i32) #1

declare dso_local i32 @XGMAC_SET_BITS(i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.hwtstamp_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
