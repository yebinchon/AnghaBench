; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_cls.c_mvpp2_ethtool_rxfh_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_cls.c_mvpp2_ethtool_rxfh_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { i32 }
%struct.ethtool_rxnfc = type { i32, i32 }

@RXH_L4_B_0_1 = common dso_local global i32 0, align 4
@MVPP22_CLS_HEK_OPT_L4SIP = common dso_local global i32 0, align 4
@RXH_L4_B_2_3 = common dso_local global i32 0, align 4
@MVPP22_CLS_HEK_OPT_L4DIP = common dso_local global i32 0, align 4
@RXH_L2DA = common dso_local global i32 0, align 4
@MVPP22_CLS_HEK_OPT_MAC_DA = common dso_local global i32 0, align 4
@RXH_VLAN = common dso_local global i32 0, align 4
@MVPP22_CLS_HEK_OPT_VLAN = common dso_local global i32 0, align 4
@RXH_L3_PROTO = common dso_local global i32 0, align 4
@MVPP22_CLS_HEK_OPT_L3_PROTO = common dso_local global i32 0, align 4
@RXH_IP_SRC = common dso_local global i32 0, align 4
@MVPP22_CLS_HEK_OPT_IP4SA = common dso_local global i32 0, align 4
@MVPP22_CLS_HEK_OPT_IP6SA = common dso_local global i32 0, align 4
@RXH_IP_DST = common dso_local global i32 0, align 4
@MVPP22_CLS_HEK_OPT_IP4DA = common dso_local global i32 0, align 4
@MVPP22_CLS_HEK_OPT_IP6DA = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mvpp2_ethtool_rxfh_set(%struct.mvpp2_port* %0, %struct.ethtool_rxnfc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mvpp2_port*, align 8
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %4, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %9 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @mvpp2_cls_ethtool_flow_to_type(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %96 [
    i32 131, label %13
    i32 129, label %13
    i32 130, label %13
    i32 128, label %13
    i32 133, label %36
    i32 132, label %36
  ]

13:                                               ; preds = %2, %2, %2, %2
  %14 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %15 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @RXH_L4_B_0_1, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load i32, i32* @MVPP22_CLS_HEK_OPT_L4SIP, align 4
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %20, %13
  %25 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %26 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @RXH_L4_B_2_3, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load i32, i32* @MVPP22_CLS_HEK_OPT_L4DIP, align 4
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %31, %24
  br label %36

36:                                               ; preds = %2, %2, %35
  %37 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %38 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @RXH_L2DA, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load i32, i32* @MVPP22_CLS_HEK_OPT_MAC_DA, align 4
  %45 = load i32, i32* %6, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %43, %36
  %48 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %49 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @RXH_VLAN, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load i32, i32* @MVPP22_CLS_HEK_OPT_VLAN, align 4
  %56 = load i32, i32* %6, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %54, %47
  %59 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %60 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @RXH_L3_PROTO, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load i32, i32* @MVPP22_CLS_HEK_OPT_L3_PROTO, align 4
  %67 = load i32, i32* %6, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %65, %58
  %70 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %71 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @RXH_IP_SRC, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %69
  %77 = load i32, i32* @MVPP22_CLS_HEK_OPT_IP4SA, align 4
  %78 = load i32, i32* @MVPP22_CLS_HEK_OPT_IP6SA, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* %6, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %76, %69
  %83 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %84 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @RXH_IP_DST, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %82
  %90 = load i32, i32* @MVPP22_CLS_HEK_OPT_IP4DA, align 4
  %91 = load i32, i32* @MVPP22_CLS_HEK_OPT_IP6DA, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* %6, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %89, %82
  br label %99

96:                                               ; preds = %2
  %97 = load i32, i32* @EOPNOTSUPP, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %3, align 4
  br label %104

99:                                               ; preds = %95
  %100 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @mvpp2_port_rss_hash_opts_set(%struct.mvpp2_port* %100, i32 %101, i32 %102)
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %99, %96
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @mvpp2_cls_ethtool_flow_to_type(i32) #1

declare dso_local i32 @mvpp2_port_rss_hash_opts_set(%struct.mvpp2_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
