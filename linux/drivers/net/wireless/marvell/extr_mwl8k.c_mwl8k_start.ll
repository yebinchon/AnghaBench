; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32, %struct.mwl8k_priv* }
%struct.mwl8k_priv = type { i32, i32, i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@mwl8k_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@MWL8K_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to register IRQ handler\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@MWL8K_A2H_EVENTS = common dso_local global i32 0, align 4
@MWL8K_HIU_A2H_INTERRUPT_MASK = common dso_local global i64 0, align 8
@MWL8K_HIU_A2H_INTERRUPT_STATUS_MASK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @mwl8k_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl8k_start(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.mwl8k_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %6, i32 0, i32 1
  %8 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %7, align 8
  store %struct.mwl8k_priv* %8, %struct.mwl8k_priv** %4, align 8
  %9 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %10 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %9, i32 0, i32 3
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @mwl8k_interrupt, align 4
  %15 = load i32, i32* @IRQF_SHARED, align 4
  %16 = load i32, i32* @MWL8K_NAME, align 4
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %18 = call i32 @request_irq(i32 %13, i32 %14, i32 %15, i32 %16, %struct.ieee80211_hw* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %1
  %22 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %23 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %22, i32 0, i32 0
  store i32 -1, i32* %23, align 8
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %25 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @wiphy_err(i32 %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %133

30:                                               ; preds = %1
  %31 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %32 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %31, i32 0, i32 3
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %37 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %39 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %38, i32 0, i32 2
  %40 = call i32 @tasklet_enable(i32* %39)
  %41 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %42 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %41, i32 0, i32 1
  %43 = call i32 @tasklet_enable(i32* %42)
  %44 = load i32, i32* @MWL8K_A2H_EVENTS, align 4
  %45 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %46 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @MWL8K_HIU_A2H_INTERRUPT_MASK, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @iowrite32(i32 %44, i64 %49)
  %51 = load i32, i32* @MWL8K_A2H_EVENTS, align 4
  %52 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %53 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @MWL8K_HIU_A2H_INTERRUPT_STATUS_MASK, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @iowrite32(i32 %51, i64 %56)
  %58 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %59 = call i32 @mwl8k_fw_lock(%struct.ieee80211_hw* %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %103, label %62

62:                                               ; preds = %30
  %63 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %64 = call i32 @mwl8k_cmd_radio_enable(%struct.ieee80211_hw* %63)
  store i32 %64, i32* %5, align 4
  %65 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %66 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %88, label %69

69:                                               ; preds = %62
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %74 = call i32 @mwl8k_cmd_enable_sniffer(%struct.ieee80211_hw* %73, i32 0)
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %80 = call i32 @mwl8k_cmd_set_pre_scan(%struct.ieee80211_hw* %79)
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %78, %75
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %86 = call i32 @mwl8k_cmd_set_post_scan(%struct.ieee80211_hw* %85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %84, %81
  br label %88

88:                                               ; preds = %87, %62
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %88
  %92 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %93 = call i32 @mwl8k_cmd_set_rateadapt_mode(%struct.ieee80211_hw* %92, i32 0)
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %91, %88
  %95 = load i32, i32* %5, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %94
  %98 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %99 = call i32 @mwl8k_cmd_set_wmm_mode(%struct.ieee80211_hw* %98, i32 0)
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %97, %94
  %101 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %102 = call i32 @mwl8k_fw_unlock(%struct.ieee80211_hw* %101)
  br label %103

103:                                              ; preds = %100, %30
  %104 = load i32, i32* %5, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %128

106:                                              ; preds = %103
  %107 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %108 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @MWL8K_HIU_A2H_INTERRUPT_MASK, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @iowrite32(i32 0, i64 %111)
  %113 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %114 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %113, i32 0, i32 3
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %119 = call i32 @free_irq(i32 %117, %struct.ieee80211_hw* %118)
  %120 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %121 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %120, i32 0, i32 0
  store i32 -1, i32* %121, align 8
  %122 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %123 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %122, i32 0, i32 2
  %124 = call i32 @tasklet_disable(i32* %123)
  %125 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %126 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %125, i32 0, i32 1
  %127 = call i32 @tasklet_disable(i32* %126)
  br label %131

128:                                              ; preds = %103
  %129 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %130 = call i32 @ieee80211_wake_queues(%struct.ieee80211_hw* %129)
  br label %131

131:                                              ; preds = %128, %106
  %132 = load i32, i32* %5, align 4
  store i32 %132, i32* %2, align 4
  br label %133

133:                                              ; preds = %131, %21
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.ieee80211_hw*) #1

declare dso_local i32 @wiphy_err(i32, i8*) #1

declare dso_local i32 @tasklet_enable(i32*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @mwl8k_fw_lock(%struct.ieee80211_hw*) #1

declare dso_local i32 @mwl8k_cmd_radio_enable(%struct.ieee80211_hw*) #1

declare dso_local i32 @mwl8k_cmd_enable_sniffer(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @mwl8k_cmd_set_pre_scan(%struct.ieee80211_hw*) #1

declare dso_local i32 @mwl8k_cmd_set_post_scan(%struct.ieee80211_hw*, i8*) #1

declare dso_local i32 @mwl8k_cmd_set_rateadapt_mode(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @mwl8k_cmd_set_wmm_mode(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @mwl8k_fw_unlock(%struct.ieee80211_hw*) #1

declare dso_local i32 @free_irq(i32, %struct.ieee80211_hw*) #1

declare dso_local i32 @tasklet_disable(i32*) #1

declare dso_local i32 @ieee80211_wake_queues(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
