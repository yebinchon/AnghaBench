; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/fujitsu/extr_fmvj18x_cs.c_fjn_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/fujitsu/extr_fmvj18x_cs.c_fjn_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32*, i32 }

@.str = private unnamed_addr constant [37 x i8] c"%s: in rx_packet(), rx_status %02x.\0A\00", align 1
@RX_STATUS = common dso_local global i64 0, align 8
@RX_MODE = common dso_local global i64 0, align 8
@F_BUF_EMP = common dso_local global i32 0, align 4
@DATAPORT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"Rxing packet mode %02x status %04x.\0A\00", align 1
@F_SKP_PKT = common dso_local global i32 0, align 4
@RX_SKIP = common dso_local global i64 0, align 8
@F_LEN_ERR = common dso_local global i32 0, align 4
@F_ALG_ERR = common dso_local global i32 0, align 4
@F_CRC_ERR = common dso_local global i32 0, align 4
@F_OVR_FLO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"The FMV-18x claimed a very large packet, size %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"%s: Rxed packet of length %d: \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @fjn_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fjn_rx(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %3, align 4
  store i32 10, i32* %4, align 4
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %3, align 4
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* @RX_STATUS, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @inb(i64 %18)
  %20 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %19)
  br label %21

21:                                               ; preds = %208, %1
  %22 = load i32, i32* %3, align 4
  %23 = zext i32 %22 to i64
  %24 = load i64, i64* @RX_MODE, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @inb(i64 %25)
  %27 = load i32, i32* @F_BUF_EMP, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %209

