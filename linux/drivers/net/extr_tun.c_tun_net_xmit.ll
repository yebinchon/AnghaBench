; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_net_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_net_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.tun_struct = type { %struct.TYPE_6__*, i32, i32, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.tun_file = type { i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_7__*)*, i64 }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"tun_net_xmit %d\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@TUN_FASYNC = common dso_local global i32 0, align 4
@SIGIO = common dso_local global i32 0, align 4
@POLL_IN = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@NET_XMIT_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @tun_net_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tun_net_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.tun_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tun_file*, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.tun_struct* @netdev_priv(%struct.net_device* %10)
  store %struct.tun_struct* %11, %struct.tun_struct** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = call i32 (...) @rcu_read_lock()
  %19 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %20 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.tun_file* @rcu_dereference(i32 %25)
  store %struct.tun_file* %26, %struct.tun_file** %8, align 8
  %27 = load %struct.tun_file*, %struct.tun_file** %8, align 8
  %28 = icmp ne %struct.tun_file* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %2
  br label %135

30:                                               ; preds = %2
  %31 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %32 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.tun_file* @rcu_dereference(i32 %33)
  %35 = icmp ne %struct.tun_file* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %30
  %37 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = call i32 @tun_automq_xmit(%struct.tun_struct* %37, %struct.sk_buff* %38)
  br label %40

40:                                               ; preds = %36, %30
  %41 = load i32, i32* @KERN_INFO, align 4
  %42 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @tun_debug(i32 %41, %struct.tun_struct* %42, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load %struct.tun_file*, %struct.tun_file** %8, align 8
  %48 = icmp ne %struct.tun_file* %47, null
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i32 @BUG_ON(i32 %50)
  %52 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %53 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %52, i32 0, i32 1
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = call i32 @check_filter(i32* %53, %struct.sk_buff* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %40
  br label %135

58:                                               ; preds = %40
  %59 = load %struct.tun_file*, %struct.tun_file** %8, align 8
  %60 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %58
  %67 = load %struct.tun_file*, %struct.tun_file** %8, align 8
  %68 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %72 = call i64 @sk_filter(%struct.TYPE_7__* %70, %struct.sk_buff* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  br label %135

75:                                               ; preds = %66, %58
  %76 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @run_ebpf_filter(%struct.tun_struct* %76, %struct.sk_buff* %77, i32 %78)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %75
  %83 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i64 @pskb_trim(%struct.sk_buff* %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82, %75
  br label %135

88:                                               ; preds = %82
  %89 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %90 = load i32, i32* @GFP_ATOMIC, align 4
  %91 = call i32 @skb_orphan_frags_rx(%struct.sk_buff* %89, i32 %90)
  %92 = call i64 @unlikely(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %135

95:                                               ; preds = %88
  %96 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %97 = call i32 @skb_tx_timestamp(%struct.sk_buff* %96)
  %98 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %99 = call i32 @skb_orphan(%struct.sk_buff* %98)
  %100 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %101 = call i32 @nf_reset_ct(%struct.sk_buff* %100)
  %102 = load %struct.tun_file*, %struct.tun_file** %8, align 8
  %103 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %102, i32 0, i32 3
  %104 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %105 = call i64 @ptr_ring_produce(i32* %103, %struct.sk_buff* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %95
  br label %135

108:                                              ; preds = %95
  %109 = load %struct.tun_file*, %struct.tun_file** %8, align 8
  %110 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @TUN_FASYNC, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %108
  %116 = load %struct.tun_file*, %struct.tun_file** %8, align 8
  %117 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %116, i32 0, i32 2
  %118 = load i32, i32* @SIGIO, align 4
  %119 = load i32, i32* @POLL_IN, align 4
  %120 = call i32 @kill_fasync(i32* %117, i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %115, %108
  %122 = load %struct.tun_file*, %struct.tun_file** %8, align 8
  %123 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %126, align 8
  %128 = load %struct.tun_file*, %struct.tun_file** %8, align 8
  %129 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %130, align 8
  %132 = call i32 %127(%struct.TYPE_7__* %131)
  %133 = call i32 (...) @rcu_read_unlock()
  %134 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %134, i32* %3, align 4
  br label %148

135:                                              ; preds = %107, %94, %87, %74, %57, %29
  %136 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %137 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %136, i32 0, i32 0
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @this_cpu_inc(i32 %140)
  %142 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %143 = call i32 @skb_tx_error(%struct.sk_buff* %142)
  %144 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %145 = call i32 @kfree_skb(%struct.sk_buff* %144)
  %146 = call i32 (...) @rcu_read_unlock()
  %147 = load i32, i32* @NET_XMIT_DROP, align 4
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %135, %121
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local %struct.tun_struct* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.tun_file* @rcu_dereference(i32) #1

declare dso_local i32 @tun_automq_xmit(%struct.tun_struct*, %struct.sk_buff*) #1

declare dso_local i32 @tun_debug(i32, %struct.tun_struct*, i8*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @check_filter(i32*, %struct.sk_buff*) #1

declare dso_local i64 @sk_filter(%struct.TYPE_7__*, %struct.sk_buff*) #1

declare dso_local i32 @run_ebpf_filter(%struct.tun_struct*, %struct.sk_buff*, i32) #1

declare dso_local i64 @pskb_trim(%struct.sk_buff*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_orphan_frags_rx(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_tx_timestamp(%struct.sk_buff*) #1

declare dso_local i32 @skb_orphan(%struct.sk_buff*) #1

declare dso_local i32 @nf_reset_ct(%struct.sk_buff*) #1

declare dso_local i64 @ptr_ring_produce(i32*, %struct.sk_buff*) #1

declare dso_local i32 @kill_fasync(i32*, i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @this_cpu_inc(i32) #1

declare dso_local i32 @skb_tx_error(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
