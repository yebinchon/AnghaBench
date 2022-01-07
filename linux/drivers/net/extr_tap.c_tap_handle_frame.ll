; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tap.c_tap_handle_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tap.c_tap_handle_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, %struct.sk_buff*, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.tap_dev = type { i32, i32 (%struct.tap_dev*)* }
%struct.tap_queue = type { i32, i32, i32 }

@TAP_FEATURES = common dso_local global i32 0, align 4
@RX_HANDLER_PASS = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@IFF_VNET_HDR = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@NETIF_F_CSUM_MASK = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@EPOLLRDBAND = common dso_local global i32 0, align 4
@RX_HANDLER_CONSUMED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tap_handle_frame(%struct.sk_buff** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff**, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.tap_dev*, align 8
  %7 = alloca %struct.tap_queue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff** %0, %struct.sk_buff*** %3, align 8
  %11 = load %struct.sk_buff**, %struct.sk_buff*** %3, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  store %struct.sk_buff* %12, %struct.sk_buff** %4, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 2
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %5, align 8
  %16 = load i32, i32* @TAP_FEATURES, align 4
  store i32 %16, i32* %8, align 4
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = call %struct.tap_dev* @tap_dev_get_rcu(%struct.net_device* %17)
  store %struct.tap_dev* %18, %struct.tap_dev** %6, align 8
  %19 = load %struct.tap_dev*, %struct.tap_dev** %6, align 8
  %20 = icmp ne %struct.tap_dev* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @RX_HANDLER_PASS, align 4
  store i32 %22, i32* %2, align 4
  br label %147

23:                                               ; preds = %1
  %24 = load %struct.tap_dev*, %struct.tap_dev** %6, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = call %struct.tap_queue* @tap_get_queue(%struct.tap_dev* %24, %struct.sk_buff* %25)
  store %struct.tap_queue* %26, %struct.tap_queue** %7, align 8
  %27 = load %struct.tap_queue*, %struct.tap_queue** %7, align 8
  %28 = icmp ne %struct.tap_queue* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @RX_HANDLER_PASS, align 4
  store i32 %30, i32* %2, align 4
  br label %147

31:                                               ; preds = %23
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = load i32, i32* @ETH_HLEN, align 4
  %34 = call i32 @skb_push(%struct.sk_buff* %32, i32 %33)
  %35 = load %struct.tap_queue*, %struct.tap_queue** %7, align 8
  %36 = getelementptr inbounds %struct.tap_queue, %struct.tap_queue* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IFF_VNET_HDR, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %31
  %42 = load %struct.tap_dev*, %struct.tap_dev** %6, align 8
  %43 = getelementptr inbounds %struct.tap_dev, %struct.tap_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %41, %31
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i64 @netif_needs_gso(%struct.sk_buff* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %96

52:                                               ; preds = %47
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call %struct.sk_buff* @__skb_gso_segment(%struct.sk_buff* %53, i32 %54, i32 0)
  store %struct.sk_buff* %55, %struct.sk_buff** %9, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %57 = call i64 @IS_ERR(%struct.sk_buff* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %132

60:                                               ; preds = %52
  %61 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %62 = icmp ne %struct.sk_buff* %61, null
  br i1 %62, label %71, label %63

63:                                               ; preds = %60
  %64 = load %struct.tap_queue*, %struct.tap_queue** %7, align 8
  %65 = getelementptr inbounds %struct.tap_queue, %struct.tap_queue* %64, i32 0, i32 2
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = call i64 @ptr_ring_produce(i32* %65, %struct.sk_buff* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %132

70:                                               ; preds = %63
  br label %121

71:                                               ; preds = %60
  %72 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %73 = call i32 @consume_skb(%struct.sk_buff* %72)
  br label %74

74:                                               ; preds = %93, %71
  %75 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %76 = icmp ne %struct.sk_buff* %75, null
  br i1 %76, label %77, label %95

77:                                               ; preds = %74
  %78 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 1
  %80 = load %struct.sk_buff*, %struct.sk_buff** %79, align 8
  store %struct.sk_buff* %80, %struct.sk_buff** %10, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %82, align 8
  %83 = load %struct.tap_queue*, %struct.tap_queue** %7, align 8
  %84 = getelementptr inbounds %struct.tap_queue, %struct.tap_queue* %83, i32 0, i32 2
  %85 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %86 = call i64 @ptr_ring_produce(i32* %84, %struct.sk_buff* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %77
  %89 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %90 = call i32 @kfree_skb(%struct.sk_buff* %89)
  %91 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %92 = call i32 @kfree_skb_list(%struct.sk_buff* %91)
  br label %95

93:                                               ; preds = %77
  %94 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %94, %struct.sk_buff** %9, align 8
  br label %74

95:                                               ; preds = %88, %74
  br label %120

96:                                               ; preds = %47
  %97 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %98 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %112

102:                                              ; preds = %96
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* @NETIF_F_CSUM_MASK, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %102
  %108 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %109 = call i64 @skb_checksum_help(%struct.sk_buff* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  br label %132

112:                                              ; preds = %107, %102, %96
  %113 = load %struct.tap_queue*, %struct.tap_queue** %7, align 8
  %114 = getelementptr inbounds %struct.tap_queue, %struct.tap_queue* %113, i32 0, i32 2
  %115 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %116 = call i64 @ptr_ring_produce(i32* %114, %struct.sk_buff* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %132

119:                                              ; preds = %112
  br label %120

120:                                              ; preds = %119, %95
  br label %121

121:                                              ; preds = %120, %70
  %122 = load %struct.tap_queue*, %struct.tap_queue** %7, align 8
  %123 = getelementptr inbounds %struct.tap_queue, %struct.tap_queue* %122, i32 0, i32 1
  %124 = call i32 @sk_sleep(i32* %123)
  %125 = load i32, i32* @EPOLLIN, align 4
  %126 = load i32, i32* @EPOLLRDNORM, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @EPOLLRDBAND, align 4
  %129 = or i32 %127, %128
  %130 = call i32 @wake_up_interruptible_poll(i32 %124, i32 %129)
  %131 = load i32, i32* @RX_HANDLER_CONSUMED, align 4
  store i32 %131, i32* %2, align 4
  br label %147

132:                                              ; preds = %118, %111, %69, %59
  %133 = load %struct.tap_dev*, %struct.tap_dev** %6, align 8
  %134 = getelementptr inbounds %struct.tap_dev, %struct.tap_dev* %133, i32 0, i32 1
  %135 = load i32 (%struct.tap_dev*)*, i32 (%struct.tap_dev*)** %134, align 8
  %136 = icmp ne i32 (%struct.tap_dev*)* %135, null
  br i1 %136, label %137, label %143

137:                                              ; preds = %132
  %138 = load %struct.tap_dev*, %struct.tap_dev** %6, align 8
  %139 = getelementptr inbounds %struct.tap_dev, %struct.tap_dev* %138, i32 0, i32 1
  %140 = load i32 (%struct.tap_dev*)*, i32 (%struct.tap_dev*)** %139, align 8
  %141 = load %struct.tap_dev*, %struct.tap_dev** %6, align 8
  %142 = call i32 %140(%struct.tap_dev* %141)
  br label %143

143:                                              ; preds = %137, %132
  %144 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %145 = call i32 @kfree_skb(%struct.sk_buff* %144)
  %146 = load i32, i32* @RX_HANDLER_CONSUMED, align 4
  store i32 %146, i32* %2, align 4
  br label %147

147:                                              ; preds = %143, %121, %29, %21
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local %struct.tap_dev* @tap_dev_get_rcu(%struct.net_device*) #1

declare dso_local %struct.tap_queue* @tap_get_queue(%struct.tap_dev*, %struct.sk_buff*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i64 @netif_needs_gso(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @__skb_gso_segment(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i64 @ptr_ring_produce(i32*, %struct.sk_buff*) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb_list(%struct.sk_buff*) #1

declare dso_local i64 @skb_checksum_help(%struct.sk_buff*) #1

declare dso_local i32 @wake_up_interruptible_poll(i32, i32) #1

declare dso_local i32 @sk_sleep(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
