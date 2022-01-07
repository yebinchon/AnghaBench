; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ppp/extr_pppoe.c_pppoe_rcv_core.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ppp/extr_pppoe.c_pppoe_rcv_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i64 }
%struct.pppox_sock = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@PACKET_OTHERHOST = common dso_local global i64 0, align 8
@PPPOX_BOUND = common dso_local global i32 0, align 4
@PPPOX_RELAY = common dso_local global i32 0, align 4
@PPPOX_CONNECTED = common dso_local global i32 0, align 4
@NET_RX_SUCCESS = common dso_local global i32 0, align 4
@NET_RX_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @pppoe_rcv_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pppoe_rcv_core(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.pppox_sock*, align 8
  %7 = alloca %struct.pppox_sock*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load %struct.sock*, %struct.sock** %4, align 8
  %9 = call %struct.pppox_sock* @pppox_sk(%struct.sock* %8)
  store %struct.pppox_sock* %9, %struct.pppox_sock** %6, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PACKET_OTHERHOST, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %78

16:                                               ; preds = %2
  %17 = load %struct.sock*, %struct.sock** %4, align 8
  %18 = getelementptr inbounds %struct.sock, %struct.sock* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @PPPOX_BOUND, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load %struct.pppox_sock*, %struct.pppox_sock** %6, align 8
  %25 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %24, i32 0, i32 1
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = call i32 @ppp_input(i32* %25, %struct.sk_buff* %26)
  br label %72

28:                                               ; preds = %16
  %29 = load %struct.sock*, %struct.sock** %4, align 8
  %30 = getelementptr inbounds %struct.sock, %struct.sock* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @PPPOX_RELAY, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %64

35:                                               ; preds = %28
  %36 = load %struct.sock*, %struct.sock** %4, align 8
  %37 = call i32 @sock_net(%struct.sock* %36)
  %38 = load %struct.pppox_sock*, %struct.pppox_sock** %6, align 8
  %39 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %38, i32 0, i32 0
  %40 = call %struct.pppox_sock* @get_item_by_addr(i32 %37, i32* %39)
  store %struct.pppox_sock* %40, %struct.pppox_sock** %7, align 8
  %41 = load %struct.pppox_sock*, %struct.pppox_sock** %7, align 8
  %42 = icmp eq %struct.pppox_sock* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %78

44:                                               ; preds = %35
  %45 = load %struct.pppox_sock*, %struct.pppox_sock** %7, align 8
  %46 = call %struct.TYPE_4__* @sk_pppox(%struct.pppox_sock* %45)
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @PPPOX_CONNECTED, align 4
  %50 = and i32 %48, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %74

53:                                               ; preds = %44
  %54 = load %struct.pppox_sock*, %struct.pppox_sock** %7, align 8
  %55 = call %struct.TYPE_4__* @sk_pppox(%struct.pppox_sock* %54)
  %56 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %57 = call i32 @__pppoe_xmit(%struct.TYPE_4__* %55, %struct.sk_buff* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %53
  br label %74

60:                                               ; preds = %53
  %61 = load %struct.pppox_sock*, %struct.pppox_sock** %7, align 8
  %62 = call %struct.TYPE_4__* @sk_pppox(%struct.pppox_sock* %61)
  %63 = call i32 @sock_put(%struct.TYPE_4__* %62)
  br label %71

64:                                               ; preds = %28
  %65 = load %struct.sock*, %struct.sock** %4, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %67 = call i64 @sock_queue_rcv_skb(%struct.sock* %65, %struct.sk_buff* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %78

70:                                               ; preds = %64
  br label %71

71:                                               ; preds = %70, %60
  br label %72

72:                                               ; preds = %71, %23
  %73 = load i32, i32* @NET_RX_SUCCESS, align 4
  store i32 %73, i32* %3, align 4
  br label %82

74:                                               ; preds = %59, %52
  %75 = load %struct.pppox_sock*, %struct.pppox_sock** %7, align 8
  %76 = call %struct.TYPE_4__* @sk_pppox(%struct.pppox_sock* %75)
  %77 = call i32 @sock_put(%struct.TYPE_4__* %76)
  br label %78

78:                                               ; preds = %74, %69, %43, %15
  %79 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %80 = call i32 @kfree_skb(%struct.sk_buff* %79)
  %81 = load i32, i32* @NET_RX_DROP, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %78, %72
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.pppox_sock* @pppox_sk(%struct.sock*) #1

declare dso_local i32 @ppp_input(i32*, %struct.sk_buff*) #1

declare dso_local %struct.pppox_sock* @get_item_by_addr(i32, i32*) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local %struct.TYPE_4__* @sk_pppox(%struct.pppox_sock*) #1

declare dso_local i32 @__pppoe_xmit(%struct.TYPE_4__*, %struct.sk_buff*) #1

declare dso_local i32 @sock_put(%struct.TYPE_4__*) #1

declare dso_local i64 @sock_queue_rcv_skb(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
