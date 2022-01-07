; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_sni_ave.c_ave_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_sni_ave.c_ave_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.ave_private = type { i32, i32, i32, i32, i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64, i64, i8* }
%struct.TYPE_3__ = type { i32, i64, i64, i8* }

@ave_irq_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AVE_DESCID_TX = common dso_local global i32 0, align 4
@AVE_TXDC_ADDR_START = common dso_local global i32 0, align 4
@AVE_TXDC_SIZE = common dso_local global i32 0, align 4
@AVE_TXDC = common dso_local global i64 0, align 8
@AVE_RXDC0_ADDR_START = common dso_local global i32 0, align 4
@AVE_RXDC0_SIZE = common dso_local global i32 0, align 4
@AVE_RXDC0 = common dso_local global i64 0, align 8
@AVE_DESC_START = common dso_local global i32 0, align 4
@AVE_RXCR_RXEN = common dso_local global i32 0, align 4
@AVE_RXCR_FDUPEN = common dso_local global i32 0, align 4
@AVE_RXCR_DRPEN = common dso_local global i32 0, align 4
@AVE_RXCR_FLOCTR = common dso_local global i32 0, align 4
@AVE_MAX_ETHFRAME = common dso_local global i32 0, align 4
@AVE_RXCR_MPSIZ_MASK = common dso_local global i32 0, align 4
@AVE_RXCR = common dso_local global i64 0, align 8
@AVE_TXCR_FLOCTR = common dso_local global i32 0, align 4
@AVE_TXCR = common dso_local global i64 0, align 8
@AVE_IIRQC = common dso_local global i64 0, align 8
@AVE_IIRQC_BSCK = common dso_local global i32 0, align 4
@AVE_IIRQC_EN0 = common dso_local global i32 0, align 4
@AVE_INTM_COUNT = common dso_local global i32 0, align 4
@AVE_GI_RXIINT = common dso_local global i32 0, align 4
@AVE_GI_RXOVF = common dso_local global i32 0, align 4
@AVE_GI_TX = common dso_local global i32 0, align 4
@AVE_GI_RXDROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ave_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ave_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ave_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.ave_private* @netdev_priv(%struct.net_device* %8)
  store %struct.ave_private* %9, %struct.ave_private** %4, align 8
  %10 = load %struct.ave_private*, %struct.ave_private** %4, align 8
  %11 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @ave_irq_handler, align 4
  %14 = load i32, i32* @IRQF_SHARED, align 4
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = call i32 @request_irq(i32 %12, i32 %13, i32 %14, i32 %17, %struct.net_device* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %244

24:                                               ; preds = %1
  %25 = load %struct.ave_private*, %struct.ave_private** %4, align 8
  %26 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %25, i32 0, i32 6
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i8* @kcalloc(i32 %28, i32 1, i32 %29)
  %31 = load %struct.ave_private*, %struct.ave_private** %4, align 8
  %32 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %31, i32 0, i32 6
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 3
  store i8* %30, i8** %33, align 8
  %34 = load %struct.ave_private*, %struct.ave_private** %4, align 8
  %35 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %34, i32 0, i32 6
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 3
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %24
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %233

42:                                               ; preds = %24
  %43 = load %struct.ave_private*, %struct.ave_private** %4, align 8
  %44 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i8* @kcalloc(i32 %46, i32 1, i32 %47)
  %49 = load %struct.ave_private*, %struct.ave_private** %4, align 8
  %50 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 3
  store i8* %48, i8** %51, align 8
  %52 = load %struct.ave_private*, %struct.ave_private** %4, align 8
  %53 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %52, i32 0, i32 5
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 3
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %65, label %57

57:                                               ; preds = %42
  %58 = load %struct.ave_private*, %struct.ave_private** %4, align 8
  %59 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %58, i32 0, i32 6
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 3
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @kfree(i8* %61)
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %6, align 4
  br label %233

65:                                               ; preds = %42
  %66 = load %struct.ave_private*, %struct.ave_private** %4, align 8
  %67 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %66, i32 0, i32 6
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  store i64 0, i64* %68, align 8
  %69 = load %struct.ave_private*, %struct.ave_private** %4, align 8
  %70 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %69, i32 0, i32 6
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  store i64 0, i64* %71, align 8
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %88, %65
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.ave_private*, %struct.ave_private** %4, align 8
  %75 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %74, i32 0, i32 6
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %73, %77
  br i1 %78, label %79, label %91

79:                                               ; preds = %72
  %80 = load %struct.net_device*, %struct.net_device** %3, align 8
  %81 = load i32, i32* @AVE_DESCID_TX, align 4
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @ave_desc_write_cmdsts(%struct.net_device* %80, i32 %81, i32 %82, i32 0)
  %84 = load %struct.net_device*, %struct.net_device** %3, align 8
  %85 = load i32, i32* @AVE_DESCID_TX, align 4
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @ave_desc_write_addr(%struct.net_device* %84, i32 %85, i32 %86, i32 0)
  br label %88

88:                                               ; preds = %79
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %5, align 4
  br label %72

91:                                               ; preds = %72
  %92 = load i32, i32* @AVE_TXDC_ADDR_START, align 4
  %93 = load %struct.ave_private*, %struct.ave_private** %4, align 8
  %94 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %93, i32 0, i32 6
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.ave_private*, %struct.ave_private** %4, align 8
  %98 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = mul nsw i32 %96, %99
  %101 = shl i32 %100, 16
  %102 = load i32, i32* @AVE_TXDC_SIZE, align 4
  %103 = and i32 %101, %102
  %104 = or i32 %92, %103
  %105 = load %struct.ave_private*, %struct.ave_private** %4, align 8
  %106 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %105, i32 0, i32 4
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @AVE_TXDC, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @writel(i32 %104, i64 %109)
  %111 = load %struct.ave_private*, %struct.ave_private** %4, align 8
  %112 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %111, i32 0, i32 5
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 2
  store i64 0, i64* %113, align 8
  %114 = load %struct.ave_private*, %struct.ave_private** %4, align 8
  %115 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %114, i32 0, i32 5
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  store i64 0, i64* %116, align 8
  store i32 0, i32* %5, align 4
  br label %117

117:                                              ; preds = %131, %91
  %118 = load i32, i32* %5, align 4
  %119 = load %struct.ave_private*, %struct.ave_private** %4, align 8
  %120 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %119, i32 0, i32 5
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp slt i32 %118, %122
  br i1 %123, label %124, label %134

124:                                              ; preds = %117
  %125 = load %struct.net_device*, %struct.net_device** %3, align 8
  %126 = load i32, i32* %5, align 4
  %127 = call i64 @ave_rxdesc_prepare(%struct.net_device* %125, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  br label %134

130:                                              ; preds = %124
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %5, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %5, align 4
  br label %117

134:                                              ; preds = %129, %117
  %135 = load i32, i32* @AVE_RXDC0_ADDR_START, align 4
  %136 = load %struct.ave_private*, %struct.ave_private** %4, align 8
  %137 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %136, i32 0, i32 5
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.ave_private*, %struct.ave_private** %4, align 8
  %141 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = mul nsw i32 %139, %142
  %144 = shl i32 %143, 16
  %145 = load i32, i32* @AVE_RXDC0_SIZE, align 4
  %146 = and i32 %144, %145
  %147 = or i32 %135, %146
  %148 = load %struct.ave_private*, %struct.ave_private** %4, align 8
  %149 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %148, i32 0, i32 4
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @AVE_RXDC0, align 8
  %152 = add nsw i64 %150, %151
  %153 = call i32 @writel(i32 %147, i64 %152)
  %154 = load %struct.net_device*, %struct.net_device** %3, align 8
  %155 = load i32, i32* @AVE_DESC_START, align 4
  %156 = call i32 @ave_desc_switch(%struct.net_device* %154, i32 %155)
  %157 = load %struct.net_device*, %struct.net_device** %3, align 8
  %158 = call i32 @ave_pfsel_init(%struct.net_device* %157)
  %159 = load %struct.net_device*, %struct.net_device** %3, align 8
  %160 = call i32 @ave_macaddr_init(%struct.net_device* %159)
  %161 = load i32, i32* @AVE_RXCR_RXEN, align 4
  %162 = load i32, i32* @AVE_RXCR_FDUPEN, align 4
  %163 = or i32 %161, %162
  %164 = load i32, i32* @AVE_RXCR_DRPEN, align 4
  %165 = or i32 %163, %164
  %166 = load i32, i32* @AVE_RXCR_FLOCTR, align 4
  %167 = or i32 %165, %166
  %168 = load i32, i32* @AVE_MAX_ETHFRAME, align 4
  %169 = load i32, i32* @AVE_RXCR_MPSIZ_MASK, align 4
  %170 = and i32 %168, %169
  %171 = or i32 %167, %170
  store i32 %171, i32* %7, align 4
  %172 = load i32, i32* %7, align 4
  %173 = load %struct.ave_private*, %struct.ave_private** %4, align 8
  %174 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %173, i32 0, i32 4
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @AVE_RXCR, align 8
  %177 = add nsw i64 %175, %176
  %178 = call i32 @writel(i32 %172, i64 %177)
  %179 = load i32, i32* @AVE_TXCR_FLOCTR, align 4
  %180 = load %struct.ave_private*, %struct.ave_private** %4, align 8
  %181 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %180, i32 0, i32 4
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @AVE_TXCR, align 8
  %184 = add nsw i64 %182, %183
  %185 = call i32 @writel(i32 %179, i64 %184)
  %186 = load %struct.ave_private*, %struct.ave_private** %4, align 8
  %187 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %186, i32 0, i32 4
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @AVE_IIRQC, align 8
  %190 = add nsw i64 %188, %189
  %191 = call i32 @readl(i64 %190)
  %192 = load i32, i32* @AVE_IIRQC_BSCK, align 4
  %193 = and i32 %191, %192
  store i32 %193, i32* %7, align 4
  %194 = load i32, i32* @AVE_IIRQC_EN0, align 4
  %195 = load i32, i32* @AVE_INTM_COUNT, align 4
  %196 = shl i32 %195, 16
  %197 = or i32 %194, %196
  %198 = load i32, i32* %7, align 4
  %199 = or i32 %198, %197
  store i32 %199, i32* %7, align 4
  %200 = load i32, i32* %7, align 4
  %201 = load %struct.ave_private*, %struct.ave_private** %4, align 8
  %202 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %201, i32 0, i32 4
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @AVE_IIRQC, align 8
  %205 = add nsw i64 %203, %204
  %206 = call i32 @writel(i32 %200, i64 %205)
  %207 = load i32, i32* @AVE_GI_RXIINT, align 4
  %208 = load i32, i32* @AVE_GI_RXOVF, align 4
  %209 = or i32 %207, %208
  %210 = load i32, i32* @AVE_GI_TX, align 4
  %211 = or i32 %209, %210
  %212 = load i32, i32* @AVE_GI_RXDROP, align 4
  %213 = or i32 %211, %212
  store i32 %213, i32* %7, align 4
  %214 = load %struct.net_device*, %struct.net_device** %3, align 8
  %215 = load i32, i32* %7, align 4
  %216 = call i32 @ave_irq_restore(%struct.net_device* %214, i32 %215)
  %217 = load %struct.ave_private*, %struct.ave_private** %4, align 8
  %218 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %217, i32 0, i32 3
  %219 = call i32 @napi_enable(i32* %218)
  %220 = load %struct.ave_private*, %struct.ave_private** %4, align 8
  %221 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %220, i32 0, i32 2
  %222 = call i32 @napi_enable(i32* %221)
  %223 = load %struct.net_device*, %struct.net_device** %3, align 8
  %224 = getelementptr inbounds %struct.net_device, %struct.net_device* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @phy_start(i32 %225)
  %227 = load %struct.net_device*, %struct.net_device** %3, align 8
  %228 = getelementptr inbounds %struct.net_device, %struct.net_device* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @phy_start_aneg(i32 %229)
  %231 = load %struct.net_device*, %struct.net_device** %3, align 8
  %232 = call i32 @netif_start_queue(%struct.net_device* %231)
  store i32 0, i32* %2, align 4
  br label %244

233:                                              ; preds = %57, %39
  %234 = load %struct.ave_private*, %struct.ave_private** %4, align 8
  %235 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @disable_irq(i32 %236)
  %238 = load %struct.ave_private*, %struct.ave_private** %4, align 8
  %239 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.net_device*, %struct.net_device** %3, align 8
  %242 = call i32 @free_irq(i32 %240, %struct.net_device* %241)
  %243 = load i32, i32* %6, align 4
  store i32 %243, i32* %2, align 4
  br label %244

244:                                              ; preds = %233, %134, %22
  %245 = load i32, i32* %2, align 4
  ret i32 %245
}

declare dso_local %struct.ave_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @ave_desc_write_cmdsts(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @ave_desc_write_addr(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @ave_rxdesc_prepare(%struct.net_device*, i32) #1

declare dso_local i32 @ave_desc_switch(%struct.net_device*, i32) #1

declare dso_local i32 @ave_pfsel_init(%struct.net_device*) #1

declare dso_local i32 @ave_macaddr_init(%struct.net_device*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @ave_irq_restore(%struct.net_device*, i32) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @phy_start(i32) #1

declare dso_local i32 @phy_start_aneg(i32) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
