; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_ethtool.c_hinic_set_rss_hash_opts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_ethtool.c_hinic_set_rss_hash_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_dev = type { i32, i32, %struct.hinic_rss_type }
%struct.hinic_rss_type = type { i32, i32 }
%struct.ethtool_rxnfc = type { i32, i32 }

@HINIC_RSS_ENABLE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@RXH_IP_SRC = common dso_local global i32 0, align 4
@RXH_IP_DST = common dso_local global i32 0, align 4
@RXH_L4_B_0_1 = common dso_local global i32 0, align 4
@RXH_L4_B_2_3 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hinic_dev*, %struct.ethtool_rxnfc*)* @hinic_set_rss_hash_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hinic_set_rss_hash_opts(%struct.hinic_dev* %0, %struct.ethtool_rxnfc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hinic_dev*, align 8
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  %6 = alloca %struct.hinic_rss_type*, align 8
  %7 = alloca i32, align 4
  store %struct.hinic_dev* %0, %struct.hinic_dev** %4, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %5, align 8
  %8 = load %struct.hinic_dev*, %struct.hinic_dev** %4, align 8
  %9 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %8, i32 0, i32 2
  store %struct.hinic_rss_type* %9, %struct.hinic_rss_type** %6, align 8
  %10 = load %struct.hinic_dev*, %struct.hinic_dev** %4, align 8
  %11 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @HINIC_RSS_ENABLE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %18 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %17, i32 0, i32 0
  store i32 0, i32* %18, align 4
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %104

21:                                               ; preds = %2
  %22 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %23 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @RXH_IP_SRC, align 4
  %26 = load i32, i32* @RXH_IP_DST, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @RXH_L4_B_0_1, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @RXH_L4_B_2_3, align 4
  %31 = or i32 %29, %30
  %32 = xor i32 %31, -1
  %33 = and i32 %24, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %21
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %104

38:                                               ; preds = %21
  %39 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %40 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @RXH_IP_SRC, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %38
  %46 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %47 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @RXH_IP_DST, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %45, %38
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %104

55:                                               ; preds = %45
  %56 = load %struct.hinic_dev*, %struct.hinic_dev** %4, align 8
  %57 = load %struct.hinic_dev*, %struct.hinic_dev** %4, align 8
  %58 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.hinic_rss_type*, %struct.hinic_rss_type** %6, align 8
  %61 = call i32 @hinic_get_rss_type(%struct.hinic_dev* %56, i32 %59, %struct.hinic_rss_type* %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %55
  %65 = load i32, i32* @EFAULT, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %104

67:                                               ; preds = %55
  %68 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %69 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  switch i32 %70, label %86 [
    i32 131, label %71
    i32 130, label %71
    i32 129, label %71
    i32 128, label %71
    i32 133, label %80
    i32 132, label %83
  ]

71:                                               ; preds = %67, %67, %67, %67
  %72 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %73 = load %struct.hinic_rss_type*, %struct.hinic_rss_type** %6, align 8
  %74 = call i32 @set_l4_rss_hash_ops(%struct.ethtool_rxnfc* %72, %struct.hinic_rss_type* %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %3, align 4
  br label %104

79:                                               ; preds = %71
  br label %89

80:                                               ; preds = %67
  %81 = load %struct.hinic_rss_type*, %struct.hinic_rss_type** %6, align 8
  %82 = getelementptr inbounds %struct.hinic_rss_type, %struct.hinic_rss_type* %81, i32 0, i32 0
  store i32 1, i32* %82, align 4
  br label %89

83:                                               ; preds = %67
  %84 = load %struct.hinic_rss_type*, %struct.hinic_rss_type** %6, align 8
  %85 = getelementptr inbounds %struct.hinic_rss_type, %struct.hinic_rss_type* %84, i32 0, i32 1
  store i32 1, i32* %85, align 4
  br label %89

86:                                               ; preds = %67
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %104

89:                                               ; preds = %83, %80, %79
  %90 = load %struct.hinic_dev*, %struct.hinic_dev** %4, align 8
  %91 = load %struct.hinic_dev*, %struct.hinic_dev** %4, align 8
  %92 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.hinic_rss_type*, %struct.hinic_rss_type** %6, align 8
  %95 = bitcast %struct.hinic_rss_type* %94 to i64*
  %96 = load i64, i64* %95, align 4
  %97 = call i32 @hinic_set_rss_type(%struct.hinic_dev* %90, i32 %93, i64 %96)
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %89
  %101 = load i32, i32* @EFAULT, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %3, align 4
  br label %104

103:                                              ; preds = %89
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %103, %100, %86, %77, %64, %52, %35, %16
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @hinic_get_rss_type(%struct.hinic_dev*, i32, %struct.hinic_rss_type*) #1

declare dso_local i32 @set_l4_rss_hash_ops(%struct.ethtool_rxnfc*, %struct.hinic_rss_type*) #1

declare dso_local i32 @hinic_set_rss_type(%struct.hinic_dev*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
