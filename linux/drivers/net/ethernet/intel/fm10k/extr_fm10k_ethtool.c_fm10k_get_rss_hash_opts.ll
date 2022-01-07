; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_ethtool.c_fm10k_get_rss_hash_opts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_ethtool.c_fm10k_get_rss_hash_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_intfc = type { i32 }
%struct.ethtool_rxnfc = type { i32, i32 }

@RXH_L4_B_0_1 = common dso_local global i32 0, align 4
@RXH_L4_B_2_3 = common dso_local global i32 0, align 4
@FM10K_FLAG_RSS_FIELD_IPV4_UDP = common dso_local global i32 0, align 4
@RXH_IP_SRC = common dso_local global i32 0, align 4
@RXH_IP_DST = common dso_local global i32 0, align 4
@FM10K_FLAG_RSS_FIELD_IPV6_UDP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fm10k_intfc*, %struct.ethtool_rxnfc*)* @fm10k_get_rss_hash_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_get_rss_hash_opts(%struct.fm10k_intfc* %0, %struct.ethtool_rxnfc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fm10k_intfc*, align 8
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  store %struct.fm10k_intfc* %0, %struct.fm10k_intfc** %4, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %5, align 8
  %6 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %7 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %6, i32 0, i32 0
  store i32 0, i32* %7, align 4
  %8 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %9 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %66 [
    i32 131, label %11
    i32 130, label %11
    i32 129, label %19
    i32 133, label %35
    i32 132, label %35
    i32 141, label %35
    i32 140, label %35
    i32 139, label %35
    i32 138, label %35
    i32 137, label %35
    i32 136, label %35
    i32 135, label %35
    i32 134, label %35
    i32 128, label %43
  ]

11:                                               ; preds = %2, %2
  %12 = load i32, i32* @RXH_L4_B_0_1, align 4
  %13 = load i32, i32* @RXH_L4_B_2_3, align 4
  %14 = or i32 %12, %13
  %15 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %16 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  br label %19

19:                                               ; preds = %2, %11
  %20 = load i32, i32* @FM10K_FLAG_RSS_FIELD_IPV4_UDP, align 4
  %21 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %4, align 8
  %22 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @test_bit(i32 %20, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %19
  %27 = load i32, i32* @RXH_L4_B_0_1, align 4
  %28 = load i32, i32* @RXH_L4_B_2_3, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %31 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %26, %19
  br label %35

35:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %34
  %36 = load i32, i32* @RXH_IP_SRC, align 4
  %37 = load i32, i32* @RXH_IP_DST, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %40 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %69

43:                                               ; preds = %2
  %44 = load i32, i32* @FM10K_FLAG_RSS_FIELD_IPV6_UDP, align 4
  %45 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %4, align 8
  %46 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @test_bit(i32 %44, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %43
  %51 = load i32, i32* @RXH_L4_B_0_1, align 4
  %52 = load i32, i32* @RXH_L4_B_2_3, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %55 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %50, %43
  %59 = load i32, i32* @RXH_IP_SRC, align 4
  %60 = load i32, i32* @RXH_IP_DST, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %63 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %69

66:                                               ; preds = %2
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %70

69:                                               ; preds = %58, %35
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %66
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @test_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
