; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_skb_tx_csum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_skb_tx_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv643xx_eth_private = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i64, i64, i64 }
%struct.TYPE_4__ = type { i32, i32 }

@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@MAC_HDR_EXTRA_4_BYTES = common dso_local global i32 0, align 4
@MAC_HDR_EXTRA_8_BYTES = common dso_local global i32 0, align 4
@GEN_TCP_UDP_CHECKSUM = common dso_local global i32 0, align 4
@GEN_TCP_UDP_CHK_FULL = common dso_local global i32 0, align 4
@GEN_IP_V4_CHECKSUM = common dso_local global i32 0, align 4
@TX_IHL_SHIFT = common dso_local global i32 0, align 4
@UDP_FRAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"protocol not supported\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv643xx_eth_private*, %struct.sk_buff*, i32*, i32*, i32)* @skb_tx_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skb_tx_csum(%struct.mv643xx_eth_private* %0, %struct.sk_buff* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mv643xx_eth_private*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mv643xx_eth_private* %0, %struct.mv643xx_eth_private** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %120

21:                                               ; preds = %5
  %22 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* @ETH_P_IP, align 4
  %26 = call i64 @htons(i32 %25)
  %27 = icmp ne i64 %24, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %21
  %29 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* @ETH_P_8021Q, align 4
  %33 = call i64 @htons(i32 %32)
  %34 = icmp ne i64 %31, %33
  br label %35

35:                                               ; preds = %28, %21
  %36 = phi i1 [ false, %21 ], [ %34, %28 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @BUG_ON(i32 %37)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %40 = call %struct.TYPE_4__* @ip_hdr(%struct.sk_buff* %39)
  %41 = bitcast %struct.TYPE_4__* %40 to i8*
  %42 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i8*
  %46 = ptrtoint i8* %41 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* @ETH_HLEN, align 4
  %52 = sub nsw i32 %50, %51
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %14, align 4
  %55 = sub nsw i32 %53, %54
  %56 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %7, align 8
  %57 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp sgt i32 %55, %60
  br i1 %61, label %67, label %62

62:                                               ; preds = %35
  %63 = load i32, i32* %15, align 4
  %64 = and i32 %63, -13
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %62, %35
  %68 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %69 = call i32 @skb_checksum_help(%struct.sk_buff* %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  br label %121

73:                                               ; preds = %67
  %74 = load i32, i32* %12, align 4
  store i32 %74, i32* %6, align 4
  br label %129

75:                                               ; preds = %62
  %76 = load i32, i32* %15, align 4
  %77 = and i32 %76, 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i32, i32* @MAC_HDR_EXTRA_4_BYTES, align 4
  %81 = load i32, i32* %13, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %13, align 4
  br label %83

83:                                               ; preds = %79, %75
  %84 = load i32, i32* %15, align 4
  %85 = and i32 %84, 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load i32, i32* @MAC_HDR_EXTRA_8_BYTES, align 4
  %89 = load i32, i32* %13, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %13, align 4
  br label %91

91:                                               ; preds = %87, %83
  %92 = load i32, i32* @GEN_TCP_UDP_CHECKSUM, align 4
  %93 = load i32, i32* @GEN_TCP_UDP_CHK_FULL, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @GEN_IP_V4_CHECKSUM, align 4
  %96 = or i32 %94, %95
  %97 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %98 = call %struct.TYPE_4__* @ip_hdr(%struct.sk_buff* %97)
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @TX_IHL_SHIFT, align 4
  %102 = shl i32 %100, %101
  %103 = or i32 %96, %102
  %104 = load i32, i32* %13, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %13, align 4
  %106 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %107 = call %struct.TYPE_4__* @ip_hdr(%struct.sk_buff* %106)
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  switch i32 %109, label %117 [
    i32 128, label %110
    i32 129, label %115
  ]

110:                                              ; preds = %91
  %111 = load i32, i32* @UDP_FRAME, align 4
  %112 = load i32, i32* %13, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %13, align 4
  %114 = load i32*, i32** %9, align 8
  store i32 0, i32* %114, align 4
  br label %119

115:                                              ; preds = %91
  %116 = load i32*, i32** %9, align 8
  store i32 0, i32* %116, align 4
  br label %119

117:                                              ; preds = %91
  %118 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %119

119:                                              ; preds = %117, %115, %110
  br label %126

120:                                              ; preds = %5
  br label %121

121:                                              ; preds = %120, %72
  %122 = load i32, i32* @TX_IHL_SHIFT, align 4
  %123 = shl i32 5, %122
  %124 = load i32, i32* %13, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %13, align 4
  br label %126

126:                                              ; preds = %121, %119
  %127 = load i32, i32* %13, align 4
  %128 = load i32*, i32** %10, align 8
  store i32 %127, i32* %128, align 4
  store i32 0, i32* %6, align 4
  br label %129

129:                                              ; preds = %126, %73
  %130 = load i32, i32* %6, align 4
  ret i32 %130
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.TYPE_4__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_checksum_help(%struct.sk_buff*) #1

declare dso_local i32 @WARN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
