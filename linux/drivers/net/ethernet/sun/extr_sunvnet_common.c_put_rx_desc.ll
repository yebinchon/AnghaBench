; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunvnet_common.c_put_rx_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunvnet_common.c_put_rx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnet_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.vio_dring_state = type { i32, i32, i32 }
%struct.vio_net_desc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnet_port*, %struct.vio_dring_state*, %struct.vio_net_desc*, i32)* @put_rx_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @put_rx_desc(%struct.vnet_port* %0, %struct.vio_dring_state* %1, %struct.vio_net_desc* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vnet_port*, align 8
  %7 = alloca %struct.vio_dring_state*, align 8
  %8 = alloca %struct.vio_net_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vnet_port* %0, %struct.vnet_port** %6, align 8
  store %struct.vio_dring_state* %1, %struct.vio_dring_state** %7, align 8
  store %struct.vio_net_desc* %2, %struct.vio_net_desc** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.vnet_port*, %struct.vnet_port** %6, align 8
  %12 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.vio_net_desc*, %struct.vio_net_desc** %8, align 8
  %16 = load %struct.vio_dring_state*, %struct.vio_dring_state** %7, align 8
  %17 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.vio_dring_state*, %struct.vio_dring_state** %7, align 8
  %21 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %19, %22
  %24 = load %struct.vio_dring_state*, %struct.vio_dring_state** %7, align 8
  %25 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.vio_dring_state*, %struct.vio_dring_state** %7, align 8
  %28 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ldc_put_dring_entry(i32 %14, %struct.vio_net_desc* %15, i32 %18, i32 %23, i32 %26, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %4
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %5, align 4
  br label %36

35:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %35, %33
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @ldc_put_dring_entry(i32, %struct.vio_net_desc*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
