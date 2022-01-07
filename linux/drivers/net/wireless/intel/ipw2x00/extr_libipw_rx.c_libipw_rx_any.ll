; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_libipw_rx.c_libipw_rx_any.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_libipw_rx.c_libipw_rx_any.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libipw_device = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.libipw_rx_stats = type { i32 }
%struct.libipw_hdr_4addr = type { i32, i32, i32, i32 }

@IW_MODE_MONITOR = common dso_local global i32 0, align 4
@IEEE80211_FCTL_VERS = common dso_local global i32 0, align 4
@IEEE80211_FCTL_FTYPE = common dso_local global i32 0, align 4
@IEEE80211_FCTL_TODS = common dso_local global i32 0, align 4
@IEEE80211_FCTL_FROMDS = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @libipw_rx_any(%struct.libipw_device* %0, %struct.sk_buff* %1, %struct.libipw_rx_stats* %2) #0 {
  %4 = alloca %struct.libipw_device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.libipw_rx_stats*, align 8
  %7 = alloca %struct.libipw_hdr_4addr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.libipw_device* %0, %struct.libipw_device** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.libipw_rx_stats* %2, %struct.libipw_rx_stats** %6, align 8
  %10 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %11 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @IW_MODE_MONITOR, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %3
  %16 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = load %struct.libipw_rx_stats*, %struct.libipw_rx_stats** %6, align 8
  %19 = call i32 @libipw_rx(%struct.libipw_device* %16, %struct.sk_buff* %17, %struct.libipw_rx_stats* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %22)
  br label %24

24:                                               ; preds = %21, %15
  br label %209

25:                                               ; preds = %3
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = icmp ult i64 %29, 4
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %199

32:                                               ; preds = %25
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.libipw_hdr_4addr*
  store %struct.libipw_hdr_4addr* %36, %struct.libipw_hdr_4addr** %7, align 8
  %37 = load %struct.libipw_hdr_4addr*, %struct.libipw_hdr_4addr** %7, align 8
  %38 = getelementptr inbounds %struct.libipw_hdr_4addr, %struct.libipw_hdr_4addr* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @le16_to_cpu(i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @IEEE80211_FCTL_VERS, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %32
  br label %199

46:                                               ; preds = %32
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @IEEE80211_FCTL_FTYPE, align 4
  %49 = and i32 %47, %48
  switch i32 %49, label %66 [
    i32 130, label %50
    i32 131, label %64
    i32 132, label %65
  ]

50:                                               ; preds = %46
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = icmp ult i64 %54, 4
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %199

57:                                               ; preds = %50
  %58 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %59 = load %struct.libipw_hdr_4addr*, %struct.libipw_hdr_4addr** %7, align 8
  %60 = load %struct.libipw_rx_stats*, %struct.libipw_rx_stats** %6, align 8
  %61 = call i32 @libipw_rx_mgt(%struct.libipw_device* %58, %struct.libipw_hdr_4addr* %59, %struct.libipw_rx_stats* %60)
  %62 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %63 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %62)
  br label %209

64:                                               ; preds = %46
  br label %67

65:                                               ; preds = %46
  br label %209

66:                                               ; preds = %46
  br label %209

67:                                               ; preds = %64
  store i32 0, i32* %8, align 4
  %68 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %69 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  switch i32 %70, label %184 [
    i32 129, label %71
    i32 128, label %121
  ]

