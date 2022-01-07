; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.ravb_private = type { i64, i32*, i32, i32*, i32*, %struct.platform_device* }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }

@RAVB_BE = common dso_local global i64 0, align 8
@RAVB_NC = common dso_local global i64 0, align 8
@RCAR_GEN2 = common dso_local global i64 0, align 8
@ravb_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"cannot request IRQ\0A\00", align 1
@ravb_multi_interrupt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"ch22:multi\00", align 1
@ravb_emac_interrupt = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"ch24:emac\00", align 1
@ravb_be_interrupt = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"ch0:rx_be\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"ch18:tx_be\00", align 1
@ravb_nc_interrupt = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"ch1:rx_nc\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"ch19:tx_nc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ravb_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ravb_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ravb_private*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.ravb_private* @netdev_priv(%struct.net_device* %8)
  store %struct.ravb_private* %9, %struct.ravb_private** %4, align 8
  %10 = load %struct.ravb_private*, %struct.ravb_private** %4, align 8
  %11 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %10, i32 0, i32 5
  %12 = load %struct.platform_device*, %struct.platform_device** %11, align 8
  store %struct.platform_device* %12, %struct.platform_device** %5, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %6, align 8
  %15 = load %struct.ravb_private*, %struct.ravb_private** %4, align 8
  %16 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* @RAVB_BE, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = call i32 @napi_enable(i32* %19)
  %21 = load %struct.ravb_private*, %struct.ravb_private** %4, align 8
  %22 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @RAVB_NC, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = call i32 @napi_enable(i32* %25)
  %27 = load %struct.ravb_private*, %struct.ravb_private** %4, align 8
  %28 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @RCAR_GEN2, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %49

