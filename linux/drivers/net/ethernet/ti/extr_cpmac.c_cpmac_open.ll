; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpmac.c_cpmac_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpmac.c_cpmac_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32, i32 }
%struct.cpmac_priv = type { i64, i32, i64, %struct.cpmac_desc*, %struct.cpmac_desc*, i32, i32, i32, i32 }
%struct.cpmac_desc = type { %struct.sk_buff*, i64, i8*, %struct.cpmac_desc*, i64, %struct.cpmac_desc*, i32, i32, i8* }
%struct.sk_buff = type { i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"regs\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to request registers\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to remap registers\0A\00", align 1
@CPMAC_QUEUES = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CPMAC_SKB_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@CPMAC_OWN = common dso_local global i32 0, align 4
@cpmac_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"failed to obtain irq\0A\00", align 1
@cpmac_hw_error = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @cpmac_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpmac_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cpmac_priv*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca %struct.cpmac_desc*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.cpmac_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.cpmac_priv* %12, %struct.cpmac_priv** %7, align 8
  %13 = load %struct.cpmac_priv*, %struct.cpmac_priv** %7, align 8
  %14 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %13, i32 0, i32 8
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IORESOURCE_MEM, align 4
  %17 = call %struct.resource* @platform_get_resource_byname(i32 %15, i32 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %17, %struct.resource** %8, align 8
  %18 = load %struct.resource*, %struct.resource** %8, align 8
  %19 = getelementptr inbounds %struct.resource, %struct.resource* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.resource*, %struct.resource** %8, align 8
  %22 = call i32 @resource_size(%struct.resource* %21)
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @request_mem_region(i32 %20, i32 %22, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %1
  %29 = load %struct.cpmac_priv*, %struct.cpmac_priv** %7, align 8
  %30 = call i64 @netif_msg_drv(%struct.cpmac_priv* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  %34 = call i32 @netdev_err(%struct.net_device* %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %28
  %36 = load i32, i32* @ENXIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %314

38:                                               ; preds = %1
  %39 = load %struct.resource*, %struct.resource** %8, align 8
  %40 = getelementptr inbounds %struct.resource, %struct.resource* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.resource*, %struct.resource** %8, align 8
  %43 = call i32 @resource_size(%struct.resource* %42)
  %44 = call i32 @ioremap(i32 %41, i32 %43)
  %45 = load %struct.cpmac_priv*, %struct.cpmac_priv** %7, align 8
  %46 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = load %struct.cpmac_priv*, %struct.cpmac_priv** %7, align 8
  %48 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %38
  %52 = load %struct.cpmac_priv*, %struct.cpmac_priv** %7, align 8
  %53 = call i64 @netif_msg_drv(%struct.cpmac_priv* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load %struct.net_device*, %struct.net_device** %3, align 8
  %57 = call i32 @netdev_err(%struct.net_device* %56, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %51
  %59 = load i32, i32* @ENXIO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %6, align 4
  br label %307

61:                                               ; preds = %38
  %62 = load %struct.cpmac_priv*, %struct.cpmac_priv** %7, align 8
  %63 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @CPMAC_QUEUES, align 8
  %66 = add i64 %64, %65
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %5, align 4
  %68 = load %struct.net_device*, %struct.net_device** %3, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 0
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = mul i64 64, %71
  %73 = trunc i64 %72 to i32
  %74 = load %struct.cpmac_priv*, %struct.cpmac_priv** %7, align 8
  %75 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %74, i32 0, i32 2
  %76 = load i32, i32* @GFP_KERNEL, align 4
  %77 = call %struct.cpmac_desc* @dma_alloc_coherent(i32* %69, i32 %73, i64* %75, i32 %76)
  %78 = load %struct.cpmac_priv*, %struct.cpmac_priv** %7, align 8
  %79 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %78, i32 0, i32 3
  store %struct.cpmac_desc* %77, %struct.cpmac_desc** %79, align 8
  %80 = load %struct.cpmac_priv*, %struct.cpmac_priv** %7, align 8
  %81 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %80, i32 0, i32 3
  %82 = load %struct.cpmac_desc*, %struct.cpmac_desc** %81, align 8
  %83 = icmp ne %struct.cpmac_desc* %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %61
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %6, align 4
  br label %302

87:                                               ; preds = %61
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %107, %87
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* %5, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %110

92:                                               ; preds = %88
  %93 = load %struct.cpmac_priv*, %struct.cpmac_priv** %7, align 8
  %94 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* %4, align 4
  %97 = sext i32 %96 to i64
  %98 = mul i64 64, %97
  %99 = add i64 %95, %98
  %100 = load %struct.cpmac_priv*, %struct.cpmac_priv** %7, align 8
  %101 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %100, i32 0, i32 3
  %102 = load %struct.cpmac_desc*, %struct.cpmac_desc** %101, align 8
  %103 = load i32, i32* %4, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.cpmac_desc, %struct.cpmac_desc* %102, i64 %104
  %106 = getelementptr inbounds %struct.cpmac_desc, %struct.cpmac_desc* %105, i32 0, i32 4
  store i64 %99, i64* %106, align 8
  br label %107

107:                                              ; preds = %92
  %108 = load i32, i32* %4, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %4, align 4
  br label %88

110:                                              ; preds = %88
  %111 = load %struct.cpmac_priv*, %struct.cpmac_priv** %7, align 8
  %112 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %111, i32 0, i32 3
  %113 = load %struct.cpmac_desc*, %struct.cpmac_desc** %112, align 8
  %114 = load i64, i64* @CPMAC_QUEUES, align 8
  %115 = getelementptr inbounds %struct.cpmac_desc, %struct.cpmac_desc* %113, i64 %114
  %116 = load %struct.cpmac_priv*, %struct.cpmac_priv** %7, align 8
  %117 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %116, i32 0, i32 4
  store %struct.cpmac_desc* %115, %struct.cpmac_desc** %117, align 8
  store i32 0, i32* %4, align 4
  %118 = load %struct.cpmac_priv*, %struct.cpmac_priv** %7, align 8
  %119 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %118, i32 0, i32 4
  %120 = load %struct.cpmac_desc*, %struct.cpmac_desc** %119, align 8
  store %struct.cpmac_desc* %120, %struct.cpmac_desc** %9, align 8
  br label %121

121:                                              ; preds = %193, %110
  %122 = load i32, i32* %4, align 4
  %123 = sext i32 %122 to i64
  %124 = load %struct.cpmac_priv*, %struct.cpmac_priv** %7, align 8
  %125 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ult i64 %123, %126
  br i1 %127, label %128, label %198

128:                                              ; preds = %121
  %129 = load %struct.net_device*, %struct.net_device** %3, align 8
  %130 = load i32, i32* @CPMAC_SKB_SIZE, align 4
  %131 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device* %129, i32 %130)
  store %struct.sk_buff* %131, %struct.sk_buff** %10, align 8
  %132 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %133 = icmp ne %struct.sk_buff* %132, null
  %134 = xor i1 %133, true
  %135 = zext i1 %134 to i32
  %136 = call i64 @unlikely(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %128
  %139 = load i32, i32* @ENOMEM, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %6, align 4
  br label %243

141:                                              ; preds = %128
  %142 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %143 = load %struct.cpmac_desc*, %struct.cpmac_desc** %9, align 8
  %144 = getelementptr inbounds %struct.cpmac_desc, %struct.cpmac_desc* %143, i32 0, i32 0
  store %struct.sk_buff* %142, %struct.sk_buff** %144, align 8
  %145 = load %struct.net_device*, %struct.net_device** %3, align 8
  %146 = getelementptr inbounds %struct.net_device, %struct.net_device* %145, i32 0, i32 0
  %147 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %148 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @CPMAC_SKB_SIZE, align 4
  %151 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %152 = call i64 @dma_map_single(i32* %146, i32 %149, i32 %150, i32 %151)
  %153 = load %struct.cpmac_desc*, %struct.cpmac_desc** %9, align 8
  %154 = getelementptr inbounds %struct.cpmac_desc, %struct.cpmac_desc* %153, i32 0, i32 1
  store i64 %152, i64* %154, align 8
  %155 = load %struct.cpmac_desc*, %struct.cpmac_desc** %9, align 8
  %156 = getelementptr inbounds %struct.cpmac_desc, %struct.cpmac_desc* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = inttoptr i64 %157 to i8*
  %159 = load %struct.cpmac_desc*, %struct.cpmac_desc** %9, align 8
  %160 = getelementptr inbounds %struct.cpmac_desc, %struct.cpmac_desc* %159, i32 0, i32 8
  store i8* %158, i8** %160, align 8
  %161 = load i32, i32* @CPMAC_SKB_SIZE, align 4
  %162 = load %struct.cpmac_desc*, %struct.cpmac_desc** %9, align 8
  %163 = getelementptr inbounds %struct.cpmac_desc, %struct.cpmac_desc* %162, i32 0, i32 7
  store i32 %161, i32* %163, align 4
  %164 = load i32, i32* @CPMAC_OWN, align 4
  %165 = load %struct.cpmac_desc*, %struct.cpmac_desc** %9, align 8
  %166 = getelementptr inbounds %struct.cpmac_desc, %struct.cpmac_desc* %165, i32 0, i32 6
  store i32 %164, i32* %166, align 8
  %167 = load %struct.cpmac_priv*, %struct.cpmac_priv** %7, align 8
  %168 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %167, i32 0, i32 4
  %169 = load %struct.cpmac_desc*, %struct.cpmac_desc** %168, align 8
  %170 = load i32, i32* %4, align 4
  %171 = add nsw i32 %170, 1
  %172 = sext i32 %171 to i64
  %173 = load %struct.cpmac_priv*, %struct.cpmac_priv** %7, align 8
  %174 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = urem i64 %172, %175
  %177 = getelementptr inbounds %struct.cpmac_desc, %struct.cpmac_desc* %169, i64 %176
  %178 = load %struct.cpmac_desc*, %struct.cpmac_desc** %9, align 8
  %179 = getelementptr inbounds %struct.cpmac_desc, %struct.cpmac_desc* %178, i32 0, i32 5
  store %struct.cpmac_desc* %177, %struct.cpmac_desc** %179, align 8
  %180 = load %struct.cpmac_desc*, %struct.cpmac_desc** %9, align 8
  %181 = load %struct.cpmac_desc*, %struct.cpmac_desc** %9, align 8
  %182 = getelementptr inbounds %struct.cpmac_desc, %struct.cpmac_desc* %181, i32 0, i32 5
  %183 = load %struct.cpmac_desc*, %struct.cpmac_desc** %182, align 8
  %184 = getelementptr inbounds %struct.cpmac_desc, %struct.cpmac_desc* %183, i32 0, i32 3
  store %struct.cpmac_desc* %180, %struct.cpmac_desc** %184, align 8
  %185 = load %struct.cpmac_desc*, %struct.cpmac_desc** %9, align 8
  %186 = getelementptr inbounds %struct.cpmac_desc, %struct.cpmac_desc* %185, i32 0, i32 5
  %187 = load %struct.cpmac_desc*, %struct.cpmac_desc** %186, align 8
  %188 = getelementptr inbounds %struct.cpmac_desc, %struct.cpmac_desc* %187, i32 0, i32 4
  %189 = load i64, i64* %188, align 8
  %190 = inttoptr i64 %189 to i8*
  %191 = load %struct.cpmac_desc*, %struct.cpmac_desc** %9, align 8
  %192 = getelementptr inbounds %struct.cpmac_desc, %struct.cpmac_desc* %191, i32 0, i32 2
  store i8* %190, i8** %192, align 8
  br label %193

193:                                              ; preds = %141
  %194 = load i32, i32* %4, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %4, align 4
  %196 = load %struct.cpmac_desc*, %struct.cpmac_desc** %9, align 8
  %197 = getelementptr inbounds %struct.cpmac_desc, %struct.cpmac_desc* %196, i32 1
  store %struct.cpmac_desc* %197, %struct.cpmac_desc** %9, align 8
  br label %121

198:                                              ; preds = %121
  %199 = load %struct.cpmac_priv*, %struct.cpmac_priv** %7, align 8
  %200 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %199, i32 0, i32 4
  %201 = load %struct.cpmac_desc*, %struct.cpmac_desc** %200, align 8
  %202 = getelementptr inbounds %struct.cpmac_desc, %struct.cpmac_desc* %201, i32 0, i32 3
  %203 = load %struct.cpmac_desc*, %struct.cpmac_desc** %202, align 8
  %204 = getelementptr inbounds %struct.cpmac_desc, %struct.cpmac_desc* %203, i32 0, i32 2
  store i8* null, i8** %204, align 8
  %205 = load %struct.net_device*, %struct.net_device** %3, align 8
  %206 = getelementptr inbounds %struct.net_device, %struct.net_device* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @cpmac_irq, align 4
  %209 = load i32, i32* @IRQF_SHARED, align 4
  %210 = load %struct.net_device*, %struct.net_device** %3, align 8
  %211 = getelementptr inbounds %struct.net_device, %struct.net_device* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.net_device*, %struct.net_device** %3, align 8
  %214 = call i32 @request_irq(i32 %207, i32 %208, i32 %209, i32 %212, %struct.net_device* %213)
  store i32 %214, i32* %6, align 4
  %215 = load i32, i32* %6, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %225

217:                                              ; preds = %198
  %218 = load %struct.cpmac_priv*, %struct.cpmac_priv** %7, align 8
  %219 = call i64 @netif_msg_drv(%struct.cpmac_priv* %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %217
  %222 = load %struct.net_device*, %struct.net_device** %3, align 8
  %223 = call i32 @netdev_err(%struct.net_device* %222, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %224

224:                                              ; preds = %221, %217
  br label %242

225:                                              ; preds = %198
  %226 = load %struct.cpmac_priv*, %struct.cpmac_priv** %7, align 8
  %227 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %226, i32 0, i32 7
  %228 = call i32 @atomic_set(i32* %227, i32 0)
  %229 = load %struct.cpmac_priv*, %struct.cpmac_priv** %7, align 8
  %230 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %229, i32 0, i32 6
  %231 = load i32, i32* @cpmac_hw_error, align 4
  %232 = call i32 @INIT_WORK(i32* %230, i32 %231)
  %233 = load %struct.net_device*, %struct.net_device** %3, align 8
  %234 = call i32 @cpmac_hw_start(%struct.net_device* %233)
  %235 = load %struct.cpmac_priv*, %struct.cpmac_priv** %7, align 8
  %236 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %235, i32 0, i32 5
  %237 = call i32 @napi_enable(i32* %236)
  %238 = load %struct.net_device*, %struct.net_device** %3, align 8
  %239 = getelementptr inbounds %struct.net_device, %struct.net_device* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @phy_start(i32 %240)
  store i32 0, i32* %2, align 4
  br label %316

242:                                              ; preds = %224
  br label %243

243:                                              ; preds = %242, %138
  store i32 0, i32* %4, align 4
  br label %244

244:                                              ; preds = %285, %243
  %245 = load i32, i32* %4, align 4
  %246 = sext i32 %245 to i64
  %247 = load %struct.cpmac_priv*, %struct.cpmac_priv** %7, align 8
  %248 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = icmp ult i64 %246, %249
  br i1 %250, label %251, label %288

251:                                              ; preds = %244
  %252 = load %struct.cpmac_priv*, %struct.cpmac_priv** %7, align 8
  %253 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %252, i32 0, i32 4
  %254 = load %struct.cpmac_desc*, %struct.cpmac_desc** %253, align 8
  %255 = load i32, i32* %4, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.cpmac_desc, %struct.cpmac_desc* %254, i64 %256
  %258 = getelementptr inbounds %struct.cpmac_desc, %struct.cpmac_desc* %257, i32 0, i32 0
  %259 = load %struct.sk_buff*, %struct.sk_buff** %258, align 8
  %260 = icmp ne %struct.sk_buff* %259, null
  br i1 %260, label %261, label %284

261:                                              ; preds = %251
  %262 = load %struct.net_device*, %struct.net_device** %3, align 8
  %263 = getelementptr inbounds %struct.net_device, %struct.net_device* %262, i32 0, i32 0
  %264 = load %struct.cpmac_priv*, %struct.cpmac_priv** %7, align 8
  %265 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %264, i32 0, i32 4
  %266 = load %struct.cpmac_desc*, %struct.cpmac_desc** %265, align 8
  %267 = load i32, i32* %4, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.cpmac_desc, %struct.cpmac_desc* %266, i64 %268
  %270 = getelementptr inbounds %struct.cpmac_desc, %struct.cpmac_desc* %269, i32 0, i32 1
  %271 = load i64, i64* %270, align 8
  %272 = load i32, i32* @CPMAC_SKB_SIZE, align 4
  %273 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %274 = call i32 @dma_unmap_single(i32* %263, i64 %271, i32 %272, i32 %273)
  %275 = load %struct.cpmac_priv*, %struct.cpmac_priv** %7, align 8
  %276 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %275, i32 0, i32 4
  %277 = load %struct.cpmac_desc*, %struct.cpmac_desc** %276, align 8
  %278 = load i32, i32* %4, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.cpmac_desc, %struct.cpmac_desc* %277, i64 %279
  %281 = getelementptr inbounds %struct.cpmac_desc, %struct.cpmac_desc* %280, i32 0, i32 0
  %282 = load %struct.sk_buff*, %struct.sk_buff** %281, align 8
  %283 = call i32 @kfree_skb(%struct.sk_buff* %282)
  br label %284

284:                                              ; preds = %261, %251
  br label %285

285:                                              ; preds = %284
  %286 = load i32, i32* %4, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %4, align 4
  br label %244

288:                                              ; preds = %244
  %289 = load %struct.net_device*, %struct.net_device** %3, align 8
  %290 = getelementptr inbounds %struct.net_device, %struct.net_device* %289, i32 0, i32 0
  %291 = load i32, i32* %5, align 4
  %292 = sext i32 %291 to i64
  %293 = mul i64 64, %292
  %294 = trunc i64 %293 to i32
  %295 = load %struct.cpmac_priv*, %struct.cpmac_priv** %7, align 8
  %296 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %295, i32 0, i32 3
  %297 = load %struct.cpmac_desc*, %struct.cpmac_desc** %296, align 8
  %298 = load %struct.cpmac_priv*, %struct.cpmac_priv** %7, align 8
  %299 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %298, i32 0, i32 2
  %300 = load i64, i64* %299, align 8
  %301 = call i32 @dma_free_coherent(i32* %290, i32 %294, %struct.cpmac_desc* %297, i64 %300)
  br label %302

302:                                              ; preds = %288, %84
  %303 = load %struct.cpmac_priv*, %struct.cpmac_priv** %7, align 8
  %304 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 8
  %306 = call i32 @iounmap(i32 %305)
  br label %307

307:                                              ; preds = %302, %58
  %308 = load %struct.resource*, %struct.resource** %8, align 8
  %309 = getelementptr inbounds %struct.resource, %struct.resource* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 4
  %311 = load %struct.resource*, %struct.resource** %8, align 8
  %312 = call i32 @resource_size(%struct.resource* %311)
  %313 = call i32 @release_mem_region(i32 %310, i32 %312)
  br label %314

314:                                              ; preds = %307, %35
  %315 = load i32, i32* %6, align 4
  store i32 %315, i32* %2, align 4
  br label %316

316:                                              ; preds = %314, %225
  %317 = load i32, i32* %2, align 4
  ret i32 %317
}

declare dso_local %struct.cpmac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.resource* @platform_get_resource_byname(i32, i32, i8*) #1

declare dso_local i32 @request_mem_region(i32, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i64 @netif_msg_drv(%struct.cpmac_priv*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local %struct.cpmac_desc* @dma_alloc_coherent(i32*, i32, i64*, i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @dma_map_single(i32*, i32, i32, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @cpmac_hw_start(%struct.net_device*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @phy_start(i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i64, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, %struct.cpmac_desc*, i64) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
