; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas_tf/extr_main.c_lbtf_op_configure_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas_tf/extr_main.c_lbtf_op_configure_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.lbtf_private* }
%struct.lbtf_private = type { i32, i64 }

@LBTF_DEB_MACOPS = common dso_local global i32 0, align 4
@SUPPORTED_FIF_FLAGS = common dso_local global i32 0, align 4
@CMD_ACT_MAC_PROMISCUOUS_ENABLE = common dso_local global i32 0, align 4
@FIF_ALLMULTI = common dso_local global i32 0, align 4
@MRVDRV_MAX_MULTICAST_LIST_SIZE = common dso_local global i64 0, align 8
@CMD_ACT_MAC_ALL_MULTICAST_ENABLE = common dso_local global i32 0, align 4
@CMD_ACT_MAC_MULTICAST_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32*, i64)* @lbtf_op_configure_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lbtf_op_configure_filter(%struct.ieee80211_hw* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.lbtf_private*, align 8
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  %13 = load %struct.lbtf_private*, %struct.lbtf_private** %12, align 8
  store %struct.lbtf_private* %13, %struct.lbtf_private** %9, align 8
  %14 = load %struct.lbtf_private*, %struct.lbtf_private** %9, align 8
  %15 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* @LBTF_DEB_MACOPS, align 4
  %18 = call i32 @lbtf_deb_enter(i32 %17)
  %19 = load i32, i32* @SUPPORTED_FIF_FLAGS, align 4
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* @SUPPORTED_FIF_FLAGS, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %22
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %4
  %29 = load i32, i32* @LBTF_DEB_MACOPS, align 4
  %30 = call i32 @lbtf_deb_leave(i32 %29)
  br label %108

31:                                               ; preds = %4
  %32 = load i32, i32* @CMD_ACT_MAC_PROMISCUOUS_ENABLE, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.lbtf_private*, %struct.lbtf_private** %9, align 8
  %35 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @FIF_ALLMULTI, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %31
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* @MRVDRV_MAX_MULTICAST_LIST_SIZE, align 8
  %46 = icmp sgt i64 %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %43, %31
  %48 = load i32, i32* @CMD_ACT_MAC_ALL_MULTICAST_ENABLE, align 4
  %49 = load %struct.lbtf_private*, %struct.lbtf_private** %9, align 8
  %50 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load i32, i32* @CMD_ACT_MAC_MULTICAST_ENABLE, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.lbtf_private*, %struct.lbtf_private** %9, align 8
  %56 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 8
  br label %96

59:                                               ; preds = %43
  %60 = load i64, i64* %8, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %59
  %63 = load i32, i32* @CMD_ACT_MAC_MULTICAST_ENABLE, align 4
  %64 = load %struct.lbtf_private*, %struct.lbtf_private** %9, align 8
  %65 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load i32, i32* @CMD_ACT_MAC_ALL_MULTICAST_ENABLE, align 4
  %69 = xor i32 %68, -1
  %70 = load %struct.lbtf_private*, %struct.lbtf_private** %9, align 8
  %71 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 8
  %74 = load %struct.lbtf_private*, %struct.lbtf_private** %9, align 8
  %75 = call i32 @lbtf_cmd_set_mac_multicast_addr(%struct.lbtf_private* %74)
  br label %95

76:                                               ; preds = %59
  %77 = load i32, i32* @CMD_ACT_MAC_MULTICAST_ENABLE, align 4
  %78 = load i32, i32* @CMD_ACT_MAC_ALL_MULTICAST_ENABLE, align 4
  %79 = or i32 %77, %78
  %80 = xor i32 %79, -1
  %81 = load %struct.lbtf_private*, %struct.lbtf_private** %9, align 8
  %82 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = and i32 %83, %80
  store i32 %84, i32* %82, align 8
  %85 = load %struct.lbtf_private*, %struct.lbtf_private** %9, align 8
  %86 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %76
  %90 = load %struct.lbtf_private*, %struct.lbtf_private** %9, align 8
  %91 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %90, i32 0, i32 1
  store i64 0, i64* %91, align 8
  %92 = load %struct.lbtf_private*, %struct.lbtf_private** %9, align 8
  %93 = call i32 @lbtf_cmd_set_mac_multicast_addr(%struct.lbtf_private* %92)
  br label %94

94:                                               ; preds = %89, %76
  br label %95

95:                                               ; preds = %94, %62
  br label %96

96:                                               ; preds = %95, %47
  %97 = load %struct.lbtf_private*, %struct.lbtf_private** %9, align 8
  %98 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load %struct.lbtf_private*, %struct.lbtf_private** %9, align 8
  %104 = call i32 @lbtf_set_mac_control(%struct.lbtf_private* %103)
  br label %105

105:                                              ; preds = %102, %96
  %106 = load i32, i32* @LBTF_DEB_MACOPS, align 4
  %107 = call i32 @lbtf_deb_leave(i32 %106)
  br label %108

108:                                              ; preds = %105, %28
  ret void
}

declare dso_local i32 @lbtf_deb_enter(i32) #1

declare dso_local i32 @lbtf_deb_leave(i32) #1

declare dso_local i32 @lbtf_cmd_set_mac_multicast_addr(%struct.lbtf_private*) #1

declare dso_local i32 @lbtf_set_mac_control(%struct.lbtf_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
