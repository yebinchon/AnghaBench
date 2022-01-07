; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_init.c_mwifiex_init_priv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_init.c_mwifiex_init_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i64, i64, i32*, i64, i32*, i64, i32*, i64, i32, i32, i64, i32, i64, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i32, i64, i32, i32, i32, i32, i32, i32*, i64, i32*, %struct.TYPE_2__, i32, i32, i64, i32, i64, i32, i32 }
%struct.TYPE_2__ = type { i64, i32, i64 }

@MWIFIEX_USB_EP_DATA = common dso_local global i32 0, align 4
@NL80211_IFTYPE_UNSPECIFIED = common dso_local global i32 0, align 4
@DEFAULT_BCN_AVG_FACTOR = common dso_local global i32 0, align 4
@DEFAULT_DATA_AVG_FACTOR = common dso_local global i32 0, align 4
@NL80211_AUTHTYPE_OPEN_SYSTEM = common dso_local global i32 0, align 4
@HostCmd_ACT_MAC_DYNAMIC_BW_ENABLE = common dso_local global i32 0, align 4
@HostCmd_ACT_MAC_RX_ON = common dso_local global i32 0, align 4
@HostCmd_ACT_MAC_TX_ON = common dso_local global i32 0, align 4
@HostCmd_ACT_MAC_ETHERNETII_ENABLE = common dso_local global i32 0, align 4
@MWIFIEX_DEFAULT_LISTEN_INTERVAL = common dso_local global i32 0, align 4
@DEFAULT_AD_HOC_CHANNEL = common dso_local global i32 0, align 4
@ADHOC_IDLE = common dso_local global i32 0, align 4
@tos_to_tid_inv = common dso_local global i32 0, align 4
@MAX_NUM_TID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_init_priv(%struct.mwifiex_private* %0) #0 {
  %2 = alloca %struct.mwifiex_private*, align 8
  %3 = alloca i64, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %2, align 8
  %4 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %5 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %4, i32 0, i32 0
  store i32 0, i32* %5, align 8
  %6 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %7 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %6, i32 0, i32 67
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @eth_broadcast_addr(i32 %8)
  %10 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %11 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %10, i32 0, i32 1
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* @MWIFIEX_USB_EP_DATA, align 4
  %13 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %14 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %13, i32 0, i32 66
  store i32 %12, i32* %14, align 8
  %15 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %16 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %15, i32 0, i32 65
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* @NL80211_IFTYPE_UNSPECIFIED, align 4
  %18 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %19 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %18, i32 0, i32 64
  store i32 %17, i32* %19, align 8
  %20 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %21 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %20, i32 0, i32 63
  store i64 0, i64* %21, align 8
  %22 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %23 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %22, i32 0, i32 2
  store i32 1, i32* %23, align 8
  %24 = load i32, i32* @DEFAULT_BCN_AVG_FACTOR, align 4
  %25 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %26 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %25, i32 0, i32 62
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @DEFAULT_DATA_AVG_FACTOR, align 4
  %28 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %29 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %28, i32 0, i32 61
  store i32 %27, i32* %29, align 8
  %30 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %31 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %30, i32 0, i32 60
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* @NL80211_AUTHTYPE_OPEN_SYSTEM, align 4
  %34 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %35 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %34, i32 0, i32 60
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 8
  %37 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %38 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %37, i32 0, i32 60
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  store i64 0, i64* %3, align 8
  br label %40

40:                                               ; preds = %54, %1
  %41 = load i64, i64* %3, align 8
  %42 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %43 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %42, i32 0, i32 59
  %44 = load i32*, i32** %43, align 8
  %45 = call i64 @ARRAY_SIZE(i32* %44)
  %46 = icmp ult i64 %41, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %40
  %48 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %49 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %48, i32 0, i32 59
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* %3, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = call i32 @memset(i32* %52, i32 0, i32 4)
  br label %54

54:                                               ; preds = %47
  %55 = load i64, i64* %3, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %3, align 8
  br label %40

