; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_ethtool.c_hinic_get_rss_hash_opts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_ethtool.c_hinic_get_rss_hash_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_dev = type { i32, i32 }
%struct.ethtool_rxnfc = type { i32, i32 }
%struct.hinic_rss_type = type { i32, i32, i32, i32, i32 }

@HINIC_RSS_ENABLE = common dso_local global i32 0, align 4
@RXH_IP_SRC = common dso_local global i32 0, align 4
@RXH_IP_DST = common dso_local global i32 0, align 4
@RXH_L4_B_0_1 = common dso_local global i32 0, align 4
@RXH_L4_B_2_3 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hinic_dev*, %struct.ethtool_rxnfc*)* @hinic_get_rss_hash_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hinic_get_rss_hash_opts(%struct.hinic_dev* %0, %struct.ethtool_rxnfc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hinic_dev*, align 8
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  %6 = alloca %struct.hinic_rss_type, align 4
  %7 = alloca i32, align 4
  store %struct.hinic_dev* %0, %struct.hinic_dev** %4, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %5, align 8
  %8 = bitcast %struct.hinic_rss_type* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 20, i1 false)
  %9 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %10 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %9, i32 0, i32 0
  store i32 0, i32* %10, align 4
  %11 = load %struct.hinic_dev*, %struct.hinic_dev** %4, align 8
  %12 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @HINIC_RSS_ENABLE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %96

18:                                               ; preds = %2
  %19 = load %struct.hinic_dev*, %struct.hinic_dev** %4, align 8
  %20 = load %struct.hinic_dev*, %struct.hinic_dev** %4, align 8
  %21 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @hinic_get_rss_type(%struct.hinic_dev* %19, i32 %22, %struct.hinic_rss_type* %6)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %96

28:                                               ; preds = %18
  %29 = load i32, i32* @RXH_IP_SRC, align 4
  %30 = load i32, i32* @RXH_IP_DST, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %33 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %35 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %90 [
    i32 131, label %37
    i32 130, label %50
    i32 129, label %63
    i32 128, label %76
    i32 133, label %89
    i32 132, label %89
  ]

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.hinic_rss_type, %struct.hinic_rss_type* %6, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  %42 = load i32, i32* @RXH_L4_B_0_1, align 4
  %43 = load i32, i32* @RXH_L4_B_2_3, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %46 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %41, %37
  br label %95

50:                                               ; preds = %28
  %51 = getelementptr inbounds %struct.hinic_rss_type, %struct.hinic_rss_type* %6, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load i32, i32* @RXH_L4_B_0_1, align 4
  %56 = load i32, i32* @RXH_L4_B_2_3, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %59 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %54, %50
  br label %95

63:                                               ; preds = %28
  %64 = getelementptr inbounds %struct.hinic_rss_type, %struct.hinic_rss_type* %6, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %63
  %68 = load i32, i32* @RXH_L4_B_0_1, align 4
  %69 = load i32, i32* @RXH_L4_B_2_3, align 4
  %70 = or i32 %68, %69
  %71 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %72 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %67, %63
  br label %95

76:                                               ; preds = %28
  %77 = getelementptr inbounds %struct.hinic_rss_type, %struct.hinic_rss_type* %6, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %76
  %81 = load i32, i32* @RXH_L4_B_0_1, align 4
  %82 = load i32, i32* @RXH_L4_B_2_3, align 4
  %83 = or i32 %81, %82
  %84 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %85 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %80, %76
  br label %95

89:                                               ; preds = %28, %28
  br label %95

90:                                               ; preds = %28
  %91 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %92 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %91, i32 0, i32 0
  store i32 0, i32* %92, align 4
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %96

95:                                               ; preds = %89, %88, %75, %62, %49
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %95, %90, %26, %17
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @hinic_get_rss_type(%struct.hinic_dev*, i32, %struct.hinic_rss_type*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
