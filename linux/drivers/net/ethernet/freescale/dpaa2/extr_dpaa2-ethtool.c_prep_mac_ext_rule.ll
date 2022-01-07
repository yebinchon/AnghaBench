; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-ethtool.c_prep_mac_ext_rule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-ethtool.c_prep_mac_ext_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ethtool_flow_ext = type { i32 }

@NET_PROT_ETH = common dso_local global i32 0, align 4
@NH_FLD_ETH_DA = common dso_local global i32 0, align 4
@DPAA2_ETH_DIST_ETHDST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ethtool_flow_ext*, %struct.ethtool_flow_ext*, i8*, i8*, i32*)* @prep_mac_ext_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prep_mac_ext_rule(%struct.ethtool_flow_ext* %0, %struct.ethtool_flow_ext* %1, i8* %2, i8* %3, i32* %4) #0 {
  %6 = alloca %struct.ethtool_flow_ext*, align 8
  %7 = alloca %struct.ethtool_flow_ext*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.ethtool_flow_ext* %0, %struct.ethtool_flow_ext** %6, align 8
  store %struct.ethtool_flow_ext* %1, %struct.ethtool_flow_ext** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load %struct.ethtool_flow_ext*, %struct.ethtool_flow_ext** %7, align 8
  %13 = getelementptr inbounds %struct.ethtool_flow_ext, %struct.ethtool_flow_ext* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @is_zero_ether_addr(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %41, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* @NET_PROT_ETH, align 4
  %19 = load i32, i32* @NH_FLD_ETH_DA, align 4
  %20 = call i32 @dpaa2_eth_cls_fld_off(i32 %18, i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load i8*, i8** %8, align 8
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr i8, i8* %21, i64 %23
  %25 = load %struct.ethtool_flow_ext*, %struct.ethtool_flow_ext** %6, align 8
  %26 = getelementptr inbounds %struct.ethtool_flow_ext, %struct.ethtool_flow_ext* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ether_addr_copy(i8* %24, i32 %27)
  %29 = load i8*, i8** %9, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr i8, i8* %29, i64 %31
  %33 = load %struct.ethtool_flow_ext*, %struct.ethtool_flow_ext** %7, align 8
  %34 = getelementptr inbounds %struct.ethtool_flow_ext, %struct.ethtool_flow_ext* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ether_addr_copy(i8* %32, i32 %35)
  %37 = load i32, i32* @DPAA2_ETH_DIST_ETHDST, align 4
  %38 = load i32*, i32** %10, align 8
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %37
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %17, %5
  ret i32 0
}

declare dso_local i32 @is_zero_ether_addr(i32) #1

declare dso_local i32 @dpaa2_eth_cls_fld_off(i32, i32) #1

declare dso_local i32 @ether_addr_copy(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
