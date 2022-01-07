; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/extr_ag71xx.c_ag71xx_tx_packets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/extr_ag71xx.c_ag71xx_tx_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx = type { i32, %struct.net_device*, %struct.TYPE_5__*, %struct.ag71xx_ring }
%struct.net_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.ag71xx_ring = type { i32, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.ag71xx_desc = type { i32 }

@tx_queued = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"processing TX ring\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@DESC_EMPTY = common dso_local global i32 0, align 4
@AG71XX_REG_TX_STATUS = common dso_local global i32 0, align 4
@TX_STATUS_PS = common dso_local global i32 0, align 4
@tx_done = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"%d packets sent out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ag71xx*, i32)* @ag71xx_tx_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ag71xx_tx_packets(%struct.ag71xx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ag71xx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ag71xx_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ag71xx_desc*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca i32, align 4
  store %struct.ag71xx* %0, %struct.ag71xx** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = load %struct.ag71xx*, %struct.ag71xx** %4, align 8
  %18 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %17, i32 0, i32 3
  store %struct.ag71xx_ring* %18, %struct.ag71xx_ring** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %19 = load %struct.ag71xx*, %struct.ag71xx** %4, align 8
  %20 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %19, i32 0, i32 1
  %21 = load %struct.net_device*, %struct.net_device** %20, align 8
  store %struct.net_device* %21, %struct.net_device** %10, align 8
  store i32 0, i32* %13, align 4
  %22 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %23 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @BIT(i32 %24)
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %11, align 4
  %27 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %28 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @BIT(i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load %struct.ag71xx*, %struct.ag71xx** %4, align 8
  %32 = load i32, i32* @tx_queued, align 4
  %33 = load %struct.net_device*, %struct.net_device** %10, align 8
  %34 = call i32 (%struct.ag71xx*, i32, %struct.net_device*, i8*, ...) @netif_dbg(%struct.ag71xx* %31, i32 %32, %struct.net_device* %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %145, %103, %2
  %36 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %37 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %38, %39
  %41 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %42 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %40, %43
  br i1 %44, label %45, label %146

45:                                               ; preds = %35
  %46 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %47 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %48, %49
  %51 = load i32, i32* %11, align 4
  %52 = and i32 %50, %51
  store i32 %52, i32* %16, align 4
  %53 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %54 = load i32, i32* %16, align 4
  %55 = call %struct.ag71xx_desc* @ag71xx_ring_desc(%struct.ag71xx_ring* %53, i32 %54)
  store %struct.ag71xx_desc* %55, %struct.ag71xx_desc** %14, align 8
  %56 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %57 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %56, i32 0, i32 2
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = load i32, i32* %16, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load %struct.sk_buff*, %struct.sk_buff** %63, align 8
  store %struct.sk_buff* %64, %struct.sk_buff** %15, align 8
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %89, label %67

67:                                               ; preds = %45
  %68 = load %struct.ag71xx_desc*, %struct.ag71xx_desc** %14, align 8
  %69 = call i32 @ag71xx_desc_empty(%struct.ag71xx_desc* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %89, label %71

71:                                               ; preds = %67
  %72 = load %struct.ag71xx*, %struct.ag71xx** %4, align 8
  %73 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %72, i32 0, i32 2
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %71
  %79 = load %struct.ag71xx*, %struct.ag71xx** %4, align 8
  %80 = call i64 @ag71xx_check_dma_stuck(%struct.ag71xx* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %78
  %83 = load %struct.ag71xx*, %struct.ag71xx** %4, align 8
  %84 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %83, i32 0, i32 0
  %85 = load i32, i32* @HZ, align 4
  %86 = sdiv i32 %85, 2
  %87 = call i32 @schedule_delayed_work(i32* %84, i32 %86)
  store i32 1, i32* %13, align 4
  br label %88

88:                                               ; preds = %82, %78, %71
  br label %146

89:                                               ; preds = %67, %45
  %90 = load i32, i32* %5, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %89
  %93 = load i32, i32* @DESC_EMPTY, align 4
  %94 = load %struct.ag71xx_desc*, %struct.ag71xx_desc** %14, align 8
  %95 = getelementptr inbounds %struct.ag71xx_desc, %struct.ag71xx_desc* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %92, %89
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %9, align 4
  %101 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %102 = icmp ne %struct.sk_buff* %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %98
  br label %35

104:                                              ; preds = %98
  %105 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %106 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %105)
  %107 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %108 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %107, i32 0, i32 2
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = load i32, i32* %16, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %114, align 8
  %115 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %116 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %115, i32 0, i32 2
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = load i32, i32* %16, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %125, %123
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %8, align 4
  %128 = load i32, i32* %7, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* %9, align 4
  %131 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %132 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %133, %130
  store i32 %134, i32* %132, align 8
  br label %135

135:                                              ; preds = %138, %104
  %136 = load i32, i32* %9, align 4
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %135
  %139 = load %struct.ag71xx*, %struct.ag71xx** %4, align 8
  %140 = load i32, i32* @AG71XX_REG_TX_STATUS, align 4
  %141 = load i32, i32* @TX_STATUS_PS, align 4
  %142 = call i32 @ag71xx_wr(%struct.ag71xx* %139, i32 %140, i32 %141)
  %143 = load i32, i32* %9, align 4
  %144 = add nsw i32 %143, -1
  store i32 %144, i32* %9, align 4
  br label %135

145:                                              ; preds = %135
  br label %35

146:                                              ; preds = %88, %35
  %147 = load %struct.ag71xx*, %struct.ag71xx** %4, align 8
  %148 = load i32, i32* @tx_done, align 4
  %149 = load %struct.net_device*, %struct.net_device** %10, align 8
  %150 = load i32, i32* %7, align 4
  %151 = call i32 (%struct.ag71xx*, i32, %struct.net_device*, i8*, ...) @netif_dbg(%struct.ag71xx* %147, i32 %148, %struct.net_device* %149, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %150)
  %152 = load i32, i32* %7, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %146
  store i32 0, i32* %3, align 4
  br label %203

155:                                              ; preds = %146
  %156 = load i32, i32* %8, align 4
  %157 = load %struct.ag71xx*, %struct.ag71xx** %4, align 8
  %158 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %157, i32 0, i32 1
  %159 = load %struct.net_device*, %struct.net_device** %158, align 8
  %160 = getelementptr inbounds %struct.net_device, %struct.net_device* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %162, %156
  store i32 %163, i32* %161, align 4
  %164 = load i32, i32* %7, align 4
  %165 = load %struct.ag71xx*, %struct.ag71xx** %4, align 8
  %166 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %165, i32 0, i32 1
  %167 = load %struct.net_device*, %struct.net_device** %166, align 8
  %168 = getelementptr inbounds %struct.net_device, %struct.net_device* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = add nsw i32 %170, %164
  store i32 %171, i32* %169, align 4
  %172 = load %struct.ag71xx*, %struct.ag71xx** %4, align 8
  %173 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %172, i32 0, i32 1
  %174 = load %struct.net_device*, %struct.net_device** %173, align 8
  %175 = load i32, i32* %7, align 4
  %176 = load i32, i32* %8, align 4
  %177 = call i32 @netdev_completed_queue(%struct.net_device* %174, i32 %175, i32 %176)
  %178 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %179 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %182 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = sub nsw i32 %180, %183
  %185 = load i32, i32* %12, align 4
  %186 = mul nsw i32 %185, 3
  %187 = sdiv i32 %186, 4
  %188 = icmp slt i32 %184, %187
  br i1 %188, label %189, label %194

189:                                              ; preds = %155
  %190 = load %struct.ag71xx*, %struct.ag71xx** %4, align 8
  %191 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %190, i32 0, i32 1
  %192 = load %struct.net_device*, %struct.net_device** %191, align 8
  %193 = call i32 @netif_wake_queue(%struct.net_device* %192)
  br label %194

194:                                              ; preds = %189, %155
  %195 = load i32, i32* %13, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %201, label %197

197:                                              ; preds = %194
  %198 = load %struct.ag71xx*, %struct.ag71xx** %4, align 8
  %199 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %198, i32 0, i32 0
  %200 = call i32 @cancel_delayed_work(i32* %199)
  br label %201

201:                                              ; preds = %197, %194
  %202 = load i32, i32* %7, align 4
  store i32 %202, i32* %3, align 4
  br label %203

203:                                              ; preds = %201, %154
  %204 = load i32, i32* %3, align 4
  ret i32 %204
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @netif_dbg(%struct.ag71xx*, i32, %struct.net_device*, i8*, ...) #1

declare dso_local %struct.ag71xx_desc* @ag71xx_ring_desc(%struct.ag71xx_ring*, i32) #1

declare dso_local i32 @ag71xx_desc_empty(%struct.ag71xx_desc*) #1

declare dso_local i64 @ag71xx_check_dma_stuck(%struct.ag71xx*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @ag71xx_wr(%struct.ag71xx*, i32, i32) #1

declare dso_local i32 @netdev_completed_queue(%struct.net_device*, i32, i32) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
