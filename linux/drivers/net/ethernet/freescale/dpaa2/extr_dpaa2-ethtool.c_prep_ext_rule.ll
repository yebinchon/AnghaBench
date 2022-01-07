; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-ethtool.c_prep_ext_rule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-ethtool.c_prep_ext_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ethtool_flow_ext = type { i64, i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@NET_PROT_VLAN = common dso_local global i32 0, align 4
@NH_FLD_VLAN_TCI = common dso_local global i32 0, align 4
@DPAA2_ETH_DIST_VLAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ethtool_flow_ext*, %struct.ethtool_flow_ext*, i8*, i8*, i32*)* @prep_ext_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prep_ext_rule(%struct.ethtool_flow_ext* %0, %struct.ethtool_flow_ext* %1, i8* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ethtool_flow_ext*, align 8
  %8 = alloca %struct.ethtool_flow_ext*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.ethtool_flow_ext* %0, %struct.ethtool_flow_ext** %7, align 8
  store %struct.ethtool_flow_ext* %1, %struct.ethtool_flow_ext** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load %struct.ethtool_flow_ext*, %struct.ethtool_flow_ext** %8, align 8
  %14 = getelementptr inbounds %struct.ethtool_flow_ext, %struct.ethtool_flow_ext* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %50

20:                                               ; preds = %5
  %21 = load %struct.ethtool_flow_ext*, %struct.ethtool_flow_ext** %8, align 8
  %22 = getelementptr inbounds %struct.ethtool_flow_ext, %struct.ethtool_flow_ext* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %49

25:                                               ; preds = %20
  %26 = load i32, i32* @NET_PROT_VLAN, align 4
  %27 = load i32, i32* @NH_FLD_VLAN_TCI, align 4
  %28 = call i32 @dpaa2_eth_cls_fld_off(i32 %26, i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load %struct.ethtool_flow_ext*, %struct.ethtool_flow_ext** %7, align 8
  %30 = getelementptr inbounds %struct.ethtool_flow_ext, %struct.ethtool_flow_ext* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr i8, i8* %32, i64 %34
  %36 = bitcast i8* %35 to i64*
  store i64 %31, i64* %36, align 8
  %37 = load %struct.ethtool_flow_ext*, %struct.ethtool_flow_ext** %8, align 8
  %38 = getelementptr inbounds %struct.ethtool_flow_ext, %struct.ethtool_flow_ext* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr i8, i8* %40, i64 %42
  %44 = bitcast i8* %43 to i64*
  store i64 %39, i64* %44, align 8
  %45 = load i32, i32* @DPAA2_ETH_DIST_VLAN, align 4
  %46 = load i32*, i32** %11, align 8
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %45
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %25, %20
  store i32 0, i32* %6, align 4
  br label %50

50:                                               ; preds = %49, %17
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i32 @dpaa2_eth_cls_fld_off(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
