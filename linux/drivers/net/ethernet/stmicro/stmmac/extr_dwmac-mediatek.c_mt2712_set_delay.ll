; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-mediatek.c_mt2712_set_delay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-mediatek.c_mt2712_set_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mediatek_dwmac_plat_data = type { i32, i32, i32, i32, %struct.mac_delay_struct }
%struct.mac_delay_struct = type { i32, i32, i32, i32 }

@ETH_DLY_TXC_ENABLE = common dso_local global i32 0, align 4
@ETH_DLY_TXC_STAGES = common dso_local global i32 0, align 4
@ETH_DLY_TXC_INV = common dso_local global i32 0, align 4
@ETH_DLY_RXC_ENABLE = common dso_local global i32 0, align 4
@ETH_DLY_RXC_STAGES = common dso_local global i32 0, align 4
@ETH_DLY_RXC_INV = common dso_local global i32 0, align 4
@ETH_RMII_DLY_TX_INV = common dso_local global i32 0, align 4
@ETH_FINE_DLY_GTXC = common dso_local global i32 0, align 4
@ETH_FINE_DLY_RXC = common dso_local global i32 0, align 4
@ETH_DLY_GTXC_ENABLE = common dso_local global i32 0, align 4
@ETH_DLY_GTXC_STAGES = common dso_local global i32 0, align 4
@ETH_DLY_GTXC_INV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"phy interface not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PERI_ETH_DLY = common dso_local global i32 0, align 4
@PERI_ETH_DLY_FINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mediatek_dwmac_plat_data*)* @mt2712_set_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt2712_set_delay(%struct.mediatek_dwmac_plat_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mediatek_dwmac_plat_data*, align 8
  %4 = alloca %struct.mac_delay_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mediatek_dwmac_plat_data* %0, %struct.mediatek_dwmac_plat_data** %3, align 8
  %7 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %3, align 8
  %8 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, %struct.mediatek_dwmac_plat_data* %7, i32 0, i32 4
  store %struct.mac_delay_struct* %8, %struct.mac_delay_struct** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %3, align 8
  %10 = call i32 @mt2712_delay_ps2stage(%struct.mediatek_dwmac_plat_data* %9)
  %11 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %3, align 8
  %12 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, %struct.mediatek_dwmac_plat_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %184 [
    i32 133, label %14
    i32 128, label %65
    i32 132, label %130
    i32 129, label %130
    i32 130, label %130
    i32 131, label %130
  ]

14:                                               ; preds = %1
  %15 = load i32, i32* @ETH_DLY_TXC_ENABLE, align 4
  %16 = load %struct.mac_delay_struct*, %struct.mac_delay_struct** %4, align 8
  %17 = getelementptr inbounds %struct.mac_delay_struct, %struct.mac_delay_struct* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @FIELD_PREP(i32 %15, i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* @ETH_DLY_TXC_STAGES, align 4
  %27 = load %struct.mac_delay_struct*, %struct.mac_delay_struct** %4, align 8
  %28 = getelementptr inbounds %struct.mac_delay_struct, %struct.mac_delay_struct* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @FIELD_PREP(i32 %26, i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* @ETH_DLY_TXC_INV, align 4
  %34 = load %struct.mac_delay_struct*, %struct.mac_delay_struct** %4, align 8
  %35 = getelementptr inbounds %struct.mac_delay_struct, %struct.mac_delay_struct* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @FIELD_PREP(i32 %33, i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* @ETH_DLY_RXC_ENABLE, align 4
  %41 = load %struct.mac_delay_struct*, %struct.mac_delay_struct** %4, align 8
  %42 = getelementptr inbounds %struct.mac_delay_struct, %struct.mac_delay_struct* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @FIELD_PREP(i32 %40, i32 %47)
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* @ETH_DLY_RXC_STAGES, align 4
  %52 = load %struct.mac_delay_struct*, %struct.mac_delay_struct** %4, align 8
  %53 = getelementptr inbounds %struct.mac_delay_struct, %struct.mac_delay_struct* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @FIELD_PREP(i32 %51, i32 %54)
  %56 = load i32, i32* %5, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* @ETH_DLY_RXC_INV, align 4
  %59 = load %struct.mac_delay_struct*, %struct.mac_delay_struct** %4, align 8
  %60 = getelementptr inbounds %struct.mac_delay_struct, %struct.mac_delay_struct* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @FIELD_PREP(i32 %58, i32 %61)
  %63 = load i32, i32* %5, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %5, align 4
  br label %191

65:                                               ; preds = %1
  %66 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %3, align 8
  %67 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, %struct.mediatek_dwmac_plat_data* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %96

70:                                               ; preds = %65
  %71 = load i32, i32* @ETH_DLY_RXC_ENABLE, align 4
  %72 = load %struct.mac_delay_struct*, %struct.mac_delay_struct** %4, align 8
  %73 = getelementptr inbounds %struct.mac_delay_struct, %struct.mac_delay_struct* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = call i32 @FIELD_PREP(i32 %71, i32 %78)
  %80 = load i32, i32* %5, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* @ETH_DLY_RXC_STAGES, align 4
  %83 = load %struct.mac_delay_struct*, %struct.mac_delay_struct** %4, align 8
  %84 = getelementptr inbounds %struct.mac_delay_struct, %struct.mac_delay_struct* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @FIELD_PREP(i32 %82, i32 %85)
  %87 = load i32, i32* %5, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* @ETH_DLY_RXC_INV, align 4
  %90 = load %struct.mac_delay_struct*, %struct.mac_delay_struct** %4, align 8
  %91 = getelementptr inbounds %struct.mac_delay_struct, %struct.mac_delay_struct* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @FIELD_PREP(i32 %89, i32 %92)
  %94 = load i32, i32* %5, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %5, align 4
  br label %122

96:                                               ; preds = %65
  %97 = load i32, i32* @ETH_DLY_TXC_ENABLE, align 4
  %98 = load %struct.mac_delay_struct*, %struct.mac_delay_struct** %4, align 8
  %99 = getelementptr inbounds %struct.mac_delay_struct, %struct.mac_delay_struct* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  %102 = xor i1 %101, true
  %103 = xor i1 %102, true
  %104 = zext i1 %103 to i32
  %105 = call i32 @FIELD_PREP(i32 %97, i32 %104)
  %106 = load i32, i32* %5, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %5, align 4
  %108 = load i32, i32* @ETH_DLY_TXC_STAGES, align 4
  %109 = load %struct.mac_delay_struct*, %struct.mac_delay_struct** %4, align 8
  %110 = getelementptr inbounds %struct.mac_delay_struct, %struct.mac_delay_struct* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @FIELD_PREP(i32 %108, i32 %111)
  %113 = load i32, i32* %5, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %5, align 4
  %115 = load i32, i32* @ETH_DLY_TXC_INV, align 4
  %116 = load %struct.mac_delay_struct*, %struct.mac_delay_struct** %4, align 8
  %117 = getelementptr inbounds %struct.mac_delay_struct, %struct.mac_delay_struct* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @FIELD_PREP(i32 %115, i32 %118)
  %120 = load i32, i32* %5, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %5, align 4
  br label %122

122:                                              ; preds = %96, %70
  %123 = load %struct.mac_delay_struct*, %struct.mac_delay_struct** %4, align 8
  %124 = getelementptr inbounds %struct.mac_delay_struct, %struct.mac_delay_struct* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %122
  %128 = load i32, i32* @ETH_RMII_DLY_TX_INV, align 4
  store i32 %128, i32* %6, align 4
  br label %129

129:                                              ; preds = %127, %122
  br label %191

130:                                              ; preds = %1, %1, %1, %1
  %131 = load i32, i32* @ETH_FINE_DLY_GTXC, align 4
  %132 = load i32, i32* @ETH_FINE_DLY_RXC, align 4
  %133 = or i32 %131, %132
  store i32 %133, i32* %6, align 4
  %134 = load i32, i32* @ETH_DLY_GTXC_ENABLE, align 4
  %135 = load %struct.mac_delay_struct*, %struct.mac_delay_struct** %4, align 8
  %136 = getelementptr inbounds %struct.mac_delay_struct, %struct.mac_delay_struct* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  %139 = xor i1 %138, true
  %140 = xor i1 %139, true
  %141 = zext i1 %140 to i32
  %142 = call i32 @FIELD_PREP(i32 %134, i32 %141)
  %143 = load i32, i32* %5, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %5, align 4
  %145 = load i32, i32* @ETH_DLY_GTXC_STAGES, align 4
  %146 = load %struct.mac_delay_struct*, %struct.mac_delay_struct** %4, align 8
  %147 = getelementptr inbounds %struct.mac_delay_struct, %struct.mac_delay_struct* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @FIELD_PREP(i32 %145, i32 %148)
  %150 = load i32, i32* %5, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %5, align 4
  %152 = load i32, i32* @ETH_DLY_GTXC_INV, align 4
  %153 = load %struct.mac_delay_struct*, %struct.mac_delay_struct** %4, align 8
  %154 = getelementptr inbounds %struct.mac_delay_struct, %struct.mac_delay_struct* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @FIELD_PREP(i32 %152, i32 %155)
  %157 = load i32, i32* %5, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %5, align 4
  %159 = load i32, i32* @ETH_DLY_RXC_ENABLE, align 4
  %160 = load %struct.mac_delay_struct*, %struct.mac_delay_struct** %4, align 8
  %161 = getelementptr inbounds %struct.mac_delay_struct, %struct.mac_delay_struct* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 0
  %164 = xor i1 %163, true
  %165 = xor i1 %164, true
  %166 = zext i1 %165 to i32
  %167 = call i32 @FIELD_PREP(i32 %159, i32 %166)
  %168 = load i32, i32* %5, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %5, align 4
  %170 = load i32, i32* @ETH_DLY_RXC_STAGES, align 4
  %171 = load %struct.mac_delay_struct*, %struct.mac_delay_struct** %4, align 8
  %172 = getelementptr inbounds %struct.mac_delay_struct, %struct.mac_delay_struct* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @FIELD_PREP(i32 %170, i32 %173)
  %175 = load i32, i32* %5, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %5, align 4
  %177 = load i32, i32* @ETH_DLY_RXC_INV, align 4
  %178 = load %struct.mac_delay_struct*, %struct.mac_delay_struct** %4, align 8
  %179 = getelementptr inbounds %struct.mac_delay_struct, %struct.mac_delay_struct* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @FIELD_PREP(i32 %177, i32 %180)
  %182 = load i32, i32* %5, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %5, align 4
  br label %191

184:                                              ; preds = %1
  %185 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %3, align 8
  %186 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, %struct.mediatek_dwmac_plat_data* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @dev_err(i32 %187, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %189 = load i32, i32* @EINVAL, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %2, align 4
  br label %204

191:                                              ; preds = %130, %129, %14
  %192 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %3, align 8
  %193 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, %struct.mediatek_dwmac_plat_data* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @PERI_ETH_DLY, align 4
  %196 = load i32, i32* %5, align 4
  %197 = call i32 @regmap_write(i32 %194, i32 %195, i32 %196)
  %198 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %3, align 8
  %199 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, %struct.mediatek_dwmac_plat_data* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @PERI_ETH_DLY_FINE, align 4
  %202 = load i32, i32* %6, align 4
  %203 = call i32 @regmap_write(i32 %200, i32 %201, i32 %202)
  store i32 0, i32* %2, align 4
  br label %204

204:                                              ; preds = %191, %184
  %205 = load i32, i32* %2, align 4
  ret i32 %205
}

declare dso_local i32 @mt2712_delay_ps2stage(%struct.mediatek_dwmac_plat_data*) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
