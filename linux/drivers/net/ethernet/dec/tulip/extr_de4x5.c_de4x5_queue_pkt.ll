; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_de4x5_queue_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_de4x5_queue_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.net_device = type { i32, i32 }
%struct.de4x5_private = type { i64, i32, %struct.TYPE_4__, i32, %struct.TYPE_3__, i64*, i64, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32 }

@de4x5_debug = common dso_local global i32 0, align 4
@DEBUG_TX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [110 x i8] c"%s: transmit busy, lost media or stale skb found:\0A  STS:%08x\0A  tbusy:%d\0A  IMR:%08x\0A  OMR:%08x\0A Stale skb: %s\0A\00", align 1
@DE4X5_STS = common dso_local global i32 0, align 4
@DE4X5_IMR = common dso_local global i32 0, align 4
@DE4X5_OMR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@TD_IC = common dso_local global i32 0, align 4
@TD_LS = common dso_local global i32 0, align 4
@TD_FS = common dso_local global i32 0, align 4
@POLL_DEMAND = common dso_local global i32 0, align 4
@DE4X5_TPD = common dso_local global i32 0, align 4
@TX_BUFFS_AVAIL = common dso_local global i64 0, align 8
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @de4x5_queue_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @de4x5_queue_pkt(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.de4x5_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call %struct.de4x5_private* @netdev_priv(%struct.net_device* %9)
  store %struct.de4x5_private* %10, %struct.de4x5_private** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call i32 @netif_stop_queue(%struct.net_device* %14)
  %16 = load %struct.de4x5_private*, %struct.de4x5_private** %6, align 8
  %17 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %216

21:                                               ; preds = %2
  %22 = load %struct.de4x5_private*, %struct.de4x5_private** %6, align 8
  %23 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %22, i32 0, i32 3
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @spin_lock_irqsave(i32* %23, i32 %24)
  %26 = load %struct.net_device*, %struct.net_device** %5, align 8
  %27 = call i32 @de4x5_tx(%struct.net_device* %26)
  %28 = load %struct.de4x5_private*, %struct.de4x5_private** %6, align 8
  %29 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %28, i32 0, i32 3
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i32 %30)
  %32 = load %struct.de4x5_private*, %struct.de4x5_private** %6, align 8
  %33 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = bitcast i64* %34 to i8*
  %36 = call i64 @test_and_set_bit(i32 0, i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %21
  %39 = load %struct.de4x5_private*, %struct.de4x5_private** %6, align 8
  %40 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %39, i32 0, i32 6
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  br label %216

44:                                               ; preds = %38, %21
  %45 = load %struct.net_device*, %struct.net_device** %5, align 8
  %46 = call i64 @netif_queue_stopped(%struct.net_device* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %44
  %49 = load %struct.de4x5_private*, %struct.de4x5_private** %6, align 8
  %50 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %49, i32 0, i32 5
  %51 = load i64*, i64** %50, align 8
  %52 = load %struct.de4x5_private*, %struct.de4x5_private** %6, align 8
  %53 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i64, i64* %51, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = icmp sgt i32 %57, 1
  br i1 %58, label %59, label %103

59:                                               ; preds = %48, %44
  %60 = load %struct.de4x5_private*, %struct.de4x5_private** %6, align 8
  %61 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %60, i32 0, i32 6
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load %struct.net_device*, %struct.net_device** %5, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = call i32 @de4x5_putb_cache(%struct.net_device* %65, %struct.sk_buff* %66)
  br label %72

68:                                               ; preds = %59
  %69 = load %struct.net_device*, %struct.net_device** %5, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %71 = call i32 @de4x5_put_cache(%struct.net_device* %69, %struct.sk_buff* %70)
  br label %72

72:                                               ; preds = %68, %64
  %73 = load i32, i32* @de4x5_debug, align 4
  %74 = load i32, i32* @DEBUG_TX, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %102

77:                                               ; preds = %72
  %78 = load %struct.net_device*, %struct.net_device** %5, align 8
  %79 = getelementptr inbounds %struct.net_device, %struct.net_device* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @DE4X5_STS, align 4
  %82 = call i32 @inl(i32 %81)
  %83 = load %struct.net_device*, %struct.net_device** %5, align 8
  %84 = call i64 @netif_queue_stopped(%struct.net_device* %83)
  %85 = load i32, i32* @DE4X5_IMR, align 4
  %86 = call i32 @inl(i32 %85)
  %87 = load i32, i32* @DE4X5_OMR, align 4
  %88 = call i32 @inl(i32 %87)
  %89 = load %struct.de4x5_private*, %struct.de4x5_private** %6, align 8
  %90 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %89, i32 0, i32 5
  %91 = load i64*, i64** %90, align 8
  %92 = load %struct.de4x5_private*, %struct.de4x5_private** %6, align 8
  %93 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds i64, i64* %91, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = trunc i64 %96 to i32
  %98 = icmp sgt i32 %97, 1
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %101 = call i32 @printk(i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str, i64 0, i64 0), i32 %80, i32 %82, i64 %84, i32 %86, i32 %88, i8* %100)
  br label %102

102:                                              ; preds = %77, %72
  br label %211

103:                                              ; preds = %48
  %104 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %105 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %210

108:                                              ; preds = %103
  %109 = load %struct.de4x5_private*, %struct.de4x5_private** %6, align 8
  %110 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = call i32 @skb_queue_empty(i32* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %125, label %114

114:                                              ; preds = %108
  %115 = load %struct.de4x5_private*, %struct.de4x5_private** %6, align 8
  %116 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %115, i32 0, i32 6
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %125, label %119

119:                                              ; preds = %114
  %120 = load %struct.net_device*, %struct.net_device** %5, align 8
  %121 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %122 = call i32 @de4x5_put_cache(%struct.net_device* %120, %struct.sk_buff* %121)
  %123 = load %struct.net_device*, %struct.net_device** %5, align 8
  %124 = call %struct.sk_buff* @de4x5_get_cache(%struct.net_device* %123)
  store %struct.sk_buff* %124, %struct.sk_buff** %4, align 8
  br label %125

125:                                              ; preds = %119, %114, %108
  br label %126

126:                                              ; preds = %195, %125
  %127 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %128 = icmp ne %struct.sk_buff* %127, null
  br i1 %128, label %129, label %144

129:                                              ; preds = %126
  %130 = load %struct.net_device*, %struct.net_device** %5, align 8
  %131 = call i64 @netif_queue_stopped(%struct.net_device* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %144, label %133

133:                                              ; preds = %129
  %134 = load %struct.de4x5_private*, %struct.de4x5_private** %6, align 8
  %135 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %134, i32 0, i32 5
  %136 = load i64*, i64** %135, align 8
  %137 = load %struct.de4x5_private*, %struct.de4x5_private** %6, align 8
  %138 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds i64, i64* %136, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = trunc i64 %141 to i32
  %143 = icmp sle i32 %142, 1
  br label %144

144:                                              ; preds = %133, %129, %126
  %145 = phi i1 [ false, %129 ], [ false, %126 ], [ %143, %133 ]
  br i1 %145, label %146, label %202

146:                                              ; preds = %144
  %147 = load %struct.de4x5_private*, %struct.de4x5_private** %6, align 8
  %148 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %147, i32 0, i32 3
  %149 = load i32, i32* %8, align 4
  %150 = call i32 @spin_lock_irqsave(i32* %148, i32 %149)
  %151 = load %struct.net_device*, %struct.net_device** %5, align 8
  %152 = call i32 @netif_stop_queue(%struct.net_device* %151)
  %153 = load %struct.net_device*, %struct.net_device** %5, align 8
  %154 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %155 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @TD_IC, align 4
  %158 = load i32, i32* @TD_LS, align 4
  %159 = or i32 %157, %158
  %160 = load i32, i32* @TD_FS, align 4
  %161 = or i32 %159, %160
  %162 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %163 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %161, %164
  %166 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %167 = call i32 @load_packet(%struct.net_device* %153, i32 %156, i32 %165, %struct.sk_buff* %166)
  %168 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %169 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.de4x5_private*, %struct.de4x5_private** %6, align 8
  %172 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %171, i32 0, i32 4
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %174, %170
  store i32 %175, i32* %173, align 4
  %176 = load i32, i32* @POLL_DEMAND, align 4
  %177 = load i32, i32* @DE4X5_TPD, align 4
  %178 = call i32 @outl(i32 %176, i32 %177)
  %179 = load %struct.de4x5_private*, %struct.de4x5_private** %6, align 8
  %180 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = add i64 %181, 1
  %183 = load %struct.de4x5_private*, %struct.de4x5_private** %6, align 8
  %184 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = sext i32 %185 to i64
  %187 = urem i64 %182, %186
  %188 = load %struct.de4x5_private*, %struct.de4x5_private** %6, align 8
  %189 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %188, i32 0, i32 0
  store i64 %187, i64* %189, align 8
  %190 = load i64, i64* @TX_BUFFS_AVAIL, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %146
  %193 = load %struct.net_device*, %struct.net_device** %5, align 8
  %194 = call i32 @netif_start_queue(%struct.net_device* %193)
  br label %195

195:                                              ; preds = %192, %146
  %196 = load %struct.net_device*, %struct.net_device** %5, align 8
  %197 = call %struct.sk_buff* @de4x5_get_cache(%struct.net_device* %196)
  store %struct.sk_buff* %197, %struct.sk_buff** %4, align 8
  %198 = load %struct.de4x5_private*, %struct.de4x5_private** %6, align 8
  %199 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %198, i32 0, i32 3
  %200 = load i32, i32* %8, align 4
  %201 = call i32 @spin_unlock_irqrestore(i32* %199, i32 %200)
  br label %126

202:                                              ; preds = %144
  %203 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %204 = icmp ne %struct.sk_buff* %203, null
  br i1 %204, label %205, label %209

205:                                              ; preds = %202
  %206 = load %struct.net_device*, %struct.net_device** %5, align 8
  %207 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %208 = call i32 @de4x5_putb_cache(%struct.net_device* %206, %struct.sk_buff* %207)
  br label %209

209:                                              ; preds = %205, %202
  br label %210

210:                                              ; preds = %209, %103
  br label %211

211:                                              ; preds = %210, %102
  %212 = load %struct.de4x5_private*, %struct.de4x5_private** %6, align 8
  %213 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 0
  store i64 0, i64* %214, align 8
  %215 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %215, i32* %3, align 4
  br label %220

216:                                              ; preds = %43, %20
  %217 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %218 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %217)
  %219 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %219, i32* %3, align 4
  br label %220

220:                                              ; preds = %216, %211
  %221 = load i32, i32* %3, align 4
  ret i32 %221
}

declare dso_local %struct.de4x5_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @de4x5_tx(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i64 @test_and_set_bit(i32, i8*) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @de4x5_putb_cache(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local i32 @de4x5_put_cache(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local i32 @printk(i8*, i32, i32, i64, i32, i32, i8*) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local %struct.sk_buff* @de4x5_get_cache(%struct.net_device*) #1

declare dso_local i32 @load_packet(%struct.net_device*, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
