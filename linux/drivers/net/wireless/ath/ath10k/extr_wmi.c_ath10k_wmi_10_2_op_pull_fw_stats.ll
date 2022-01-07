; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_10_2_op_pull_fw_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_10_2_op_pull_fw_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ath10k_fw_stats = type { i32, i32 }
%struct.wmi_10_2_stats_event = type { i32, i32, i32 }
%struct.wmi_10_2_pdev_stats = type { i32, i32, i32, i32 }
%struct.ath10k_fw_stats_pdev = type { i32 }
%struct.wmi_10_2_pdev_ext_stats = type { i32 }
%struct.wmi_10_2_peer_stats = type { i32, i32 }
%struct.ath10k_fw_stats_peer = type { i32, i8* }

@EPROTO = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.sk_buff*, %struct.ath10k_fw_stats*)* @ath10k_wmi_10_2_op_pull_fw_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_wmi_10_2_op_pull_fw_stats(%struct.ath10k* %0, %struct.sk_buff* %1, %struct.ath10k_fw_stats* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ath10k_fw_stats*, align 8
  %8 = alloca %struct.wmi_10_2_stats_event*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.wmi_10_2_pdev_stats*, align 8
  %14 = alloca %struct.ath10k_fw_stats_pdev*, align 8
  %15 = alloca %struct.wmi_10_2_pdev_ext_stats*, align 8
  %16 = alloca %struct.wmi_10_2_peer_stats*, align 8
  %17 = alloca %struct.ath10k_fw_stats_peer*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.ath10k_fw_stats* %2, %struct.ath10k_fw_stats** %7, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = bitcast i8* %21 to %struct.wmi_10_2_stats_event*
  store %struct.wmi_10_2_stats_event* %22, %struct.wmi_10_2_stats_event** %8, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = call i32 @skb_pull(%struct.sk_buff* %23, i32 12)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @EPROTO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %158

29:                                               ; preds = %3
  %30 = load %struct.wmi_10_2_stats_event*, %struct.wmi_10_2_stats_event** %8, align 8
  %31 = getelementptr inbounds %struct.wmi_10_2_stats_event, %struct.wmi_10_2_stats_event* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @__le32_to_cpu(i32 %32)
  %34 = ptrtoint i8* %33 to i32
  store i32 %34, i32* %9, align 4
  %35 = load %struct.wmi_10_2_stats_event*, %struct.wmi_10_2_stats_event** %8, align 8
  %36 = getelementptr inbounds %struct.wmi_10_2_stats_event, %struct.wmi_10_2_stats_event* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @__le32_to_cpu(i32 %37)
  %39 = ptrtoint i8* %38 to i32
  store i32 %39, i32* %10, align 4
  %40 = load %struct.wmi_10_2_stats_event*, %struct.wmi_10_2_stats_event** %8, align 8
  %41 = getelementptr inbounds %struct.wmi_10_2_stats_event, %struct.wmi_10_2_stats_event* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @__le32_to_cpu(i32 %42)
  %44 = ptrtoint i8* %43 to i32
  store i32 %44, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %45

45:                                               ; preds = %90, %29
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %93

49:                                               ; preds = %45
  %50 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i8*
  %54 = bitcast i8* %53 to %struct.wmi_10_2_pdev_stats*
  store %struct.wmi_10_2_pdev_stats* %54, %struct.wmi_10_2_pdev_stats** %13, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %56 = call i32 @skb_pull(%struct.sk_buff* %55, i32 16)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %49
  %59 = load i32, i32* @EPROTO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %158

61:                                               ; preds = %49
  %62 = load i32, i32* @GFP_ATOMIC, align 4
  %63 = call i8* @kzalloc(i32 4, i32 %62)
  %64 = bitcast i8* %63 to %struct.ath10k_fw_stats_pdev*
  store %struct.ath10k_fw_stats_pdev* %64, %struct.ath10k_fw_stats_pdev** %14, align 8
  %65 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %14, align 8
  %66 = icmp ne %struct.ath10k_fw_stats_pdev* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %61
  br label %90

68:                                               ; preds = %61
  %69 = load %struct.wmi_10_2_pdev_stats*, %struct.wmi_10_2_pdev_stats** %13, align 8
  %70 = getelementptr inbounds %struct.wmi_10_2_pdev_stats, %struct.wmi_10_2_pdev_stats* %69, i32 0, i32 3
  %71 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %14, align 8
  %72 = call i32 @ath10k_wmi_pull_pdev_stats_base(i32* %70, %struct.ath10k_fw_stats_pdev* %71)
  %73 = load %struct.wmi_10_2_pdev_stats*, %struct.wmi_10_2_pdev_stats** %13, align 8
  %74 = getelementptr inbounds %struct.wmi_10_2_pdev_stats, %struct.wmi_10_2_pdev_stats* %73, i32 0, i32 2
  %75 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %14, align 8
  %76 = call i32 @ath10k_wmi_pull_pdev_stats_tx(i32* %74, %struct.ath10k_fw_stats_pdev* %75)
  %77 = load %struct.wmi_10_2_pdev_stats*, %struct.wmi_10_2_pdev_stats** %13, align 8
  %78 = getelementptr inbounds %struct.wmi_10_2_pdev_stats, %struct.wmi_10_2_pdev_stats* %77, i32 0, i32 1
  %79 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %14, align 8
  %80 = call i32 @ath10k_wmi_pull_pdev_stats_rx(i32* %78, %struct.ath10k_fw_stats_pdev* %79)
  %81 = load %struct.wmi_10_2_pdev_stats*, %struct.wmi_10_2_pdev_stats** %13, align 8
  %82 = getelementptr inbounds %struct.wmi_10_2_pdev_stats, %struct.wmi_10_2_pdev_stats* %81, i32 0, i32 0
  %83 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %14, align 8
  %84 = call i32 @ath10k_wmi_pull_pdev_stats_extra(i32* %82, %struct.ath10k_fw_stats_pdev* %83)
  %85 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %14, align 8
  %86 = getelementptr inbounds %struct.ath10k_fw_stats_pdev, %struct.ath10k_fw_stats_pdev* %85, i32 0, i32 0
  %87 = load %struct.ath10k_fw_stats*, %struct.ath10k_fw_stats** %7, align 8
  %88 = getelementptr inbounds %struct.ath10k_fw_stats, %struct.ath10k_fw_stats* %87, i32 0, i32 1
  %89 = call i32 @list_add_tail(i32* %86, i32* %88)
  br label %90

90:                                               ; preds = %68, %67
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %12, align 4
  br label %45

93:                                               ; preds = %45
  store i32 0, i32* %12, align 4
  br label %94

94:                                               ; preds = %111, %93
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %114

98:                                               ; preds = %94
  %99 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %100 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = inttoptr i64 %101 to i8*
  %103 = bitcast i8* %102 to %struct.wmi_10_2_pdev_ext_stats*
  store %struct.wmi_10_2_pdev_ext_stats* %103, %struct.wmi_10_2_pdev_ext_stats** %15, align 8
  %104 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %105 = call i32 @skb_pull(%struct.sk_buff* %104, i32 4)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %98
  %108 = load i32, i32* @EPROTO, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %4, align 4
  br label %158

110:                                              ; preds = %98
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %12, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %12, align 4
  br label %94

114:                                              ; preds = %94
  store i32 0, i32* %12, align 4
  br label %115

115:                                              ; preds = %154, %114
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %11, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %157

119:                                              ; preds = %115
  %120 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %121 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = inttoptr i64 %122 to i8*
  %124 = bitcast i8* %123 to %struct.wmi_10_2_peer_stats*
  store %struct.wmi_10_2_peer_stats* %124, %struct.wmi_10_2_peer_stats** %16, align 8
  %125 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %126 = call i32 @skb_pull(%struct.sk_buff* %125, i32 8)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %119
  %129 = load i32, i32* @EPROTO, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %4, align 4
  br label %158

131:                                              ; preds = %119
  %132 = load i32, i32* @GFP_ATOMIC, align 4
  %133 = call i8* @kzalloc(i32 16, i32 %132)
  %134 = bitcast i8* %133 to %struct.ath10k_fw_stats_peer*
  store %struct.ath10k_fw_stats_peer* %134, %struct.ath10k_fw_stats_peer** %17, align 8
  %135 = load %struct.ath10k_fw_stats_peer*, %struct.ath10k_fw_stats_peer** %17, align 8
  %136 = icmp ne %struct.ath10k_fw_stats_peer* %135, null
  br i1 %136, label %138, label %137

137:                                              ; preds = %131
  br label %154

138:                                              ; preds = %131
  %139 = load %struct.wmi_10_2_peer_stats*, %struct.wmi_10_2_peer_stats** %16, align 8
  %140 = getelementptr inbounds %struct.wmi_10_2_peer_stats, %struct.wmi_10_2_peer_stats* %139, i32 0, i32 1
  %141 = load %struct.ath10k_fw_stats_peer*, %struct.ath10k_fw_stats_peer** %17, align 8
  %142 = call i32 @ath10k_wmi_pull_peer_stats(i32* %140, %struct.ath10k_fw_stats_peer* %141)
  %143 = load %struct.wmi_10_2_peer_stats*, %struct.wmi_10_2_peer_stats** %16, align 8
  %144 = getelementptr inbounds %struct.wmi_10_2_peer_stats, %struct.wmi_10_2_peer_stats* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i8* @__le32_to_cpu(i32 %145)
  %147 = load %struct.ath10k_fw_stats_peer*, %struct.ath10k_fw_stats_peer** %17, align 8
  %148 = getelementptr inbounds %struct.ath10k_fw_stats_peer, %struct.ath10k_fw_stats_peer* %147, i32 0, i32 1
  store i8* %146, i8** %148, align 8
  %149 = load %struct.ath10k_fw_stats_peer*, %struct.ath10k_fw_stats_peer** %17, align 8
  %150 = getelementptr inbounds %struct.ath10k_fw_stats_peer, %struct.ath10k_fw_stats_peer* %149, i32 0, i32 0
  %151 = load %struct.ath10k_fw_stats*, %struct.ath10k_fw_stats** %7, align 8
  %152 = getelementptr inbounds %struct.ath10k_fw_stats, %struct.ath10k_fw_stats* %151, i32 0, i32 0
  %153 = call i32 @list_add_tail(i32* %150, i32* %152)
  br label %154

154:                                              ; preds = %138, %137
  %155 = load i32, i32* %12, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %12, align 4
  br label %115

157:                                              ; preds = %115
  store i32 0, i32* %4, align 4
  br label %158

158:                                              ; preds = %157, %128, %107, %58, %26
  %159 = load i32, i32* %4, align 4
  ret i32 %159
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
