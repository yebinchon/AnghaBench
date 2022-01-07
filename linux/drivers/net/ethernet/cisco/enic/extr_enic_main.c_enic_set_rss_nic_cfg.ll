; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_set_rss_nic_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_set_rss_nic_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enic = type { i32, i32, i32 }
%struct.device = type { i32 }

@RSS = common dso_local global i32 0, align 4
@NIC_CFG_RSS_HASH_TYPE_IPV4 = common dso_local global i32 0, align 4
@NIC_CFG_RSS_HASH_TYPE_TCP_IPV4 = common dso_local global i32 0, align 4
@NIC_CFG_RSS_HASH_TYPE_IPV6 = common dso_local global i32 0, align 4
@NIC_CFG_RSS_HASH_TYPE_TCP_IPV6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"RSS disabled, Failed to set RSS cpu indirection table.\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"RSS disabled, Failed to set RSS key.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.enic*)* @enic_set_rss_nic_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enic_set_rss_nic_cfg(%struct.enic* %0) #0 {
  %2 = alloca %struct.enic*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.enic* %0, %struct.enic** %2, align 8
  %10 = load %struct.enic*, %struct.enic** %2, align 8
  %11 = call %struct.device* @enic_get_dev(%struct.enic* %10)
  store %struct.device* %11, %struct.device** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 7, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %12 = load %struct.enic*, %struct.enic** %2, align 8
  %13 = load i32, i32* @RSS, align 4
  %14 = call i64 @ENIC_SETTING(%struct.enic* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.enic*, %struct.enic** %2, align 8
  %18 = getelementptr inbounds %struct.enic, %struct.enic* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sgt i32 %19, 1
  br label %21

21:                                               ; preds = %16, %1
  %22 = phi i1 [ false, %1 ], [ %20, %16 ]
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %9, align 4
  %24 = load %struct.enic*, %struct.enic** %2, align 8
  %25 = getelementptr inbounds %struct.enic, %struct.enic* %24, i32 0, i32 1
  %26 = call i32 @spin_lock_bh(i32* %25)
  %27 = load %struct.enic*, %struct.enic** %2, align 8
  %28 = getelementptr inbounds %struct.enic, %struct.enic* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @vnic_dev_capable_rss_hash_type(i32 %29, i32* %7)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.enic*, %struct.enic** %2, align 8
  %32 = getelementptr inbounds %struct.enic, %struct.enic* %31, i32 0, i32 1
  %33 = call i32 @spin_unlock_bh(i32* %32)
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %21
  %37 = load i32, i32* @NIC_CFG_RSS_HASH_TYPE_IPV4, align 4
  %38 = load i32, i32* @NIC_CFG_RSS_HASH_TYPE_TCP_IPV4, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @NIC_CFG_RSS_HASH_TYPE_IPV6, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @NIC_CFG_RSS_HASH_TYPE_TCP_IPV6, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %36, %21
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %44
  %48 = load %struct.enic*, %struct.enic** %2, align 8
  %49 = call i32 @enic_set_rsskey(%struct.enic* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %47
  %52 = load %struct.enic*, %struct.enic** %2, align 8
  %53 = call i64 @enic_set_rsscpu(%struct.enic* %52, i32 7)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  store i32 0, i32* %9, align 4
  %56 = load %struct.device*, %struct.device** %3, align 8
  %57 = call i32 @dev_warn(%struct.device* %56, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %51
  br label %62

59:                                               ; preds = %47
  store i32 0, i32* %9, align 4
  %60 = load %struct.device*, %struct.device** %3, align 8
  %61 = call i32 @dev_warn(%struct.device* %60, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %58
  br label %63

63:                                               ; preds = %62, %44
  %64 = load %struct.enic*, %struct.enic** %2, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @enic_set_niccfg(%struct.enic* %64, i32 0, i32 %65, i32 7, i32 0, i32 %66)
  ret i32 %67
}

declare dso_local %struct.device* @enic_get_dev(%struct.enic*) #1

declare dso_local i64 @ENIC_SETTING(%struct.enic*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @vnic_dev_capable_rss_hash_type(i32, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @enic_set_rsskey(%struct.enic*) #1

declare dso_local i64 @enic_set_rsscpu(%struct.enic*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @enic_set_niccfg(%struct.enic*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
