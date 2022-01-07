; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_xmit_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_xmit_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_device = type { i32 }
%struct.vmxnet3_adapter = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @vmxnet3_xmit_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmxnet3_xmit_frame(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.vmxnet3_adapter*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %4, align 8
  %7 = call %struct.vmxnet3_adapter* @netdev_priv(%struct.net_device* %6)
  store %struct.vmxnet3_adapter* %7, %struct.vmxnet3_adapter** %5, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %12 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ugt i64 %10, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %18 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %19 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = call i32 @vmxnet3_tq_xmit(%struct.sk_buff* %17, i32* %24, %struct.vmxnet3_adapter* %25, %struct.net_device* %26)
  ret i32 %27
}

declare dso_local %struct.vmxnet3_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @vmxnet3_tq_xmit(%struct.sk_buff*, i32*, %struct.vmxnet3_adapter*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
