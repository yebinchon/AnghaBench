; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_ethtool.c_aq_ethtool_set_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_ethtool.c_aq_ethtool_set_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.aq_nic_s = type { i32 }
%struct.aq_nic_cfg_s = type { i64, i64, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@AQ_CFG_INTERRUPT_MODERATION_USEC_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@AQ_CFG_INTERRUPT_MODERATION_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @aq_ethtool_set_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aq_ethtool_set_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_coalesce*, align 8
  %6 = alloca %struct.aq_nic_s*, align 8
  %7 = alloca %struct.aq_nic_cfg_s*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.aq_nic_s* @netdev_priv(%struct.net_device* %8)
  store %struct.aq_nic_s* %9, %struct.aq_nic_s** %6, align 8
  %10 = load %struct.aq_nic_s*, %struct.aq_nic_s** %6, align 8
  %11 = call %struct.aq_nic_cfg_s* @aq_nic_get_cfg(%struct.aq_nic_s* %10)
  store %struct.aq_nic_cfg_s* %11, %struct.aq_nic_cfg_s** %7, align 8
  %12 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %13 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %12, i32 0, i32 9
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %18 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %17, i32 0, i32 8
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16, %2
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %119

24:                                               ; preds = %16
  %25 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %26 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %39, label %29

29:                                               ; preds = %24
  %30 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %31 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %30, i32 0, i32 7
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %36 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %35, i32 0, i32 6
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34, %29, %24
  %40 = load i32, i32* @EOPNOTSUPP, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %119

42:                                               ; preds = %34
  %43 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %44 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp sgt i32 %45, 1
  br i1 %46, label %57, label %47

47:                                               ; preds = %42
  %48 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %49 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %48, i32 0, i32 5
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %54 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52, %47, %42
  %58 = load i32, i32* @EOPNOTSUPP, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %119

60:                                               ; preds = %52
  %61 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %62 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %65 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = icmp eq i32 %63, %69
  br i1 %70, label %74, label %71

71:                                               ; preds = %60
  %72 = load i32, i32* @EOPNOTSUPP, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %119

74:                                               ; preds = %60
  %75 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %76 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %79 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = icmp eq i32 %77, %83
  br i1 %84, label %88, label %85

85:                                               ; preds = %74
  %86 = load i32, i32* @EOPNOTSUPP, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %119

88:                                               ; preds = %74
  %89 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %90 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @AQ_CFG_INTERRUPT_MODERATION_USEC_MAX, align 8
  %93 = icmp sgt i64 %91, %92
  br i1 %93, label %100, label %94

94:                                               ; preds = %88
  %95 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %96 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @AQ_CFG_INTERRUPT_MODERATION_USEC_MAX, align 8
  %99 = icmp sgt i64 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %94, %88
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %3, align 4
  br label %119

103:                                              ; preds = %94
  %104 = load i32, i32* @AQ_CFG_INTERRUPT_MODERATION_ON, align 4
  %105 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %7, align 8
  %106 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 8
  %107 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %108 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %7, align 8
  %111 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %110, i32 0, i32 0
  store i64 %109, i64* %111, align 8
  %112 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %113 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %7, align 8
  %116 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %115, i32 0, i32 1
  store i64 %114, i64* %116, align 8
  %117 = load %struct.aq_nic_s*, %struct.aq_nic_s** %6, align 8
  %118 = call i32 @aq_nic_update_interrupt_moderation_settings(%struct.aq_nic_s* %117)
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %103, %100, %85, %71, %57, %39, %21
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local %struct.aq_nic_s* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.aq_nic_cfg_s* @aq_nic_get_cfg(%struct.aq_nic_s*) #1

declare dso_local i32 @aq_nic_update_interrupt_moderation_settings(%struct.aq_nic_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
