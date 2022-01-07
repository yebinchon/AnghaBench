; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_cfg80211_set_wiphy_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_cfg80211_set_wiphy_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32, i32, i32 }
%struct.mwifiex_adapter = type { i32 }
%struct.mwifiex_private = type { i32, i32, i32 }
%struct.mwifiex_uap_bss_param = type { i32, i32, i32 }

@MWIFIEX_BSS_ROLE_ANY = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"cannot change wiphy params when bss started\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WIPHY_PARAM_RTS_THRESHOLD = common dso_local global i32 0, align 4
@WIPHY_PARAM_FRAG_THRESHOLD = common dso_local global i32 0, align 4
@WIPHY_PARAM_RETRY_LONG = common dso_local global i32 0, align 4
@HostCmd_CMD_UAP_SYS_CONFIG = common dso_local global i32 0, align 4
@HostCmd_ACT_GEN_SET = common dso_local global i32 0, align 4
@UAP_BSS_PARAMS_I = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to set wiphy phy params\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"cannot change wiphy params when connected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, i32)* @mwifiex_cfg80211_set_wiphy_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_cfg80211_set_wiphy_params(%struct.wiphy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mwifiex_adapter*, align 8
  %7 = alloca %struct.mwifiex_private*, align 8
  %8 = alloca %struct.mwifiex_uap_bss_param*, align 8
  %9 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %11 = call %struct.mwifiex_adapter* @mwifiex_cfg80211_get_adapter(%struct.wiphy* %10)
  store %struct.mwifiex_adapter* %11, %struct.mwifiex_adapter** %6, align 8
  %12 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %13 = load i32, i32* @MWIFIEX_BSS_ROLE_ANY, align 4
  %14 = call %struct.mwifiex_private* @mwifiex_get_priv(%struct.mwifiex_adapter* %12, i32 %13)
  store %struct.mwifiex_private* %14, %struct.mwifiex_private** %7, align 8
  %15 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %16 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %133 [
    i32 128, label %18
    i32 129, label %89
  ]

18:                                               ; preds = %2
  %19 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %20 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %25 = load i32, i32* @ERROR, align 4
  %26 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %24, i32 %25, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %134

29:                                               ; preds = %18
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.mwifiex_uap_bss_param* @kzalloc(i32 12, i32 %30)
  store %struct.mwifiex_uap_bss_param* %31, %struct.mwifiex_uap_bss_param** %8, align 8
  %32 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %8, align 8
  %33 = icmp ne %struct.mwifiex_uap_bss_param* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %134

37:                                               ; preds = %29
  %38 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %8, align 8
  %39 = call i32 @mwifiex_set_sys_config_invalid_data(%struct.mwifiex_uap_bss_param* %38)
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @WIPHY_PARAM_RTS_THRESHOLD, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %37
  %45 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %46 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %8, align 8
  %49 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %44, %37
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @WIPHY_PARAM_FRAG_THRESHOLD, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %57 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %8, align 8
  %60 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %55, %50
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @WIPHY_PARAM_RETRY_LONG, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %68 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %8, align 8
  %71 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %66, %61
  %73 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %74 = load i32, i32* @HostCmd_CMD_UAP_SYS_CONFIG, align 4
  %75 = load i32, i32* @HostCmd_ACT_GEN_SET, align 4
  %76 = load i32, i32* @UAP_BSS_PARAMS_I, align 4
  %77 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %8, align 8
  %78 = call i32 @mwifiex_send_cmd(%struct.mwifiex_private* %73, i32 %74, i32 %75, i32 %76, %struct.mwifiex_uap_bss_param* %77, i32 0)
  store i32 %78, i32* %9, align 4
  %79 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %8, align 8
  %80 = call i32 @kfree(%struct.mwifiex_uap_bss_param* %79)
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %72
  %84 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %85 = load i32, i32* @ERROR, align 4
  %86 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %84, i32 %85, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %87 = load i32, i32* %9, align 4
  store i32 %87, i32* %3, align 4
  br label %134

88:                                               ; preds = %72
  br label %133

89:                                               ; preds = %2
  %90 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %91 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %96 = load i32, i32* @ERROR, align 4
  %97 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %95, i32 %96, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %134

100:                                              ; preds = %89
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @WIPHY_PARAM_RTS_THRESHOLD, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %100
  %106 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %107 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %108 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @mwifiex_set_rts(%struct.mwifiex_private* %106, i32 %109)
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %105
  %114 = load i32, i32* %9, align 4
  store i32 %114, i32* %3, align 4
  br label %134

115:                                              ; preds = %105
  br label %116

116:                                              ; preds = %115, %100
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* @WIPHY_PARAM_FRAG_THRESHOLD, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %116
  %122 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %123 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %124 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @mwifiex_set_frag(%struct.mwifiex_private* %122, i32 %125)
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %121
  %130 = load i32, i32* %9, align 4
  store i32 %130, i32* %3, align 4
  br label %134

131:                                              ; preds = %121
  br label %132

132:                                              ; preds = %131, %116
  br label %133

133:                                              ; preds = %2, %132, %88
  store i32 0, i32* %3, align 4
  br label %134

134:                                              ; preds = %133, %129, %113, %94, %83, %34, %23
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local %struct.mwifiex_adapter* @mwifiex_cfg80211_get_adapter(%struct.wiphy*) #1

declare dso_local %struct.mwifiex_private* @mwifiex_get_priv(%struct.mwifiex_adapter*, i32) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*) #1

declare dso_local %struct.mwifiex_uap_bss_param* @kzalloc(i32, i32) #1

declare dso_local i32 @mwifiex_set_sys_config_invalid_data(%struct.mwifiex_uap_bss_param*) #1

declare dso_local i32 @mwifiex_send_cmd(%struct.mwifiex_private*, i32, i32, i32, %struct.mwifiex_uap_bss_param*, i32) #1

declare dso_local i32 @kfree(%struct.mwifiex_uap_bss_param*) #1

declare dso_local i32 @mwifiex_set_rts(%struct.mwifiex_private*, i32) #1

declare dso_local i32 @mwifiex_set_frag(%struct.mwifiex_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
