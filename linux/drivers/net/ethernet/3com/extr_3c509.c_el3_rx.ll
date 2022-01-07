; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c509.c_el3_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c509.c_el3_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i16, i32, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }

@el3_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"   In rx_packet(), status %4.4x, rx_status %4.4x.\0A\00", align 1
@EL3_STATUS = common dso_local global i64 0, align 8
@RX_STATUS = common dso_local global i64 0, align 8
@RxDiscard = common dso_local global i32 0, align 4
@EL3_CMD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"Receiving packet size %d status %4.4x.\0A\00", align 1
@RX_FIFO = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"%s: Couldn't allocate a sk_buff of size %d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"\09Waiting for 3c509 to discard packet, status %x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @el3_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @el3_rx(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @el3_debug, align 4
  %12 = icmp sgt i32 %11, 5
  br i1 %12, label %13, label %25

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = load i64, i64* @EL3_STATUS, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @inw(i64 %17)
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* @RX_STATUS, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @inw(i64 %22)
  %24 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %23)
  br label %25

25:                                               ; preds = %13, %1
  br label %26

26:                                               ; preds = %203, %117, %25
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* @RX_STATUS, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @inw(i64 %30)
  %32 = trunc i32 %31 to i16
  store i16 %32, i16* %4, align 2
  %33 = sext i16 %32 to i32
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %204

35:                                               ; preds = %26
  %36 = load i16, i16* %4, align 2
  %37 = sext i16 %36 to i32
  %38 = and i32 %37, 16384
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %95

40:                                               ; preds = %35
  %41 = load i16, i16* %4, align 2
  %42 = sext i16 %41 to i32
  %43 = and i32 %42, 14336
  %44 = trunc i32 %43 to i16
  store i16 %44, i16* %5, align 2
  %45 = load i32, i32* @RxDiscard, align 4
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* @EL3_CMD, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @outw(i32 %45, i64 %49)
  %51 = load %struct.net_device*, %struct.net_device** %2, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  %56 = load i16, i16* %5, align 2
  %57 = sext i16 %56 to i32
  switch i32 %57, label %94 [
    i32 0, label %58
    i32 2048, label %64
    i32 4096, label %70
    i32 6144, label %76
    i32 8192, label %82
    i32 10240, label %88
  ]

58:                                               ; preds = %40
  %59 = load %struct.net_device*, %struct.net_device** %2, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  br label %94

64:                                               ; preds = %40
  %65 = load %struct.net_device*, %struct.net_device** %2, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  br label %94

70:                                               ; preds = %40
  %71 = load %struct.net_device*, %struct.net_device** %2, align 8
  %72 = getelementptr inbounds %struct.net_device, %struct.net_device* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  br label %94

76:                                               ; preds = %40
  %77 = load %struct.net_device*, %struct.net_device** %2, align 8
  %78 = getelementptr inbounds %struct.net_device, %struct.net_device* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 4
  br label %94

82:                                               ; preds = %40
  %83 = load %struct.net_device*, %struct.net_device** %2, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  br label %94

88:                                               ; preds = %40
  %89 = load %struct.net_device*, %struct.net_device** %2, align 8
  %90 = getelementptr inbounds %struct.net_device, %struct.net_device* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %40, %88, %82, %76, %70, %64, %58
  br label %182

95:                                               ; preds = %35
  %96 = load i16, i16* %4, align 2
  %97 = sext i16 %96 to i32
  %98 = and i32 %97, 2047
  %99 = trunc i32 %98 to i16
  store i16 %99, i16* %6, align 2
  %100 = load %struct.net_device*, %struct.net_device** %2, align 8
  %101 = load i16, i16* %6, align 2
  %102 = sext i16 %101 to i32
  %103 = add nsw i32 %102, 5
  %104 = trunc i32 %103 to i16
  %105 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %100, i16 signext %104)
  store %struct.sk_buff* %105, %struct.sk_buff** %7, align 8
  %106 = load i32, i32* @el3_debug, align 4
  %107 = icmp sgt i32 %106, 4
  br i1 %107, label %108, label %114

108:                                              ; preds = %95
  %109 = load i16, i16* %6, align 2
  %110 = sext i16 %109 to i32
  %111 = load i16, i16* %4, align 2
  %112 = sext i16 %111 to i32
  %113 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %110, i32 %112)
  br label %114

