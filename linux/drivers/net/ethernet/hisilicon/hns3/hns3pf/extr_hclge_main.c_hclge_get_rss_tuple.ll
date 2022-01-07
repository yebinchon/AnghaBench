; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_get_rss_tuple.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_get_rss_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { i32 }
%struct.ethtool_rxnfc = type { i32, i32 }
%struct.hclge_vport = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@HCLGE_S_IP_BIT = common dso_local global i32 0, align 4
@HCLGE_D_IP_BIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HCLGE_D_PORT_BIT = common dso_local global i32 0, align 4
@RXH_L4_B_2_3 = common dso_local global i32 0, align 4
@HCLGE_S_PORT_BIT = common dso_local global i32 0, align 4
@RXH_L4_B_0_1 = common dso_local global i32 0, align 4
@RXH_IP_DST = common dso_local global i32 0, align 4
@RXH_IP_SRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_handle*, %struct.ethtool_rxnfc*)* @hclge_get_rss_tuple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_get_rss_tuple(%struct.hnae3_handle* %0, %struct.ethtool_rxnfc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hnae3_handle*, align 8
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  %6 = alloca %struct.hclge_vport*, align 8
  %7 = alloca i32, align 4
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %4, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %5, align 8
  %8 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %9 = call %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle* %8)
  store %struct.hclge_vport* %9, %struct.hclge_vport** %6, align 8
  %10 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %11 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %10, i32 0, i32 1
  store i32 0, i32* %11, align 4
  %12 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %13 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %49 [
    i32 131, label %15
    i32 129, label %20
    i32 130, label %25
    i32 128, label %30
    i32 133, label %35
    i32 132, label %40
    i32 135, label %45
    i32 134, label %45
  ]

15:                                               ; preds = %2
  %16 = load %struct.hclge_vport*, %struct.hclge_vport** %6, align 8
  %17 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  br label %52

20:                                               ; preds = %2
  %21 = load %struct.hclge_vport*, %struct.hclge_vport** %6, align 8
  %22 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %7, align 4
  br label %52

25:                                               ; preds = %2
  %26 = load %struct.hclge_vport*, %struct.hclge_vport** %6, align 8
  %27 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %7, align 4
  br label %52

30:                                               ; preds = %2
  %31 = load %struct.hclge_vport*, %struct.hclge_vport** %6, align 8
  %32 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %7, align 4
  br label %52

35:                                               ; preds = %2
  %36 = load %struct.hclge_vport*, %struct.hclge_vport** %6, align 8
  %37 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %7, align 4
  br label %52

40:                                               ; preds = %2
  %41 = load %struct.hclge_vport*, %struct.hclge_vport** %6, align 8
  %42 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %7, align 4
  br label %52

45:                                               ; preds = %2, %2
  %46 = load i32, i32* @HCLGE_S_IP_BIT, align 4
  %47 = load i32, i32* @HCLGE_D_IP_BIT, align 4
  %48 = or i32 %46, %47
  store i32 %48, i32* %7, align 4
  br label %52

49:                                               ; preds = %2
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %101

52:                                               ; preds = %45, %40, %35, %30, %25, %20, %15
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %101

56:                                               ; preds = %52
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @HCLGE_D_PORT_BIT, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load i32, i32* @RXH_L4_B_2_3, align 4
  %63 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %64 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %61, %56
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @HCLGE_S_PORT_BIT, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load i32, i32* @RXH_L4_B_0_1, align 4
  %74 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %75 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %72, %67
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @HCLGE_D_IP_BIT, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load i32, i32* @RXH_IP_DST, align 4
  %85 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %86 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %83, %78
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @HCLGE_S_IP_BIT, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load i32, i32* @RXH_IP_SRC, align 4
  %96 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %97 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %94, %89
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %100, %55, %49
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
