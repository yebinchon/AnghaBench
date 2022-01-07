; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mscc.c_vsc85xx_wol_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mscc.c_vsc85xx_wol_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64* }
%struct.ethtool_wolinfo = type { i32, i32* }

@MSCC_PHY_PAGE_EXTENDED_2 = common dso_local global i32 0, align 4
@WAKE_MAGIC = common dso_local global i32 0, align 4
@MSCC_PHY_WOL_LOWER_MAC_ADDR = common dso_local global i32 0, align 4
@MSCC_PHY_WOL_MID_MAC_ADDR = common dso_local global i32 0, align 4
@MSCC_PHY_WOL_UPPER_MAC_ADDR = common dso_local global i32 0, align 4
@WAKE_MAGICSECURE = common dso_local global i32 0, align 4
@MSCC_PHY_WOL_LOWER_PASSWD = common dso_local global i32 0, align 4
@MSCC_PHY_WOL_MID_PASSWD = common dso_local global i32 0, align 4
@MSCC_PHY_WOL_UPPER_PASSWD = common dso_local global i32 0, align 4
@MSCC_PHY_WOL_MAC_CONTROL = common dso_local global i32 0, align 4
@SECURE_ON_ENABLE = common dso_local global i32 0, align 4
@MII_VSC85XX_INT_MASK = common dso_local global i32 0, align 4
@MII_VSC85XX_INT_MASK_WOL = common dso_local global i32 0, align 4
@MII_VSC85XX_INT_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*, %struct.ethtool_wolinfo*)* @vsc85xx_wol_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsc85xx_wol_set(%struct.phy_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca %struct.ethtool_wolinfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca [3 x i32], align 4
  %9 = alloca %struct.ethtool_wolinfo*, align 8
  %10 = alloca i64*, align 8
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %4, align 8
  %11 = bitcast [3 x i32]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 12, i1 false)
  %12 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  store %struct.ethtool_wolinfo* %12, %struct.ethtool_wolinfo** %9, align 8
  %13 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %14 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  store i64* %17, i64** %10, align 8
  %18 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %19 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %22 = load i32, i32* @MSCC_PHY_PAGE_EXTENDED_2, align 4
  %23 = call i32 @phy_select_page(%struct.phy_device* %21, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @phy_restore_page(%struct.phy_device* %27, i32 %28, i32 %29)
  store i32 %30, i32* %5, align 4
  br label %235

31:                                               ; preds = %2
  %32 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %33 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @WAKE_MAGIC, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %82

38:                                               ; preds = %31
  store i64 0, i64* %7, align 8
  br label %39

39:                                               ; preds = %63, %38
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %42 = call i64 @ARRAY_SIZE(i32* %41)
  %43 = icmp ult i64 %40, %42
  br i1 %43, label %44, label %66

44:                                               ; preds = %39
  %45 = load i64*, i64** %10, align 8
  %46 = load i64, i64* %7, align 8
  %47 = mul i64 %46, 2
  %48 = add i64 %47, 1
  %49 = sub i64 5, %48
  %50 = getelementptr inbounds i64, i64* %45, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = shl i64 %51, 8
  %53 = load i64*, i64** %10, align 8
  %54 = load i64, i64* %7, align 8
  %55 = mul i64 %54, 2
  %56 = sub i64 5, %55
  %57 = getelementptr inbounds i64, i64* %53, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = or i64 %52, %58
  %60 = trunc i64 %59 to i32
  %61 = load i64, i64* %7, align 8
  %62 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 %61
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %44
  %64 = load i64, i64* %7, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %7, align 8
  br label %39

66:                                               ; preds = %39
  %67 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %68 = load i32, i32* @MSCC_PHY_WOL_LOWER_MAC_ADDR, align 4
  %69 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @__phy_write(%struct.phy_device* %67, i32 %68, i32 %70)
  %72 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %73 = load i32, i32* @MSCC_PHY_WOL_MID_MAC_ADDR, align 4
  %74 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @__phy_write(%struct.phy_device* %72, i32 %73, i32 %75)
  %77 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %78 = load i32, i32* @MSCC_PHY_WOL_UPPER_MAC_ADDR, align 4
  %79 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @__phy_write(%struct.phy_device* %77, i32 %78, i32 %80)
  br label %92

82:                                               ; preds = %31
  %83 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %84 = load i32, i32* @MSCC_PHY_WOL_LOWER_MAC_ADDR, align 4
  %85 = call i32 @__phy_write(%struct.phy_device* %83, i32 %84, i32 0)
  %86 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %87 = load i32, i32* @MSCC_PHY_WOL_MID_MAC_ADDR, align 4
  %88 = call i32 @__phy_write(%struct.phy_device* %86, i32 %87, i32 0)
  %89 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %90 = load i32, i32* @MSCC_PHY_WOL_UPPER_MAC_ADDR, align 4
  %91 = call i32 @__phy_write(%struct.phy_device* %89, i32 %90, i32 0)
  br label %92

92:                                               ; preds = %82, %66
  %93 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %9, align 8
  %94 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @WAKE_MAGICSECURE, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %146

99:                                               ; preds = %92
  store i64 0, i64* %7, align 8
  br label %100

100:                                              ; preds = %127, %99
  %101 = load i64, i64* %7, align 8
  %102 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %103 = call i64 @ARRAY_SIZE(i32* %102)
  %104 = icmp ult i64 %101, %103
  br i1 %104, label %105, label %130

105:                                              ; preds = %100
  %106 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %9, align 8
  %107 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load i64, i64* %7, align 8
  %110 = mul i64 %109, 2
  %111 = add i64 %110, 1
  %112 = sub i64 5, %111
  %113 = getelementptr inbounds i32, i32* %108, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = shl i32 %114, 8
  %116 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %9, align 8
  %117 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = load i64, i64* %7, align 8
  %120 = mul i64 %119, 2
  %121 = sub i64 5, %120
  %122 = getelementptr inbounds i32, i32* %118, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %115, %123
  %125 = load i64, i64* %7, align 8
  %126 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 %125
  store i32 %124, i32* %126, align 4
  br label %127

127:                                              ; preds = %105
  %128 = load i64, i64* %7, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %7, align 8
  br label %100

130:                                              ; preds = %100
  %131 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %132 = load i32, i32* @MSCC_PHY_WOL_LOWER_PASSWD, align 4
  %133 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @__phy_write(%struct.phy_device* %131, i32 %132, i32 %134)
  %136 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %137 = load i32, i32* @MSCC_PHY_WOL_MID_PASSWD, align 4
  %138 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @__phy_write(%struct.phy_device* %136, i32 %137, i32 %139)
  %141 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %142 = load i32, i32* @MSCC_PHY_WOL_UPPER_PASSWD, align 4
  %143 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @__phy_write(%struct.phy_device* %141, i32 %142, i32 %144)
  br label %156

146:                                              ; preds = %92
  %147 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %148 = load i32, i32* @MSCC_PHY_WOL_LOWER_PASSWD, align 4
  %149 = call i32 @__phy_write(%struct.phy_device* %147, i32 %148, i32 0)
  %150 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %151 = load i32, i32* @MSCC_PHY_WOL_MID_PASSWD, align 4
  %152 = call i32 @__phy_write(%struct.phy_device* %150, i32 %151, i32 0)
  %153 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %154 = load i32, i32* @MSCC_PHY_WOL_UPPER_PASSWD, align 4
  %155 = call i32 @__phy_write(%struct.phy_device* %153, i32 %154, i32 0)
  br label %156

156:                                              ; preds = %146, %130
  %157 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %158 = load i32, i32* @MSCC_PHY_WOL_MAC_CONTROL, align 4
  %159 = call i32 @__phy_read(%struct.phy_device* %157, i32 %158)
  store i32 %159, i32* %6, align 4
  %160 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %9, align 8
  %161 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @WAKE_MAGICSECURE, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %156
  %167 = load i32, i32* @SECURE_ON_ENABLE, align 4
  %168 = load i32, i32* %6, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %6, align 4
  br label %175

170:                                              ; preds = %156
  %171 = load i32, i32* @SECURE_ON_ENABLE, align 4
  %172 = xor i32 %171, -1
  %173 = load i32, i32* %6, align 4
  %174 = and i32 %173, %172
  store i32 %174, i32* %6, align 4
  br label %175

175:                                              ; preds = %170, %166
  %176 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %177 = load i32, i32* @MSCC_PHY_WOL_MAC_CONTROL, align 4
  %178 = load i32, i32* %6, align 4
  %179 = call i32 @__phy_write(%struct.phy_device* %176, i32 %177, i32 %178)
  %180 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %181 = load i32, i32* %5, align 4
  %182 = load i32, i32* %5, align 4
  %183 = icmp sgt i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %175
  br label %187

185:                                              ; preds = %175
  %186 = load i32, i32* %5, align 4
  br label %187

187:                                              ; preds = %185, %184
  %188 = phi i32 [ 0, %184 ], [ %186, %185 ]
  %189 = call i32 @phy_restore_page(%struct.phy_device* %180, i32 %181, i32 %188)
  store i32 %189, i32* %5, align 4
  %190 = load i32, i32* %5, align 4
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %187
  br label %235

193:                                              ; preds = %187
  %194 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %195 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @WAKE_MAGIC, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %215

200:                                              ; preds = %193
  %201 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %202 = load i32, i32* @MII_VSC85XX_INT_MASK, align 4
  %203 = call i32 @phy_read(%struct.phy_device* %201, i32 %202)
  store i32 %203, i32* %6, align 4
  %204 = load i32, i32* @MII_VSC85XX_INT_MASK_WOL, align 4
  %205 = load i32, i32* %6, align 4
  %206 = or i32 %205, %204
  store i32 %206, i32* %6, align 4
  %207 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %208 = load i32, i32* @MII_VSC85XX_INT_MASK, align 4
  %209 = load i32, i32* %6, align 4
  %210 = call i32 @phy_write(%struct.phy_device* %207, i32 %208, i32 %209)
  store i32 %210, i32* %5, align 4
  %211 = load i32, i32* %5, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %200
  br label %235

214:                                              ; preds = %200
  br label %231

215:                                              ; preds = %193
  %216 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %217 = load i32, i32* @MII_VSC85XX_INT_MASK, align 4
  %218 = call i32 @phy_read(%struct.phy_device* %216, i32 %217)
  store i32 %218, i32* %6, align 4
  %219 = load i32, i32* @MII_VSC85XX_INT_MASK_WOL, align 4
  %220 = xor i32 %219, -1
  %221 = load i32, i32* %6, align 4
  %222 = and i32 %221, %220
  store i32 %222, i32* %6, align 4
  %223 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %224 = load i32, i32* @MII_VSC85XX_INT_MASK, align 4
  %225 = load i32, i32* %6, align 4
  %226 = call i32 @phy_write(%struct.phy_device* %223, i32 %224, i32 %225)
  store i32 %226, i32* %5, align 4
  %227 = load i32, i32* %5, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %215
  br label %235

230:                                              ; preds = %215
  br label %231

231:                                              ; preds = %230, %214
  %232 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %233 = load i32, i32* @MII_VSC85XX_INT_STATUS, align 4
  %234 = call i32 @phy_read(%struct.phy_device* %232, i32 %233)
  store i32 %234, i32* %6, align 4
  br label %235

235:                                              ; preds = %231, %229, %213, %192, %26
  %236 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %237 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %236, i32 0, i32 0
  %238 = call i32 @mutex_unlock(i32* %237)
  %239 = load i32, i32* %5, align 4
  ret i32 %239
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @phy_select_page(%struct.phy_device*, i32) #2

declare dso_local i32 @phy_restore_page(%struct.phy_device*, i32, i32) #2

declare dso_local i64 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @__phy_write(%struct.phy_device*, i32, i32) #2

declare dso_local i32 @__phy_read(%struct.phy_device*, i32) #2

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #2

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