32:                                               ; preds = %1
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ravb_interrupt, align 4
  %37 = load i32, i32* @IRQF_SHARED, align 4
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = call i32 @request_irq(i32 %35, i32 %36, i32 %37, i32 %40, %struct.net_device* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %32
  %46 = load %struct.net_device*, %struct.net_device** %3, align 8
  %47 = call i32 @netdev_err(%struct.net_device* %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %222

48:                                               ; preds = %32
  br label %128

49:                                               ; preds = %1
  %50 = load %struct.net_device*, %struct.net_device** %3, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @ravb_multi_interrupt, align 4
  %54 = load %struct.net_device*, %struct.net_device** %3, align 8
  %55 = load %struct.device*, %struct.device** %6, align 8
  %56 = call i32 @ravb_hook_irq(i32 %52, i32 %53, %struct.net_device* %54, %struct.device* %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  br label %222

60:                                               ; preds = %49
  %61 = load %struct.ravb_private*, %struct.ravb_private** %4, align 8
  %62 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @ravb_emac_interrupt, align 4
  %65 = load %struct.net_device*, %struct.net_device** %3, align 8
  %66 = load %struct.device*, %struct.device** %6, align 8
  %67 = call i32 @ravb_hook_irq(i32 %63, i32 %64, %struct.net_device* %65, %struct.device* %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %60
  br label %216

71:                                               ; preds = %60
  %72 = load %struct.ravb_private*, %struct.ravb_private** %4, align 8
  %73 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* @RAVB_BE, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @ravb_be_interrupt, align 4
  %79 = load %struct.net_device*, %struct.net_device** %3, align 8
  %80 = load %struct.device*, %struct.device** %6, align 8
  %81 = call i32 @ravb_hook_irq(i32 %77, i32 %78, %struct.net_device* %79, %struct.device* %80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %71
  br label %210

85:                                               ; preds = %71
  %86 = load %struct.ravb_private*, %struct.ravb_private** %4, align 8
  %87 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %86, i32 0, i32 4
  %88 = load i32*, i32** %87, align 8
  %89 = load i64, i64* @RAVB_BE, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @ravb_be_interrupt, align 4
  %93 = load %struct.net_device*, %struct.net_device** %3, align 8
  %94 = load %struct.device*, %struct.device** %6, align 8
  %95 = call i32 @ravb_hook_irq(i32 %91, i32 %92, %struct.net_device* %93, %struct.device* %94, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %85
  br label %201

99:                                               ; preds = %85
  %100 = load %struct.ravb_private*, %struct.ravb_private** %4, align 8
  %101 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %100, i32 0, i32 3
  %102 = load i32*, i32** %101, align 8
  %103 = load i64, i64* @RAVB_NC, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @ravb_nc_interrupt, align 4
  %107 = load %struct.net_device*, %struct.net_device** %3, align 8
  %108 = load %struct.device*, %struct.device** %6, align 8
  %109 = call i32 @ravb_hook_irq(i32 %105, i32 %106, %struct.net_device* %107, %struct.device* %108, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %99
  br label %192

113:                                              ; preds = %99
  %114 = load %struct.ravb_private*, %struct.ravb_private** %4, align 8
  %115 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %114, i32 0, i32 4
  %116 = load i32*, i32** %115, align 8
  %117 = load i64, i64* @RAVB_NC, align 8
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @ravb_nc_interrupt, align 4
  %121 = load %struct.net_device*, %struct.net_device** %3, align 8
  %122 = load %struct.device*, %struct.device** %6, align 8
  %123 = call i32 @ravb_hook_irq(i32 %119, i32 %120, %struct.net_device* %121, %struct.device* %122, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* %7, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %113
  br label %183

127:                                              ; preds = %113
  br label %128

128:                                              ; preds = %127, %48
  %129 = load %struct.net_device*, %struct.net_device** %3, align 8
  %130 = call i32 @ravb_dmac_init(%struct.net_device* %129)
  store i32 %130, i32* %7, align 4
  %131 = load i32, i32* %7, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %128
  br label %167

134:                                              ; preds = %128
  %135 = load %struct.net_device*, %struct.net_device** %3, align 8
  %136 = call i32 @ravb_emac_init(%struct.net_device* %135)
  %137 = load %struct.ravb_private*, %struct.ravb_private** %4, align 8
  %138 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @RCAR_GEN2, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %148

142:                                              ; preds = %134
  %143 = load %struct.net_device*, %struct.net_device** %3, align 8
  %144 = load %struct.ravb_private*, %struct.ravb_private** %4, align 8
  %145 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %144, i32 0, i32 5
  %146 = load %struct.platform_device*, %struct.platform_device** %145, align 8
  %147 = call i32 @ravb_ptp_init(%struct.net_device* %143, %struct.platform_device* %146)
  br label %148

148:                                              ; preds = %142, %134
  %149 = load %struct.net_device*, %struct.net_device** %3, align 8
  %150 = call i32 @netif_tx_start_all_queues(%struct.net_device* %149)
  %151 = load %struct.net_device*, %struct.net_device** %3, align 8
  %152 = call i32 @ravb_phy_start(%struct.net_device* %151)
  store i32 %152, i32* %7, align 4
  %153 = load i32, i32* %7, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %148
  br label %157

156:                                              ; preds = %148
  store i32 0, i32* %2, align 4
  br label %236

157:                                              ; preds = %155
  %158 = load %struct.ravb_private*, %struct.ravb_private** %4, align 8
  %159 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @RCAR_GEN2, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %157
  %164 = load %struct.net_device*, %struct.net_device** %3, align 8
  %165 = call i32 @ravb_ptp_stop(%struct.net_device* %164)
  br label %166

166:                                              ; preds = %163, %157
  br label %167

167:                                              ; preds = %166, %133
  %168 = load %struct.ravb_private*, %struct.ravb_private** %4, align 8
  %169 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @RCAR_GEN2, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %167
  br label %216

174:                                              ; preds = %167
  %175 = load %struct.ravb_private*, %struct.ravb_private** %4, align 8
  %176 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %175, i32 0, i32 4
  %177 = load i32*, i32** %176, align 8
  %178 = load i64, i64* @RAVB_NC, align 8
  %179 = getelementptr inbounds i32, i32* %177, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.net_device*, %struct.net_device** %3, align 8
  %182 = call i32 @free_irq(i32 %180, %struct.net_device* %181)
  br label %183

183:                                              ; preds = %174, %126
  %184 = load %struct.ravb_private*, %struct.ravb_private** %4, align 8
  %185 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %184, i32 0, i32 3
  %186 = load i32*, i32** %185, align 8
  %187 = load i64, i64* @RAVB_NC, align 8
  %188 = getelementptr inbounds i32, i32* %186, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.net_device*, %struct.net_device** %3, align 8
  %191 = call i32 @free_irq(i32 %189, %struct.net_device* %190)
  br label %192

192:                                              ; preds = %183, %112
  %193 = load %struct.ravb_private*, %struct.ravb_private** %4, align 8
  %194 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %193, i32 0, i32 4
  %195 = load i32*, i32** %194, align 8
  %196 = load i64, i64* @RAVB_BE, align 8
  %197 = getelementptr inbounds i32, i32* %195, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.net_device*, %struct.net_device** %3, align 8
  %200 = call i32 @free_irq(i32 %198, %struct.net_device* %199)
  br label %201

201:                                              ; preds = %192, %98
  %202 = load %struct.ravb_private*, %struct.ravb_private** %4, align 8
  %203 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %202, i32 0, i32 3
  %204 = load i32*, i32** %203, align 8
  %205 = load i64, i64* @RAVB_BE, align 8
  %206 = getelementptr inbounds i32, i32* %204, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.net_device*, %struct.net_device** %3, align 8
  %209 = call i32 @free_irq(i32 %207, %struct.net_device* %208)
  br label %210

210:                                              ; preds = %201, %84
  %211 = load %struct.ravb_private*, %struct.ravb_private** %4, align 8
  %212 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.net_device*, %struct.net_device** %3, align 8
  %215 = call i32 @free_irq(i32 %213, %struct.net_device* %214)
  br label %216

216:                                              ; preds = %210, %173, %70
  %217 = load %struct.net_device*, %struct.net_device** %3, align 8
  %218 = getelementptr inbounds %struct.net_device, %struct.net_device* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.net_device*, %struct.net_device** %3, align 8
  %221 = call i32 @free_irq(i32 %219, %struct.net_device* %220)
  br label %222

222:                                              ; preds = %216, %59, %45
  %223 = load %struct.ravb_private*, %struct.ravb_private** %4, align 8
  %224 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %223, i32 0, i32 1
  %225 = load i32*, i32** %224, align 8
  %226 = load i64, i64* @RAVB_NC, align 8
  %227 = getelementptr inbounds i32, i32* %225, i64 %226
  %228 = call i32 @napi_disable(i32* %227)
  %229 = load %struct.ravb_private*, %struct.ravb_private** %4, align 8
  %230 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %229, i32 0, i32 1
  %231 = load i32*, i32** %230, align 8
  %232 = load i64, i64* @RAVB_BE, align 8
  %233 = getelementptr inbounds i32, i32* %231, i64 %232
  %234 = call i32 @napi_disable(i32* %233)
  %235 = load i32, i32* %7, align 4
  store i32 %235, i32* %2, align 4
  br label %236

236:                                              ; preds = %222, %156
  %237 = load i32, i32* %2, align 4
  ret i32 %237
}

declare dso_local %struct.ravb_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @ravb_hook_irq(i32, i32, %struct.net_device*, %struct.device*, i8*) #1

declare dso_local i32 @ravb_dmac_init(%struct.net_device*) #1

declare dso_local i32 @ravb_emac_init(%struct.net_device*) #1

declare dso_local i32 @ravb_ptp_init(%struct.net_device*, %struct.platform_device*) #1

declare dso_local i32 @netif_tx_start_all_queues(%struct.net_device*) #1

declare dso_local i32 @ravb_phy_start(%struct.net_device*) #1

declare dso_local i32 @ravb_ptp_stop(%struct.net_device*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
