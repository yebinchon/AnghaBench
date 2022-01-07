; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_10_2_4_op_pull_fw_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_10_2_4_op_pull_fw_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ath10k_fw_stats = type { i32, i32 }
%struct.wmi_10_2_stats_event = type { i32, i32, i32 }
%struct.wmi_10_2_pdev_stats = type { i32, i32, i32, i32 }
%struct.ath10k_fw_stats_pdev = type { i32 }
%struct.wmi_10_2_pdev_ext_stats = type { i32 }
%struct.wmi_10_2_4_ext_peer_stats = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ath10k_fw_stats_peer = type { i32, i8*, i8* }

@EPROTO = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@WMI_SERVICE_PEER_STATS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.sk_buff*, %struct.ath10k_fw_stats*)* @ath10k_wmi_10_2_4_op_pull_fw_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_wmi_10_2_4_op_pull_fw_stats(%struct.ath10k* %0, %struct.sk_buff* %1, %struct.ath10k_fw_stats* %2) #0 {
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
  %16 = alloca %struct.wmi_10_2_4_ext_peer_stats*, align 8
  %17 = alloca %struct.ath10k_fw_stats_peer*, align 8
  %18 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.ath10k_fw_stats* %2, %struct.ath10k_fw_stats** %7, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = bitcast i8* %22 to %struct.wmi_10_2_stats_event*
  store %struct.wmi_10_2_stats_event* %23, %struct.wmi_10_2_stats_event** %8, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = call i32 @skb_pull(%struct.sk_buff* %24, i32 12)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* @EPROTO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %183

30:                                               ; preds = %3
  %31 = load %struct.wmi_10_2_stats_event*, %struct.wmi_10_2_stats_event** %8, align 8
  %32 = getelementptr inbounds %struct.wmi_10_2_stats_event, %struct.wmi_10_2_stats_event* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @__le32_to_cpu(i32 %33)
  %35 = ptrtoint i8* %34 to i32
  store i32 %35, i32* %9, align 4
  %36 = load %struct.wmi_10_2_stats_event*, %struct.wmi_10_2_stats_event** %8, align 8
  %37 = getelementptr inbounds %struct.wmi_10_2_stats_event, %struct.wmi_10_2_stats_event* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @__le32_to_cpu(i32 %38)
  %40 = ptrtoint i8* %39 to i32
  store i32 %40, i32* %10, align 4
  %41 = load %struct.wmi_10_2_stats_event*, %struct.wmi_10_2_stats_event** %8, align 8
  %42 = getelementptr inbounds %struct.wmi_10_2_stats_event, %struct.wmi_10_2_stats_event* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @__le32_to_cpu(i32 %43)
  %45 = ptrtoint i8* %44 to i32
  store i32 %45, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %46

46:                                               ; preds = %91, %30
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %94

50:                                               ; preds = %46
  %51 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = bitcast i8* %54 to %struct.wmi_10_2_pdev_stats*
  store %struct.wmi_10_2_pdev_stats* %55, %struct.wmi_10_2_pdev_stats** %13, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %57 = call i32 @skb_pull(%struct.sk_buff* %56, i32 16)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %50
  %60 = load i32, i32* @EPROTO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %183

62:                                               ; preds = %50
  %63 = load i32, i32* @GFP_ATOMIC, align 4
  %64 = call i8* @kzalloc(i32 4, i32 %63)
  %65 = bitcast i8* %64 to %struct.ath10k_fw_stats_pdev*
  store %struct.ath10k_fw_stats_pdev* %65, %struct.ath10k_fw_stats_pdev** %14, align 8
  %66 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %14, align 8
  %67 = icmp ne %struct.ath10k_fw_stats_pdev* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %62
  br label %91

