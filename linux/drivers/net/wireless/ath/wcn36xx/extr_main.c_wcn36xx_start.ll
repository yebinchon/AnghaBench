; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_main.c_wcn36xx_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_main.c_wcn36xx_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.wcn36xx* }
%struct.wcn36xx = type { i32, i32, i32 }

@WCN36XX_DBG_MAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"mac start\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to open smd channel: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to alloc DXE mempool: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Failed to alloc DXE ctl blocks: %d\0A\00", align 1
@WCN36XX_HAL_BUF_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Failed to allocate smd buf\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"Failed to push NV to chip\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Failed to start chip\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Exchange feature caps failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"DXE init failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @wcn36xx_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcn36xx_start(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.wcn36xx*, align 8
  %5 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %6, i32 0, i32 0
  %8 = load %struct.wcn36xx*, %struct.wcn36xx** %7, align 8
  store %struct.wcn36xx* %8, %struct.wcn36xx** %4, align 8
  %9 = load i32, i32* @WCN36XX_DBG_MAC, align 4
  %10 = call i32 @wcn36xx_dbg(i32 %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %12 = call i32 @wcn36xx_smd_open(%struct.wcn36xx* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  %17 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  br label %110

18:                                               ; preds = %1
  %19 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %20 = call i32 @wcn36xx_dxe_allocate_mem_pools(%struct.wcn36xx* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  %25 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  br label %107

26:                                               ; preds = %18
  %27 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %28 = call i32 @wcn36xx_dxe_alloc_ctl_blks(%struct.wcn36xx* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* %5, align 4
  %33 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %32)
  br label %104

34:                                               ; preds = %26
  %35 = load i32, i32* @WCN36XX_HAL_BUF_SIZE, align 4
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i32 @kmalloc(i32 %35, i32 %36)
  %38 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %39 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %41 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %34
  %45 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %101

48:                                               ; preds = %34
  %49 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %50 = call i32 @wcn36xx_smd_load_nv(%struct.wcn36xx* %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %96

55:                                               ; preds = %48
  %56 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %57 = call i32 @wcn36xx_smd_start(%struct.wcn36xx* %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %96

62:                                               ; preds = %55
  %63 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %64 = call i32 @wcn36xx_is_fw_version(%struct.wcn36xx* %63, i32 1, i32 2, i32 2, i32 24)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %77, label %66

66:                                               ; preds = %62
  %67 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %68 = call i32 @wcn36xx_smd_feature_caps_exchange(%struct.wcn36xx* %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = call i32 @wcn36xx_warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  br label %76

73:                                               ; preds = %66
  %74 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %75 = call i32 @wcn36xx_feat_caps_info(%struct.wcn36xx* %74)
  br label %76

76:                                               ; preds = %73, %71
  br label %77

77:                                               ; preds = %76, %62
  %78 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %79 = call i32 @wcn36xx_dxe_init(%struct.wcn36xx* %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  br label %93

84:                                               ; preds = %77
  %85 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %86 = call i32 @wcn36xx_debugfs_init(%struct.wcn36xx* %85)
  %87 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %88 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %87, i32 0, i32 2
  %89 = call i32 @INIT_LIST_HEAD(i32* %88)
  %90 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %91 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %90, i32 0, i32 1
  %92 = call i32 @spin_lock_init(i32* %91)
  store i32 0, i32* %2, align 4
  br label %112

93:                                               ; preds = %82
  %94 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %95 = call i32 @wcn36xx_smd_stop(%struct.wcn36xx* %94)
  br label %96

96:                                               ; preds = %93, %60, %53
  %97 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %98 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @kfree(i32 %99)
  br label %101

101:                                              ; preds = %96, %44
  %102 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %103 = call i32 @wcn36xx_dxe_free_ctl_blks(%struct.wcn36xx* %102)
  br label %104

104:                                              ; preds = %101, %31
  %105 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %106 = call i32 @wcn36xx_dxe_free_mem_pools(%struct.wcn36xx* %105)
  br label %107

107:                                              ; preds = %104, %23
  %108 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %109 = call i32 @wcn36xx_smd_close(%struct.wcn36xx* %108)
  br label %110

110:                                              ; preds = %107, %15
  %111 = load i32, i32* %5, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %110, %84
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @wcn36xx_dbg(i32, i8*) #1

declare dso_local i32 @wcn36xx_smd_open(%struct.wcn36xx*) #1

declare dso_local i32 @wcn36xx_err(i8*, ...) #1

declare dso_local i32 @wcn36xx_dxe_allocate_mem_pools(%struct.wcn36xx*) #1

declare dso_local i32 @wcn36xx_dxe_alloc_ctl_blks(%struct.wcn36xx*) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @wcn36xx_smd_load_nv(%struct.wcn36xx*) #1

declare dso_local i32 @wcn36xx_smd_start(%struct.wcn36xx*) #1

declare dso_local i32 @wcn36xx_is_fw_version(%struct.wcn36xx*, i32, i32, i32, i32) #1

declare dso_local i32 @wcn36xx_smd_feature_caps_exchange(%struct.wcn36xx*) #1

declare dso_local i32 @wcn36xx_warn(i8*) #1

declare dso_local i32 @wcn36xx_feat_caps_info(%struct.wcn36xx*) #1

declare dso_local i32 @wcn36xx_dxe_init(%struct.wcn36xx*) #1

declare dso_local i32 @wcn36xx_debugfs_init(%struct.wcn36xx*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @wcn36xx_smd_stop(%struct.wcn36xx*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @wcn36xx_dxe_free_ctl_blks(%struct.wcn36xx*) #1

declare dso_local i32 @wcn36xx_dxe_free_mem_pools(%struct.wcn36xx*) #1

declare dso_local i32 @wcn36xx_smd_close(%struct.wcn36xx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