30:                                               ; preds = %21
  %31 = load i32, i32* %3, align 4
  %32 = zext i32 %31 to i64
  %33 = load i64, i64* @DATAPORT, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @inw(i64 %34)
  store i32 %35, i32* %5, align 4
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = load i32, i32* %3, align 4
  %38 = zext i32 %37 to i64
  %39 = load i64, i64* @RX_MODE, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @inb(i64 %40)
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @netdev_dbg(%struct.net_device* %36, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %30
  %47 = load i32, i32* @F_SKP_PKT, align 4
  %48 = load i32, i32* %3, align 4
  %49 = zext i32 %48 to i64
  %50 = load i64, i64* @RX_SKIP, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @outb(i32 %47, i64 %51)
  br label %209

53:                                               ; preds = %30
  %54 = load i32, i32* %5, align 4
  %55 = and i32 %54, 240
  %56 = icmp ne i32 %55, 32
  br i1 %56, label %57, label %107

57:                                               ; preds = %53
  %58 = load %struct.net_device*, %struct.net_device** %2, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @F_LEN_ERR, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %57
  %68 = load %struct.net_device*, %struct.net_device** %2, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %67, %57
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @F_ALG_ERR, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load %struct.net_device*, %struct.net_device** %2, align 8
  %80 = getelementptr inbounds %struct.net_device, %struct.net_device* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %78, %73
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @F_CRC_ERR, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = load %struct.net_device*, %struct.net_device** %2, align 8
  %91 = getelementptr inbounds %struct.net_device, %struct.net_device* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %89, %84
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @F_OVR_FLO, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %95
  %101 = load %struct.net_device*, %struct.net_device** %2, align 8
  %102 = getelementptr inbounds %struct.net_device, %struct.net_device* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %100, %95
  br label %203

107:                                              ; preds = %53
  %108 = load i32, i32* %3, align 4
  %109 = zext i32 %108 to i64
  %110 = load i64, i64* @DATAPORT, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @inw(i64 %111)
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %6, align 4
  %114 = icmp sgt i32 %113, 1550
  br i1 %114, label %115, label %130

115:                                              ; preds = %107
  %116 = load %struct.net_device*, %struct.net_device** %2, align 8
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @netdev_notice(%struct.net_device* %116, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* @F_SKP_PKT, align 4
  %120 = load i32, i32* %3, align 4
  %121 = zext i32 %120 to i64
  %122 = load i64, i64* @RX_SKIP, align 8
  %123 = add nsw i64 %121, %122
  %124 = call i32 @outb(i32 %119, i64 %123)
  %125 = load %struct.net_device*, %struct.net_device** %2, align 8
  %126 = getelementptr inbounds %struct.net_device, %struct.net_device* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 4
  br label %209

130:                                              ; preds = %107
  %131 = load %struct.net_device*, %struct.net_device** %2, align 8
  %132 = load i32, i32* %6, align 4
  %133 = add nsw i32 %132, 2
  %134 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %131, i32 %133)
  store %struct.sk_buff* %134, %struct.sk_buff** %7, align 8
  %135 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %136 = icmp eq %struct.sk_buff* %135, null
  br i1 %136, label %137, label %149

137:                                              ; preds = %130
  %138 = load i32, i32* @F_SKP_PKT, align 4
  %139 = load i32, i32* %3, align 4
  %140 = zext i32 %139 to i64
  %141 = load i64, i64* @RX_SKIP, align 8
  %142 = add nsw i64 %140, %141
  %143 = call i32 @outb(i32 %138, i64 %142)
  %144 = load %struct.net_device*, %struct.net_device** %2, align 8
  %145 = getelementptr inbounds %struct.net_device, %struct.net_device* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %146, align 4
  br label %209

149:                                              ; preds = %130
  %150 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %151 = call i32 @skb_reserve(%struct.sk_buff* %150, i32 2)
  %152 = load i32, i32* %3, align 4
  %153 = zext i32 %152 to i64
  %154 = load i64, i64* @DATAPORT, align 8
  %155 = add nsw i64 %153, %154
  %156 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %157 = load i32, i32* %6, align 4
  %158 = call i32 @skb_put(%struct.sk_buff* %156, i32 %157)
  %159 = load i32, i32* %6, align 4
  %160 = add nsw i32 %159, 1
  %161 = ashr i32 %160, 1
  %162 = call i32 @insw(i64 %155, i32 %158, i32 %161)
  %163 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %164 = load %struct.net_device*, %struct.net_device** %2, align 8
  %165 = call i32 @eth_type_trans(%struct.sk_buff* %163, %struct.net_device* %164)
  %166 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %167 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %166, i32 0, i32 1
  store i32 %165, i32* %167, align 8
  %168 = load %struct.net_device*, %struct.net_device** %2, align 8
  %169 = getelementptr inbounds %struct.net_device, %struct.net_device* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %6, align 4
  %172 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %170, i32 %171)
  store i32 0, i32* %8, align 4
  br label %173

173:                                              ; preds = %185, %149
  %174 = load i32, i32* %8, align 4
  %175 = icmp slt i32 %174, 14
  br i1 %175, label %176, label %188

176:                                              ; preds = %173
  %177 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %178 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %8, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %183)
  br label %185

185:                                              ; preds = %176
  %186 = load i32, i32* %8, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %8, align 4
  br label %173

188:                                              ; preds = %173
  %189 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %190 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %191 = call i32 @netif_rx(%struct.sk_buff* %190)
  %192 = load %struct.net_device*, %struct.net_device** %2, align 8
  %193 = getelementptr inbounds %struct.net_device, %struct.net_device* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %194, align 4
  %197 = load i32, i32* %6, align 4
  %198 = load %struct.net_device*, %struct.net_device** %2, align 8
  %199 = getelementptr inbounds %struct.net_device, %struct.net_device* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = add nsw i32 %201, %197
  store i32 %202, i32* %200, align 4
  br label %203

203:                                              ; preds = %188, %106
  %204 = load i32, i32* %4, align 4
  %205 = add nsw i32 %204, -1
  store i32 %205, i32* %4, align 4
  %206 = icmp sle i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %203
  br label %209

208:                                              ; preds = %203
  br label %21

209:                                              ; preds = %207, %137, %115, %46, %21
  ret void
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @netdev_notice(%struct.net_device*, i8*, i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @insw(i64, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