69:                                               ; preds = %62
  %70 = load %struct.wmi_10_2_pdev_stats*, %struct.wmi_10_2_pdev_stats** %13, align 8
  %71 = getelementptr inbounds %struct.wmi_10_2_pdev_stats, %struct.wmi_10_2_pdev_stats* %70, i32 0, i32 3
  %72 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %14, align 8
  %73 = call i32 @ath10k_wmi_pull_pdev_stats_base(i32* %71, %struct.ath10k_fw_stats_pdev* %72)
  %74 = load %struct.wmi_10_2_pdev_stats*, %struct.wmi_10_2_pdev_stats** %13, align 8
  %75 = getelementptr inbounds %struct.wmi_10_2_pdev_stats, %struct.wmi_10_2_pdev_stats* %74, i32 0, i32 2
  %76 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %14, align 8
  %77 = call i32 @ath10k_wmi_pull_pdev_stats_tx(i32* %75, %struct.ath10k_fw_stats_pdev* %76)
  %78 = load %struct.wmi_10_2_pdev_stats*, %struct.wmi_10_2_pdev_stats** %13, align 8
  %79 = getelementptr inbounds %struct.wmi_10_2_pdev_stats, %struct.wmi_10_2_pdev_stats* %78, i32 0, i32 1
  %80 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %14, align 8
  %81 = call i32 @ath10k_wmi_pull_pdev_stats_rx(i32* %79, %struct.ath10k_fw_stats_pdev* %80)
  %82 = load %struct.wmi_10_2_pdev_stats*, %struct.wmi_10_2_pdev_stats** %13, align 8
  %83 = getelementptr inbounds %struct.wmi_10_2_pdev_stats, %struct.wmi_10_2_pdev_stats* %82, i32 0, i32 0
  %84 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %14, align 8
  %85 = call i32 @ath10k_wmi_pull_pdev_stats_extra(i32* %83, %struct.ath10k_fw_stats_pdev* %84)
  %86 = load %struct.ath10k_fw_stats_pdev*, %struct.ath10k_fw_stats_pdev** %14, align 8
  %87 = getelementptr inbounds %struct.ath10k_fw_stats_pdev, %struct.ath10k_fw_stats_pdev* %86, i32 0, i32 0
  %88 = load %struct.ath10k_fw_stats*, %struct.ath10k_fw_stats** %7, align 8
  %89 = getelementptr inbounds %struct.ath10k_fw_stats, %struct.ath10k_fw_stats* %88, i32 0, i32 1
  %90 = call i32 @list_add_tail(i32* %87, i32* %89)
  br label %91

91:                                               ; preds = %69, %68
  %92 = load i32, i32* %12, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %12, align 4
  br label %46

94:                                               ; preds = %46
  store i32 0, i32* %12, align 4
  br label %95

95:                                               ; preds = %112, %94
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %115

99:                                               ; preds = %95
  %100 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = inttoptr i64 %102 to i8*
  %104 = bitcast i8* %103 to %struct.wmi_10_2_pdev_ext_stats*
  store %struct.wmi_10_2_pdev_ext_stats* %104, %struct.wmi_10_2_pdev_ext_stats** %15, align 8
  %105 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %106 = call i32 @skb_pull(%struct.sk_buff* %105, i32 4)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %99
  %109 = load i32, i32* @EPROTO, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %4, align 4
  br label %183

111:                                              ; preds = %99
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %12, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %12, align 4
  br label %95

115:                                              ; preds = %95
  store i32 0, i32* %12, align 4
  br label %116

116:                                              ; preds = %179, %115
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* %11, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %182

