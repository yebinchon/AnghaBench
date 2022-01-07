; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_cmd_get_hw_spec_sta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_cmd_get_hw_spec_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mwl8k_priv* }
%struct.mwl8k_priv = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mwl8k_cmd_get_hw_spec_sta = type { i32, i32, i32, i32, i32, %struct.TYPE_6__, i8*, i8*, i8**, i8*, i8*, i8* }
%struct.TYPE_6__ = type { i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MWL8K_CMD_GET_HW_SPEC = common dso_local global i32 0, align 4
@MWL8K_TX_DESCS = common dso_local global i32 0, align 4
@MWL8K_RX_DESCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @mwl8k_cmd_get_hw_spec_sta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl8k_cmd_get_hw_spec_sta(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.mwl8k_priv*, align 8
  %5 = alloca %struct.mwl8k_cmd_get_hw_spec_sta*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %8, i32 0, i32 0
  %10 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %9, align 8
  store %struct.mwl8k_priv* %10, %struct.mwl8k_priv** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.mwl8k_cmd_get_hw_spec_sta* @kzalloc(i32 88, i32 %11)
  store %struct.mwl8k_cmd_get_hw_spec_sta* %12, %struct.mwl8k_cmd_get_hw_spec_sta** %5, align 8
  %13 = load %struct.mwl8k_cmd_get_hw_spec_sta*, %struct.mwl8k_cmd_get_hw_spec_sta** %5, align 8
  %14 = icmp eq %struct.mwl8k_cmd_get_hw_spec_sta* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %128

18:                                               ; preds = %1
  %19 = load i32, i32* @MWL8K_CMD_GET_HW_SPEC, align 4
  %20 = call i8* @cpu_to_le16(i32 %19)
  %21 = load %struct.mwl8k_cmd_get_hw_spec_sta*, %struct.mwl8k_cmd_get_hw_spec_sta** %5, align 8
  %22 = getelementptr inbounds %struct.mwl8k_cmd_get_hw_spec_sta, %struct.mwl8k_cmd_get_hw_spec_sta* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  store i8* %20, i8** %23, align 8
  %24 = call i8* @cpu_to_le16(i32 88)
  %25 = load %struct.mwl8k_cmd_get_hw_spec_sta*, %struct.mwl8k_cmd_get_hw_spec_sta** %5, align 8
  %26 = getelementptr inbounds %struct.mwl8k_cmd_get_hw_spec_sta, %struct.mwl8k_cmd_get_hw_spec_sta* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store i8* %24, i8** %27, align 8
  %28 = load %struct.mwl8k_cmd_get_hw_spec_sta*, %struct.mwl8k_cmd_get_hw_spec_sta** %5, align 8
  %29 = getelementptr inbounds %struct.mwl8k_cmd_get_hw_spec_sta, %struct.mwl8k_cmd_get_hw_spec_sta* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @memset(i32 %30, i32 255, i32 4)
  %32 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %33 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i8* @cpu_to_le32(i32 %34)
  %36 = load %struct.mwl8k_cmd_get_hw_spec_sta*, %struct.mwl8k_cmd_get_hw_spec_sta** %5, align 8
  %37 = getelementptr inbounds %struct.mwl8k_cmd_get_hw_spec_sta, %struct.mwl8k_cmd_get_hw_spec_sta* %36, i32 0, i32 11
  store i8* %35, i8** %37, align 8
  %38 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %39 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %38, i32 0, i32 7
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @cpu_to_le32(i32 %43)
  %45 = load %struct.mwl8k_cmd_get_hw_spec_sta*, %struct.mwl8k_cmd_get_hw_spec_sta** %5, align 8
  %46 = getelementptr inbounds %struct.mwl8k_cmd_get_hw_spec_sta, %struct.mwl8k_cmd_get_hw_spec_sta* %45, i32 0, i32 10
  store i8* %44, i8** %46, align 8
  %47 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %48 = call i32 @mwl8k_tx_queues(%struct.mwl8k_priv* %47)
  %49 = call i8* @cpu_to_le32(i32 %48)
  %50 = load %struct.mwl8k_cmd_get_hw_spec_sta*, %struct.mwl8k_cmd_get_hw_spec_sta** %5, align 8
  %51 = getelementptr inbounds %struct.mwl8k_cmd_get_hw_spec_sta, %struct.mwl8k_cmd_get_hw_spec_sta* %50, i32 0, i32 9
  store i8* %49, i8** %51, align 8
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %73, %18
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %55 = call i32 @mwl8k_tx_queues(%struct.mwl8k_priv* %54)
  %56 = icmp slt i32 %53, %55
  br i1 %56, label %57, label %76

57:                                               ; preds = %52
  %58 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %59 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %58, i32 0, i32 6
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @cpu_to_le32(i32 %65)
  %67 = load %struct.mwl8k_cmd_get_hw_spec_sta*, %struct.mwl8k_cmd_get_hw_spec_sta** %5, align 8
  %68 = getelementptr inbounds %struct.mwl8k_cmd_get_hw_spec_sta, %struct.mwl8k_cmd_get_hw_spec_sta* %67, i32 0, i32 8
  %69 = load i8**, i8*** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %69, i64 %71
  store i8* %66, i8** %72, align 8
  br label %73

73:                                               ; preds = %57
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %52

76:                                               ; preds = %52
  %77 = load i32, i32* @MWL8K_TX_DESCS, align 4
  %78 = call i8* @cpu_to_le32(i32 %77)
  %79 = load %struct.mwl8k_cmd_get_hw_spec_sta*, %struct.mwl8k_cmd_get_hw_spec_sta** %5, align 8
  %80 = getelementptr inbounds %struct.mwl8k_cmd_get_hw_spec_sta, %struct.mwl8k_cmd_get_hw_spec_sta* %79, i32 0, i32 7
  store i8* %78, i8** %80, align 8
  %81 = load i32, i32* @MWL8K_RX_DESCS, align 4
  %82 = call i8* @cpu_to_le32(i32 %81)
  %83 = load %struct.mwl8k_cmd_get_hw_spec_sta*, %struct.mwl8k_cmd_get_hw_spec_sta** %5, align 8
  %84 = getelementptr inbounds %struct.mwl8k_cmd_get_hw_spec_sta, %struct.mwl8k_cmd_get_hw_spec_sta* %83, i32 0, i32 6
  store i8* %82, i8** %84, align 8
  %85 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %86 = load %struct.mwl8k_cmd_get_hw_spec_sta*, %struct.mwl8k_cmd_get_hw_spec_sta** %5, align 8
  %87 = getelementptr inbounds %struct.mwl8k_cmd_get_hw_spec_sta, %struct.mwl8k_cmd_get_hw_spec_sta* %86, i32 0, i32 5
  %88 = call i32 @mwl8k_post_cmd(%struct.ieee80211_hw* %85, %struct.TYPE_6__* %87)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %124, label %91

91:                                               ; preds = %76
  %92 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %93 = load %struct.mwl8k_cmd_get_hw_spec_sta*, %struct.mwl8k_cmd_get_hw_spec_sta** %5, align 8
  %94 = getelementptr inbounds %struct.mwl8k_cmd_get_hw_spec_sta, %struct.mwl8k_cmd_get_hw_spec_sta* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @SET_IEEE80211_PERM_ADDR(%struct.ieee80211_hw* %92, i32 %95)
  %97 = load %struct.mwl8k_cmd_get_hw_spec_sta*, %struct.mwl8k_cmd_get_hw_spec_sta** %5, align 8
  %98 = getelementptr inbounds %struct.mwl8k_cmd_get_hw_spec_sta, %struct.mwl8k_cmd_get_hw_spec_sta* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @le16_to_cpu(i32 %99)
  %101 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %102 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %101, i32 0, i32 5
  store i32 %100, i32* %102, align 4
  %103 = load %struct.mwl8k_cmd_get_hw_spec_sta*, %struct.mwl8k_cmd_get_hw_spec_sta** %5, align 8
  %104 = getelementptr inbounds %struct.mwl8k_cmd_get_hw_spec_sta, %struct.mwl8k_cmd_get_hw_spec_sta* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @le32_to_cpu(i32 %105)
  %107 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %108 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %107, i32 0, i32 4
  store i32 %106, i32* %108, align 8
  %109 = load %struct.mwl8k_cmd_get_hw_spec_sta*, %struct.mwl8k_cmd_get_hw_spec_sta** %5, align 8
  %110 = getelementptr inbounds %struct.mwl8k_cmd_get_hw_spec_sta, %struct.mwl8k_cmd_get_hw_spec_sta* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %113 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 4
  %114 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %115 = load %struct.mwl8k_cmd_get_hw_spec_sta*, %struct.mwl8k_cmd_get_hw_spec_sta** %5, align 8
  %116 = getelementptr inbounds %struct.mwl8k_cmd_get_hw_spec_sta, %struct.mwl8k_cmd_get_hw_spec_sta* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @le32_to_cpu(i32 %117)
  %119 = call i32 @mwl8k_set_caps(%struct.ieee80211_hw* %114, i32 %118)
  %120 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %121 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %120, i32 0, i32 1
  store i32 0, i32* %121, align 4
  %122 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %123 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %122, i32 0, i32 2
  store i32 1, i32* %123, align 8
  br label %124

124:                                              ; preds = %91, %76
  %125 = load %struct.mwl8k_cmd_get_hw_spec_sta*, %struct.mwl8k_cmd_get_hw_spec_sta** %5, align 8
  %126 = call i32 @kfree(%struct.mwl8k_cmd_get_hw_spec_sta* %125)
  %127 = load i32, i32* %6, align 4
  store i32 %127, i32* %2, align 4
  br label %128

128:                                              ; preds = %124, %15
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local %struct.mwl8k_cmd_get_hw_spec_sta* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @mwl8k_tx_queues(%struct.mwl8k_priv*) #1

declare dso_local i32 @mwl8k_post_cmd(%struct.ieee80211_hw*, %struct.TYPE_6__*) #1

declare dso_local i32 @SET_IEEE80211_PERM_ADDR(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @mwl8k_set_caps(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @kfree(%struct.mwl8k_cmd_get_hw_spec_sta*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
