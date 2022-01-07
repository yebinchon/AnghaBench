; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_nic.c_aq_nic_set_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_nic.c_aq_nic_set_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_nic_s = type { %struct.TYPE_8__, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 (i32, i32)* }
%struct.ethtool_link_ksettings = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }

@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@AQ_NIC_RATE_100M = common dso_local global i32 0, align 4
@AQ_NIC_RATE_1G = common dso_local global i32 0, align 4
@AQ_NIC_RATE_2GS = common dso_local global i32 0, align 4
@AQ_NIC_RATE_5G = common dso_local global i32 0, align 4
@AQ_NIC_RATE_10G = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aq_nic_set_link_ksettings(%struct.aq_nic_s* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca %struct.aq_nic_s*, align 8
  %4 = alloca %struct.ethtool_link_ksettings*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.aq_nic_s* %0, %struct.aq_nic_s** %3, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %9 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @AUTONEG_ENABLE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %16 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  %21 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %22 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  br label %56

24:                                               ; preds = %2
  %25 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %26 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  switch i32 %29, label %40 [
    i32 132, label %30
    i32 131, label %32
    i32 129, label %34
    i32 128, label %36
    i32 130, label %38
  ]

30:                                               ; preds = %24
  %31 = load i32, i32* @AQ_NIC_RATE_100M, align 4
  store i32 %31, i32* %6, align 4
  br label %41

32:                                               ; preds = %24
  %33 = load i32, i32* @AQ_NIC_RATE_1G, align 4
  store i32 %33, i32* %6, align 4
  br label %41

34:                                               ; preds = %24
  %35 = load i32, i32* @AQ_NIC_RATE_2GS, align 4
  store i32 %35, i32* %6, align 4
  br label %41

36:                                               ; preds = %24
  %37 = load i32, i32* @AQ_NIC_RATE_5G, align 4
  store i32 %37, i32* %6, align 4
  br label %41

38:                                               ; preds = %24
  %39 = load i32, i32* @AQ_NIC_RATE_10G, align 4
  store i32 %39, i32* %6, align 4
  br label %41

40:                                               ; preds = %24
  store i32 -1, i32* %7, align 4
  br label %81

41:                                               ; preds = %38, %36, %34, %32, %30
  %42 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %43 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %41
  store i32 -1, i32* %7, align 4
  br label %81

52:                                               ; preds = %41
  %53 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %54 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  store i32 0, i32* %55, align 8
  br label %56

56:                                               ; preds = %52, %14
  %57 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %58 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %57, i32 0, i32 1
  %59 = call i32 @mutex_lock(i32* %58)
  %60 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %61 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %60, i32 0, i32 3
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32 (i32, i32)*, i32 (i32, i32)** %63, align 8
  %65 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %66 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 %64(i32 %67, i32 %68)
  store i32 %69, i32* %7, align 4
  %70 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %71 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %70, i32 0, i32 1
  %72 = call i32 @mutex_unlock(i32* %71)
  %73 = load i32, i32* %7, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %56
  br label %81

76:                                               ; preds = %56
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %79 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  store i32 %77, i32* %80, align 4
  br label %81

81:                                               ; preds = %76, %75, %51, %40
  %82 = load i32, i32* %7, align 4
  ret i32 %82
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
