; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c_netxen_napi_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c_netxen_napi_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { i32, %struct.netxen_recv_context }
%struct.netxen_recv_context = type { %struct.nx_host_sds_ring* }
%struct.nx_host_sds_ring = type { i32 }
%struct.net_device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@netxen_nic_poll = common dso_local global i32 0, align 4
@NAPI_POLL_WEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netxen_adapter*, %struct.net_device*)* @netxen_napi_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netxen_napi_add(%struct.netxen_adapter* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netxen_adapter*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nx_host_sds_ring*, align 8
  %8 = alloca %struct.netxen_recv_context*, align 8
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %9 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %9, i32 0, i32 1
  store %struct.netxen_recv_context* %10, %struct.netxen_recv_context** %8, align 8
  %11 = load %struct.netxen_recv_context*, %struct.netxen_recv_context** %8, align 8
  %12 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @netxen_alloc_sds_rings(%struct.netxen_recv_context* %11, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %44

20:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %40, %20
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %24 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %21
  %28 = load %struct.netxen_recv_context*, %struct.netxen_recv_context** %8, align 8
  %29 = getelementptr inbounds %struct.netxen_recv_context, %struct.netxen_recv_context* %28, i32 0, i32 0
  %30 = load %struct.nx_host_sds_ring*, %struct.nx_host_sds_ring** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.nx_host_sds_ring, %struct.nx_host_sds_ring* %30, i64 %32
  store %struct.nx_host_sds_ring* %33, %struct.nx_host_sds_ring** %7, align 8
  %34 = load %struct.net_device*, %struct.net_device** %5, align 8
  %35 = load %struct.nx_host_sds_ring*, %struct.nx_host_sds_ring** %7, align 8
  %36 = getelementptr inbounds %struct.nx_host_sds_ring, %struct.nx_host_sds_ring* %35, i32 0, i32 0
  %37 = load i32, i32* @netxen_nic_poll, align 4
  %38 = load i32, i32* @NAPI_POLL_WEIGHT, align 4
  %39 = call i32 @netif_napi_add(%struct.net_device* %34, i32* %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %27
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %21

43:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %17
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i64 @netxen_alloc_sds_rings(%struct.netxen_recv_context*, i32) #1

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
