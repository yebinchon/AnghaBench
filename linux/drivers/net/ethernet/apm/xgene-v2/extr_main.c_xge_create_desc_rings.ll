; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene-v2/extr_main.c_xge_create_desc_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene-v2/extr_main.c_xge_create_desc_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.xge_pdata = type { %struct.xge_desc_ring*, %struct.xge_desc_ring* }
%struct.xge_desc_ring = type { i32 }

@XGENE_ENET_NUM_DESC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @xge_create_desc_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xge_create_desc_rings(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.xge_pdata*, align 8
  %5 = alloca %struct.xge_desc_ring*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.xge_pdata* @netdev_priv(%struct.net_device* %7)
  store %struct.xge_pdata* %8, %struct.xge_pdata** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.xge_desc_ring* @xge_create_desc_ring(%struct.net_device* %9)
  store %struct.xge_desc_ring* %10, %struct.xge_desc_ring** %5, align 8
  %11 = load %struct.xge_desc_ring*, %struct.xge_desc_ring** %5, align 8
  %12 = icmp ne %struct.xge_desc_ring* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %38

14:                                               ; preds = %1
  %15 = load %struct.xge_desc_ring*, %struct.xge_desc_ring** %5, align 8
  %16 = load %struct.xge_pdata*, %struct.xge_pdata** %4, align 8
  %17 = getelementptr inbounds %struct.xge_pdata, %struct.xge_pdata* %16, i32 0, i32 1
  store %struct.xge_desc_ring* %15, %struct.xge_desc_ring** %17, align 8
  %18 = load %struct.xge_pdata*, %struct.xge_pdata** %4, align 8
  %19 = call i32 @xge_update_tx_desc_addr(%struct.xge_pdata* %18)
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = call %struct.xge_desc_ring* @xge_create_desc_ring(%struct.net_device* %20)
  store %struct.xge_desc_ring* %21, %struct.xge_desc_ring** %5, align 8
  %22 = load %struct.xge_desc_ring*, %struct.xge_desc_ring** %5, align 8
  %23 = icmp ne %struct.xge_desc_ring* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %14
  br label %38

25:                                               ; preds = %14
  %26 = load %struct.xge_desc_ring*, %struct.xge_desc_ring** %5, align 8
  %27 = load %struct.xge_pdata*, %struct.xge_pdata** %4, align 8
  %28 = getelementptr inbounds %struct.xge_pdata, %struct.xge_pdata* %27, i32 0, i32 0
  store %struct.xge_desc_ring* %26, %struct.xge_desc_ring** %28, align 8
  %29 = load %struct.xge_pdata*, %struct.xge_pdata** %4, align 8
  %30 = call i32 @xge_update_rx_desc_addr(%struct.xge_pdata* %29)
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  %32 = load i32, i32* @XGENE_ENET_NUM_DESC, align 4
  %33 = call i32 @xge_refill_buffers(%struct.net_device* %31, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  br label %38

37:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %43

38:                                               ; preds = %36, %24, %13
  %39 = load %struct.net_device*, %struct.net_device** %3, align 8
  %40 = call i32 @xge_delete_desc_rings(%struct.net_device* %39)
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %38, %37
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.xge_pdata* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.xge_desc_ring* @xge_create_desc_ring(%struct.net_device*) #1

declare dso_local i32 @xge_update_tx_desc_addr(%struct.xge_pdata*) #1

declare dso_local i32 @xge_update_rx_desc_addr(%struct.xge_pdata*) #1

declare dso_local i32 @xge_refill_buffers(%struct.net_device*, i32) #1

declare dso_local i32 @xge_delete_desc_rings(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
