; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_main.c_nicvf_rss_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_main.c_nicvf_rss_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { i32, %struct.nicvf_rss_info }
%struct.nicvf_rss_info = type { i32, i32, i32, i32*, i64, i32 }

@cpi_alg = common dso_local global i64 0, align 8
@CPI_ALG_NONE = common dso_local global i64 0, align 8
@RSS_HASH_KEY_SIZE = common dso_local global i32 0, align 4
@RSS_IP_HASH_ENA = common dso_local global i32 0, align 4
@RSS_TCP_HASH_ENA = common dso_local global i32 0, align 4
@RSS_UDP_HASH_ENA = common dso_local global i32 0, align 4
@NIC_VNIC_RSS_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nicvf*)* @nicvf_rss_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nicvf_rss_init(%struct.nicvf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nicvf*, align 8
  %4 = alloca %struct.nicvf_rss_info*, align 8
  %5 = alloca i32, align 4
  store %struct.nicvf* %0, %struct.nicvf** %3, align 8
  %6 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %7 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %6, i32 0, i32 1
  store %struct.nicvf_rss_info* %7, %struct.nicvf_rss_info** %4, align 8
  %8 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %9 = call i32 @nicvf_get_rss_size(%struct.nicvf* %8)
  %10 = load i64, i64* @cpi_alg, align 8
  %11 = load i64, i64* @CPI_ALG_NONE, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.nicvf_rss_info*, %struct.nicvf_rss_info** %4, align 8
  %15 = getelementptr inbounds %struct.nicvf_rss_info, %struct.nicvf_rss_info* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = load %struct.nicvf_rss_info*, %struct.nicvf_rss_info** %4, align 8
  %17 = getelementptr inbounds %struct.nicvf_rss_info, %struct.nicvf_rss_info* %16, i32 0, i32 4
  store i64 0, i64* %17, align 8
  store i32 0, i32* %2, align 4
  br label %75

18:                                               ; preds = %1
  %19 = load %struct.nicvf_rss_info*, %struct.nicvf_rss_info** %4, align 8
  %20 = getelementptr inbounds %struct.nicvf_rss_info, %struct.nicvf_rss_info* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.nicvf_rss_info*, %struct.nicvf_rss_info** %4, align 8
  %22 = getelementptr inbounds %struct.nicvf_rss_info, %struct.nicvf_rss_info* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @RSS_HASH_KEY_SIZE, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = trunc i64 %26 to i32
  %28 = call i32 @netdev_rss_key_fill(i32 %23, i32 %27)
  %29 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %30 = call i32 @nicvf_set_rss_key(%struct.nicvf* %29)
  %31 = load i32, i32* @RSS_IP_HASH_ENA, align 4
  %32 = load i32, i32* @RSS_TCP_HASH_ENA, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @RSS_UDP_HASH_ENA, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.nicvf_rss_info*, %struct.nicvf_rss_info** %4, align 8
  %37 = getelementptr inbounds %struct.nicvf_rss_info, %struct.nicvf_rss_info* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %39 = load i32, i32* @NIC_VNIC_RSS_CFG, align 4
  %40 = load %struct.nicvf_rss_info*, %struct.nicvf_rss_info** %4, align 8
  %41 = getelementptr inbounds %struct.nicvf_rss_info, %struct.nicvf_rss_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @nicvf_reg_write(%struct.nicvf* %38, i32 %39, i32 %42)
  %44 = load %struct.nicvf_rss_info*, %struct.nicvf_rss_info** %4, align 8
  %45 = getelementptr inbounds %struct.nicvf_rss_info, %struct.nicvf_rss_info* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @rounddown_pow_of_two(i32 %46)
  %48 = call i64 @ilog2(i32 %47)
  %49 = load %struct.nicvf_rss_info*, %struct.nicvf_rss_info** %4, align 8
  %50 = getelementptr inbounds %struct.nicvf_rss_info, %struct.nicvf_rss_info* %49, i32 0, i32 4
  store i64 %48, i64* %50, align 8
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %69, %18
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.nicvf_rss_info*, %struct.nicvf_rss_info** %4, align 8
  %54 = getelementptr inbounds %struct.nicvf_rss_info, %struct.nicvf_rss_info* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %72

57:                                               ; preds = %51
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %60 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @ethtool_rxfh_indir_default(i32 %58, i32 %61)
  %63 = load %struct.nicvf_rss_info*, %struct.nicvf_rss_info** %4, align 8
  %64 = getelementptr inbounds %struct.nicvf_rss_info, %struct.nicvf_rss_info* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %62, i32* %68, align 4
  br label %69

69:                                               ; preds = %57
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %51

72:                                               ; preds = %51
  %73 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %74 = call i32 @nicvf_config_rss(%struct.nicvf* %73)
  store i32 1, i32* %2, align 4
  br label %75

75:                                               ; preds = %72, %13
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @nicvf_get_rss_size(%struct.nicvf*) #1

declare dso_local i32 @netdev_rss_key_fill(i32, i32) #1

declare dso_local i32 @nicvf_set_rss_key(%struct.nicvf*) #1

declare dso_local i32 @nicvf_reg_write(%struct.nicvf*, i32, i32) #1

declare dso_local i64 @ilog2(i32) #1

declare dso_local i32 @rounddown_pow_of_two(i32) #1

declare dso_local i32 @ethtool_rxfh_indir_default(i32, i32) #1

declare dso_local i32 @nicvf_config_rss(%struct.nicvf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
