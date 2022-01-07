; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_ethtool.c_ena_get_rss_hash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_ethtool.c_ena_get_rss_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { i32 }
%struct.ethtool_rxnfc = type { i32, i32 }

@ENA_ADMIN_RSS_TCP4 = common dso_local global i32 0, align 4
@ENA_ADMIN_RSS_UDP4 = common dso_local global i32 0, align 4
@ENA_ADMIN_RSS_TCP6 = common dso_local global i32 0, align 4
@ENA_ADMIN_RSS_UDP6 = common dso_local global i32 0, align 4
@ENA_ADMIN_RSS_IP4 = common dso_local global i32 0, align 4
@ENA_ADMIN_RSS_IP6 = common dso_local global i32 0, align 4
@ENA_ADMIN_RSS_NOT_IP = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_com_dev*, %struct.ethtool_rxnfc*)* @ena_get_rss_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_get_rss_hash(%struct.ena_com_dev* %0, %struct.ethtool_rxnfc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ena_com_dev*, align 8
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %4, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %5, align 8
  %9 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %10 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %9, i32 0, i32 1
  store i32 0, i32* %10, align 4
  %11 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %12 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %31 [
    i32 131, label %14
    i32 129, label %16
    i32 130, label %18
    i32 128, label %20
    i32 134, label %22
    i32 133, label %24
    i32 135, label %26
    i32 139, label %28
    i32 137, label %28
    i32 138, label %28
    i32 136, label %28
    i32 132, label %28
    i32 140, label %28
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* @ENA_ADMIN_RSS_TCP4, align 4
  store i32 %15, i32* %6, align 4
  br label %34

16:                                               ; preds = %2
  %17 = load i32, i32* @ENA_ADMIN_RSS_UDP4, align 4
  store i32 %17, i32* %6, align 4
  br label %34

18:                                               ; preds = %2
  %19 = load i32, i32* @ENA_ADMIN_RSS_TCP6, align 4
  store i32 %19, i32* %6, align 4
  br label %34

20:                                               ; preds = %2
  %21 = load i32, i32* @ENA_ADMIN_RSS_UDP6, align 4
  store i32 %21, i32* %6, align 4
  br label %34

22:                                               ; preds = %2
  %23 = load i32, i32* @ENA_ADMIN_RSS_IP4, align 4
  store i32 %23, i32* %6, align 4
  br label %34

24:                                               ; preds = %2
  %25 = load i32, i32* @ENA_ADMIN_RSS_IP6, align 4
  store i32 %25, i32* %6, align 4
  br label %34

26:                                               ; preds = %2
  %27 = load i32, i32* @ENA_ADMIN_RSS_NOT_IP, align 4
  store i32 %27, i32* %6, align 4
  br label %34

28:                                               ; preds = %2, %2, %2, %2, %2, %2
  %29 = load i32, i32* @EOPNOTSUPP, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %47

31:                                               ; preds = %2
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %47

34:                                               ; preds = %26, %24, %22, %20, %18, %16, %14
  %35 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @ena_com_get_hash_ctrl(%struct.ena_com_dev* %35, i32 %36, i32* %7)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %3, align 4
  br label %47

42:                                               ; preds = %34
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @ena_flow_hash_to_flow_type(i32 %43)
  %45 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %46 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %42, %40, %31, %28
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @ena_com_get_hash_ctrl(%struct.ena_com_dev*, i32, i32*) #1

declare dso_local i32 @ena_flow_hash_to_flow_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
