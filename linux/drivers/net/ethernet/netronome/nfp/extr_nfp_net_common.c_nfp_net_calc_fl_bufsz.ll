; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_calc_fl_bufsz.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_calc_fl_bufsz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net_dp = type { i64, i64, i64 }

@NFP_NET_RX_BUF_HEADROOM = common dso_local global i32 0, align 4
@NFP_NET_CFG_RX_OFFSET_DYNAMIC = common dso_local global i64 0, align 8
@NFP_NET_MAX_PREPEND = common dso_local global i64 0, align 8
@ETH_HLEN = common dso_local global i64 0, align 8
@VLAN_HLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_net_dp*)* @nfp_net_calc_fl_bufsz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_net_calc_fl_bufsz(%struct.nfp_net_dp* %0) #0 {
  %2 = alloca %struct.nfp_net_dp*, align 8
  %3 = alloca i32, align 4
  store %struct.nfp_net_dp* %0, %struct.nfp_net_dp** %2, align 8
  %4 = load i32, i32* @NFP_NET_RX_BUF_HEADROOM, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %2, align 8
  %6 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = load i32, i32* %3, align 4
  %9 = zext i32 %8 to i64
  %10 = add nsw i64 %9, %7
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %3, align 4
  %12 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %2, align 8
  %13 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @NFP_NET_CFG_RX_OFFSET_DYNAMIC, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load i64, i64* @NFP_NET_MAX_PREPEND, align 8
  %19 = load i32, i32* %3, align 4
  %20 = zext i32 %19 to i64
  %21 = add nsw i64 %20, %18
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %3, align 4
  br label %31

23:                                               ; preds = %1
  %24 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %2, align 8
  %25 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = zext i32 %27 to i64
  %29 = add nsw i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %23, %17
  %32 = load i64, i64* @ETH_HLEN, align 8
  %33 = load i32, i32* @VLAN_HLEN, align 4
  %34 = mul nsw i32 %33, 2
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %32, %35
  %37 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %2, align 8
  %38 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  %41 = load i32, i32* %3, align 4
  %42 = zext i32 %41 to i64
  %43 = add nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @SKB_DATA_ALIGN(i32 %45)
  store i32 %46, i32* %3, align 4
  %47 = call i32 @SKB_DATA_ALIGN(i32 4)
  %48 = load i32, i32* %3, align 4
  %49 = add i32 %48, %47
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @SKB_DATA_ALIGN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
