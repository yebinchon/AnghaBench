; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_cmd_encryption_set_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_cmd_encryption_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_key_conf = type { i64, i32, i32, i32, %struct.ieee80211_key_conf* }
%struct.mwl8k_cmd_set_key = type { i32, i32, i32 }
%struct.mwl8k_vif = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_PAIRWISE = common dso_local global i32 0, align 4
@MWL8K_ENCR_SET_KEY = common dso_local global i32 0, align 4
@MWL8K_ENCR_SET_GROUP_KEY = common dso_local global i32 0, align 4
@MAX_ENCR_KEY_LENGTH = common dso_local global i32 0, align 4
@MIC_KEY_LENGTH = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, i64*, %struct.ieee80211_key_conf*)* @mwl8k_cmd_encryption_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl8k_cmd_encryption_set_key(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i64* %2, %struct.ieee80211_key_conf* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.ieee80211_key_conf*, align 8
  %10 = alloca %struct.mwl8k_cmd_set_key*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.mwl8k_vif*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %7, align 8
  store i64* %2, i64** %8, align 8
  store %struct.ieee80211_key_conf* %3, %struct.ieee80211_key_conf** %9, align 8
  %16 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %17 = call %struct.mwl8k_vif* @MWL8K_VIF(%struct.ieee80211_vif* %16)
  store %struct.mwl8k_vif* %17, %struct.mwl8k_vif** %15, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.mwl8k_cmd_set_key* @kzalloc(i32 12, i32 %18)
  store %struct.mwl8k_cmd_set_key* %19, %struct.mwl8k_cmd_set_key** %10, align 8
  %20 = load %struct.mwl8k_cmd_set_key*, %struct.mwl8k_cmd_set_key** %10, align 8
  %21 = icmp eq %struct.mwl8k_cmd_set_key* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %121

25:                                               ; preds = %4
  %26 = load %struct.mwl8k_cmd_set_key*, %struct.mwl8k_cmd_set_key** %10, align 8
  %27 = load i64*, i64** %8, align 8
  %28 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %29 = call i32 @mwl8k_encryption_set_cmd_info(%struct.mwl8k_cmd_set_key* %26, i64* %27, %struct.ieee80211_key_conf* %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %117

33:                                               ; preds = %25
  %34 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %35 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %14, align 8
  %37 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %38 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @IEEE80211_KEY_FLAG_PAIRWISE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i32, i32* @MWL8K_ENCR_SET_KEY, align 4
  store i32 %44, i32* %13, align 4
  br label %47

45:                                               ; preds = %33
  %46 = load i32, i32* @MWL8K_ENCR_SET_GROUP_KEY, align 4
  store i32 %46, i32* %13, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %49 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %96 [
    i32 128, label %51
    i32 129, label %51
    i32 130, label %87
    i32 131, label %92
  ]

51:                                               ; preds = %47, %47
  %52 = load %struct.mwl8k_vif*, %struct.mwl8k_vif** %15, align 8
  %53 = getelementptr inbounds %struct.mwl8k_vif, %struct.mwl8k_vif* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i64, i64* %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %82, label %60

60:                                               ; preds = %51
  %61 = load %struct.mwl8k_vif*, %struct.mwl8k_vif** %15, align 8
  %62 = getelementptr inbounds %struct.mwl8k_vif, %struct.mwl8k_vif* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i64, i64* %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %69 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %70 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = add i64 32, %72
  %74 = trunc i64 %73 to i32
  %75 = call i32 @memcpy(i32 %67, %struct.ieee80211_key_conf* %68, i32 %74)
  %76 = load %struct.mwl8k_vif*, %struct.mwl8k_vif** %15, align 8
  %77 = getelementptr inbounds %struct.mwl8k_vif, %struct.mwl8k_vif* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load i64, i64* %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  store i32 1, i32* %81, align 4
  br label %82

82:                                               ; preds = %60, %51
  %83 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %84 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* @MWL8K_ENCR_SET_KEY, align 4
  store i32 %86, i32* %13, align 4
  br label %99

87:                                               ; preds = %47
  %88 = load i32, i32* @MAX_ENCR_KEY_LENGTH, align 4
  %89 = load i32, i32* @MIC_KEY_LENGTH, align 4
  %90 = mul nsw i32 2, %89
  %91 = add nsw i32 %88, %90
  store i32 %91, i32* %12, align 4
  br label %99

92:                                               ; preds = %47
  %93 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %94 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* %12, align 4
  br label %99

96:                                               ; preds = %47
  %97 = load i32, i32* @ENOTSUPP, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %11, align 4
  br label %117

99:                                               ; preds = %92, %87, %82
  %100 = load %struct.mwl8k_cmd_set_key*, %struct.mwl8k_cmd_set_key** %10, align 8
  %101 = getelementptr inbounds %struct.mwl8k_cmd_set_key, %struct.mwl8k_cmd_set_key* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %104 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %103, i32 0, i32 4
  %105 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %104, align 8
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @memcpy(i32 %102, %struct.ieee80211_key_conf* %105, i32 %106)
  %108 = load i32, i32* %13, align 4
  %109 = call i32 @cpu_to_le32(i32 %108)
  %110 = load %struct.mwl8k_cmd_set_key*, %struct.mwl8k_cmd_set_key** %10, align 8
  %111 = getelementptr inbounds %struct.mwl8k_cmd_set_key, %struct.mwl8k_cmd_set_key* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %113 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %114 = load %struct.mwl8k_cmd_set_key*, %struct.mwl8k_cmd_set_key** %10, align 8
  %115 = getelementptr inbounds %struct.mwl8k_cmd_set_key, %struct.mwl8k_cmd_set_key* %114, i32 0, i32 0
  %116 = call i32 @mwl8k_post_pervif_cmd(%struct.ieee80211_hw* %112, %struct.ieee80211_vif* %113, i32* %115)
  store i32 %116, i32* %11, align 4
  br label %117

117:                                              ; preds = %99, %96, %32
  %118 = load %struct.mwl8k_cmd_set_key*, %struct.mwl8k_cmd_set_key** %10, align 8
  %119 = call i32 @kfree(%struct.mwl8k_cmd_set_key* %118)
  %120 = load i32, i32* %11, align 4
  store i32 %120, i32* %5, align 4
  br label %121

121:                                              ; preds = %117, %22
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

declare dso_local %struct.mwl8k_vif* @MWL8K_VIF(%struct.ieee80211_vif*) #1

declare dso_local %struct.mwl8k_cmd_set_key* @kzalloc(i32, i32) #1

declare dso_local i32 @mwl8k_encryption_set_cmd_info(%struct.mwl8k_cmd_set_key*, i64*, %struct.ieee80211_key_conf*) #1

declare dso_local i32 @memcpy(i32, %struct.ieee80211_key_conf*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @mwl8k_post_pervif_cmd(%struct.ieee80211_hw*, %struct.ieee80211_vif*, i32*) #1

declare dso_local i32 @kfree(%struct.mwl8k_cmd_set_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
