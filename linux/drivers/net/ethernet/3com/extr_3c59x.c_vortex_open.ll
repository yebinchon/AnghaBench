; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c59x.c_vortex_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c59x.c_vortex_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.vortex_private = type { i32, %struct.sk_buff**, %struct.TYPE_2__*, i32, i64 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i64 }

@vortex_boomerang_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%s: Could not reserve IRQ %d\0A\00", align 1
@vortex_debug = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"%s:  Filling in the Rx ring.\0A\00", align 1
@RX_RING_SIZE = common dso_local global i32 0, align 4
@PKT_BUF_SZ = common dso_local global i32 0, align 4
@LAST_FRAG = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"%s: no memory for rx ring\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"%s: vortex_open() fails: returning %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @vortex_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vortex_open(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.vortex_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.vortex_private* @netdev_priv(%struct.net_device* %8)
  store %struct.vortex_private* %9, %struct.vortex_private** %3, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @vortex_boomerang_interrupt, align 4
  %14 = load i32, i32* @IRQF_SHARED, align 4
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = call i32 @request_irq(i32 %12, i32 %13, i32 %14, i32 %17, %struct.net_device* %18)
  store i32 %19, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %1
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27)
  br label %204

29:                                               ; preds = %1
  %30 = load %struct.vortex_private*, %struct.vortex_private** %3, align 8
  %31 = getelementptr inbounds %struct.vortex_private, %struct.vortex_private* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %158

34:                                               ; preds = %29
  %35 = load i32, i32* @vortex_debug, align 4
  %36 = icmp sgt i32 %35, 2
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load %struct.net_device*, %struct.net_device** %2, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %37, %34
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %131, %42
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @RX_RING_SIZE, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %134

47:                                               ; preds = %43
  %48 = load %struct.vortex_private*, %struct.vortex_private** %3, align 8
  %49 = getelementptr inbounds %struct.vortex_private, %struct.vortex_private* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = mul i64 4, %54
  %56 = add i64 %51, %55
  %57 = trunc i64 %56 to i32
  %58 = call i8* @cpu_to_le32(i32 %57)
  %59 = load %struct.vortex_private*, %struct.vortex_private** %3, align 8
  %60 = getelementptr inbounds %struct.vortex_private, %struct.vortex_private* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i8* %58, i8** %65, align 8
  %66 = load %struct.vortex_private*, %struct.vortex_private** %3, align 8
  %67 = getelementptr inbounds %struct.vortex_private, %struct.vortex_private* %66, i32 0, i32 2
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 3
  store i64 0, i64* %72, align 8
  %73 = load i32, i32* @PKT_BUF_SZ, align 4
  %74 = load i32, i32* @LAST_FRAG, align 4
  %75 = or i32 %73, %74
  %76 = call i8* @cpu_to_le32(i32 %75)
  %77 = load %struct.vortex_private*, %struct.vortex_private** %3, align 8
  %78 = getelementptr inbounds %struct.vortex_private, %struct.vortex_private* %77, i32 0, i32 2
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 2
  store i8* %76, i8** %83, align 8
  %84 = load %struct.net_device*, %struct.net_device** %2, align 8
  %85 = load i32, i32* @PKT_BUF_SZ, align 4
  %86 = sext i32 %85 to i64
  %87 = load i64, i64* @NET_IP_ALIGN, align 8
  %88 = add nsw i64 %86, %87
  %89 = load i32, i32* @GFP_KERNEL, align 4
  %90 = call %struct.sk_buff* @__netdev_alloc_skb(%struct.net_device* %84, i64 %88, i32 %89)
  store %struct.sk_buff* %90, %struct.sk_buff** %7, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %92 = load %struct.vortex_private*, %struct.vortex_private** %3, align 8
  %93 = getelementptr inbounds %struct.vortex_private, %struct.vortex_private* %92, i32 0, i32 1
  %94 = load %struct.sk_buff**, %struct.sk_buff*** %93, align 8
  %95 = load i32, i32* %4, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %94, i64 %96
  store %struct.sk_buff* %91, %struct.sk_buff** %97, align 8
  %98 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %99 = icmp eq %struct.sk_buff* %98, null
  br i1 %99, label %100, label %101

100:                                              ; preds = %47
  br label %134

