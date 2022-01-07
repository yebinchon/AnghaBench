; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_set_hash_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_set_hash_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nfp_meta_parsed = type { i32 }
%struct.nfp_net_rx_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nfp_net_rx_hash = type { i32, i32 }

@PCIE_DESC_RX_RSS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.nfp_meta_parsed*, i8*, %struct.nfp_net_rx_desc*)* @nfp_net_set_hash_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_net_set_hash_desc(%struct.net_device* %0, %struct.nfp_meta_parsed* %1, i8* %2, %struct.nfp_net_rx_desc* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.nfp_meta_parsed*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.nfp_net_rx_desc*, align 8
  %9 = alloca %struct.nfp_net_rx_hash*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.nfp_meta_parsed* %1, %struct.nfp_meta_parsed** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.nfp_net_rx_desc* %3, %struct.nfp_net_rx_desc** %8, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.nfp_net_rx_hash*
  store %struct.nfp_net_rx_hash* %11, %struct.nfp_net_rx_hash** %9, align 8
  %12 = load %struct.nfp_net_rx_desc*, %struct.nfp_net_rx_desc** %8, align 8
  %13 = getelementptr inbounds %struct.nfp_net_rx_desc, %struct.nfp_net_rx_desc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @PCIE_DESC_RX_RSS, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  br label %29

20:                                               ; preds = %4
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = load %struct.nfp_meta_parsed*, %struct.nfp_meta_parsed** %6, align 8
  %23 = load %struct.nfp_net_rx_hash*, %struct.nfp_net_rx_hash** %9, align 8
  %24 = getelementptr inbounds %struct.nfp_net_rx_hash, %struct.nfp_net_rx_hash* %23, i32 0, i32 1
  %25 = call i32 @get_unaligned_be32(i32* %24)
  %26 = load %struct.nfp_net_rx_hash*, %struct.nfp_net_rx_hash** %9, align 8
  %27 = getelementptr inbounds %struct.nfp_net_rx_hash, %struct.nfp_net_rx_hash* %26, i32 0, i32 0
  %28 = call i32 @nfp_net_set_hash(%struct.net_device* %21, %struct.nfp_meta_parsed* %22, i32 %25, i32* %27)
  br label %29

29:                                               ; preds = %20, %19
  ret void
}

declare dso_local i32 @nfp_net_set_hash(%struct.net_device*, %struct.nfp_meta_parsed*, i32, i32*) #1

declare dso_local i32 @get_unaligned_be32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
