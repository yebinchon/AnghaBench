; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_skfddi.c_mac_drv_rx_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_skfddi.c_mac_drv_rx_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.s_smt_fp_rxd = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.sk_buff* }
%struct.sk_buff = type { i8*, i32 }

@.str = private unnamed_addr constant [39 x i8] c"entering mac_drv_rx_complete (len=%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"fddi: Multi-fragment receive!\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"No skb in rxd\0A\00", align 1
@FDDI_RII = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"RIF found\0A\00", align 1
@FDDI_MAC_HDR_LEN = common dso_local global i32 0, align 4
@FDDI_RCF_LEN_MASK = common dso_local global i16 0, align 2
@.str.4 = private unnamed_addr constant [20 x i8] c"fddi: Invalid RIF.\0A\00", align 1
@RX_LOW_WATERMARK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"Rx: re-queue RXD.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mac_drv_rx_complete(%struct.s_smc* %0, %struct.s_smt_fp_rxd* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.s_smc*, align 8
  %6 = alloca %struct.s_smt_fp_rxd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i16, align 2
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.s_smc* %0, %struct.s_smc** %5, align 8
  store %struct.s_smt_fp_rxd* %1, %struct.s_smt_fp_rxd** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load %struct.s_smc*, %struct.s_smc** %5, align 8
  %17 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %16, i32 0, i32 0
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %9, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = call i32 @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %163

24:                                               ; preds = %4
  %25 = load %struct.s_smt_fp_rxd*, %struct.s_smt_fp_rxd** %6, align 8
  %26 = getelementptr inbounds %struct.s_smt_fp_rxd, %struct.s_smt_fp_rxd* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load volatile %struct.sk_buff*, %struct.sk_buff** %27, align 8
  store %struct.sk_buff* %28, %struct.sk_buff** %10, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %30 = icmp ne %struct.sk_buff* %29, null
  br i1 %30, label %40, label %31

31:                                               ; preds = %24
  %32 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %33 = load %struct.s_smc*, %struct.s_smc** %5, align 8
  %34 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  br label %163

40:                                               ; preds = %24
  %41 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %11, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @dump_data(i8* %46, i32 %47)
  %49 = load i8*, i8** %11, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 7
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = load i8, i8* @FDDI_RII, align 1
  %54 = zext i8 %53 to i32
  %55 = and i32 %52, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %40
  store i32 0, i32* %14, align 4
  br label %114

58:                                               ; preds = %40
  %59 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %60 = load i8*, i8** %11, align 8
  %61 = load i32, i32* @FDDI_MAC_HDR_LEN, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  store i8* %63, i8** %12, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = bitcast i8* %64 to i32*
  %66 = load i32, i32* %65, align 4
  %67 = call zeroext i16 @ntohs(i32 %66)
  store i16 %67, i16* %13, align 2
  %68 = load i16, i16* %13, align 2
  %69 = zext i16 %68 to i32
  %70 = load i16, i16* @FDDI_RCF_LEN_MASK, align 2
  %71 = zext i16 %70 to i32
  %72 = and i32 %69, %71
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @FDDI_MAC_HDR_LEN, align 4
  %75 = load i32, i32* %14, align 4
  %76 = add nsw i32 %74, %75
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %58
  %79 = call i32 @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %163

80:                                               ; preds = %58
  %81 = load i8, i8* @FDDI_RII, align 1
  %82 = zext i8 %81 to i32
  %83 = xor i32 %82, -1
  %84 = load i8*, i8** %11, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 7
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = and i32 %87, %83
  %89 = trunc i32 %88 to i8
  store i8 %89, i8* %85, align 1
  %90 = load i8*, i8** %12, align 8
  %91 = load i32, i32* %14, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  store i8* %93, i8** %11, align 8
  %94 = load i32, i32* @FDDI_MAC_HDR_LEN, align 4
  store i32 %94, i32* %15, align 4
  br label %95

95:                                               ; preds = %104, %80
  %96 = load i32, i32* %15, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %95
  %99 = load i8*, i8** %12, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 -1
  store i8* %100, i8** %12, align 8
  %101 = load i8, i8* %100, align 1
  %102 = load i8*, i8** %11, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 -1
  store i8* %103, i8** %11, align 8
  store i8 %101, i8* %103, align 1
  br label %104

104:                                              ; preds = %98
  %105 = load i32, i32* %15, align 4
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %15, align 4
  br label %95

107:                                              ; preds = %95
  %108 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %109 = load i32, i32* %14, align 4
  %110 = call i32 @skb_pull(%struct.sk_buff* %108, i32 %109)
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* %8, align 4
  %113 = sub nsw i32 %112, %111
  store i32 %113, i32* %8, align 4
  store i32 0, i32* %14, align 4
  br label %114

114:                                              ; preds = %107, %57
  %115 = load %struct.s_smc*, %struct.s_smc** %5, align 8
  %116 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 4
  %122 = load i32, i32* %8, align 4
  %123 = load %struct.s_smc*, %struct.s_smc** %5, align 8
  %124 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %128, %122
  store i32 %129, i32* %127, align 4
  %130 = load i8*, i8** %11, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 1
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = and i32 %133, 1
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %114
  %137 = load %struct.s_smc*, %struct.s_smc** %5, align 8
  %138 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %141, align 4
  br label %144

144:                                              ; preds = %136, %114
  %145 = load %struct.s_smt_fp_rxd*, %struct.s_smt_fp_rxd** %6, align 8
  %146 = getelementptr inbounds %struct.s_smt_fp_rxd, %struct.s_smt_fp_rxd* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  store volatile %struct.sk_buff* null, %struct.sk_buff** %147, align 8
  %148 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %149 = load i32, i32* %8, align 4
  %150 = call i32 @skb_trim(%struct.sk_buff* %148, i32 %149)
  %151 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @fddi_type_trans(%struct.sk_buff* %151, i32 %154)
  %156 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %157 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %156, i32 0, i32 1
  store i32 %155, i32* %157, align 8
  %158 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %159 = call i32 @netif_rx(%struct.sk_buff* %158)
  %160 = load %struct.s_smc*, %struct.s_smc** %5, align 8
  %161 = load i32, i32* @RX_LOW_WATERMARK, align 4
  %162 = call i32 @HWM_RX_CHECK(%struct.s_smc* %160, i32 %161)
  br label %176

163:                                              ; preds = %78, %31, %22
  %164 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %165 = load %struct.s_smc*, %struct.s_smc** %5, align 8
  %166 = load %struct.s_smt_fp_rxd*, %struct.s_smt_fp_rxd** %6, align 8
  %167 = load i32, i32* %7, align 4
  %168 = call i32 @mac_drv_requeue_rxd(%struct.s_smc* %165, %struct.s_smt_fp_rxd* %166, i32 %167)
  %169 = load %struct.s_smc*, %struct.s_smc** %5, align 8
  %170 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %173, align 4
  br label %176

176:                                              ; preds = %163, %144
  ret void
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @dump_data(i8*, i32) #1

declare dso_local zeroext i16 @ntohs(i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @fddi_type_trans(%struct.sk_buff*, i32) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @HWM_RX_CHECK(%struct.s_smc*, i32) #1

declare dso_local i32 @mac_drv_requeue_rxd(%struct.s_smc*, %struct.s_smt_fp_rxd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