57:                                               ; preds = %40
  %58 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %59 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %58, i32 0, i32 58
  store i64 0, i64* %59, align 8
  %60 = load i32, i32* @HostCmd_ACT_MAC_DYNAMIC_BW_ENABLE, align 4
  %61 = load i32, i32* @HostCmd_ACT_MAC_RX_ON, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @HostCmd_ACT_MAC_TX_ON, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @HostCmd_ACT_MAC_ETHERNETII_ENABLE, align 4
  %66 = or i32 %64, %65
  %67 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %68 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  %69 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %70 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %69, i32 0, i32 4
  store i32 100, i32* %70, align 8
  %71 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %72 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %71, i32 0, i32 57
  store i32* null, i32** %72, align 8
  %73 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %74 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %73, i32 0, i32 56
  %75 = call i32 @memset(i32* %74, i32 0, i32 4)
  %76 = load i32, i32* @MWIFIEX_DEFAULT_LISTEN_INTERVAL, align 4
  %77 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %78 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %77, i32 0, i32 55
  store i32 %76, i32* %78, align 4
  %79 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %80 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %79, i32 0, i32 54
  %81 = call i32 @memset(i32* %80, i32 0, i32 4)
  %82 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %83 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %82, i32 0, i32 53
  %84 = call i32 @memset(i32* %83, i32 0, i32 4)
  %85 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %86 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %85, i32 0, i32 52
  %87 = call i32 @memset(i32* %86, i32 0, i32 4)
  %88 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %89 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %88, i32 0, i32 51
  store i64 0, i64* %89, align 8
  %90 = load i32, i32* @DEFAULT_AD_HOC_CHANNEL, align 4
  %91 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %92 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %91, i32 0, i32 50
  store i32 %90, i32* %92, align 8
  %93 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %94 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %93, i32 0, i32 49
  store i64 0, i64* %94, align 8
  %95 = load i32, i32* @ADHOC_IDLE, align 4
  %96 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %97 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %96, i32 0, i32 48
  store i32 %95, i32* %97, align 8
  %98 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %99 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %98, i32 0, i32 47
  store i64 0, i64* %99, align 8
  %100 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %101 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %100, i32 0, i32 46
  store i64 0, i64* %101, align 8
  %102 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %103 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %102, i32 0, i32 45
  store i64 0, i64* %103, align 8
  %104 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %105 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %104, i32 0, i32 44
  store i64 0, i64* %105, align 8
  %106 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %107 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %106, i32 0, i32 43
  store i64 0, i64* %107, align 8
  %108 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %109 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %108, i32 0, i32 42
  store i64 0, i64* %109, align 8
  %110 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %111 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %110, i32 0, i32 41
  store i64 0, i64* %111, align 8
  %112 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %113 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %112, i32 0, i32 40
  store i64 0, i64* %113, align 8
  %114 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %115 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %114, i32 0, i32 39
  store i64 0, i64* %115, align 8
  %116 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %117 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %116, i32 0, i32 38
  store i64 0, i64* %117, align 8
  %118 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %119 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %118, i32 0, i32 37
  store i64 0, i64* %119, align 8
  %120 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %121 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %120, i32 0, i32 36
  store i64 0, i64* %121, align 8
  %122 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %123 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %122, i32 0, i32 35
  store i64 0, i64* %123, align 8
  %124 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %125 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %124, i32 0, i32 34
  store i64 0, i64* %125, align 8
  %126 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %127 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %126, i32 0, i32 33
  store i64 0, i64* %127, align 8
  %128 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %129 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %128, i32 0, i32 32
  store i64 0, i64* %129, align 8
  %130 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %131 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %130, i32 0, i32 31
  store i64 0, i64* %131, align 8
  %132 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %133 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %132, i32 0, i32 30
  %134 = call i32 @memset(i32* %133, i32 0, i32 4)
  %135 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %136 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %135, i32 0, i32 29
  %137 = call i32 @memset(i32* %136, i32 0, i32 4)
  %138 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %139 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %138, i32 0, i32 28
  store i64 0, i64* %139, align 8
  %140 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %141 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %140, i32 0, i32 5
  store i32 0, i32* %141, align 4
  %142 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %143 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %142, i32 0, i32 27
  %144 = call i32 @memset(i32* %143, i32 0, i32 4)
  %145 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %146 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %145, i32 0, i32 26
  store i64 0, i64* %146, align 8
  %147 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %148 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %147, i32 0, i32 25
  %149 = call i32 @memset(i32* %148, i32 0, i32 4)
  %150 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %151 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %150, i32 0, i32 24
  %152 = call i32 @memset(i32* %151, i32 0, i32 4)
  %153 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %154 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %153, i32 0, i32 23
  store i64 0, i64* %154, align 8
  %155 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %156 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %155, i32 0, i32 22
  %157 = load i32*, i32** %156, align 8
  %158 = call i32 @memset(i32* %157, i32 0, i32 8)
  %159 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %160 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %159, i32 0, i32 6
  store i32 1, i32* %160, align 8
  %161 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %162 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %161, i32 0, i32 7
  store i32 0, i32* %162, align 4
  %163 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %164 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %163, i32 0, i32 21
  store i64 0, i64* %164, align 8
  %165 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %166 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %165, i32 0, i32 20
  store i32* null, i32** %166, align 8
  %167 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %168 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %167, i32 0, i32 19
  store i64 0, i64* %168, align 8
  %169 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %170 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %169, i32 0, i32 18
  store i32* null, i32** %170, align 8
  %171 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %172 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %171, i32 0, i32 17
  store i64 0, i64* %172, align 8
  %173 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %174 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %173, i32 0, i32 16
  store i64 0, i64* %174, align 8
  %175 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %176 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %175, i32 0, i32 15
  %177 = call i32 @memset(i32* %176, i32 0, i32 4)
  %178 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %179 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %178, i32 0, i32 8
  store i32 0, i32* %179, align 8
  %180 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %181 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %180, i32 0, i32 14
  store i64 0, i64* %181, align 8
  %182 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %183 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %182, i32 0, i32 13
  store i64 0, i64* %183, align 8
  %184 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %185 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %184, i32 0, i32 12
  store i64 0, i64* %185, align 8
  %186 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %187 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %186, i32 0, i32 9
  store i32 0, i32* %187, align 4
  %188 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %189 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %188, i32 0, i32 10
  store i32 0, i32* %189, align 8
  %190 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %191 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %190, i32 0, i32 11
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @tos_to_tid_inv, align 4
  %194 = load i32, i32* @MAX_NUM_TID, align 4
  %195 = call i32 @memcpy(i32 %192, i32 %193, i32 %194)
  %196 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %197 = call i32 @mwifiex_init_11h_params(%struct.mwifiex_private* %196)
  %198 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %199 = call i32 @mwifiex_add_bss_prio_tbl(%struct.mwifiex_private* %198)
  ret i32 %199
}

declare dso_local i32 @eth_broadcast_addr(i32) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @mwifiex_init_11h_params(%struct.mwifiex_private*) #1

declare dso_local i32 @mwifiex_add_bss_prio_tbl(%struct.mwifiex_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
