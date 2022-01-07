; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_xdp_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_xdp_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.xdp_buff = type { i32 }
%struct.xdp_frame = type { i32 }

@EOVERFLOW = common dso_local global i32 0, align 4
@XDP_XMIT_FLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.xdp_buff*)* @tun_xdp_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tun_xdp_tx(%struct.net_device* %0, %struct.xdp_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.xdp_buff*, align 8
  %6 = alloca %struct.xdp_frame*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.xdp_buff* %1, %struct.xdp_buff** %5, align 8
  %7 = load %struct.xdp_buff*, %struct.xdp_buff** %5, align 8
  %8 = call %struct.xdp_frame* @convert_to_xdp_frame(%struct.xdp_buff* %7)
  store %struct.xdp_frame* %8, %struct.xdp_frame** %6, align 8
  %9 = load %struct.xdp_frame*, %struct.xdp_frame** %6, align 8
  %10 = icmp ne %struct.xdp_frame* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EOVERFLOW, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %22

18:                                               ; preds = %2
  %19 = load %struct.net_device*, %struct.net_device** %4, align 8
  %20 = load i32, i32* @XDP_XMIT_FLUSH, align 4
  %21 = call i32 @tun_xdp_xmit(%struct.net_device* %19, i32 1, %struct.xdp_frame** %6, i32 %20)
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %18, %15
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local %struct.xdp_frame* @convert_to_xdp_frame(%struct.xdp_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @tun_xdp_xmit(%struct.net_device*, i32, %struct.xdp_frame**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