114:                                              ; preds = %108, %95
  %115 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %116 = icmp ne %struct.sk_buff* %115, null
  br i1 %116, label %117, label %160

117:                                              ; preds = %114
  %118 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %119 = call i32 @skb_reserve(%struct.sk_buff* %118, i32 2)
  %120 = load i32, i32* %3, align 4
  %121 = sext i32 %120 to i64
  %122 = load i64, i64* @RX_FIFO, align 8
  %123 = add nsw i64 %121, %122
  %124 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %125 = load i16, i16* %6, align 2
  %126 = call i32 @skb_put(%struct.sk_buff* %124, i16 signext %125)
  %127 = load i16, i16* %6, align 2
  %128 = sext i16 %127 to i32
  %129 = add nsw i32 %128, 3
  %130 = ashr i32 %129, 2
  %131 = trunc i32 %130 to i16
  %132 = call i32 @insl(i64 %123, i32 %126, i16 signext %131)
  %133 = load i32, i32* @RxDiscard, align 4
  %134 = load i32, i32* %3, align 4
  %135 = sext i32 %134 to i64
  %136 = load i64, i64* @EL3_CMD, align 8
  %137 = add nsw i64 %135, %136
  %138 = call i32 @outw(i32 %133, i64 %137)
  %139 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %140 = load %struct.net_device*, %struct.net_device** %2, align 8
  %141 = call i32 @eth_type_trans(%struct.sk_buff* %139, %struct.net_device* %140)
  %142 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %143 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 4
  %144 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %145 = call i32 @netif_rx(%struct.sk_buff* %144)
  %146 = load i16, i16* %6, align 2
  %147 = sext i16 %146 to i32
  %148 = load %struct.net_device*, %struct.net_device** %2, align 8
  %149 = getelementptr inbounds %struct.net_device, %struct.net_device* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = load i16, i16* %150, align 4
  %152 = sext i16 %151 to i32
  %153 = add nsw i32 %152, %147
  %154 = trunc i32 %153 to i16
  store i16 %154, i16* %150, align 4
  %155 = load %struct.net_device*, %struct.net_device** %2, align 8
  %156 = getelementptr inbounds %struct.net_device, %struct.net_device* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %157, align 4
  br label %26

160:                                              ; preds = %114
  %161 = load i32, i32* @RxDiscard, align 4
  %162 = load i32, i32* %3, align 4
  %163 = sext i32 %162 to i64
  %164 = load i64, i64* @EL3_CMD, align 8
  %165 = add nsw i64 %163, %164
  %166 = call i32 @outw(i32 %161, i64 %165)
  %167 = load %struct.net_device*, %struct.net_device** %2, align 8
  %168 = getelementptr inbounds %struct.net_device, %struct.net_device* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %169, align 4
  %172 = load i32, i32* @el3_debug, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %181

174:                                              ; preds = %160
  %175 = load %struct.net_device*, %struct.net_device** %2, align 8
  %176 = getelementptr inbounds %struct.net_device, %struct.net_device* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load i16, i16* %6, align 2
  %179 = sext i16 %178 to i32
  %180 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %177, i32 %179)
  br label %181

181:                                              ; preds = %174, %160
  br label %182

182:                                              ; preds = %181, %94
  %183 = load i32, i32* %3, align 4
  %184 = sext i32 %183 to i64
  %185 = load i64, i64* @EL3_STATUS, align 8
  %186 = add nsw i64 %184, %185
  %187 = call i32 @inw(i64 %186)
  br label %188

188:                                              ; preds = %196, %182
  %189 = load i32, i32* %3, align 4
  %190 = sext i32 %189 to i64
  %191 = load i64, i64* @EL3_STATUS, align 8
  %192 = add nsw i64 %190, %191
  %193 = call i32 @inw(i64 %192)
  %194 = and i32 %193, 4096
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %203

196:                                              ; preds = %188
  %197 = load i32, i32* %3, align 4
  %198 = sext i32 %197 to i64
  %199 = load i64, i64* @EL3_STATUS, align 8
  %200 = add nsw i64 %198, %199
  %201 = call i32 @inw(i64 %200)
  %202 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %201)
  br label %188

203:                                              ; preds = %188
  br label %26

204:                                              ; preds = %26
  ret i32 0
}

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i16 signext) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @insl(i64, i32, i16 signext) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i16 signext) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
