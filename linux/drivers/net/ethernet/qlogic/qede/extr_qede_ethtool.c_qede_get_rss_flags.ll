; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ethtool.c_qede_get_rss_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ethtool.c_qede_get_rss_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { i32 }
%struct.ethtool_rxnfc = type { i32, i32 }

@RXH_IP_SRC = common dso_local global i32 0, align 4
@RXH_IP_DST = common dso_local global i32 0, align 4
@RXH_L4_B_0_1 = common dso_local global i32 0, align 4
@RXH_L4_B_2_3 = common dso_local global i32 0, align 4
@QED_RSS_IPV4_UDP = common dso_local global i32 0, align 4
@QED_RSS_IPV6_UDP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qede_dev*, %struct.ethtool_rxnfc*)* @qede_get_rss_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qede_get_rss_flags(%struct.qede_dev* %0, %struct.ethtool_rxnfc* %1) #0 {
  %3 = alloca %struct.qede_dev*, align 8
  %4 = alloca %struct.ethtool_rxnfc*, align 8
  store %struct.qede_dev* %0, %struct.qede_dev** %3, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %4, align 8
  %5 = load i32, i32* @RXH_IP_SRC, align 4
  %6 = load i32, i32* @RXH_IP_DST, align 4
  %7 = or i32 %5, %6
  %8 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %4, align 8
  %9 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %4, align 8
  %11 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %54 [
    i32 131, label %13
    i32 130, label %13
    i32 129, label %21
    i32 128, label %37
    i32 133, label %53
    i32 132, label %53
  ]

13:                                               ; preds = %2, %2
  %14 = load i32, i32* @RXH_L4_B_0_1, align 4
  %15 = load i32, i32* @RXH_L4_B_2_3, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %4, align 8
  %18 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  br label %57

21:                                               ; preds = %2
  %22 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %23 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @QED_RSS_IPV4_UDP, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %21
  %29 = load i32, i32* @RXH_L4_B_0_1, align 4
  %30 = load i32, i32* @RXH_L4_B_2_3, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %4, align 8
  %33 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %28, %21
  br label %57

37:                                               ; preds = %2
  %38 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %39 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @QED_RSS_IPV6_UDP, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %37
  %45 = load i32, i32* @RXH_L4_B_0_1, align 4
  %46 = load i32, i32* @RXH_L4_B_2_3, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %4, align 8
  %49 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %44, %37
  br label %57

53:                                               ; preds = %2, %2
  br label %57

54:                                               ; preds = %2
  %55 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %4, align 8
  %56 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %55, i32 0, i32 0
  store i32 0, i32* %56, align 4
  br label %57

57:                                               ; preds = %54, %53, %52, %36, %13
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
