; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_ifb.c_ifb_ri_tasklet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_ifb.c_ifb_ri_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifb_q_private = type { i32, i32, i32, %struct.TYPE_5__*, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.netdev_queue = type { i32 }
%struct.sk_buff = type { i32, i32, i32, i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @ifb_ri_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ifb_ri_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ifb_q_private*, align 8
  %4 = alloca %struct.netdev_queue*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.ifb_q_private*
  store %struct.ifb_q_private* %7, %struct.ifb_q_private** %3, align 8
  %8 = load %struct.ifb_q_private*, %struct.ifb_q_private** %3, align 8
  %9 = getelementptr inbounds %struct.ifb_q_private, %struct.ifb_q_private* %8, i32 0, i32 3
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = load %struct.ifb_q_private*, %struct.ifb_q_private** %3, align 8
  %12 = getelementptr inbounds %struct.ifb_q_private, %struct.ifb_q_private* %11, i32 0, i32 8
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.TYPE_5__* %10, i32 %13)
  store %struct.netdev_queue* %14, %struct.netdev_queue** %4, align 8
  %15 = load %struct.ifb_q_private*, %struct.ifb_q_private** %3, align 8
  %16 = getelementptr inbounds %struct.ifb_q_private, %struct.ifb_q_private* %15, i32 0, i32 4
  %17 = call %struct.sk_buff* @skb_peek(i32* %16)
  store %struct.sk_buff* %17, %struct.sk_buff** %5, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = icmp ne %struct.sk_buff* %18, null
  br i1 %19, label %33, label %20

20:                                               ; preds = %1
  %21 = load %struct.netdev_queue*, %struct.netdev_queue** %4, align 8
  %22 = call i64 @__netif_tx_trylock(%struct.netdev_queue* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  br label %147

25:                                               ; preds = %20
  %26 = load %struct.ifb_q_private*, %struct.ifb_q_private** %3, align 8
  %27 = getelementptr inbounds %struct.ifb_q_private, %struct.ifb_q_private* %26, i32 0, i32 2
  %28 = load %struct.ifb_q_private*, %struct.ifb_q_private** %3, align 8
  %29 = getelementptr inbounds %struct.ifb_q_private, %struct.ifb_q_private* %28, i32 0, i32 4
  %30 = call i32 @skb_queue_splice_tail_init(i32* %27, i32* %29)
  %31 = load %struct.netdev_queue*, %struct.netdev_queue** %4, align 8
  %32 = call i32 @__netif_tx_unlock(%struct.netdev_queue* %31)
  br label %33

33:                                               ; preds = %25, %1
  br label %34

34:                                               ; preds = %119, %33
  %35 = load %struct.ifb_q_private*, %struct.ifb_q_private** %3, align 8
  %36 = getelementptr inbounds %struct.ifb_q_private, %struct.ifb_q_private* %35, i32 0, i32 4
  %37 = call %struct.sk_buff* @__skb_dequeue(i32* %36)
  store %struct.sk_buff* %37, %struct.sk_buff** %5, align 8
  %38 = icmp ne %struct.sk_buff* %37, null
  br i1 %38, label %39, label %120

39:                                               ; preds = %34
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 6
  store i64 0, i64* %41, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load %struct.ifb_q_private*, %struct.ifb_q_private** %3, align 8
  %45 = getelementptr inbounds %struct.ifb_q_private, %struct.ifb_q_private* %44, i32 0, i32 5
  %46 = call i32 @u64_stats_update_begin(i32* %45)
  %47 = load %struct.ifb_q_private*, %struct.ifb_q_private** %3, align 8
  %48 = getelementptr inbounds %struct.ifb_q_private, %struct.ifb_q_private* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 5
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.ifb_q_private*, %struct.ifb_q_private** %3, align 8
  %55 = getelementptr inbounds %struct.ifb_q_private, %struct.ifb_q_private* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %53
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %55, align 8
  %60 = load %struct.ifb_q_private*, %struct.ifb_q_private** %3, align 8
  %61 = getelementptr inbounds %struct.ifb_q_private, %struct.ifb_q_private* %60, i32 0, i32 5
  %62 = call i32 @u64_stats_update_end(i32* %61)
  %63 = call i32 (...) @rcu_read_lock()
  %64 = load %struct.ifb_q_private*, %struct.ifb_q_private** %3, align 8
  %65 = getelementptr inbounds %struct.ifb_q_private, %struct.ifb_q_private* %64, i32 0, i32 3
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = call i32 @dev_net(%struct.TYPE_5__* %66)
  %68 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @dev_get_by_index_rcu(i32 %67, i32 %70)
  %72 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %95, label %78

78:                                               ; preds = %39
  %79 = call i32 (...) @rcu_read_unlock()
  %80 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %81 = call i32 @dev_kfree_skb(%struct.sk_buff* %80)
  %82 = load %struct.ifb_q_private*, %struct.ifb_q_private** %3, align 8
  %83 = getelementptr inbounds %struct.ifb_q_private, %struct.ifb_q_private* %82, i32 0, i32 3
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  %89 = load %struct.ifb_q_private*, %struct.ifb_q_private** %3, align 8
  %90 = getelementptr inbounds %struct.ifb_q_private, %struct.ifb_q_private* %89, i32 0, i32 4
  %91 = call i64 @skb_queue_len(i32* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %78
  br label %147

94:                                               ; preds = %78
  br label %120

95:                                               ; preds = %39
  %96 = call i32 (...) @rcu_read_unlock()
  %97 = load %struct.ifb_q_private*, %struct.ifb_q_private** %3, align 8
  %98 = getelementptr inbounds %struct.ifb_q_private, %struct.ifb_q_private* %97, i32 0, i32 3
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %103 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %102, i32 0, i32 3
  store i32 %101, i32* %103, align 4
  %104 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %105 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %95
  %109 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %110 = call i32 @dev_queue_xmit(%struct.sk_buff* %109)
  br label %119

111:                                              ; preds = %95
  %112 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %113 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %114 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @skb_pull_rcsum(%struct.sk_buff* %112, i32 %115)
  %117 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %118 = call i32 @netif_receive_skb(%struct.sk_buff* %117)
  br label %119

119:                                              ; preds = %111, %108
  br label %34

120:                                              ; preds = %94, %34
  %121 = load %struct.netdev_queue*, %struct.netdev_queue** %4, align 8
  %122 = call i64 @__netif_tx_trylock(%struct.netdev_queue* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %146

124:                                              ; preds = %120
  %125 = load %struct.ifb_q_private*, %struct.ifb_q_private** %3, align 8
  %126 = getelementptr inbounds %struct.ifb_q_private, %struct.ifb_q_private* %125, i32 0, i32 2
  %127 = call %struct.sk_buff* @skb_peek(i32* %126)
  store %struct.sk_buff* %127, %struct.sk_buff** %5, align 8
  %128 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %129 = icmp ne %struct.sk_buff* %128, null
  br i1 %129, label %140, label %130

130:                                              ; preds = %124
  %131 = load %struct.ifb_q_private*, %struct.ifb_q_private** %3, align 8
  %132 = getelementptr inbounds %struct.ifb_q_private, %struct.ifb_q_private* %131, i32 0, i32 0
  store i32 0, i32* %132, align 8
  %133 = load %struct.netdev_queue*, %struct.netdev_queue** %4, align 8
  %134 = call i64 @netif_tx_queue_stopped(%struct.netdev_queue* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %130
  %137 = load %struct.netdev_queue*, %struct.netdev_queue** %4, align 8
  %138 = call i32 @netif_tx_wake_queue(%struct.netdev_queue* %137)
  br label %139

139:                                              ; preds = %136, %130
  br label %143

140:                                              ; preds = %124
  %141 = load %struct.netdev_queue*, %struct.netdev_queue** %4, align 8
  %142 = call i32 @__netif_tx_unlock(%struct.netdev_queue* %141)
  br label %147

143:                                              ; preds = %139
  %144 = load %struct.netdev_queue*, %struct.netdev_queue** %4, align 8
  %145 = call i32 @__netif_tx_unlock(%struct.netdev_queue* %144)
  br label %153

146:                                              ; preds = %120
  br label %147

147:                                              ; preds = %146, %140, %93, %24
  %148 = load %struct.ifb_q_private*, %struct.ifb_q_private** %3, align 8
  %149 = getelementptr inbounds %struct.ifb_q_private, %struct.ifb_q_private* %148, i32 0, i32 0
  store i32 1, i32* %149, align 8
  %150 = load %struct.ifb_q_private*, %struct.ifb_q_private** %3, align 8
  %151 = getelementptr inbounds %struct.ifb_q_private, %struct.ifb_q_private* %150, i32 0, i32 1
  %152 = call i32 @tasklet_schedule(i32* %151)
  br label %153

153:                                              ; preds = %147, %143
  ret void
}

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.TYPE_5__*, i32) #1

declare dso_local %struct.sk_buff* @skb_peek(i32*) #1

declare dso_local i64 @__netif_tx_trylock(%struct.netdev_queue*) #1

declare dso_local i32 @skb_queue_splice_tail_init(i32*, i32*) #1

declare dso_local i32 @__netif_tx_unlock(%struct.netdev_queue*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(i32*) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @dev_get_by_index_rcu(i32, i32) #1

declare dso_local i32 @dev_net(%struct.TYPE_5__*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull_rcsum(%struct.sk_buff*, i32) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

declare dso_local i64 @netif_tx_queue_stopped(%struct.netdev_queue*) #1

declare dso_local i32 @netif_tx_wake_queue(%struct.netdev_queue*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
