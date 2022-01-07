; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_ntb_netdev.c_ntb_netdev_change_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_ntb_netdev.c_ntb_netdev_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ntb_netdev = type { i32 }
%struct.sk_buff = type { i32 }

@ETH_HLEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Error changing MTU, device inoperable\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @ntb_netdev_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntb_netdev_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ntb_netdev*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.ntb_netdev* @netdev_priv(%struct.net_device* %11)
  store %struct.ntb_netdev* %12, %struct.ntb_netdev** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.ntb_netdev*, %struct.ntb_netdev** %6, align 8
  %15 = getelementptr inbounds %struct.ntb_netdev, %struct.ntb_netdev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ntb_transport_max_size(i32 %16)
  %18 = load i32, i32* @ETH_HLEN, align 4
  %19 = sub nsw i32 %17, %18
  %20 = icmp sgt i32 %13, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %118

24:                                               ; preds = %2
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = call i32 @netif_running(%struct.net_device* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.net_device*, %struct.net_device** %4, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  store i32 0, i32* %3, align 4
  br label %118

32:                                               ; preds = %24
  %33 = load %struct.ntb_netdev*, %struct.ntb_netdev** %6, align 8
  %34 = getelementptr inbounds %struct.ntb_netdev, %struct.ntb_netdev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ntb_transport_link_down(i32 %35)
  %37 = load %struct.net_device*, %struct.net_device** %4, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %92

42:                                               ; preds = %32
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %52, %42
  %44 = load %struct.ntb_netdev*, %struct.ntb_netdev** %6, align 8
  %45 = getelementptr inbounds %struct.ntb_netdev, %struct.ntb_netdev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.sk_buff* @ntb_transport_rx_remove(i32 %46, i32* %8)
  store %struct.sk_buff* %47, %struct.sk_buff** %7, align 8
  %48 = icmp ne %struct.sk_buff* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %51 = call i32 @dev_kfree_skb(%struct.sk_buff* %50)
  br label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %10, align 4
  br label %43

55:                                               ; preds = %43
  br label %56

56:                                               ; preds = %88, %55
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %91

59:                                               ; preds = %56
  %60 = load %struct.net_device*, %struct.net_device** %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @ETH_HLEN, align 4
  %63 = add nsw i32 %61, %62
  %64 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %60, i32 %63)
  store %struct.sk_buff* %64, %struct.sk_buff** %7, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %66 = icmp ne %struct.sk_buff* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %59
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %9, align 4
  br label %100

70:                                               ; preds = %59
  %71 = load %struct.ntb_netdev*, %struct.ntb_netdev** %6, align 8
  %72 = getelementptr inbounds %struct.ntb_netdev, %struct.ntb_netdev* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @ETH_HLEN, align 4
  %80 = add nsw i32 %78, %79
  %81 = call i32 @ntb_transport_rx_enqueue(i32 %73, %struct.sk_buff* %74, i32 %77, i32 %80)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %70
  %85 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %86 = call i32 @dev_kfree_skb(%struct.sk_buff* %85)
  br label %100

87:                                               ; preds = %70
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %10, align 4
  br label %56

91:                                               ; preds = %56
  br label %92

92:                                               ; preds = %91, %32
  %93 = load i32, i32* %5, align 4
  %94 = load %struct.net_device*, %struct.net_device** %4, align 8
  %95 = getelementptr inbounds %struct.net_device, %struct.net_device* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  %96 = load %struct.ntb_netdev*, %struct.ntb_netdev** %6, align 8
  %97 = getelementptr inbounds %struct.ntb_netdev, %struct.ntb_netdev* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @ntb_transport_link_up(i32 %98)
  store i32 0, i32* %3, align 4
  br label %118

100:                                              ; preds = %84, %67
  %101 = load %struct.ntb_netdev*, %struct.ntb_netdev** %6, align 8
  %102 = getelementptr inbounds %struct.ntb_netdev, %struct.ntb_netdev* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @ntb_transport_link_down(i32 %103)
  br label %105

105:                                              ; preds = %111, %100
  %106 = load %struct.ntb_netdev*, %struct.ntb_netdev** %6, align 8
  %107 = getelementptr inbounds %struct.ntb_netdev, %struct.ntb_netdev* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call %struct.sk_buff* @ntb_transport_rx_remove(i32 %108, i32* %8)
  store %struct.sk_buff* %109, %struct.sk_buff** %7, align 8
  %110 = icmp ne %struct.sk_buff* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %105
  %112 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %113 = call i32 @dev_kfree_skb(%struct.sk_buff* %112)
  br label %105

114:                                              ; preds = %105
  %115 = load %struct.net_device*, %struct.net_device** %4, align 8
  %116 = call i32 @netdev_err(%struct.net_device* %115, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %117 = load i32, i32* %9, align 4
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %114, %92, %28, %21
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local %struct.ntb_netdev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ntb_transport_max_size(i32) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @ntb_transport_link_down(i32) #1

declare dso_local %struct.sk_buff* @ntb_transport_rx_remove(i32, i32*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i32) #1

declare dso_local i32 @ntb_transport_rx_enqueue(i32, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @ntb_transport_link_up(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