101:                                              ; preds = %47
  %102 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %103 = load i64, i64* @NET_IP_ALIGN, align 8
  %104 = call i32 @skb_reserve(%struct.sk_buff* %102, i64 %103)
  %105 = load %struct.vortex_private*, %struct.vortex_private** %3, align 8
  %106 = getelementptr inbounds %struct.vortex_private, %struct.vortex_private* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %109 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @PKT_BUF_SZ, align 4
  %112 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %113 = call i32 @dma_map_single(i32 %107, i32 %110, i32 %111, i32 %112)
  store i32 %113, i32* %6, align 4
  %114 = load %struct.vortex_private*, %struct.vortex_private** %3, align 8
  %115 = getelementptr inbounds %struct.vortex_private, %struct.vortex_private* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = call i64 @dma_mapping_error(i32 %116, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %101
  br label %134

121:                                              ; preds = %101
  %122 = load i32, i32* %6, align 4
  %123 = call i8* @cpu_to_le32(i32 %122)
  %124 = load %struct.vortex_private*, %struct.vortex_private** %3, align 8
  %125 = getelementptr inbounds %struct.vortex_private, %struct.vortex_private* %124, i32 0, i32 2
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = load i32, i32* %4, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 1
  store i8* %123, i8** %130, align 8
  br label %131

131:                                              ; preds = %121
  %132 = load i32, i32* %4, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %4, align 4
  br label %43

134:                                              ; preds = %120, %100, %43
  %135 = load i32, i32* %4, align 4
  %136 = load i32, i32* @RX_RING_SIZE, align 4
  %137 = icmp ne i32 %135, %136
  br i1 %137, label %138, label %145

138:                                              ; preds = %134
  %139 = load %struct.net_device*, %struct.net_device** %2, align 8
  %140 = getelementptr inbounds %struct.net_device, %struct.net_device* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @pr_emerg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %141)
  %143 = load i32, i32* @ENOMEM, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %5, align 4
  br label %165

145:                                              ; preds = %134
  %146 = load %struct.vortex_private*, %struct.vortex_private** %3, align 8
  %147 = getelementptr inbounds %struct.vortex_private, %struct.vortex_private* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i8* @cpu_to_le32(i32 %148)
  %150 = load %struct.vortex_private*, %struct.vortex_private** %3, align 8
  %151 = getelementptr inbounds %struct.vortex_private, %struct.vortex_private* %150, i32 0, i32 2
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = load i32, i32* %4, align 4
  %154 = sub nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  store i8* %149, i8** %157, align 8
  br label %158

158:                                              ; preds = %145, %29
  %159 = load %struct.net_device*, %struct.net_device** %2, align 8
  %160 = call i32 @vortex_up(%struct.net_device* %159)
  store i32 %160, i32* %5, align 4
  %161 = load i32, i32* %5, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %158
  br label %214

164:                                              ; preds = %158
  br label %165

165:                                              ; preds = %164, %138
  store i32 0, i32* %4, align 4
  br label %166

166:                                              ; preds = %195, %165
  %167 = load i32, i32* %4, align 4
  %168 = load i32, i32* @RX_RING_SIZE, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %198

170:                                              ; preds = %166
  %171 = load %struct.vortex_private*, %struct.vortex_private** %3, align 8
  %172 = getelementptr inbounds %struct.vortex_private, %struct.vortex_private* %171, i32 0, i32 1
  %173 = load %struct.sk_buff**, %struct.sk_buff*** %172, align 8
  %174 = load i32, i32* %4, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %173, i64 %175
  %177 = load %struct.sk_buff*, %struct.sk_buff** %176, align 8
  %178 = icmp ne %struct.sk_buff* %177, null
  br i1 %178, label %179, label %194

179:                                              ; preds = %170
  %180 = load %struct.vortex_private*, %struct.vortex_private** %3, align 8
  %181 = getelementptr inbounds %struct.vortex_private, %struct.vortex_private* %180, i32 0, i32 1
  %182 = load %struct.sk_buff**, %struct.sk_buff*** %181, align 8
  %183 = load i32, i32* %4, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %182, i64 %184
  %186 = load %struct.sk_buff*, %struct.sk_buff** %185, align 8
  %187 = call i32 @dev_kfree_skb(%struct.sk_buff* %186)
  %188 = load %struct.vortex_private*, %struct.vortex_private** %3, align 8
  %189 = getelementptr inbounds %struct.vortex_private, %struct.vortex_private* %188, i32 0, i32 1
  %190 = load %struct.sk_buff**, %struct.sk_buff*** %189, align 8
  %191 = load i32, i32* %4, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %190, i64 %192
  store %struct.sk_buff* null, %struct.sk_buff** %193, align 8
  br label %194

194:                                              ; preds = %179, %170
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %4, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %4, align 4
  br label %166

198:                                              ; preds = %166
  %199 = load %struct.net_device*, %struct.net_device** %2, align 8
  %200 = getelementptr inbounds %struct.net_device, %struct.net_device* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.net_device*, %struct.net_device** %2, align 8
  %203 = call i32 @free_irq(i32 %201, %struct.net_device* %202)
  br label %204

204:                                              ; preds = %198, %21
  %205 = load i32, i32* @vortex_debug, align 4
  %206 = icmp sgt i32 %205, 1
  br i1 %206, label %207, label %213

207:                                              ; preds = %204
  %208 = load %struct.net_device*, %struct.net_device** %2, align 8
  %209 = getelementptr inbounds %struct.net_device, %struct.net_device* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* %5, align 4
  %212 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %210, i32 %211)
  br label %213

213:                                              ; preds = %207, %204
  br label %214

214:                                              ; preds = %213, %163
  %215 = load i32, i32* %5, align 4
  ret i32 %215
}

declare dso_local %struct.vortex_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local %struct.sk_buff* @__netdev_alloc_skb(%struct.net_device*, i64, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @pr_emerg(i8*, i32) #1

declare dso_local i32 @vortex_up(%struct.net_device*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
