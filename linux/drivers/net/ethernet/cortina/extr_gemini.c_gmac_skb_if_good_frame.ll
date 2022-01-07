; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cortina/extr_gemini.c_gmac_skb_if_good_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cortina/extr_gemini.c_gmac_skb_if_good_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.gemini_ethernet_port = type { %struct.TYPE_4__, i32, i32*, i32* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32 }
%union.gmac_rxdesc_0 = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64, i64 }

@ETH_ZLEN = common dso_local global i32 0, align 4
@RX_CHKSUM_IP_ERR_UNKNOWN = common dso_local global i32 0, align 4
@RX_CHKSUM_IP_UDP_TCP_OK = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.gemini_ethernet_port*, %union.gmac_rxdesc_0*, i32)* @gmac_skb_if_good_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @gmac_skb_if_good_frame(%struct.gemini_ethernet_port* %0, %union.gmac_rxdesc_0* byval(%union.gmac_rxdesc_0) align 8 %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.gemini_ethernet_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  store %struct.gemini_ethernet_port* %0, %struct.gemini_ethernet_port** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = bitcast %union.gmac_rxdesc_0* %1 to %struct.TYPE_3__*
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %7, align 4
  %13 = bitcast %union.gmac_rxdesc_0* %1 to %struct.TYPE_3__*
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %9, align 8
  %16 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %17 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %25 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  %32 = bitcast %union.gmac_rxdesc_0* %1 to %struct.TYPE_3__*
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %52, label %36

36:                                               ; preds = %3
  %37 = bitcast %union.gmac_rxdesc_0* %1 to %struct.TYPE_3__*
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @ETH_ZLEN, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @RX_CHKSUM_IP_ERR_UNKNOWN, align 4
  %51 = icmp uge i32 %49, %50
  br i1 %51, label %52, label %102

52:                                               ; preds = %48, %44, %41, %36, %3
  %53 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %54 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @ETH_ZLEN, align 4
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %52
  %62 = load i32, i32* %8, align 4
  %63 = call i64 @RX_ERROR_LENGTH(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %61, %52
  %66 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %67 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %65, %61
  %72 = load i32, i32* %8, align 4
  %73 = call i64 @RX_ERROR_OVER(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %77 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 8
  br label %81

81:                                               ; preds = %75, %71
  %82 = load i32, i32* %8, align 4
  %83 = call i64 @RX_ERROR_CRC(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %81
  %86 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %87 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %85, %81
  %92 = load i32, i32* %8, align 4
  %93 = call i64 @RX_ERROR_FRAME(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %97 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 8
  br label %101

101:                                              ; preds = %95, %91
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %131

102:                                              ; preds = %48
  %103 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %104 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %103, i32 0, i32 1
  %105 = call %struct.sk_buff* @napi_get_frags(i32* %104)
  store %struct.sk_buff* %105, %struct.sk_buff** %9, align 8
  %106 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %107 = icmp ne %struct.sk_buff* %106, null
  br i1 %107, label %109, label %108

108:                                              ; preds = %102
  br label %118

109:                                              ; preds = %102
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* @RX_CHKSUM_IP_UDP_TCP_OK, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %109
  %114 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %115 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %116 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 4
  br label %117

117:                                              ; preds = %113, %109
  br label %118

118:                                              ; preds = %117, %108
  %119 = load i32, i32* %6, align 4
  %120 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %121 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = add i32 %123, %119
  store i32 %124, i32* %122, align 8
  %125 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %126 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 4
  %130 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %130, %struct.sk_buff** %4, align 8
  br label %131

131:                                              ; preds = %118, %101
  %132 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %132
}

declare dso_local i64 @RX_ERROR_LENGTH(i32) #1

declare dso_local i64 @RX_ERROR_OVER(i32) #1

declare dso_local i64 @RX_ERROR_CRC(i32) #1

declare dso_local i64 @RX_ERROR_FRAME(i32) #1

declare dso_local %struct.sk_buff* @napi_get_frags(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
