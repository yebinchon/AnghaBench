; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/rmnet/extr_rmnet_handlers.c_rmnet_map_ingress_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/rmnet/extr_rmnet_handlers.c_rmnet_map_ingress_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.rmnet_port = type { i32 }

@ARPHRD_ETHER = common dso_local global i64 0, align 8
@ETH_HLEN = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@RMNET_FLAGS_INGRESS_DEAGGREGATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.rmnet_port*)* @rmnet_map_ingress_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rmnet_map_ingress_handler(%struct.sk_buff* %0, %struct.rmnet_port* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.rmnet_port*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.rmnet_port* %1, %struct.rmnet_port** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @ARPHRD_ETHER, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %2
  %14 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %15 = load i32, i32* @ETH_HLEN, align 4
  %16 = load i32, i32* @GFP_ATOMIC, align 4
  %17 = call i64 @pskb_expand_head(%struct.sk_buff* %14, i32 %15, i32 0, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %21 = call i32 @kfree_skb(%struct.sk_buff* %20)
  br label %50

22:                                               ; preds = %13
  %23 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %24 = load i32, i32* @ETH_HLEN, align 4
  %25 = call i32 @skb_push(%struct.sk_buff* %23, i32 %24)
  br label %26

26:                                               ; preds = %22, %2
  %27 = load %struct.rmnet_port*, %struct.rmnet_port** %4, align 8
  %28 = getelementptr inbounds %struct.rmnet_port, %struct.rmnet_port* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @RMNET_FLAGS_INGRESS_DEAGGREGATION, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %39, %33
  %35 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %36 = load %struct.rmnet_port*, %struct.rmnet_port** %4, align 8
  %37 = call %struct.sk_buff* @rmnet_map_deaggregate(%struct.sk_buff* %35, %struct.rmnet_port* %36)
  store %struct.sk_buff* %37, %struct.sk_buff** %5, align 8
  %38 = icmp ne %struct.sk_buff* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = load %struct.rmnet_port*, %struct.rmnet_port** %4, align 8
  %42 = call i32 @__rmnet_map_ingress_handler(%struct.sk_buff* %40, %struct.rmnet_port* %41)
  br label %34

43:                                               ; preds = %34
  %44 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %45 = call i32 @consume_skb(%struct.sk_buff* %44)
  br label %50

46:                                               ; preds = %26
  %47 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %48 = load %struct.rmnet_port*, %struct.rmnet_port** %4, align 8
  %49 = call i32 @__rmnet_map_ingress_handler(%struct.sk_buff* %47, %struct.rmnet_port* %48)
  br label %50

50:                                               ; preds = %19, %46, %43
  ret void
}

declare dso_local i64 @pskb_expand_head(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @rmnet_map_deaggregate(%struct.sk_buff*, %struct.rmnet_port*) #1

declare dso_local i32 @__rmnet_map_ingress_handler(%struct.sk_buff*, %struct.rmnet_port*) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
