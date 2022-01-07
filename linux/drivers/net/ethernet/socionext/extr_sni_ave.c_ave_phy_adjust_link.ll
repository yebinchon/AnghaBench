; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_sni_ave.c_ave_phy_adjust_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_sni_ave.c_ave_phy_adjust_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { i64, i32, i64, i64, i64 }
%struct.ave_private = type { i64 }

@AVE_TXCR = common dso_local global i64 0, align 8
@AVE_TXCR_TXSPD_100 = common dso_local global i32 0, align 4
@AVE_TXCR_TXSPD_1G = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i64 0, align 8
@SPEED_100 = common dso_local global i64 0, align 8
@AVE_LINKSEL = common dso_local global i64 0, align 8
@SPEED_10 = common dso_local global i64 0, align 8
@AVE_LINKSEL_100M = common dso_local global i32 0, align 4
@AVE_RXCR = common dso_local global i64 0, align 8
@AVE_RXCR_FDUPEN = common dso_local global i32 0, align 4
@LPA_PAUSE_CAP = common dso_local global i32 0, align 4
@LPA_PAUSE_ASYM = common dso_local global i32 0, align 4
@FLOW_CTRL_TX = common dso_local global i32 0, align 4
@AVE_TXCR_FLOCTR = common dso_local global i32 0, align 4
@FLOW_CTRL_RX = common dso_local global i32 0, align 4
@AVE_RXCR_FLOCTR = common dso_local global i32 0, align 4
@AVE_RXCR_RXEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ave_phy_adjust_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ave_phy_adjust_link(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ave_private*, align 8
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call %struct.ave_private* @netdev_priv(%struct.net_device* %12)
  store %struct.ave_private* %13, %struct.ave_private** %3, align 8
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load %struct.phy_device*, %struct.phy_device** %15, align 8
  store %struct.phy_device* %16, %struct.phy_device** %4, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load %struct.ave_private*, %struct.ave_private** %3, align 8
  %18 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @AVE_TXCR, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @readl(i64 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @AVE_TXCR_TXSPD_100, align 4
  %24 = load i32, i32* @AVE_TXCR_TXSPD_1G, align 4
  %25 = or i32 %23, %24
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %30 = call i64 @phy_interface_is_rgmii(%struct.phy_device* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %1
  %33 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %34 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SPEED_1000, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i32, i32* @AVE_TXCR_TXSPD_1G, align 4
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %5, align 4
  br label %53

42:                                               ; preds = %32, %1
  %43 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %44 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @SPEED_100, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i32, i32* @AVE_TXCR_TXSPD_100, align 4
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %48, %42
  br label %53

53:                                               ; preds = %52, %38
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.ave_private*, %struct.ave_private** %3, align 8
  %56 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @AVE_TXCR, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @writel(i32 %54, i64 %59)
  %61 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %62 = call i64 @phy_interface_is_rgmii(%struct.phy_device* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %93, label %64

64:                                               ; preds = %53
  %65 = load %struct.ave_private*, %struct.ave_private** %3, align 8
  %66 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @AVE_LINKSEL, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @readl(i64 %69)
  store i32 %70, i32* %5, align 4
  %71 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %72 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @SPEED_10, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %64
  %77 = load i32, i32* @AVE_LINKSEL_100M, align 4
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %5, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %5, align 4
  br label %85

81:                                               ; preds = %64
  %82 = load i32, i32* @AVE_LINKSEL_100M, align 4
  %83 = load i32, i32* %5, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %81, %76
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.ave_private*, %struct.ave_private** %3, align 8
  %88 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @AVE_LINKSEL, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @writel(i32 %86, i64 %91)
  br label %93

93:                                               ; preds = %85, %53
  %94 = load %struct.ave_private*, %struct.ave_private** %3, align 8
  %95 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @AVE_RXCR, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @readl(i64 %98)
  store i32 %99, i32* %7, align 4
  %100 = load %struct.ave_private*, %struct.ave_private** %3, align 8
  %101 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @AVE_TXCR, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @readl(i64 %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %7, align 4
  store i32 %106, i32* %8, align 4
  %107 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %108 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %168

111:                                              ; preds = %93
  %112 = load i32, i32* @AVE_RXCR_FDUPEN, align 4
  %113 = load i32, i32* %7, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %7, align 4
  %115 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %116 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %111
  %120 = load i32, i32* @LPA_PAUSE_CAP, align 4
  %121 = load i32, i32* %9, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %9, align 4
  br label %123

123:                                              ; preds = %119, %111
  %124 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %125 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %123
  %129 = load i32, i32* @LPA_PAUSE_ASYM, align 4
  %130 = load i32, i32* %9, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %9, align 4
  br label %132

132:                                              ; preds = %128, %123
  %133 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %134 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @linkmode_adv_to_lcl_adv_t(i32 %135)
  store i32 %136, i32* %10, align 4
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* %9, align 4
  %139 = call i32 @mii_resolve_flowctrl_fdx(i32 %137, i32 %138)
  store i32 %139, i32* %11, align 4
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* @FLOW_CTRL_TX, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %132
  %145 = load i32, i32* @AVE_TXCR_FLOCTR, align 4
  %146 = load i32, i32* %6, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %6, align 4
  br label %153

148:                                              ; preds = %132
  %149 = load i32, i32* @AVE_TXCR_FLOCTR, align 4
  %150 = xor i32 %149, -1
  %151 = load i32, i32* %6, align 4
  %152 = and i32 %151, %150
  store i32 %152, i32* %6, align 4
  br label %153

153:                                              ; preds = %148, %144
  %154 = load i32, i32* %11, align 4
  %155 = load i32, i32* @FLOW_CTRL_RX, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %153
  %159 = load i32, i32* @AVE_RXCR_FLOCTR, align 4
  %160 = load i32, i32* %7, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %7, align 4
  br label %167

162:                                              ; preds = %153
  %163 = load i32, i32* @AVE_RXCR_FLOCTR, align 4
  %164 = xor i32 %163, -1
  %165 = load i32, i32* %7, align 4
  %166 = and i32 %165, %164
  store i32 %166, i32* %7, align 4
  br label %167

167:                                              ; preds = %162, %158
  br label %181

168:                                              ; preds = %93
  %169 = load i32, i32* @AVE_RXCR_FDUPEN, align 4
  %170 = xor i32 %169, -1
  %171 = load i32, i32* %7, align 4
  %172 = and i32 %171, %170
  store i32 %172, i32* %7, align 4
  %173 = load i32, i32* @AVE_RXCR_FLOCTR, align 4
  %174 = xor i32 %173, -1
  %175 = load i32, i32* %7, align 4
  %176 = and i32 %175, %174
  store i32 %176, i32* %7, align 4
  %177 = load i32, i32* @AVE_TXCR_FLOCTR, align 4
  %178 = xor i32 %177, -1
  %179 = load i32, i32* %6, align 4
  %180 = and i32 %179, %178
  store i32 %180, i32* %6, align 4
  br label %181

181:                                              ; preds = %168, %167
  %182 = load i32, i32* %8, align 4
  %183 = load i32, i32* %7, align 4
  %184 = icmp ne i32 %182, %183
  br i1 %184, label %185, label %210

185:                                              ; preds = %181
  %186 = load i32, i32* %7, align 4
  %187 = load i32, i32* @AVE_RXCR_RXEN, align 4
  %188 = xor i32 %187, -1
  %189 = and i32 %186, %188
  %190 = load %struct.ave_private*, %struct.ave_private** %3, align 8
  %191 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @AVE_RXCR, align 8
  %194 = add nsw i64 %192, %193
  %195 = call i32 @writel(i32 %189, i64 %194)
  %196 = load i32, i32* %6, align 4
  %197 = load %struct.ave_private*, %struct.ave_private** %3, align 8
  %198 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @AVE_TXCR, align 8
  %201 = add nsw i64 %199, %200
  %202 = call i32 @writel(i32 %196, i64 %201)
  %203 = load i32, i32* %7, align 4
  %204 = load %struct.ave_private*, %struct.ave_private** %3, align 8
  %205 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @AVE_RXCR, align 8
  %208 = add nsw i64 %206, %207
  %209 = call i32 @writel(i32 %203, i64 %208)
  br label %210

210:                                              ; preds = %185, %181
  %211 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %212 = call i32 @phy_print_status(%struct.phy_device* %211)
  ret void
}

declare dso_local %struct.ave_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @phy_interface_is_rgmii(%struct.phy_device*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @linkmode_adv_to_lcl_adv_t(i32) #1

declare dso_local i32 @mii_resolve_flowctrl_fdx(i32, i32) #1

declare dso_local i32 @phy_print_status(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
