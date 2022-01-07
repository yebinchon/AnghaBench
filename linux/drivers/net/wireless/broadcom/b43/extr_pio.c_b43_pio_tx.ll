; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_pio.c_b43_pio_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_pio.c_b43_pio_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.b43_pio_txqueue* }
%struct.b43_pio_txqueue = type { i32, i64, i32, i32, i32 }
%struct.sk_buff = type { i32, i64 }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_tx_info = type { i32 }

@IEEE80211_TX_CTL_SEND_AFTER_DTIM = common dso_local global i32 0, align 4
@IEEE80211_FCTL_MOREDATA = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"PIO: TX packet longer than queue.\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"PIO: TX packet overflow.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@ENOKEY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"PIO transmission failure\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @b43_pio_tx(%struct.b43_wldev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.b43_pio_txqueue*, align 8
  %6 = alloca %struct.ieee80211_hdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_tx_info*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %11)
  store %struct.ieee80211_tx_info* %12, %struct.ieee80211_tx_info** %10, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %16, %struct.ieee80211_hdr** %6, align 8
  %17 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %18 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IEEE80211_TX_CTL_SEND_AFTER_DTIM, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %2
  %24 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %25 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %26, align 8
  store %struct.b43_pio_txqueue* %27, %struct.b43_pio_txqueue** %5, align 8
  %28 = load i32, i32* @IEEE80211_FCTL_MOREDATA, align 4
  %29 = call i32 @cpu_to_le16(i32 %28)
  %30 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %31 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %39

34:                                               ; preds = %2
  %35 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %36)
  %38 = call %struct.b43_pio_txqueue* @select_queue_by_priority(%struct.b43_wldev* %35, i32 %37)
  store %struct.b43_pio_txqueue* %38, %struct.b43_pio_txqueue** %5, align 8
  br label %39

39:                                               ; preds = %34, %23
  %40 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %41 = call i32 @b43_txhdr_size(%struct.b43_wldev* %40)
  store i32 %41, i32* %7, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = add i32 %44, %45
  %47 = call i32 @roundup(i32 %46, i32 4)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %5, align 8
  %50 = getelementptr inbounds %struct.b43_pio_txqueue, %struct.b43_pio_txqueue* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ugt i32 %48, %51
  %53 = zext i1 %52 to i32
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %39
  %57 = load i32, i32* @ENOBUFS, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %9, align 4
  %59 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %60 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = call i32 @b43dbg(%struct.TYPE_6__* %61, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %178

63:                                               ; preds = %39
  %64 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %5, align 8
  %65 = getelementptr inbounds %struct.b43_pio_txqueue, %struct.b43_pio_txqueue* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %63
  %72 = load i32, i32* @ENOBUFS, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %9, align 4
  %74 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %75 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %74, i32 0, i32 0
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = call i32 @b43warn(%struct.TYPE_6__* %76, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %178

78:                                               ; preds = %63
  %79 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %5, align 8
  %80 = getelementptr inbounds %struct.b43_pio_txqueue, %struct.b43_pio_txqueue* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %5, align 8
  %83 = getelementptr inbounds %struct.b43_pio_txqueue, %struct.b43_pio_txqueue* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp ugt i32 %81, %84
  %86 = zext i1 %85 to i32
  %87 = call i32 @B43_WARN_ON(i32 %86)
  %88 = load i32, i32* %8, align 4
  %89 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %5, align 8
  %90 = getelementptr inbounds %struct.b43_pio_txqueue, %struct.b43_pio_txqueue* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %5, align 8
  %93 = getelementptr inbounds %struct.b43_pio_txqueue, %struct.b43_pio_txqueue* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = sub i32 %91, %94
  %96 = icmp ugt i32 %88, %95
  br i1 %96, label %97, label %110

97:                                               ; preds = %78
  %98 = load i32, i32* @EBUSY, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %9, align 4
  %100 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %101 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %100, i32 0, i32 0
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %106 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %105)
  %107 = call i32 @ieee80211_stop_queue(i32 %104, i32 %106)
  %108 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %5, align 8
  %109 = getelementptr inbounds %struct.b43_pio_txqueue, %struct.b43_pio_txqueue* %108, i32 0, i32 3
  store i32 1, i32* %109, align 4
  br label %178

110:                                              ; preds = %78
  %111 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %112 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %111)
  %113 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %5, align 8
  %114 = getelementptr inbounds %struct.b43_pio_txqueue, %struct.b43_pio_txqueue* %113, i32 0, i32 4
  store i32 %112, i32* %114, align 8
  %115 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %5, align 8
  %116 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %117 = call i32 @pio_tx_frame(%struct.b43_pio_txqueue* %115, %struct.sk_buff* %116)
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* @ENOKEY, align 4
  %120 = sub nsw i32 0, %119
  %121 = icmp eq i32 %118, %120
  %122 = zext i1 %121 to i32
  %123 = call i64 @unlikely(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %110
  %126 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %127 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %126, i32 0, i32 0
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %132 = call i32 @ieee80211_free_txskb(i32 %130, %struct.sk_buff* %131)
  store i32 0, i32* %9, align 4
  br label %178

133:                                              ; preds = %110
  %134 = load i32, i32* %9, align 4
  %135 = call i64 @unlikely(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %133
  %138 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %139 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %138, i32 0, i32 0
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %139, align 8
  %141 = call i32 @b43err(%struct.TYPE_6__* %140, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %178

142:                                              ; preds = %133
  %143 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %5, align 8
  %144 = getelementptr inbounds %struct.b43_pio_txqueue, %struct.b43_pio_txqueue* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %5, align 8
  %147 = getelementptr inbounds %struct.b43_pio_txqueue, %struct.b43_pio_txqueue* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp ugt i32 %145, %148
  %150 = zext i1 %149 to i32
  %151 = call i32 @B43_WARN_ON(i32 %150)
  %152 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %5, align 8
  %153 = getelementptr inbounds %struct.b43_pio_txqueue, %struct.b43_pio_txqueue* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %5, align 8
  %156 = getelementptr inbounds %struct.b43_pio_txqueue, %struct.b43_pio_txqueue* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = sub i32 %154, %157
  %159 = call i32 @roundup(i32 10, i32 4)
  %160 = icmp ult i32 %158, %159
  br i1 %160, label %166, label %161

161:                                              ; preds = %142
  %162 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %5, align 8
  %163 = getelementptr inbounds %struct.b43_pio_txqueue, %struct.b43_pio_txqueue* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %177

166:                                              ; preds = %161, %142
  %167 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %168 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %167, i32 0, i32 0
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %173 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %172)
  %174 = call i32 @ieee80211_stop_queue(i32 %171, i32 %173)
  %175 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %5, align 8
  %176 = getelementptr inbounds %struct.b43_pio_txqueue, %struct.b43_pio_txqueue* %175, i32 0, i32 3
  store i32 1, i32* %176, align 4
  br label %177

177:                                              ; preds = %166, %161
  br label %178

178:                                              ; preds = %177, %137, %125, %97, %71, %56
  %179 = load i32, i32* %9, align 4
  ret i32 %179
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local %struct.b43_pio_txqueue* @select_queue_by_priority(%struct.b43_wldev*, i32) #1

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i32 @b43_txhdr_size(%struct.b43_wldev*) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @b43dbg(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @b43warn(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @ieee80211_stop_queue(i32, i32) #1

declare dso_local i32 @pio_tx_frame(%struct.b43_pio_txqueue*, %struct.sk_buff*) #1

declare dso_local i32 @ieee80211_free_txskb(i32, %struct.sk_buff*) #1

declare dso_local i32 @b43err(%struct.TYPE_6__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
