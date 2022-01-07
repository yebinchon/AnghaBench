; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_get_rss_tuple.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_get_rss_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ethtool_rxnfc = type { i32, i32 }
%struct.hclgevf_dev = type { %struct.hclgevf_rss_cfg }
%struct.hclgevf_rss_cfg = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@HCLGEVF_S_IP_BIT = common dso_local global i32 0, align 4
@HCLGEVF_D_IP_BIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HCLGEVF_D_PORT_BIT = common dso_local global i32 0, align 4
@RXH_L4_B_2_3 = common dso_local global i32 0, align 4
@HCLGEVF_S_PORT_BIT = common dso_local global i32 0, align 4
@RXH_L4_B_0_1 = common dso_local global i32 0, align 4
@RXH_IP_DST = common dso_local global i32 0, align 4
@RXH_IP_SRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_handle*, %struct.ethtool_rxnfc*)* @hclgevf_get_rss_tuple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclgevf_get_rss_tuple(%struct.hnae3_handle* %0, %struct.ethtool_rxnfc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hnae3_handle*, align 8
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  %6 = alloca %struct.hclgevf_dev*, align 8
  %7 = alloca %struct.hclgevf_rss_cfg*, align 8
  %8 = alloca i32, align 4
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %4, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %5, align 8
  %9 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %10 = call %struct.hclgevf_dev* @hclgevf_ae_get_hdev(%struct.hnae3_handle* %9)
  store %struct.hclgevf_dev* %10, %struct.hclgevf_dev** %6, align 8
  %11 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %6, align 8
  %12 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %11, i32 0, i32 0
  store %struct.hclgevf_rss_cfg* %12, %struct.hclgevf_rss_cfg** %7, align 8
  %13 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %14 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 32
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %114

22:                                               ; preds = %2
  %23 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %24 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %23, i32 0, i32 1
  store i32 0, i32* %24, align 4
  %25 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %26 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %62 [
    i32 131, label %28
    i32 129, label %33
    i32 130, label %38
    i32 128, label %43
    i32 133, label %48
    i32 132, label %53
    i32 135, label %58
    i32 134, label %58
  ]

28:                                               ; preds = %22
  %29 = load %struct.hclgevf_rss_cfg*, %struct.hclgevf_rss_cfg** %7, align 8
  %30 = getelementptr inbounds %struct.hclgevf_rss_cfg, %struct.hclgevf_rss_cfg* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %8, align 4
  br label %65

33:                                               ; preds = %22
  %34 = load %struct.hclgevf_rss_cfg*, %struct.hclgevf_rss_cfg** %7, align 8
  %35 = getelementptr inbounds %struct.hclgevf_rss_cfg, %struct.hclgevf_rss_cfg* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %8, align 4
  br label %65

38:                                               ; preds = %22
  %39 = load %struct.hclgevf_rss_cfg*, %struct.hclgevf_rss_cfg** %7, align 8
  %40 = getelementptr inbounds %struct.hclgevf_rss_cfg, %struct.hclgevf_rss_cfg* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %8, align 4
  br label %65

43:                                               ; preds = %22
  %44 = load %struct.hclgevf_rss_cfg*, %struct.hclgevf_rss_cfg** %7, align 8
  %45 = getelementptr inbounds %struct.hclgevf_rss_cfg, %struct.hclgevf_rss_cfg* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %8, align 4
  br label %65

48:                                               ; preds = %22
  %49 = load %struct.hclgevf_rss_cfg*, %struct.hclgevf_rss_cfg** %7, align 8
  %50 = getelementptr inbounds %struct.hclgevf_rss_cfg, %struct.hclgevf_rss_cfg* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %8, align 4
  br label %65

53:                                               ; preds = %22
  %54 = load %struct.hclgevf_rss_cfg*, %struct.hclgevf_rss_cfg** %7, align 8
  %55 = getelementptr inbounds %struct.hclgevf_rss_cfg, %struct.hclgevf_rss_cfg* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %8, align 4
  br label %65

58:                                               ; preds = %22, %22
  %59 = load i32, i32* @HCLGEVF_S_IP_BIT, align 4
  %60 = load i32, i32* @HCLGEVF_D_IP_BIT, align 4
  %61 = or i32 %59, %60
  store i32 %61, i32* %8, align 4
  br label %65

62:                                               ; preds = %22
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %114

65:                                               ; preds = %58, %53, %48, %43, %38, %33, %28
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %114

69:                                               ; preds = %65
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @HCLGEVF_D_PORT_BIT, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load i32, i32* @RXH_L4_B_2_3, align 4
  %76 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %77 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %74, %69
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @HCLGEVF_S_PORT_BIT, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load i32, i32* @RXH_L4_B_0_1, align 4
  %87 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %88 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %85, %80
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @HCLGEVF_D_IP_BIT, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = load i32, i32* @RXH_IP_DST, align 4
  %98 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %99 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %96, %91
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* @HCLGEVF_S_IP_BIT, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = load i32, i32* @RXH_IP_SRC, align 4
  %109 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %110 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %107, %102
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %113, %68, %62, %19
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.hclgevf_dev* @hclgevf_ae_get_hdev(%struct.hnae3_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
