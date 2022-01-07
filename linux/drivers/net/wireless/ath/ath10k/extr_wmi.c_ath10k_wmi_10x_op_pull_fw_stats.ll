; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_10x_op_pull_fw_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_10x_op_pull_fw_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ath10k_fw_stats = type { i32, i32 }
%struct.wmi_stats_event = type { i32, i32 }
%struct.wmi_10x_pdev_stats = type { i32, i32, i32, i32 }
%struct.ath10k_fw_stats_pdev = type { i32 }
%struct.wmi_10x_peer_stats = type { i32, i32 }
%struct.ath10k_fw_stats_peer = type { i32, i8* }

@EPROTO = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.sk_buff*, %struct.ath10k_fw_stats*)* @ath10k_wmi_10x_op_pull_fw_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_wmi_10x_op_pull_fw_stats(%struct.ath10k* %0, %struct.sk_buff* %1, %struct.ath10k_fw_stats* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ath10k_fw_stats*, align 8
  %8 = alloca %struct.wmi_stats_event*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.wmi_10x_pdev_stats*, align 8
  %13 = alloca %struct.ath10k_fw_stats_pdev*, align 8
  %14 = alloca %struct.wmi_10x_peer_stats*, align 8
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
  br label %130

27:                                               ; preds = %3
  %28 = load %struct.wmi_stats_event*, %struct.wmi_stats_event** %8, align 8
  %29 = getelementptr inbounds %struct.wmi_stats_event, %struct.wmi_stats_event* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @__le32_to_cpu(i32 %30)
  %32 = ptrtoint i8* %31 to i32
  store i32 %32, i32* %9, align 4
  %33 = load %struct.wmi_stats_event*, %struct.wmi_stats_event** %8, align 8
  %34 = getelementptr inbounds %struct.wmi_stats_event, %struct.wmi_stats_event* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @__le32_to_cpu(i32 %35)
  %37 = ptrtoint i8* %36 to i32
  store i32 %37, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %38

38:                                               ; preds = %83, %27
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %86

42:                                               ; preds = %38
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i8*
  %47 = bitcast i8* %46 to %struct.wmi_10x_pdev_stats*
  store %struct.wmi_10x_pdev_stats* %47, %struct.wmi_10x_pdev_stats** %12, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = call i32 @skb_pull(%struct.sk_buff* %48, i32 16)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %42
  %52 = load i32, i32* @EPROTO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %130

54:                                               ; preds = %42
  %55 = load i32, i32* @GFP_ATOMIC, align 4
  %56 = call i8* @kzalloc(i32 4, i32 %55)
  %57 = bitcast i8* %56 to %struct.ath10k_fw_stats_pdev*
  store %struct.ath10k_fw_stats_pdev* %57, %struct.ath10k_fw_stats_pdev** %13, align 8
  %58 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %13, align 8
  %59 = icmp ne %struct.ath10k_fw_stats_pdev* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %54
  br label %83

61:                                               ; preds = %54
  %62 = load %struct.wmi_10x_pdev_stats*, %struct.wmi_10x_pdev_stats** %12, align 8
  %63 = getelementptr inbounds %struct.wmi_10x_pdev_stats, %struct.wmi_10x_pdev_stats* %62, i32 0, i32 3
  %64 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %13, align 8
  %65 = call i32 @ath10k_wmi_pull_pdev_stats_base(i32* %63, %struct.ath10k_fw_stats_pdev* %64)
  %66 = load %struct.wmi_10x_pdev_stats*, %struct.wmi_10x_pdev_stats** %12, align 8
  %67 = getelementptr inbounds %struct.wmi_10x_pdev_stats, %struct.wmi_10x_pdev_stats* %66, i32 0, i32 2
  %68 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %13, align 8
  %69 = call i32 @ath10k_wmi_pull_pdev_stats_tx(i32* %67, %struct.ath10k_fw_stats_pdev* %68)
  %70 = load %struct.wmi_10x_pdev_stats*, %struct.wmi_10x_pdev_stats** %12, align 8
  %71 = getelementptr inbounds %struct.wmi_10x_pdev_stats, %struct.wmi_10x_pdev_stats* %70, i32 0, i32 1
  %72 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %13, align 8
  %73 = call i32 @ath10k_wmi_pull_pdev_stats_rx(i32* %71, %struct.ath10k_fw_stats_pdev* %72)
  %74 = load %struct.wmi_10x_pdev_stats*, %struct.wmi_10x_pdev_stats** %12, align 8
  %75 = getelementptr inbounds %struct.wmi_10x_pdev_stats, %struct.wmi_10x_pdev_stats* %74, i32 0, i32 0
  %76 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %13, align 8
  %77 = call i32 @ath10k_wmi_pull_pdev_stats_extra(i32* %75, %struct.ath10k_fw_stats_pdev* %76)
  %78 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %13, align 8
  %79 = getelementptr inbounds %struct.ath10k_fw_stats_pdev, %struct.ath10k_fw_stats_pdev* %78, i32 0, i32 0
  %80 = load %struct.ath10k_fw_stats*, %struct.ath10k_fw_stats** %7, align 8
  %81 = getelementptr inbounds %struct.ath10k_fw_stats, %struct.ath10k_fw_stats* %80, i32 0, i32 1
  %82 = call i32 @list_add_tail(i32* %79, i32* %81)
  br label %83

83:                                               ; preds = %61, %60
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %11, align 4
  br label %38

86:                                               ; preds = %38
  store i32 0, i32* %11, align 4
  br label %87

87:                                               ; preds = %126, %86
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %129

91:                                               ; preds = %87
  %92 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %93 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = inttoptr i64 %94 to i8*
  %96 = bitcast i8* %95 to %struct.wmi_10x_peer_stats*
  store %struct.wmi_10x_peer_stats* %96, %struct.wmi_10x_peer_stats** %14, align 8
  %97 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %98 = call i32 @skb_pull(%struct.sk_buff* %97, i32 8)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %91
  %101 = load i32, i32* @EPROTO, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %4, align 4
  br label %130

103:                                              ; preds = %91
  %104 = load i32, i32* @GFP_ATOMIC, align 4
  %105 = call i8* @kzalloc(i32 16, i32 %104)
  %106 = bitcast i8* %105 to %struct.ath10k_fw_stats_peer*
  store %struct.ath10k_fw_stats_peer* %106, %struct.ath10k_fw_stats_peer** %15, align 8
  %107 = load %struct.ath10k_fw_stats_peer*, %struct.ath10k_fw_stats_peer** %15, align 8
  %108 = icmp ne %struct.ath10k_fw_stats_peer* %107, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %103
  br label %126

110:                                              ; preds = %103
  %111 = load %struct.wmi_10x_peer_stats*, %struct.wmi_10x_peer_stats** %14, align 8
  %112 = getelementptr inbounds %struct.wmi_10x_peer_stats, %struct.wmi_10x_peer_stats* %111, i32 0, i32 1
  %113 = load %struct.ath10k_fw_stats_peer*, %struct.ath10k_fw_stats_peer** %15, align 8
  %114 = call i32 @ath10k_wmi_pull_peer_stats(i32* %112, %struct.ath10k_fw_stats_peer* %113)
  %115 = load %struct.wmi_10x_peer_stats*, %struct.wmi_10x_peer_stats** %14, align 8
  %116 = getelementptr inbounds %struct.wmi_10x_peer_stats, %struct.wmi_10x_peer_stats* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i8* @__le32_to_cpu(i32 %117)
  %119 = load %struct.ath10k_fw_stats_peer*, %struct.ath10k_fw_stats_peer** %15, align 8
  %120 = getelementptr inbounds %struct.ath10k_fw_stats_peer, %struct.ath10k_fw_stats_peer* %119, i32 0, i32 1
  store i8* %118, i8** %120, align 8
  %121 = load %struct.ath10k_fw_stats_peer*, %struct.ath10k_fw_stats_peer** %15, align 8
  %122 = getelementptr inbounds %struct.ath10k_fw_stats_peer, %struct.ath10k_fw_stats_peer* %121, i32 0, i32 0
  %123 = load %struct.ath10k_fw_stats*, %struct.ath10k_fw_stats** %7, align 8
  %124 = getelementptr inbounds %struct.ath10k_fw_stats, %struct.ath10k_fw_stats* %123, i32 0, i32 0
  %125 = call i32 @list_add_tail(i32* %122, i32* %124)
  br label %126

126:                                              ; preds = %110, %109
  %127 = load i32, i32* %11, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %11, align 4
  br label %87

129:                                              ; preds = %87
  store i32 0, i32* %4, align 4
  br label %130

130:                                              ; preds = %129, %100, %51, %24
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i8* @__le32_to_cpu(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @ath10k_wmi_pull_pdev_stats_base(i32*, %struct.ath10k_fw_stats_pdev*) #1

declare dso_local i32 @ath10k_wmi_pull_pdev_stats_tx(i32*, %struct.ath10k_fw_stats_pdev*) #1

declare dso_local i32 @ath10k_wmi_pull_pdev_stats_rx(i32*, %struct.ath10k_fw_stats_pdev*) #1

declare dso_local i32 @ath10k_wmi_pull_pdev_stats_extra(i32*, %struct.ath10k_fw_stats_pdev*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @ath10k_wmi_pull_peer_stats(i32*, %struct.ath10k_fw_stats_peer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
