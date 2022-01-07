; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_main_op_pull_fw_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_main_op_pull_fw_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ath10k_fw_stats = type { i32, i32 }
%struct.wmi_stats_event = type { i32, i32 }
%struct.wmi_pdev_stats = type { i32, i32, i32 }
%struct.ath10k_fw_stats_pdev = type { i32 }
%struct.wmi_peer_stats = type { i32 }
%struct.ath10k_fw_stats_peer = type { i32 }

@EPROTO = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.sk_buff*, %struct.ath10k_fw_stats*)* @ath10k_wmi_main_op_pull_fw_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_wmi_main_op_pull_fw_stats(%struct.ath10k* %0, %struct.sk_buff* %1, %struct.ath10k_fw_stats* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ath10k_fw_stats*, align 8
  %8 = alloca %struct.wmi_stats_event*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.wmi_pdev_stats*, align 8
  %13 = alloca %struct.ath10k_fw_stats_pdev*, align 8
  %14 = alloca %struct.wmi_peer_stats*, align 8
  %15 = alloca %struct.ath10k_fw_stats_peer*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.ath10k_fw_stats* %2, %struct.ath10k_fw_stats** %7, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = bitcast i8* %19 to %struct.wmi_stats_event*
  store %struct.wmi_stats_event* %20, %struct.wmi_stats_event** %8, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = call i32 @skb_pull(%struct.sk_buff* %21, i32 8)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @EPROTO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %117

27:                                               ; preds = %3
  %28 = load %struct.wmi_stats_event*, %struct.wmi_stats_event** %8, align 8
  %29 = getelementptr inbounds %struct.wmi_stats_event, %struct.wmi_stats_event* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @__le32_to_cpu(i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load %struct.wmi_stats_event*, %struct.wmi_stats_event** %8, align 8
  %33 = getelementptr inbounds %struct.wmi_stats_event, %struct.wmi_stats_event* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @__le32_to_cpu(i32 %34)
  store i32 %35, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %36

36:                                               ; preds = %77, %27
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %80

40:                                               ; preds = %36
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i8*
  %45 = bitcast i8* %44 to %struct.wmi_pdev_stats*
  store %struct.wmi_pdev_stats* %45, %struct.wmi_pdev_stats** %12, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = call i32 @skb_pull(%struct.sk_buff* %46, i32 12)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %40
  %50 = load i32, i32* @EPROTO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %117

52:                                               ; preds = %40
  %53 = load i32, i32* @GFP_ATOMIC, align 4
  %54 = call i8* @kzalloc(i32 4, i32 %53)
  %55 = bitcast i8* %54 to %struct.ath10k_fw_stats_pdev*
  store %struct.ath10k_fw_stats_pdev* %55, %struct.ath10k_fw_stats_pdev** %13, align 8
  %56 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %13, align 8
  %57 = icmp ne %struct.ath10k_fw_stats_pdev* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %52
  br label %77

59:                                               ; preds = %52
  %60 = load %struct.wmi_pdev_stats*, %struct.wmi_pdev_stats** %12, align 8
  %61 = getelementptr inbounds %struct.wmi_pdev_stats, %struct.wmi_pdev_stats* %60, i32 0, i32 2
  %62 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %13, align 8
  %63 = call i32 @ath10k_wmi_pull_pdev_stats_base(i32* %61, %struct.ath10k_fw_stats_pdev* %62)
  %64 = load %struct.wmi_pdev_stats*, %struct.wmi_pdev_stats** %12, align 8
  %65 = getelementptr inbounds %struct.wmi_pdev_stats, %struct.wmi_pdev_stats* %64, i32 0, i32 1
  %66 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %13, align 8
  %67 = call i32 @ath10k_wmi_pull_pdev_stats_tx(i32* %65, %struct.ath10k_fw_stats_pdev* %66)
  %68 = load %struct.wmi_pdev_stats*, %struct.wmi_pdev_stats** %12, align 8
  %69 = getelementptr inbounds %struct.wmi_pdev_stats, %struct.wmi_pdev_stats* %68, i32 0, i32 0
  %70 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %13, align 8
  %71 = call i32 @ath10k_wmi_pull_pdev_stats_rx(i32* %69, %struct.ath10k_fw_stats_pdev* %70)
  %72 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %13, align 8
  %73 = getelementptr inbounds %struct.ath10k_fw_stats_pdev, %struct.ath10k_fw_stats_pdev* %72, i32 0, i32 0
  %74 = load %struct.ath10k_fw_stats*, %struct.ath10k_fw_stats** %7, align 8
  %75 = getelementptr inbounds %struct.ath10k_fw_stats, %struct.ath10k_fw_stats* %74, i32 0, i32 1
  %76 = call i32 @list_add_tail(i32* %73, i32* %75)
  br label %77

77:                                               ; preds = %59, %58
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %11, align 4
  br label %36

80:                                               ; preds = %36
  store i32 0, i32* %11, align 4
  br label %81

81:                                               ; preds = %113, %80
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %116

85:                                               ; preds = %81
  %86 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %87 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = inttoptr i64 %88 to i8*
  %90 = bitcast i8* %89 to %struct.wmi_peer_stats*
  store %struct.wmi_peer_stats* %90, %struct.wmi_peer_stats** %14, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %92 = call i32 @skb_pull(%struct.sk_buff* %91, i32 4)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %85
  %95 = load i32, i32* @EPROTO, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %4, align 4
  br label %117

97:                                               ; preds = %85
  %98 = load i32, i32* @GFP_ATOMIC, align 4
  %99 = call i8* @kzalloc(i32 4, i32 %98)
  %100 = bitcast i8* %99 to %struct.ath10k_fw_stats_peer*
  store %struct.ath10k_fw_stats_peer* %100, %struct.ath10k_fw_stats_peer** %15, align 8
  %101 = load %struct.ath10k_fw_stats_peer*, %struct.ath10k_fw_stats_peer** %15, align 8
  %102 = icmp ne %struct.ath10k_fw_stats_peer* %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %97
  br label %113

104:                                              ; preds = %97
  %105 = load %struct.wmi_peer_stats*, %struct.wmi_peer_stats** %14, align 8
  %106 = load %struct.ath10k_fw_stats_peer*, %struct.ath10k_fw_stats_peer** %15, align 8
  %107 = call i32 @ath10k_wmi_pull_peer_stats(%struct.wmi_peer_stats* %105, %struct.ath10k_fw_stats_peer* %106)
  %108 = load %struct.ath10k_fw_stats_peer*, %struct.ath10k_fw_stats_peer** %15, align 8
  %109 = getelementptr inbounds %struct.ath10k_fw_stats_peer, %struct.ath10k_fw_stats_peer* %108, i32 0, i32 0
  %110 = load %struct.ath10k_fw_stats*, %struct.ath10k_fw_stats** %7, align 8
  %111 = getelementptr inbounds %struct.ath10k_fw_stats, %struct.ath10k_fw_stats* %110, i32 0, i32 0
  %112 = call i32 @list_add_tail(i32* %109, i32* %111)
  br label %113

113:                                              ; preds = %104, %103
  %114 = load i32, i32* %11, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %11, align 4
  br label %81

116:                                              ; preds = %81
  store i32 0, i32* %4, align 4
  br label %117

117:                                              ; preds = %116, %94, %49, %24
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @__le32_to_cpu(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @ath10k_wmi_pull_pdev_stats_base(i32*, %struct.ath10k_fw_stats_pdev*) #1

declare dso_local i32 @ath10k_wmi_pull_pdev_stats_tx(i32*, %struct.ath10k_fw_stats_pdev*) #1

declare dso_local i32 @ath10k_wmi_pull_pdev_stats_rx(i32*, %struct.ath10k_fw_stats_pdev*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @ath10k_wmi_pull_peer_stats(%struct.wmi_peer_stats*, %struct.ath10k_fw_stats_peer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
