; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_regd_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_regd_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_6__*, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.reg_dmn_pair_mapping* }
%struct.reg_dmn_pair_mapping = type { i32, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"failed to update channel list: %d\0A\00", align 1
@CONFIG_ATH10K_DFS_CERTIFIED = common dso_local global i32 0, align 4
@WMI_UNINIT_DFS_DOMAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to set pdev regdomain: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*)* @ath10k_regd_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_regd_update(%struct.ath10k* %0) #0 {
  %2 = alloca %struct.ath10k*, align 8
  %3 = alloca %struct.reg_dmn_pair_mapping*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %2, align 8
  %7 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %8 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %7, i32 0, i32 2
  %9 = call i32 @lockdep_assert_held(i32* %8)
  %10 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %11 = call i32 @ath10k_update_channel_list(%struct.ath10k* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @ath10k_warn(%struct.ath10k* %15, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %14, %1
  %19 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %20 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.reg_dmn_pair_mapping*, %struct.reg_dmn_pair_mapping** %22, align 8
  store %struct.reg_dmn_pair_mapping* %23, %struct.reg_dmn_pair_mapping** %3, align 8
  %24 = load i32, i32* @CONFIG_ATH10K_DFS_CERTIFIED, align 4
  %25 = call i64 @IS_ENABLED(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %18
  %28 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %29 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = icmp ne %struct.TYPE_6__* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %34 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @ath10k_mac_get_dfs_region(i32 %38)
  store i32 %39, i32* %5, align 4
  br label %42

40:                                               ; preds = %27, %18
  %41 = load i32, i32* @WMI_UNINIT_DFS_DOMAIN, align 4
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %40, %32
  %43 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %44 = load %struct.reg_dmn_pair_mapping*, %struct.reg_dmn_pair_mapping** %3, align 8
  %45 = getelementptr inbounds %struct.reg_dmn_pair_mapping, %struct.reg_dmn_pair_mapping* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.reg_dmn_pair_mapping*, %struct.reg_dmn_pair_mapping** %3, align 8
  %48 = getelementptr inbounds %struct.reg_dmn_pair_mapping, %struct.reg_dmn_pair_mapping* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.reg_dmn_pair_mapping*, %struct.reg_dmn_pair_mapping** %3, align 8
  %51 = getelementptr inbounds %struct.reg_dmn_pair_mapping, %struct.reg_dmn_pair_mapping* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.reg_dmn_pair_mapping*, %struct.reg_dmn_pair_mapping** %3, align 8
  %54 = getelementptr inbounds %struct.reg_dmn_pair_mapping, %struct.reg_dmn_pair_mapping* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.reg_dmn_pair_mapping*, %struct.reg_dmn_pair_mapping** %3, align 8
  %57 = getelementptr inbounds %struct.reg_dmn_pair_mapping, %struct.reg_dmn_pair_mapping* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @ath10k_wmi_pdev_set_regdomain(%struct.ath10k* %43, i32 %46, i32 %49, i32 %52, i32 %55, i32 %58, i32 %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %42
  %64 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @ath10k_warn(%struct.ath10k* %64, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %63, %42
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @ath10k_update_channel_list(%struct.ath10k*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @ath10k_mac_get_dfs_region(i32) #1

declare dso_local i32 @ath10k_wmi_pdev_set_regdomain(%struct.ath10k*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
