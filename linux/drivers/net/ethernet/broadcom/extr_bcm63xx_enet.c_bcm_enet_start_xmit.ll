; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcm63xx_enet.c_bcm_enet_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcm63xx_enet.c_bcm_enet_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.bcm_enet_priv = type { i64, i32, i64, i32, i32, i32, i32, %struct.TYPE_3__*, %struct.sk_buff**, %struct.bcm_enet_desc*, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.bcm_enet_desc = type { i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"xmit called with no tx desc available?\0A\00", align 1
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMADESC_LENGTH_SHIFT = common dso_local global i32 0, align 4
@DMADESC_LENGTH_MASK = common dso_local global i32 0, align 4
@DMADESC_ESOP_MASK = common dso_local global i32 0, align 4
@DMADESC_APPEND_CRC = common dso_local global i32 0, align 4
@DMADESC_OWNER_MASK = common dso_local global i32 0, align 4
@DMADESC_WRAP_MASK = common dso_local global i32 0, align 4
@ENETDMAC_CHANCFG = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @bcm_enet_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_enet_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.bcm_enet_priv*, align 8
  %6 = alloca %struct.bcm_enet_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.bcm_enet_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.bcm_enet_priv* %13, %struct.bcm_enet_priv** %5, align 8
  %14 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %15 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %14, i32 0, i32 3
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %18 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %2
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = call i32 @netif_stop_queue(%struct.net_device* %26)
  %28 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %29 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %28, i32 0, i32 7
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %33, i32* %8, align 4
  br label %183

34:                                               ; preds = %2
  %35 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %36 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %35, i32 0, i32 10
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %73

39:                                               ; preds = %34
  %40 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %42, 64
  br i1 %43, label %44, label %73

44:                                               ; preds = %39
  %45 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 64, %47
  store i32 %48, i32* %9, align 4
  %49 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %50 = call i32 @skb_tailroom(%struct.sk_buff* %49)
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %44
  %57 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @GFP_ATOMIC, align 4
  %60 = call %struct.sk_buff* @skb_copy_expand(%struct.sk_buff* %57, i32 0, i32 %58, i32 %59)
  store %struct.sk_buff* %60, %struct.sk_buff** %11, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %62 = icmp ne %struct.sk_buff* %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %56
  %64 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %64, i32* %8, align 4
  br label %183

65:                                               ; preds = %56
  %66 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %67 = call i32 @dev_kfree_skb(%struct.sk_buff* %66)
  %68 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  store %struct.sk_buff* %68, %struct.sk_buff** %3, align 8
  br label %69

69:                                               ; preds = %65, %44
  %70 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %71 = load i32, i32* %9, align 4
  %72 = call i8* @skb_put_zero(%struct.sk_buff* %70, i32 %71)
  store i8* %72, i8** %10, align 8
  br label %73

73:                                               ; preds = %69, %39, %34
  %74 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %75 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %74, i32 0, i32 9
  %76 = load %struct.bcm_enet_desc*, %struct.bcm_enet_desc** %75, align 8
  %77 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %78 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.bcm_enet_desc, %struct.bcm_enet_desc* %76, i64 %79
  store %struct.bcm_enet_desc* %80, %struct.bcm_enet_desc** %6, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %82 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %83 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %82, i32 0, i32 8
  %84 = load %struct.sk_buff**, %struct.sk_buff*** %83, align 8
  %85 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %86 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %84, i64 %87
  store %struct.sk_buff* %81, %struct.sk_buff** %88, align 8
  %89 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %90 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %89, i32 0, i32 7
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %94 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %97 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @DMA_TO_DEVICE, align 4
  %100 = call i32 @dma_map_single(i32* %92, i32 %95, i32 %98, i32 %99)
  %101 = load %struct.bcm_enet_desc*, %struct.bcm_enet_desc** %6, align 8
  %102 = getelementptr inbounds %struct.bcm_enet_desc, %struct.bcm_enet_desc* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %104 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @DMADESC_LENGTH_SHIFT, align 4
  %107 = shl i32 %105, %106
  %108 = load i32, i32* @DMADESC_LENGTH_MASK, align 4
  %109 = and i32 %107, %108
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* @DMADESC_ESOP_MASK, align 4
  %111 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %112 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = ashr i32 %110, %113
  %115 = load i32, i32* @DMADESC_APPEND_CRC, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @DMADESC_OWNER_MASK, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* %7, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %7, align 4
  %121 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %122 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = add i64 %123, 1
  store i64 %124, i64* %122, align 8
  %125 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %126 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %129 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = icmp eq i64 %127, %130
  br i1 %131, label %132, label %142

132:                                              ; preds = %73
  %133 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %134 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %133, i32 0, i32 0
  store i64 0, i64* %134, align 8
  %135 = load i32, i32* @DMADESC_WRAP_MASK, align 4
  %136 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %137 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = ashr i32 %135, %138
  %140 = load i32, i32* %7, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %7, align 4
  br label %142

142:                                              ; preds = %132, %73
  %143 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %144 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, -1
  store i32 %146, i32* %144, align 4
  %147 = call i32 (...) @wmb()
  %148 = load i32, i32* %7, align 4
  %149 = load %struct.bcm_enet_desc*, %struct.bcm_enet_desc** %6, align 8
  %150 = getelementptr inbounds %struct.bcm_enet_desc, %struct.bcm_enet_desc* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 4
  %151 = call i32 (...) @wmb()
  %152 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %153 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %154 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %153, i32 0, i32 6
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @ENETDMAC_CHANCFG, align 4
  %157 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %158 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @enet_dmac_writel(%struct.bcm_enet_priv* %152, i32 %155, i32 %156, i32 %159)
  %161 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %162 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %168, label %165

165:                                              ; preds = %142
  %166 = load %struct.net_device*, %struct.net_device** %4, align 8
  %167 = call i32 @netif_stop_queue(%struct.net_device* %166)
  br label %168

168:                                              ; preds = %165, %142
  %169 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %170 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.net_device*, %struct.net_device** %4, align 8
  %173 = getelementptr inbounds %struct.net_device, %struct.net_device* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = add nsw i32 %175, %171
  store i32 %176, i32* %174, align 4
  %177 = load %struct.net_device*, %struct.net_device** %4, align 8
  %178 = getelementptr inbounds %struct.net_device, %struct.net_device* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %179, align 4
  %182 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %182, i32* %8, align 4
  br label %183

183:                                              ; preds = %168, %63, %25
  %184 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %5, align 8
  %185 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %184, i32 0, i32 3
  %186 = call i32 @spin_unlock(i32* %185)
  %187 = load i32, i32* %8, align 4
  ret i32 %187
}

declare dso_local %struct.bcm_enet_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_copy_expand(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i8* @skb_put_zero(%struct.sk_buff*, i32) #1

declare dso_local i32 @dma_map_single(i32*, i32, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @enet_dmac_writel(%struct.bcm_enet_priv*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
