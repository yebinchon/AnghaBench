; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_ptp.c_is_ptp_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_ptp.c_is_ptp_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.port_info = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_ptp_enabled(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.port_info*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %4, align 8
  %7 = call %struct.port_info* @netdev_priv(%struct.net_device* %6)
  store %struct.port_info* %7, %struct.port_info** %5, align 8
  %8 = load %struct.port_info*, %struct.port_info** %5, align 8
  %9 = getelementptr inbounds %struct.port_info, %struct.port_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %14 = call i64 @cxgb4_xmit_with_hwtstamp(%struct.sk_buff* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %18 = call i64 @cxgb4_ptp_is_ptp_tx(%struct.sk_buff* %17)
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %16, %12, %2
  %21 = phi i1 [ false, %12 ], [ false, %2 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  ret i32 %22
}

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @cxgb4_xmit_with_hwtstamp(%struct.sk_buff*) #1

declare dso_local i64 @cxgb4_ptp_is_ptp_tx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
