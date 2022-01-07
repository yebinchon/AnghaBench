; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_veth.c_veth_xdp_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_veth.c_veth_xdp_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.xdp_buff = type { i32 }
%struct.veth_xdp_tx_bq = type { i64, %struct.xdp_frame** }
%struct.xdp_frame = type { i32 }

@EOVERFLOW = common dso_local global i32 0, align 4
@VETH_XDP_TX_BULK_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.xdp_buff*, %struct.veth_xdp_tx_bq*)* @veth_xdp_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @veth_xdp_tx(%struct.net_device* %0, %struct.xdp_buff* %1, %struct.veth_xdp_tx_bq* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.xdp_buff*, align 8
  %7 = alloca %struct.veth_xdp_tx_bq*, align 8
  %8 = alloca %struct.xdp_frame*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.xdp_buff* %1, %struct.xdp_buff** %6, align 8
  store %struct.veth_xdp_tx_bq* %2, %struct.veth_xdp_tx_bq** %7, align 8
  %9 = load %struct.xdp_buff*, %struct.xdp_buff** %6, align 8
  %10 = call %struct.xdp_frame* @convert_to_xdp_frame(%struct.xdp_buff* %9)
  store %struct.xdp_frame* %10, %struct.xdp_frame** %8, align 8
  %11 = load %struct.xdp_frame*, %struct.xdp_frame** %8, align 8
  %12 = icmp ne %struct.xdp_frame* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EOVERFLOW, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %43

20:                                               ; preds = %3
  %21 = load %struct.veth_xdp_tx_bq*, %struct.veth_xdp_tx_bq** %7, align 8
  %22 = getelementptr inbounds %struct.veth_xdp_tx_bq, %struct.veth_xdp_tx_bq* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @VETH_XDP_TX_BULK_SIZE, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %20
  %30 = load %struct.net_device*, %struct.net_device** %5, align 8
  %31 = load %struct.veth_xdp_tx_bq*, %struct.veth_xdp_tx_bq** %7, align 8
  %32 = call i32 @veth_xdp_flush_bq(%struct.net_device* %30, %struct.veth_xdp_tx_bq* %31)
  br label %33

33:                                               ; preds = %29, %20
  %34 = load %struct.xdp_frame*, %struct.xdp_frame** %8, align 8
  %35 = load %struct.veth_xdp_tx_bq*, %struct.veth_xdp_tx_bq** %7, align 8
  %36 = getelementptr inbounds %struct.veth_xdp_tx_bq, %struct.veth_xdp_tx_bq* %35, i32 0, i32 1
  %37 = load %struct.xdp_frame**, %struct.xdp_frame*** %36, align 8
  %38 = load %struct.veth_xdp_tx_bq*, %struct.veth_xdp_tx_bq** %7, align 8
  %39 = getelementptr inbounds %struct.veth_xdp_tx_bq, %struct.veth_xdp_tx_bq* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %39, align 8
  %42 = getelementptr inbounds %struct.xdp_frame*, %struct.xdp_frame** %37, i64 %40
  store %struct.xdp_frame* %34, %struct.xdp_frame** %42, align 8
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %33, %17
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.xdp_frame* @convert_to_xdp_frame(%struct.xdp_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @veth_xdp_flush_bq(%struct.net_device*, %struct.veth_xdp_tx_bq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
