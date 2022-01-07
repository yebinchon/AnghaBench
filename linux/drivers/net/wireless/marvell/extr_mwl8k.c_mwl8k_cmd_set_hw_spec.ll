; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_cmd_set_hw_spec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_cmd_set_hw_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mwl8k_priv* }
%struct.mwl8k_priv = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mwl8k_cmd_set_hw_spec = type { %struct.TYPE_6__, i8*, i8*, i8*, i8**, i8*, i8*, i8* }
%struct.TYPE_6__ = type { i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MWL8K_CMD_SET_HW_SPEC = common dso_local global i32 0, align 4
@MWL8K_SET_HW_SPEC_FLAG_HOST_DECR_MGMT = common dso_local global i32 0, align 4
@MWL8K_SET_HW_SPEC_FLAG_HOSTFORM_PROBERESP = common dso_local global i32 0, align 4
@MWL8K_SET_HW_SPEC_FLAG_HOSTFORM_BEACON = common dso_local global i32 0, align 4
@MWL8K_SET_HW_SPEC_FLAG_ENABLE_LIFE_TIME_EXPIRY = common dso_local global i32 0, align 4
@MWL8K_SET_HW_SPEC_FLAG_GENERATE_CCMP_HDR = common dso_local global i32 0, align 4
@MWL8K_TX_DESCS = common dso_local global i32 0, align 4
@MWL8K_RX_DESCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @mwl8k_cmd_set_hw_spec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl8k_cmd_set_hw_spec(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.mwl8k_priv*, align 8
  %5 = alloca %struct.mwl8k_cmd_set_hw_spec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %9, i32 0, i32 0
  %11 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %10, align 8
  store %struct.mwl8k_priv* %11, %struct.mwl8k_priv** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.mwl8k_cmd_set_hw_spec* @kzalloc(i32 72, i32 %12)
  store %struct.mwl8k_cmd_set_hw_spec* %13, %struct.mwl8k_cmd_set_hw_spec** %5, align 8
  %14 = load %struct.mwl8k_cmd_set_hw_spec*, %struct.mwl8k_cmd_set_hw_spec** %5, align 8
  %15 = icmp eq %struct.mwl8k_cmd_set_hw_spec* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %106

19:                                               ; preds = %1
  %20 = load i32, i32* @MWL8K_CMD_SET_HW_SPEC, align 4
  %21 = call i8* @cpu_to_le16(i32 %20)
  %22 = load %struct.mwl8k_cmd_set_hw_spec*, %struct.mwl8k_cmd_set_hw_spec** %5, align 8
  %23 = getelementptr inbounds %struct.mwl8k_cmd_set_hw_spec, %struct.mwl8k_cmd_set_hw_spec* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  store i8* %21, i8** %24, align 8
  %25 = call i8* @cpu_to_le16(i32 72)
  %26 = load %struct.mwl8k_cmd_set_hw_spec*, %struct.mwl8k_cmd_set_hw_spec** %5, align 8
  %27 = getelementptr inbounds %struct.mwl8k_cmd_set_hw_spec, %struct.mwl8k_cmd_set_hw_spec* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i8* %25, i8** %28, align 8
  %29 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %30 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i8* @cpu_to_le32(i32 %31)
  %33 = load %struct.mwl8k_cmd_set_hw_spec*, %struct.mwl8k_cmd_set_hw_spec** %5, align 8
  %34 = getelementptr inbounds %struct.mwl8k_cmd_set_hw_spec, %struct.mwl8k_cmd_set_hw_spec* %33, i32 0, i32 7
  store i8* %32, i8** %34, align 8
  %35 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %36 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %35, i32 0, i32 2
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @cpu_to_le32(i32 %40)
  %42 = load %struct.mwl8k_cmd_set_hw_spec*, %struct.mwl8k_cmd_set_hw_spec** %5, align 8
  %43 = getelementptr inbounds %struct.mwl8k_cmd_set_hw_spec, %struct.mwl8k_cmd_set_hw_spec* %42, i32 0, i32 6
  store i8* %41, i8** %43, align 8
  %44 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %45 = call i32 @mwl8k_tx_queues(%struct.mwl8k_priv* %44)
  %46 = call i8* @cpu_to_le32(i32 %45)
  %47 = load %struct.mwl8k_cmd_set_hw_spec*, %struct.mwl8k_cmd_set_hw_spec** %5, align 8
  %48 = getelementptr inbounds %struct.mwl8k_cmd_set_hw_spec, %struct.mwl8k_cmd_set_hw_spec* %47, i32 0, i32 5
  store i8* %46, i8** %48, align 8
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %75, %19
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %52 = call i32 @mwl8k_tx_queues(%struct.mwl8k_priv* %51)
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %54, label %78

54:                                               ; preds = %49
  %55 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %56 = call i32 @mwl8k_tx_queues(%struct.mwl8k_priv* %55)
  %57 = sub nsw i32 %56, 1
  %58 = load i32, i32* %7, align 4
  %59 = sub nsw i32 %57, %58
  store i32 %59, i32* %8, align 4
  %60 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %61 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %60, i32 0, i32 1
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @cpu_to_le32(i32 %67)
  %69 = load %struct.mwl8k_cmd_set_hw_spec*, %struct.mwl8k_cmd_set_hw_spec** %5, align 8
  %70 = getelementptr inbounds %struct.mwl8k_cmd_set_hw_spec, %struct.mwl8k_cmd_set_hw_spec* %69, i32 0, i32 4
  %71 = load i8**, i8*** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  store i8* %68, i8** %74, align 8
  br label %75

75:                                               ; preds = %54
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %49

78:                                               ; preds = %49
  %79 = load i32, i32* @MWL8K_SET_HW_SPEC_FLAG_HOST_DECR_MGMT, align 4
  %80 = load i32, i32* @MWL8K_SET_HW_SPEC_FLAG_HOSTFORM_PROBERESP, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @MWL8K_SET_HW_SPEC_FLAG_HOSTFORM_BEACON, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @MWL8K_SET_HW_SPEC_FLAG_ENABLE_LIFE_TIME_EXPIRY, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @MWL8K_SET_HW_SPEC_FLAG_GENERATE_CCMP_HDR, align 4
  %87 = or i32 %85, %86
  %88 = call i8* @cpu_to_le32(i32 %87)
  %89 = load %struct.mwl8k_cmd_set_hw_spec*, %struct.mwl8k_cmd_set_hw_spec** %5, align 8
  %90 = getelementptr inbounds %struct.mwl8k_cmd_set_hw_spec, %struct.mwl8k_cmd_set_hw_spec* %89, i32 0, i32 3
  store i8* %88, i8** %90, align 8
  %91 = load i32, i32* @MWL8K_TX_DESCS, align 4
  %92 = call i8* @cpu_to_le32(i32 %91)
  %93 = load %struct.mwl8k_cmd_set_hw_spec*, %struct.mwl8k_cmd_set_hw_spec** %5, align 8
  %94 = getelementptr inbounds %struct.mwl8k_cmd_set_hw_spec, %struct.mwl8k_cmd_set_hw_spec* %93, i32 0, i32 2
  store i8* %92, i8** %94, align 8
  %95 = load i32, i32* @MWL8K_RX_DESCS, align 4
  %96 = call i8* @cpu_to_le32(i32 %95)
  %97 = load %struct.mwl8k_cmd_set_hw_spec*, %struct.mwl8k_cmd_set_hw_spec** %5, align 8
  %98 = getelementptr inbounds %struct.mwl8k_cmd_set_hw_spec, %struct.mwl8k_cmd_set_hw_spec* %97, i32 0, i32 1
  store i8* %96, i8** %98, align 8
  %99 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %100 = load %struct.mwl8k_cmd_set_hw_spec*, %struct.mwl8k_cmd_set_hw_spec** %5, align 8
  %101 = getelementptr inbounds %struct.mwl8k_cmd_set_hw_spec, %struct.mwl8k_cmd_set_hw_spec* %100, i32 0, i32 0
  %102 = call i32 @mwl8k_post_cmd(%struct.ieee80211_hw* %99, %struct.TYPE_6__* %101)
  store i32 %102, i32* %6, align 4
  %103 = load %struct.mwl8k_cmd_set_hw_spec*, %struct.mwl8k_cmd_set_hw_spec** %5, align 8
  %104 = call i32 @kfree(%struct.mwl8k_cmd_set_hw_spec* %103)
  %105 = load i32, i32* %6, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %78, %16
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local %struct.mwl8k_cmd_set_hw_spec* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @mwl8k_tx_queues(%struct.mwl8k_priv*) #1

declare dso_local i32 @mwl8k_post_cmd(%struct.ieee80211_hw*, %struct.TYPE_6__*) #1

declare dso_local i32 @kfree(%struct.mwl8k_cmd_set_hw_spec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
