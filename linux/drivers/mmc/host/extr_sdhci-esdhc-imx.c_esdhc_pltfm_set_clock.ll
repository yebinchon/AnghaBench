; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-esdhc-imx.c_esdhc_pltfm_set_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-esdhc-imx.c_esdhc_pltfm_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.pltfm_imx_data = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@ESDHC_VENDOR_SPEC = common dso_local global i64 0, align 8
@ESDHC_VENDOR_SPEC_FRC_SDCLK_ON = common dso_local global i32 0, align 4
@ESDHC_DLL_CTRL = common dso_local global i64 0, align 8
@ESDHC_SYSTEM_CONTROL = common dso_local global i32 0, align 4
@ESDHC_CLOCK_IPGEN = common dso_local global i32 0, align 4
@ESDHC_CLOCK_HCKEN = common dso_local global i32 0, align 4
@ESDHC_CLOCK_PEREN = common dso_local global i32 0, align 4
@ESDHC_CLOCK_MASK = common dso_local global i32 0, align 4
@ESDHC_FLAG_ERR010450 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"desired SD clock: %d, actual: %d\0A\00", align 1
@ESDHC_DIVIDER_SHIFT = common dso_local global i32 0, align 4
@ESDHC_PREDIV_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, i32)* @esdhc_pltfm_set_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esdhc_pltfm_set_clock(%struct.sdhci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdhci_pltfm_host*, align 8
  %6 = alloca %struct.pltfm_imx_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %15 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %14)
  store %struct.sdhci_pltfm_host* %15, %struct.sdhci_pltfm_host** %5, align 8
  %16 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %5, align 8
  %17 = call %struct.pltfm_imx_data* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %16)
  store %struct.pltfm_imx_data* %17, %struct.pltfm_imx_data** %6, align 8
  %18 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %5, align 8
  %19 = getelementptr inbounds %struct.sdhci_pltfm_host, %struct.sdhci_pltfm_host* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %6, align 8
  %22 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 2, i32 1
  store i32 %26, i32* %8, align 4
  store i32 1, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %27 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %6, align 8
  %28 = call i64 @esdhc_is_usdhc(%struct.pltfm_imx_data* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %2
  %31 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %32 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ESDHC_VENDOR_SPEC, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @readl(i64 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* @ESDHC_VENDOR_SPEC_FRC_SDCLK_ON, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  %41 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %42 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @ESDHC_VENDOR_SPEC, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writel(i32 %40, i64 %45)
  br label %47

47:                                               ; preds = %30, %2
  %48 = load i32, i32* %4, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %52 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32 0, i32* %54, align 4
  br label %237

55:                                               ; preds = %47
  %56 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %6, align 8
  %57 = call i64 @is_imx53_esdhc(%struct.pltfm_imx_data* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %94

59:                                               ; preds = %55
  %60 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %61 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @ESDHC_DLL_CTRL, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @readl(i64 %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @BIT(i32 10)
  %68 = or i32 %66, %67
  %69 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %70 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @ESDHC_DLL_CTRL, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @writel(i32 %68, i64 %73)
  %75 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %76 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @ESDHC_DLL_CTRL, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @readl(i64 %79)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %12, align 4
  %82 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %83 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @ESDHC_DLL_CTRL, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @writel(i32 %81, i64 %86)
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @BIT(i32 10)
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %59
  store i32 2, i32* %9, align 4
  br label %93

93:                                               ; preds = %92, %59
  br label %94

94:                                               ; preds = %93, %55
  %95 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %96 = load i32, i32* @ESDHC_SYSTEM_CONTROL, align 4
  %97 = call i32 @sdhci_readl(%struct.sdhci_host* %95, i32 %96)
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* @ESDHC_CLOCK_IPGEN, align 4
  %99 = load i32, i32* @ESDHC_CLOCK_HCKEN, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @ESDHC_CLOCK_PEREN, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @ESDHC_CLOCK_MASK, align 4
  %104 = or i32 %102, %103
  %105 = xor i32 %104, -1
  %106 = load i32, i32* %11, align 4
  %107 = and i32 %106, %105
  store i32 %107, i32* %11, align 4
  %108 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* @ESDHC_SYSTEM_CONTROL, align 4
  %111 = call i32 @sdhci_writel(%struct.sdhci_host* %108, i32 %109, i32 %110)
  %112 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %6, align 8
  %113 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %112, i32 0, i32 1
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @ESDHC_FLAG_ERR010450, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %94
  %121 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %6, align 8
  %122 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i32 45000000, i32 150000000
  store i32 %126, i32* %13, align 4
  %127 = load i32, i32* %4, align 4
  %128 = load i32, i32* %13, align 4
  %129 = call i32 @min(i32 %127, i32 %128)
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %120, %94
  br label %131

131:                                              ; preds = %145, %130
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* %9, align 4
  %134 = mul nsw i32 16, %133
  %135 = load i32, i32* %8, align 4
  %136 = mul nsw i32 %134, %135
  %137 = udiv i32 %132, %136
  %138 = load i32, i32* %4, align 4
  %139 = icmp ugt i32 %137, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %131
  %141 = load i32, i32* %9, align 4
  %142 = icmp slt i32 %141, 256
  br label %143

143:                                              ; preds = %140, %131
  %144 = phi i1 [ false, %131 ], [ %142, %140 ]
  br i1 %144, label %145, label %148

145:                                              ; preds = %143
  %146 = load i32, i32* %9, align 4
  %147 = mul nsw i32 %146, 2
  store i32 %147, i32* %9, align 4
  br label %131

148:                                              ; preds = %143
  br label %149

149:                                              ; preds = %164, %148
  %150 = load i32, i32* %7, align 4
  %151 = load i32, i32* %10, align 4
  %152 = load i32, i32* %9, align 4
  %153 = mul nsw i32 %151, %152
  %154 = load i32, i32* %8, align 4
  %155 = mul nsw i32 %153, %154
  %156 = udiv i32 %150, %155
  %157 = load i32, i32* %4, align 4
  %158 = icmp ugt i32 %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %149
  %160 = load i32, i32* %10, align 4
  %161 = icmp slt i32 %160, 16
  br label %162

162:                                              ; preds = %159, %149
  %163 = phi i1 [ false, %149 ], [ %161, %159 ]
  br i1 %163, label %164, label %167

164:                                              ; preds = %162
  %165 = load i32, i32* %10, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %10, align 4
  br label %149

167:                                              ; preds = %162
  %168 = load i32, i32* %7, align 4
  %169 = load i32, i32* %10, align 4
  %170 = load i32, i32* %9, align 4
  %171 = mul nsw i32 %169, %170
  %172 = load i32, i32* %8, align 4
  %173 = mul nsw i32 %171, %172
  %174 = udiv i32 %168, %173
  %175 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %176 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %175, i32 0, i32 1
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  store i32 %174, i32* %178, align 4
  %179 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %180 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %179, i32 0, i32 1
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %180, align 8
  %182 = call i32 @mmc_dev(%struct.TYPE_4__* %181)
  %183 = load i32, i32* %4, align 4
  %184 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %185 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %184, i32 0, i32 1
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @dev_dbg(i32 %182, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %183, i32 %188)
  %190 = load i32, i32* %9, align 4
  %191 = ashr i32 %190, 1
  store i32 %191, i32* %9, align 4
  %192 = load i32, i32* %10, align 4
  %193 = add nsw i32 %192, -1
  store i32 %193, i32* %10, align 4
  %194 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %195 = load i32, i32* @ESDHC_SYSTEM_CONTROL, align 4
  %196 = call i32 @sdhci_readl(%struct.sdhci_host* %194, i32 %195)
  store i32 %196, i32* %11, align 4
  %197 = load i32, i32* @ESDHC_CLOCK_IPGEN, align 4
  %198 = load i32, i32* @ESDHC_CLOCK_HCKEN, align 4
  %199 = or i32 %197, %198
  %200 = load i32, i32* @ESDHC_CLOCK_PEREN, align 4
  %201 = or i32 %199, %200
  %202 = load i32, i32* %10, align 4
  %203 = load i32, i32* @ESDHC_DIVIDER_SHIFT, align 4
  %204 = shl i32 %202, %203
  %205 = or i32 %201, %204
  %206 = load i32, i32* %9, align 4
  %207 = load i32, i32* @ESDHC_PREDIV_SHIFT, align 4
  %208 = shl i32 %206, %207
  %209 = or i32 %205, %208
  %210 = load i32, i32* %11, align 4
  %211 = or i32 %210, %209
  store i32 %211, i32* %11, align 4
  %212 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %213 = load i32, i32* %11, align 4
  %214 = load i32, i32* @ESDHC_SYSTEM_CONTROL, align 4
  %215 = call i32 @sdhci_writel(%struct.sdhci_host* %212, i32 %213, i32 %214)
  %216 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %6, align 8
  %217 = call i64 @esdhc_is_usdhc(%struct.pltfm_imx_data* %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %235

219:                                              ; preds = %167
  %220 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %221 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @ESDHC_VENDOR_SPEC, align 8
  %224 = add nsw i64 %222, %223
  %225 = call i32 @readl(i64 %224)
  store i32 %225, i32* %12, align 4
  %226 = load i32, i32* %12, align 4
  %227 = load i32, i32* @ESDHC_VENDOR_SPEC_FRC_SDCLK_ON, align 4
  %228 = or i32 %226, %227
  %229 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %230 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* @ESDHC_VENDOR_SPEC, align 8
  %233 = add nsw i64 %231, %232
  %234 = call i32 @writel(i32 %228, i64 %233)
  br label %235

235:                                              ; preds = %219, %167
  %236 = call i32 @mdelay(i32 1)
  br label %237

237:                                              ; preds = %235, %50
  ret void
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.pltfm_imx_data* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i64 @esdhc_is_usdhc(%struct.pltfm_imx_data*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @is_imx53_esdhc(%struct.pltfm_imx_data*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @sdhci_readl(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_writel(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @mmc_dev(%struct.TYPE_4__*) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
