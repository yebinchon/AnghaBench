; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_fwio.c_p54_setup_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_fwio.c_p54_setup_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p54_common = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.p54_setup_mac = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, i64, i32, i32, i8* }
%struct.TYPE_8__ = type { i8*, i8*, i8*, i64, i64, i64, i64, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_7__ = type { i8*, i8*, i8*, i8*, i8*, i32, i8* }

@P54_HDR_FLAG_CONTROL_OPSET = common dso_local global i32 0, align 4
@P54_CONTROL_TYPE_SETUP = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IEEE80211_CONF_IDLE = common dso_local global i32 0, align 4
@P54_FILTER_TYPE_STATION = common dso_local global i32 0, align 4
@P54_FILTER_TYPE_AP = common dso_local global i32 0, align 4
@P54_FILTER_TYPE_IBSS = common dso_local global i32 0, align 4
@P54_FILTER_TYPE_PROMISCUOUS = common dso_local global i32 0, align 4
@P54_FILTER_TYPE_HIBERNATE = common dso_local global i32 0, align 4
@FIF_OTHER_BSS = common dso_local global i32 0, align 4
@P54_FILTER_TYPE_TRANSPARENT = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p54_setup_mac(%struct.p54_common* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.p54_common*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.p54_setup_mac*, align 8
  %6 = alloca i32, align 4
  store %struct.p54_common* %0, %struct.p54_common** %3, align 8
  %7 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %8 = load i32, i32* @P54_HDR_FLAG_CONTROL_OPSET, align 4
  %9 = load i32, i32* @P54_CONTROL_TYPE_SETUP, align 4
  %10 = load i32, i32* @GFP_ATOMIC, align 4
  %11 = call %struct.sk_buff* @p54_alloc_skb(%struct.p54_common* %7, i32 %8, i32 192, i32 %9, i32 %10)
  store %struct.sk_buff* %11, %struct.sk_buff** %4, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = icmp ne %struct.sk_buff* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %213

17:                                               ; preds = %1
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = call %struct.p54_setup_mac* @skb_put(%struct.sk_buff* %18, i32 192)
  store %struct.p54_setup_mac* %19, %struct.p54_setup_mac** %5, align 8
  %20 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %21 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %20, i32 0, i32 12
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @IEEE80211_CONF_IDLE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %59, label %29

29:                                               ; preds = %17
  %30 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %31 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %41 [
    i32 128, label %33
    i32 131, label %35
    i32 132, label %37
    i32 130, label %37
    i32 129, label %39
  ]

33:                                               ; preds = %29
  %34 = load i32, i32* @P54_FILTER_TYPE_STATION, align 4
  store i32 %34, i32* %6, align 4
  br label %43

35:                                               ; preds = %29
  %36 = load i32, i32* @P54_FILTER_TYPE_AP, align 4
  store i32 %36, i32* %6, align 4
  br label %43

37:                                               ; preds = %29, %29
  %38 = load i32, i32* @P54_FILTER_TYPE_IBSS, align 4
  store i32 %38, i32* %6, align 4
  br label %43

39:                                               ; preds = %29
  %40 = load i32, i32* @P54_FILTER_TYPE_PROMISCUOUS, align 4
  store i32 %40, i32* %6, align 4
  br label %43

41:                                               ; preds = %29
  %42 = load i32, i32* @P54_FILTER_TYPE_HIBERNATE, align 4
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %41, %39, %37, %35, %33
  %44 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %45 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @FIF_OTHER_BSS, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %43
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @P54_FILTER_TYPE_PROMISCUOUS, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i32, i32* @P54_FILTER_TYPE_TRANSPARENT, align 4
  %56 = load i32, i32* %6, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %54, %50, %43
  br label %61

59:                                               ; preds = %17
  %60 = load i32, i32* @P54_FILTER_TYPE_HIBERNATE, align 4
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %59, %58
  %62 = load i32, i32* %6, align 4
  %63 = call i8* @cpu_to_le16(i32 %62)
  %64 = load %struct.p54_setup_mac*, %struct.p54_setup_mac** %5, align 8
  %65 = getelementptr inbounds %struct.p54_setup_mac, %struct.p54_setup_mac* %64, i32 0, i32 6
  store i8* %63, i8** %65, align 8
  %66 = load %struct.p54_setup_mac*, %struct.p54_setup_mac** %5, align 8
  %67 = getelementptr inbounds %struct.p54_setup_mac, %struct.p54_setup_mac* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %70 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %69, i32 0, i32 11
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @ETH_ALEN, align 4
  %73 = call i32 @memcpy(i32 %68, i32 %71, i32 %72)
  %74 = load %struct.p54_setup_mac*, %struct.p54_setup_mac** %5, align 8
  %75 = getelementptr inbounds %struct.p54_setup_mac, %struct.p54_setup_mac* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %78 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %77, i32 0, i32 10
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @ETH_ALEN, align 4
  %81 = call i32 @memcpy(i32 %76, i32 %79, i32 %80)
  %82 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %83 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = and i32 2, %84
  %86 = load %struct.p54_setup_mac*, %struct.p54_setup_mac** %5, align 8
  %87 = getelementptr inbounds %struct.p54_setup_mac, %struct.p54_setup_mac* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.p54_setup_mac*, %struct.p54_setup_mac** %5, align 8
  %89 = getelementptr inbounds %struct.p54_setup_mac, %struct.p54_setup_mac* %88, i32 0, i32 3
  store i64 0, i64* %89, align 8
  %90 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %91 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %92, 1280
  br i1 %93, label %94, label %139

94:                                               ; preds = %61
  %95 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %96 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = call i8* @cpu_to_le32(i32 %97)
  %99 = load %struct.p54_setup_mac*, %struct.p54_setup_mac** %5, align 8
  %100 = getelementptr inbounds %struct.p54_setup_mac, %struct.p54_setup_mac* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 6
  store i8* %98, i8** %101, align 8
  %102 = load %struct.p54_setup_mac*, %struct.p54_setup_mac** %5, align 8
  %103 = getelementptr inbounds %struct.p54_setup_mac, %struct.p54_setup_mac* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @memset(i32 %105, i32 0, i32 8)
  %107 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %108 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = call i8* @cpu_to_le32(i32 %109)
  %111 = load %struct.p54_setup_mac*, %struct.p54_setup_mac** %5, align 8
  %112 = getelementptr inbounds %struct.p54_setup_mac, %struct.p54_setup_mac* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 4
  store i8* %110, i8** %113, align 8
  %114 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %115 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %114, i32 0, i32 6
  %116 = load i32, i32* %115, align 8
  %117 = call i8* @cpu_to_le16(i32 %116)
  %118 = load %struct.p54_setup_mac*, %struct.p54_setup_mac** %5, align 8
  %119 = getelementptr inbounds %struct.p54_setup_mac, %struct.p54_setup_mac* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 3
  store i8* %117, i8** %120, align 8
  %121 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %122 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %121, i32 0, i32 7
  %123 = load i32, i32* %122, align 4
  %124 = call i8* @cpu_to_le16(i32 %123)
  %125 = load %struct.p54_setup_mac*, %struct.p54_setup_mac** %5, align 8
  %126 = getelementptr inbounds %struct.p54_setup_mac, %struct.p54_setup_mac* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 2
  store i8* %124, i8** %127, align 8
  %128 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %129 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %128, i32 0, i32 8
  %130 = load i32, i32* %129, align 8
  %131 = call i8* @cpu_to_le16(i32 %130)
  %132 = load %struct.p54_setup_mac*, %struct.p54_setup_mac** %5, align 8
  %133 = getelementptr inbounds %struct.p54_setup_mac, %struct.p54_setup_mac* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  store i8* %131, i8** %134, align 8
  %135 = call i8* @cpu_to_le16(i32 0)
  %136 = load %struct.p54_setup_mac*, %struct.p54_setup_mac** %5, align 8
  %137 = getelementptr inbounds %struct.p54_setup_mac, %struct.p54_setup_mac* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  store i8* %135, i8** %138, align 8
  br label %203

139:                                              ; preds = %61
  %140 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %141 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 4
  %143 = call i8* @cpu_to_le32(i32 %142)
  %144 = load %struct.p54_setup_mac*, %struct.p54_setup_mac** %5, align 8
  %145 = getelementptr inbounds %struct.p54_setup_mac, %struct.p54_setup_mac* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 12
  store i8* %143, i8** %146, align 8
  %147 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %148 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %147, i32 0, i32 6
  %149 = load i32, i32* %148, align 8
  %150 = call i8* @cpu_to_le16(i32 %149)
  %151 = load %struct.p54_setup_mac*, %struct.p54_setup_mac** %5, align 8
  %152 = getelementptr inbounds %struct.p54_setup_mac, %struct.p54_setup_mac* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 11
  store i8* %150, i8** %153, align 8
  %154 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %155 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %154, i32 0, i32 7
  %156 = load i32, i32* %155, align 4
  %157 = call i8* @cpu_to_le16(i32 %156)
  %158 = load %struct.p54_setup_mac*, %struct.p54_setup_mac** %5, align 8
  %159 = getelementptr inbounds %struct.p54_setup_mac, %struct.p54_setup_mac* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 10
  store i8* %157, i8** %160, align 8
  %161 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %162 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %161, i32 0, i32 8
  %163 = load i32, i32* %162, align 8
  %164 = call i8* @cpu_to_le16(i32 %163)
  %165 = load %struct.p54_setup_mac*, %struct.p54_setup_mac** %5, align 8
  %166 = getelementptr inbounds %struct.p54_setup_mac, %struct.p54_setup_mac* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 9
  store i8* %164, i8** %167, align 8
  %168 = call i8* @cpu_to_le16(i32 48896)
  %169 = load %struct.p54_setup_mac*, %struct.p54_setup_mac** %5, align 8
  %170 = getelementptr inbounds %struct.p54_setup_mac, %struct.p54_setup_mac* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 8
  store i8* %168, i8** %171, align 8
  %172 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %173 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 8
  %175 = call i8* @cpu_to_le32(i32 %174)
  %176 = load %struct.p54_setup_mac*, %struct.p54_setup_mac** %5, align 8
  %177 = getelementptr inbounds %struct.p54_setup_mac, %struct.p54_setup_mac* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 7
  store i8* %175, i8** %178, align 8
  %179 = load %struct.p54_setup_mac*, %struct.p54_setup_mac** %5, align 8
  %180 = getelementptr inbounds %struct.p54_setup_mac, %struct.p54_setup_mac* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 6
  store i64 0, i64* %181, align 8
  %182 = load %struct.p54_setup_mac*, %struct.p54_setup_mac** %5, align 8
  %183 = getelementptr inbounds %struct.p54_setup_mac, %struct.p54_setup_mac* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 5
  store i64 0, i64* %184, align 8
  %185 = load %struct.p54_setup_mac*, %struct.p54_setup_mac** %5, align 8
  %186 = getelementptr inbounds %struct.p54_setup_mac, %struct.p54_setup_mac* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 4
  store i64 0, i64* %187, align 8
  %188 = load %struct.p54_setup_mac*, %struct.p54_setup_mac** %5, align 8
  %189 = getelementptr inbounds %struct.p54_setup_mac, %struct.p54_setup_mac* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 3
  store i64 0, i64* %190, align 8
  %191 = call i8* @cpu_to_le32(i32 644245094)
  %192 = load %struct.p54_setup_mac*, %struct.p54_setup_mac** %5, align 8
  %193 = getelementptr inbounds %struct.p54_setup_mac, %struct.p54_setup_mac* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 2
  store i8* %191, i8** %194, align 8
  %195 = call i8* @cpu_to_le16(i32 65535)
  %196 = load %struct.p54_setup_mac*, %struct.p54_setup_mac** %5, align 8
  %197 = getelementptr inbounds %struct.p54_setup_mac, %struct.p54_setup_mac* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 1
  store i8* %195, i8** %198, align 8
  %199 = call i8* @cpu_to_le16(i32 65535)
  %200 = load %struct.p54_setup_mac*, %struct.p54_setup_mac** %5, align 8
  %201 = getelementptr inbounds %struct.p54_setup_mac, %struct.p54_setup_mac* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 0
  store i8* %199, i8** %202, align 8
  br label %203

203:                                              ; preds = %139, %94
  %204 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %205 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %206 = call i32 @p54_tx(%struct.p54_common* %204, %struct.sk_buff* %205)
  %207 = load i32, i32* %6, align 4
  %208 = load i32, i32* @P54_FILTER_TYPE_HIBERNATE, align 4
  %209 = icmp eq i32 %207, %208
  %210 = zext i1 %209 to i32
  %211 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %212 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %211, i32 0, i32 9
  store i32 %210, i32* %212, align 4
  store i32 0, i32* %2, align 4
  br label %213

213:                                              ; preds = %203, %14
  %214 = load i32, i32* %2, align 4
  ret i32 %214
}

declare dso_local %struct.sk_buff* @p54_alloc_skb(%struct.p54_common*, i32, i32, i32, i32) #1

declare dso_local %struct.p54_setup_mac* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @p54_tx(%struct.p54_common*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
