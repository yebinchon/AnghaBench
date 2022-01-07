; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ptp.c_efx_ptp_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ptp.c_efx_ptp_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_channel = type { %struct.efx_nic* }
%struct.efx_nic = type { %struct.efx_ptp_data* }
%struct.efx_ptp_data = type { i64, i32, i32, i32 }
%struct.sk_buff = type { i32*, i64 }
%struct.efx_ptp_match = type { i32*, i32, i64 }

@jiffies = common dso_local global i64 0, align 8
@PKT_EVENT_LIFETIME_MS = common dso_local global i32 0, align 4
@MC_CMD_PTP_MODE_V1 = common dso_local global i64 0, align 8
@PTP_V1_MIN_LENGTH = common dso_local global i32 0, align 4
@PTP_V1_VERSION_OFFSET = common dso_local global i64 0, align 8
@PTP_VERSION_V1 = common dso_local global i32 0, align 4
@PTP_V1_UUID_OFFSET = common dso_local global i32 0, align 4
@PTP_V2_MIN_LENGTH = common dso_local global i32 0, align 4
@PTP_V2_VERSION_OFFSET = common dso_local global i64 0, align 8
@PTP_VERSION_V2_MASK = common dso_local global i32 0, align 4
@PTP_VERSION_V2 = common dso_local global i32 0, align 4
@PTP_V2_UUID_OFFSET = common dso_local global i32 0, align 4
@MC_CMD_PTP_MODE_V2 = common dso_local global i64 0, align 8
@MC_CMD_PTP_MODE_V2_ENHANCED = common dso_local global i64 0, align 8
@PTP_DPORT_OFFSET = common dso_local global i64 0, align 8
@PTP_EVENT_PORT = common dso_local global i32 0, align 4
@PTP_PACKET_STATE_UNMATCHED = common dso_local global i32 0, align 4
@PTP_V1_SEQUENCE_OFFSET = common dso_local global i32 0, align 4
@PTP_V2_SEQUENCE_OFFSET = common dso_local global i32 0, align 4
@PTP_V1_SEQUENCE_LENGTH = common dso_local global i32 0, align 4
@PTP_V2_SEQUENCE_LENGTH = common dso_local global i32 0, align 4
@PTP_PACKET_STATE_MATCH_UNWANTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_channel*, %struct.sk_buff*)* @efx_ptp_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_ptp_rx(%struct.efx_channel* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.efx_channel*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.efx_nic*, align 8
  %7 = alloca %struct.efx_ptp_data*, align 8
  %8 = alloca %struct.efx_ptp_match*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.efx_channel* %0, %struct.efx_channel** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %13 = load %struct.efx_channel*, %struct.efx_channel** %4, align 8
  %14 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %13, i32 0, i32 0
  %15 = load %struct.efx_nic*, %struct.efx_nic** %14, align 8
  store %struct.efx_nic* %15, %struct.efx_nic** %6, align 8
  %16 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %17 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %16, i32 0, i32 0
  %18 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %17, align 8
  store %struct.efx_ptp_data* %18, %struct.efx_ptp_data** %7, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.efx_ptp_match*
  store %struct.efx_ptp_match* %22, %struct.efx_ptp_match** %8, align 8
  %23 = load i64, i64* @jiffies, align 8
  %24 = load i32, i32* @PKT_EVENT_LIFETIME_MS, align 4
  %25 = call i64 @msecs_to_jiffies(i32 %24)
  %26 = add nsw i64 %23, %25
  %27 = load %struct.efx_ptp_match*, %struct.efx_ptp_match** %8, align 8
  %28 = getelementptr inbounds %struct.efx_ptp_match, %struct.efx_ptp_match* %27, i32 0, i32 2
  store i64 %26, i64* %28, align 8
  %29 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %7, align 8
  %30 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MC_CMD_PTP_MODE_V1, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %63

34:                                               ; preds = %2
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = load i32, i32* @PTP_V1_MIN_LENGTH, align 4
  %37 = call i32 @pskb_may_pull(%struct.sk_buff* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %195

40:                                               ; preds = %34
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %12, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = load i64, i64* @PTP_V1_VERSION_OFFSET, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ntohs(i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @PTP_VERSION_V1, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %195

53:                                               ; preds = %40
  %54 = load i32*, i32** %12, align 8
  %55 = load i32, i32* @PTP_V1_UUID_OFFSET, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32* %57, i32** %9, align 8
  %58 = load i32*, i32** %12, align 8
  %59 = load i32, i32* @PTP_V1_UUID_OFFSET, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = getelementptr inbounds i32, i32* %61, i64 3
  store i32* %62, i32** %10, align 8
  br label %114

63:                                               ; preds = %2
  %64 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %65 = load i32, i32* @PTP_V2_MIN_LENGTH, align 4
  %66 = call i32 @pskb_may_pull(%struct.sk_buff* %64, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %195

69:                                               ; preds = %63
  %70 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  store i32* %72, i32** %12, align 8
  %73 = load i32*, i32** %12, align 8
  %74 = load i64, i64* @PTP_V2_VERSION_OFFSET, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @PTP_VERSION_V2_MASK, align 4
  %79 = and i32 %77, %78
  %80 = load i32, i32* @PTP_VERSION_V2, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %69
  store i32 0, i32* %3, align 4
  br label %195

83:                                               ; preds = %69
  %84 = load i32*, i32** %12, align 8
  %85 = load i32, i32* @PTP_V2_UUID_OFFSET, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = getelementptr inbounds i32, i32* %87, i64 5
  store i32* %88, i32** %10, align 8
  %89 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %7, align 8
  %90 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @MC_CMD_PTP_MODE_V2, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %83
  %95 = load i32*, i32** %12, align 8
  %96 = load i32, i32* @PTP_V2_UUID_OFFSET, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = getelementptr inbounds i32, i32* %98, i64 2
  store i32* %99, i32** %9, align 8
  br label %113

100:                                              ; preds = %83
  %101 = load i32*, i32** %12, align 8
  %102 = load i32, i32* @PTP_V2_UUID_OFFSET, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  store i32* %105, i32** %9, align 8
  %106 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %7, align 8
  %107 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @MC_CMD_PTP_MODE_V2_ENHANCED, align 8
  %110 = icmp ne i64 %108, %109
  %111 = zext i1 %110 to i32
  %112 = call i32 @BUG_ON(i32 %111)
  br label %113

113:                                              ; preds = %100, %94
  br label %114

114:                                              ; preds = %113, %53
  %115 = load i32*, i32** %12, align 8
  %116 = load i64, i64* @PTP_DPORT_OFFSET, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @ntohs(i32 %118)
  %120 = load i32, i32* @PTP_EVENT_PORT, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %180

122:                                              ; preds = %114
  %123 = load i32, i32* @PTP_PACKET_STATE_UNMATCHED, align 4
  %124 = load %struct.efx_ptp_match*, %struct.efx_ptp_match** %8, align 8
  %125 = getelementptr inbounds %struct.efx_ptp_match, %struct.efx_ptp_match* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 8
  %126 = load i32, i32* @PTP_V1_SEQUENCE_OFFSET, align 4
  %127 = load i32, i32* @PTP_V2_SEQUENCE_OFFSET, align 4
  %128 = icmp ne i32 %126, %127
  %129 = zext i1 %128 to i32
  %130 = call i32 @BUILD_BUG_ON(i32 %129)
  %131 = load i32, i32* @PTP_V1_SEQUENCE_LENGTH, align 4
  %132 = load i32, i32* @PTP_V2_SEQUENCE_LENGTH, align 4
  %133 = icmp ne i32 %131, %132
  %134 = zext i1 %133 to i32
  %135 = call i32 @BUILD_BUG_ON(i32 %134)
  %136 = load i32*, i32** %9, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32*, i32** %9, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 1
  %141 = load i32, i32* %140, align 4
  %142 = shl i32 %141, 8
  %143 = or i32 %138, %142
  %144 = load i32*, i32** %9, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 2
  %146 = load i32, i32* %145, align 4
  %147 = shl i32 %146, 16
  %148 = or i32 %143, %147
  %149 = load i32*, i32** %10, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 0
  %151 = load i32, i32* %150, align 4
  %152 = shl i32 %151, 24
  %153 = or i32 %148, %152
  %154 = load %struct.efx_ptp_match*, %struct.efx_ptp_match** %8, align 8
  %155 = getelementptr inbounds %struct.efx_ptp_match, %struct.efx_ptp_match* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  store i32 %153, i32* %157, align 4
  %158 = load i32*, i32** %10, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32*, i32** %10, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 2
  %163 = load i32, i32* %162, align 4
  %164 = shl i32 %163, 8
  %165 = or i32 %160, %164
  %166 = load i32*, i32** %12, align 8
  %167 = load i32, i32* @PTP_V1_SEQUENCE_OFFSET, align 4
  %168 = load i32, i32* @PTP_V1_SEQUENCE_LENGTH, align 4
  %169 = add nsw i32 %167, %168
  %170 = sub nsw i32 %169, 1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %166, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = shl i32 %173, 16
  %175 = or i32 %165, %174
  %176 = load %struct.efx_ptp_match*, %struct.efx_ptp_match** %8, align 8
  %177 = getelementptr inbounds %struct.efx_ptp_match, %struct.efx_ptp_match* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 1
  store i32 %175, i32* %179, align 4
  br label %184

180:                                              ; preds = %114
  %181 = load i32, i32* @PTP_PACKET_STATE_MATCH_UNWANTED, align 4
  %182 = load %struct.efx_ptp_match*, %struct.efx_ptp_match** %8, align 8
  %183 = getelementptr inbounds %struct.efx_ptp_match, %struct.efx_ptp_match* %182, i32 0, i32 1
  store i32 %181, i32* %183, align 8
  br label %184

184:                                              ; preds = %180, %122
  %185 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %7, align 8
  %186 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %185, i32 0, i32 3
  %187 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %188 = call i32 @skb_queue_tail(i32* %186, %struct.sk_buff* %187)
  %189 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %7, align 8
  %190 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %7, align 8
  %193 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %192, i32 0, i32 1
  %194 = call i32 @queue_work(i32 %191, i32* %193)
  store i32 1, i32* %3, align 4
  br label %195

195:                                              ; preds = %184, %82, %68, %52, %39
  %196 = load i32, i32* %3, align 4
  ret i32 %196
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
