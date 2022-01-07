; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_ethtool.c_ena_set_rss_hash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_ethtool.c_ena_set_rss_hash.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_com_dev*, %struct.ethtool_rxnfc*)* @ena_set_rss_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_set_rss_hash(%struct.ena_com_dev* %0, %struct.ethtool_rxnfc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ena_com_dev*, align 8
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %4, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %5, align 8
  %8 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %9 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %28 [
    i32 131, label %11
    i32 129, label %13
    i32 130, label %15
    i32 128, label %17
    i32 134, label %19
    i32 133, label %21
    i32 135, label %23
    i32 139, label %25
    i32 137, label %25
    i32 138, label %25
    i32 136, label %25
    i32 132, label %25
    i32 140, label %25
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* @ENA_ADMIN_RSS_TCP4, align 4
  store i32 %12, i32* %6, align 4
  br label %31

13:                                               ; preds = %2
  %14 = load i32, i32* @ENA_ADMIN_RSS_UDP4, align 4
  store i32 %14, i32* %6, align 4
  br label %31

15:                                               ; preds = %2
  %16 = load i32, i32* @ENA_ADMIN_RSS_TCP6, align 4
  store i32 %16, i32* %6, align 4
  br label %31

17:                                               ; preds = %2
  %18 = load i32, i32* @ENA_ADMIN_RSS_UDP6, align 4
  store i32 %18, i32* %6, align 4
  br label %31

19:                                               ; preds = %2
  %20 = load i32, i32* @ENA_ADMIN_RSS_IP4, align 4
  store i32 %20, i32* %6, align 4
  br label %31

21:                                               ; preds = %2
  %22 = load i32, i32* @ENA_ADMIN_RSS_IP6, align 4
  store i32 %22, i32* %6, align 4
  br label %31

23:                                               ; preds = %2
  %24 = load i32, i32* @ENA_ADMIN_RSS_NOT_IP, align 4
  store i32 %24, i32* %6, align 4
  br label %31

25:                                               ; preds = %2, %2, %2, %2, %2, %2
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %40

28:                                               ; preds = %2
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %40

31:                                               ; preds = %23, %21, %19, %17, %15, %13, %11
  %32 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %33 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ena_flow_data_to_flow_hash(i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @ena_com_fill_hash_ctrl(%struct.ena_com_dev* %36, i32 %37, i32 %38)
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %31, %28, %25
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @ena_flow_data_to_flow_hash(i32) #1

declare dso_local i32 @ena_com_fill_hash_ctrl(%struct.ena_com_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