71:                                               ; preds = %67
  %72 = load %struct.libipw_hdr_4addr*, %struct.libipw_hdr_4addr** %7, align 8
  %73 = getelementptr inbounds %struct.libipw_hdr_4addr, %struct.libipw_hdr_4addr* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %76 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @ether_addr_equal(i32 %74, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %120

80:                                               ; preds = %71
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @IEEE80211_FCTL_TODS, align 4
  %83 = load i32, i32* @IEEE80211_FCTL_FROMDS, align 4
  %84 = add nsw i32 %82, %83
  %85 = and i32 %81, %84
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %119

87:                                               ; preds = %80
  %88 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %89 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %88, i32 0, i32 1
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @IFF_PROMISC, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %87
  store i32 1, i32* %8, align 4
  br label %118

97:                                               ; preds = %87
  %98 = load %struct.libipw_hdr_4addr*, %struct.libipw_hdr_4addr** %7, align 8
  %99 = getelementptr inbounds %struct.libipw_hdr_4addr, %struct.libipw_hdr_4addr* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %102 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %101, i32 0, i32 1
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @ether_addr_equal(i32 %100, i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %97
  store i32 1, i32* %8, align 4
  br label %117

109:                                              ; preds = %97
  %110 = load %struct.libipw_hdr_4addr*, %struct.libipw_hdr_4addr** %7, align 8
  %111 = getelementptr inbounds %struct.libipw_hdr_4addr, %struct.libipw_hdr_4addr* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @is_multicast_ether_addr(i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  store i32 1, i32* %8, align 4
  br label %116

116:                                              ; preds = %115, %109
  br label %117

117:                                              ; preds = %116, %108
  br label %118

118:                                              ; preds = %117, %96
  br label %119

119:                                              ; preds = %118, %80
  br label %120

120:                                              ; preds = %119, %71
  br label %185

121:                                              ; preds = %67
  %122 = load %struct.libipw_hdr_4addr*, %struct.libipw_hdr_4addr** %7, align 8
  %123 = getelementptr inbounds %struct.libipw_hdr_4addr, %struct.libipw_hdr_4addr* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %126 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @ether_addr_equal(i32 %124, i32 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %183

130:                                              ; preds = %121
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* @IEEE80211_FCTL_TODS, align 4
  %133 = load i32, i32* @IEEE80211_FCTL_FROMDS, align 4
  %134 = add nsw i32 %132, %133
  %135 = and i32 %131, %134
  %136 = load i32, i32* @IEEE80211_FCTL_FROMDS, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %182

138:                                              ; preds = %130
  %139 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %140 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %139, i32 0, i32 1
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @IFF_PROMISC, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %138
  store i32 1, i32* %8, align 4
  br label %181

148:                                              ; preds = %138
  %149 = load %struct.libipw_hdr_4addr*, %struct.libipw_hdr_4addr** %7, align 8
  %150 = getelementptr inbounds %struct.libipw_hdr_4addr, %struct.libipw_hdr_4addr* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %153 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %152, i32 0, i32 1
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @ether_addr_equal(i32 %151, i32 %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %148
  store i32 1, i32* %8, align 4
  br label %180

160:                                              ; preds = %148
  %161 = load %struct.libipw_hdr_4addr*, %struct.libipw_hdr_4addr** %7, align 8
  %162 = getelementptr inbounds %struct.libipw_hdr_4addr, %struct.libipw_hdr_4addr* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @is_multicast_ether_addr(i32 %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %179

166:                                              ; preds = %160
  %167 = load %struct.libipw_hdr_4addr*, %struct.libipw_hdr_4addr** %7, align 8
  %168 = getelementptr inbounds %struct.libipw_hdr_4addr, %struct.libipw_hdr_4addr* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %171 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %170, i32 0, i32 1
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @ether_addr_equal(i32 %169, i32 %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %178, label %177

177:                                              ; preds = %166
  store i32 1, i32* %8, align 4
  br label %178

178:                                              ; preds = %177, %166
  br label %179

179:                                              ; preds = %178, %160
  br label %180

180:                                              ; preds = %179, %159
  br label %181

181:                                              ; preds = %180, %147
  br label %182

182:                                              ; preds = %181, %130
  br label %183

183:                                              ; preds = %182, %121
  br label %185

184:                                              ; preds = %67
  br label %185

185:                                              ; preds = %184, %183, %120
  %186 = load i32, i32* %8, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %198

188:                                              ; preds = %185
  %189 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %190 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %191 = load %struct.libipw_rx_stats*, %struct.libipw_rx_stats** %6, align 8
  %192 = call i32 @libipw_rx(%struct.libipw_device* %189, %struct.sk_buff* %190, %struct.libipw_rx_stats* %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %197, label %194

194:                                              ; preds = %188
  %195 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %196 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %195)
  br label %197

197:                                              ; preds = %194, %188
  br label %198

198:                                              ; preds = %197, %185
  br label %209

199:                                              ; preds = %56, %45, %31
  %200 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %201 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %200)
  %202 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %203 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %202, i32 0, i32 1
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %206, align 4
  br label %209

209:                                              ; preds = %199, %198, %66, %65, %57, %24
  ret void
}

declare dso_local i32 @libipw_rx(%struct.libipw_device*, %struct.sk_buff*, %struct.libipw_rx_stats*) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @libipw_rx_mgt(%struct.libipw_device*, %struct.libipw_hdr_4addr*, %struct.libipw_rx_stats*) #1

declare dso_local i32 @ether_addr_equal(i32, i32) #1

declare dso_local i32 @is_multicast_ether_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
