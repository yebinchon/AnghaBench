; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/tundra/extr_tsi108_eth.c_tsi108_complete_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/tundra/extr_tsi108_eth.c_tsi108_complete_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.tsi108_prv_data = type { i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__, i64, %struct.sk_buff** }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sk_buff = type { i32, i32* }

@TSI108_RX_OWN = common dso_local global i32 0, align 4
@TSI108_RXRING_LEN = common dso_local global i32 0, align 4
@TSI108_RX_BAD = common dso_local global i32 0, align 4
@TSI108_RX_CRC = common dso_local global i32 0, align 4
@TSI108_RX_OVER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: Rx Frame contents (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c" %2.2x\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @tsi108_complete_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsi108_complete_rx(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tsi108_prv_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.tsi108_prv_data* @netdev_priv(%struct.net_device* %10)
  store %struct.tsi108_prv_data* %11, %struct.tsi108_prv_data** %5, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %159, %111, %2
  %13 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %5, align 8
  %14 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %18, %19
  br label %21

21:                                               ; preds = %17, %12
  %22 = phi i1 [ false, %12 ], [ %20, %17 ]
  br i1 %22, label %23, label %177

23:                                               ; preds = %21
  %24 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %5, align 8
  %25 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %7, align 4
  %27 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %5, align 8
  %28 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @TSI108_RX_OWN, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %23
  br label %177

39:                                               ; preds = %23
  %40 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %5, align 8
  %41 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %40, i32 0, i32 5
  %42 = load %struct.sk_buff**, %struct.sk_buff*** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %42, i64 %44
  %46 = load %struct.sk_buff*, %struct.sk_buff** %45, align 8
  store %struct.sk_buff* %46, %struct.sk_buff** %8, align 8
  %47 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %5, align 8
  %48 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  %51 = load i32, i32* @TSI108_RXRING_LEN, align 4
  %52 = srem i32 %50, %51
  %53 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %5, align 8
  %54 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %5, align 8
  %56 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, -1
  store i64 %58, i64* %56, align 8
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  %61 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %5, align 8
  %62 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @TSI108_RX_BAD, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %117

72:                                               ; preds = %39
  %73 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %5, align 8
  %74 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %73, i32 0, i32 2
  %75 = call i32 @spin_lock_irq(i32* %74)
  %76 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %5, align 8
  %77 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %76, i32 0, i32 1
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @TSI108_RX_CRC, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %72
  %88 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %5, align 8
  %89 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %87, %72
  %94 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %5, align 8
  %95 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %94, i32 0, i32 1
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @TSI108_RX_OVER, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %93
  %106 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %5, align 8
  %107 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %105, %93
  %112 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %5, align 8
  %113 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %112, i32 0, i32 2
  %114 = call i32 @spin_unlock_irq(i32* %113)
  %115 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %116 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %115)
  br label %12

117:                                              ; preds = %39
  %118 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %5, align 8
  %119 = call i64 @netif_msg_pktdata(%struct.tsi108_prv_data* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %159

121:                                              ; preds = %117
  %122 = load %struct.net_device*, %struct.net_device** %3, align 8
  %123 = getelementptr inbounds %struct.net_device, %struct.net_device* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %5, align 8
  %126 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %125, i32 0, i32 1
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %124, i32 %132)
  store i32 0, i32* %9, align 4
  br label %134

134:                                              ; preds = %154, %121
  %135 = load i32, i32* %9, align 4
  %136 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %5, align 8
  %137 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %136, i32 0, i32 1
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = load i32, i32* %7, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = icmp slt i32 %135, %143
  br i1 %144, label %145, label %157

145:                                              ; preds = %134
  %146 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %147 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %9, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %152)
  br label %154

154:                                              ; preds = %145
  %155 = load i32, i32* %9, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %9, align 4
  br label %134

157:                                              ; preds = %134
  %158 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %159

159:                                              ; preds = %157, %117
  %160 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %161 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %5, align 8
  %162 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %161, i32 0, i32 1
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %162, align 8
  %164 = load i32, i32* %7, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @skb_put(%struct.sk_buff* %160, i32 %168)
  %170 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %171 = load %struct.net_device*, %struct.net_device** %3, align 8
  %172 = call i32 @eth_type_trans(%struct.sk_buff* %170, %struct.net_device* %171)
  %173 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %174 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %173, i32 0, i32 0
  store i32 %172, i32* %174, align 8
  %175 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %176 = call i32 @netif_receive_skb(%struct.sk_buff* %175)
  br label %12

177:                                              ; preds = %38, %21
  %178 = load i32, i32* %6, align 4
  ret i32 %178
}

declare dso_local %struct.tsi108_prv_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i64 @netif_msg_pktdata(%struct.tsi108_prv_data*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