120:                                              ; preds = %116
  %121 = load i32, i32* @WMI_SERVICE_PEER_STATS, align 4
  %122 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %123 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @test_bit(i32 %121, i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %120
  store i32 12, i32* %18, align 4
  br label %130

129:                                              ; preds = %120
  store i32 4, i32* %18, align 4
  br label %130

130:                                              ; preds = %129, %128
  %131 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %132 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = inttoptr i64 %133 to i8*
  %135 = bitcast i8* %134 to %struct.wmi_10_2_4_ext_peer_stats*
  store %struct.wmi_10_2_4_ext_peer_stats* %135, %struct.wmi_10_2_4_ext_peer_stats** %16, align 8
  %136 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %137 = load i32, i32* %18, align 4
  %138 = call i32 @skb_pull(%struct.sk_buff* %136, i32 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %130
  %141 = load i32, i32* @EPROTO, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %4, align 4
  br label %183

143:                                              ; preds = %130
  %144 = load i32, i32* @GFP_ATOMIC, align 4
  %145 = call i8* @kzalloc(i32 24, i32 %144)
  %146 = bitcast i8* %145 to %struct.ath10k_fw_stats_peer*
  store %struct.ath10k_fw_stats_peer* %146, %struct.ath10k_fw_stats_peer** %17, align 8
  %147 = load %struct.ath10k_fw_stats_peer*, %struct.ath10k_fw_stats_peer** %17, align 8
  %148 = icmp ne %struct.ath10k_fw_stats_peer* %147, null
  br i1 %148, label %150, label %149

149:                                              ; preds = %143
  br label %179

150:                                              ; preds = %143
  %151 = load %struct.wmi_10_2_4_ext_peer_stats*, %struct.wmi_10_2_4_ext_peer_stats** %16, align 8
  %152 = getelementptr inbounds %struct.wmi_10_2_4_ext_peer_stats, %struct.wmi_10_2_4_ext_peer_stats* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 1
  %154 = load %struct.ath10k_fw_stats_peer*, %struct.ath10k_fw_stats_peer** %17, align 8
  %155 = call i32 @ath10k_wmi_pull_peer_stats(i32* %153, %struct.ath10k_fw_stats_peer* %154)
  %156 = load %struct.wmi_10_2_4_ext_peer_stats*, %struct.wmi_10_2_4_ext_peer_stats** %16, align 8
  %157 = getelementptr inbounds %struct.wmi_10_2_4_ext_peer_stats, %struct.wmi_10_2_4_ext_peer_stats* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i8* @__le32_to_cpu(i32 %159)
  %161 = load %struct.ath10k_fw_stats_peer*, %struct.ath10k_fw_stats_peer** %17, align 8
  %162 = getelementptr inbounds %struct.ath10k_fw_stats_peer, %struct.ath10k_fw_stats_peer* %161, i32 0, i32 2
  store i8* %160, i8** %162, align 8
  %163 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %164 = call i64 @ath10k_peer_stats_enabled(%struct.ath10k* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %150
  %167 = load %struct.wmi_10_2_4_ext_peer_stats*, %struct.wmi_10_2_4_ext_peer_stats** %16, align 8
  %168 = getelementptr inbounds %struct.wmi_10_2_4_ext_peer_stats, %struct.wmi_10_2_4_ext_peer_stats* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i8* @__le32_to_cpu(i32 %169)
  %171 = load %struct.ath10k_fw_stats_peer*, %struct.ath10k_fw_stats_peer** %17, align 8
  %172 = getelementptr inbounds %struct.ath10k_fw_stats_peer, %struct.ath10k_fw_stats_peer* %171, i32 0, i32 1
  store i8* %170, i8** %172, align 8
  br label %173

173:                                              ; preds = %166, %150
  %174 = load %struct.ath10k_fw_stats_peer*, %struct.ath10k_fw_stats_peer** %17, align 8
  %175 = getelementptr inbounds %struct.ath10k_fw_stats_peer, %struct.ath10k_fw_stats_peer* %174, i32 0, i32 0
  %176 = load %struct.ath10k_fw_stats*, %struct.ath10k_fw_stats** %7, align 8
  %177 = getelementptr inbounds %struct.ath10k_fw_stats, %struct.ath10k_fw_stats* %176, i32 0, i32 0
  %178 = call i32 @list_add_tail(i32* %175, i32* %177)
  br label %179

179:                                              ; preds = %173, %149
  %180 = load i32, i32* %12, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %12, align 4
  br label %116

182:                                              ; preds = %116
  store i32 0, i32* %4, align 4
  br label %183

183:                                              ; preds = %182, %140, %108, %59, %27
  %184 = load i32, i32* %4, align 4
  ret i32 %184
}

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i8* @__le32_to_cpu(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @ath10k_wmi_pull_pdev_stats_base(i32*, %struct.ath10k_fw_stats_pdev*) #1

declare dso_local i32 @ath10k_wmi_pull_pdev_stats_tx(i32*, %struct.ath10k_fw_stats_pdev*) #1

declare dso_local i32 @ath10k_wmi_pull_pdev_stats_rx(i32*, %struct.ath10k_fw_stats_pdev*) #1

declare dso_local i32 @ath10k_wmi_pull_pdev_stats_extra(i32*, %struct.ath10k_fw_stats_pdev*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @ath10k_wmi_pull_peer_stats(i32*, %struct.ath10k_fw_stats_peer*) #1

declare dso_local i64 @ath10k_peer_stats_enabled(%struct.ath10k*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
