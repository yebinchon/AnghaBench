; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_common.c_ath9k_cmn_rx_accept.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_common.c_ath9k_cmn_rx_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_common = type { i32, i32, %struct.ath_hw* }
%struct.ath_hw = type { i64 }
%struct.ieee80211_hdr = type { i32, i32, i32 }
%struct.ieee80211_rx_status = type { i32 }
%struct.ath_rx_status = type { i64, i32 }

@ATH9K_RXKEYIX_INVALID = common dso_local global i64 0, align 8
@ATH9K_RXERR_DECRYPT = common dso_local global i32 0, align 4
@ATH9K_RXERR_CRC = common dso_local global i32 0, align 4
@ATH9K_RXERR_MIC = common dso_local global i32 0, align 4
@ATH9K_RXERR_KEYMISS = common dso_local global i32 0, align 4
@IEEE80211_SCTL_FRAG = common dso_local global i32 0, align 4
@RX_FLAG_FAILED_FCS_CRC = common dso_local global i32 0, align 4
@FIF_FCSFAIL = common dso_local global i32 0, align 4
@RX_FLAG_MMIC_STRIPPED = common dso_local global i32 0, align 4
@RX_FLAG_MMIC_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath9k_cmn_rx_accept(%struct.ath_common* %0, %struct.ieee80211_hdr* %1, %struct.ieee80211_rx_status* %2, %struct.ath_rx_status* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ath_common*, align 8
  %9 = alloca %struct.ieee80211_hdr*, align 8
  %10 = alloca %struct.ieee80211_rx_status*, align 8
  %11 = alloca %struct.ath_rx_status*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ath_hw*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.ath_common* %0, %struct.ath_common** %8, align 8
  store %struct.ieee80211_hdr* %1, %struct.ieee80211_hdr** %9, align 8
  store %struct.ieee80211_rx_status* %2, %struct.ieee80211_rx_status** %10, align 8
  store %struct.ath_rx_status* %3, %struct.ath_rx_status** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %21 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %22 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %21, i32 0, i32 2
  %23 = load %struct.ath_hw*, %struct.ath_hw** %22, align 8
  store %struct.ath_hw* %23, %struct.ath_hw** %14, align 8
  %24 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %25 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %19, align 4
  %27 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %28 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @is_multicast_ether_addr(i32 %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %15, align 4
  %35 = load %struct.ath_rx_status*, %struct.ath_rx_status** %11, align 8
  %36 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ATH9K_RXKEYIX_INVALID, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %6
  %41 = load %struct.ath_rx_status*, %struct.ath_rx_status** %11, align 8
  %42 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %45 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @test_bit(i64 %43, i32 %46)
  %48 = icmp ne i64 %47, 0
  br label %49

49:                                               ; preds = %40, %6
  %50 = phi i1 [ false, %6 ], [ %48, %40 ]
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %16, align 4
  %52 = load i32, i32* %16, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %76

54:                                               ; preds = %49
  %55 = load i32, i32* %19, align 4
  %56 = call i64 @ieee80211_is_data(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %76

58:                                               ; preds = %54
  %59 = load i32, i32* %19, align 4
  %60 = call i64 @ieee80211_has_protected(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %58
  %63 = load %struct.ath_rx_status*, %struct.ath_rx_status** %11, align 8
  %64 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @ATH9K_RXERR_DECRYPT, align 4
  %67 = load i32, i32* @ATH9K_RXERR_CRC, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @ATH9K_RXERR_MIC, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @ATH9K_RXERR_KEYMISS, align 4
  %72 = or i32 %70, %71
  %73 = and i32 %65, %72
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  br label %76

76:                                               ; preds = %62, %58, %54, %49
  %77 = phi i1 [ false, %58 ], [ false, %54 ], [ false, %49 ], [ %75, %62 ]
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %17, align 4
  %79 = load %struct.ath_rx_status*, %struct.ath_rx_status** %11, align 8
  %80 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @ATH9K_RXKEYIX_INVALID, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %93, label %84

84:                                               ; preds = %76
  %85 = load %struct.ath_rx_status*, %struct.ath_rx_status** %11, align 8
  %86 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %89 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @test_bit(i64 %87, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %84, %76
  %94 = load i32, i32* @ATH9K_RXERR_KEYMISS, align 4
  %95 = xor i32 %94, -1
  %96 = load %struct.ath_rx_status*, %struct.ath_rx_status** %11, align 8
  %97 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = and i32 %98, %95
  store i32 %99, i32* %97, align 8
  br label %100

100:                                              ; preds = %93, %84
  %101 = load i32, i32* %16, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %126

103:                                              ; preds = %100
  %104 = load i32, i32* %19, align 4
  %105 = call i32 @ieee80211_is_ctl(i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %126, label %107

107:                                              ; preds = %103
  %108 = load i32, i32* %19, align 4
  %109 = call i32 @ieee80211_has_morefrags(i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %126, label %111

111:                                              ; preds = %107
  %112 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %113 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @le16_to_cpu(i32 %114)
  %116 = load i32, i32* @IEEE80211_SCTL_FRAG, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %126, label %119

119:                                              ; preds = %111
  %120 = load %struct.ath_rx_status*, %struct.ath_rx_status** %11, align 8
  %121 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @ATH9K_RXERR_MIC, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br label %126

126:                                              ; preds = %119, %111, %107, %103, %100
  %127 = phi i1 [ false, %111 ], [ false, %107 ], [ false, %103 ], [ false, %100 ], [ %125, %119 ]
  %128 = zext i1 %127 to i32
  store i32 %128, i32* %18, align 4
  %129 = load %struct.ath_rx_status*, %struct.ath_rx_status** %11, align 8
  %130 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %194

133:                                              ; preds = %126
  %134 = load %struct.ath_rx_status*, %struct.ath_rx_status** %11, align 8
  %135 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @ATH9K_RXERR_CRC, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %133
  %141 = load i32, i32* @RX_FLAG_FAILED_FCS_CRC, align 4
  %142 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %143 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 4
  store i32 0, i32* %18, align 4
  br label %146

146:                                              ; preds = %140, %133
  %147 = load %struct.ath_rx_status*, %struct.ath_rx_status** %11, align 8
  %148 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @ATH9K_RXERR_DECRYPT, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %163, label %153

153:                                              ; preds = %146
  %154 = load i32, i32* %15, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %165, label %156

156:                                              ; preds = %153
  %157 = load %struct.ath_rx_status*, %struct.ath_rx_status** %11, align 8
  %158 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @ATH9K_RXERR_KEYMISS, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %156, %146
  %164 = load i32*, i32** %12, align 8
  store i32 1, i32* %164, align 4
  store i32 0, i32* %18, align 4
  br label %165

165:                                              ; preds = %163, %156, %153
  %166 = load i32, i32* @ATH9K_RXERR_DECRYPT, align 4
  %167 = load i32, i32* @ATH9K_RXERR_MIC, align 4
  %168 = or i32 %166, %167
  %169 = load i32, i32* @ATH9K_RXERR_KEYMISS, align 4
  %170 = or i32 %168, %169
  store i32 %170, i32* %20, align 4
  %171 = load %struct.ath_hw*, %struct.ath_hw** %14, align 8
  %172 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %184

175:                                              ; preds = %165
  %176 = load i32, i32* %13, align 4
  %177 = load i32, i32* @FIF_FCSFAIL, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %175
  %181 = load i32, i32* @ATH9K_RXERR_CRC, align 4
  %182 = load i32, i32* %20, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %20, align 4
  br label %184

184:                                              ; preds = %180, %175, %165
  %185 = load %struct.ath_rx_status*, %struct.ath_rx_status** %11, align 8
  %186 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* %20, align 4
  %189 = xor i32 %188, -1
  %190 = and i32 %187, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %184
  store i32 0, i32* %7, align 4
  br label %217

193:                                              ; preds = %184
  br label %194

194:                                              ; preds = %193, %126
  %195 = load i32, i32* %17, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %203

197:                                              ; preds = %194
  %198 = load i32, i32* @RX_FLAG_MMIC_STRIPPED, align 4
  %199 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %200 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = or i32 %201, %198
  store i32 %202, i32* %200, align 4
  br label %216

203:                                              ; preds = %194
  %204 = load i32, i32* %15, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %215

206:                                              ; preds = %203
  %207 = load i32, i32* %18, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %215

209:                                              ; preds = %206
  %210 = load i32, i32* @RX_FLAG_MMIC_ERROR, align 4
  %211 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %212 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = or i32 %213, %210
  store i32 %214, i32* %212, align 4
  br label %215

215:                                              ; preds = %209, %206, %203
  br label %216

216:                                              ; preds = %215, %197
  store i32 1, i32* %7, align 4
  br label %217

217:                                              ; preds = %216, %192
  %218 = load i32, i32* %7, align 4
  ret i32 %218
}

declare dso_local i32 @is_multicast_ether_addr(i32) #1

declare dso_local i64 @test_bit(i64, i32) #1

declare dso_local i64 @ieee80211_is_data(i32) #1

declare dso_local i64 @ieee80211_has_protected(i32) #1

declare dso_local i32 @ieee80211_is_ctl(i32) #1

declare dso_local i32 @ieee80211_has_morefrags(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
