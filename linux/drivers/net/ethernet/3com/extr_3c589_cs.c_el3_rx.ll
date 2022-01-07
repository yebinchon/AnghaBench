; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c589_cs.c_el3_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c589_cs.c_el3_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i16, i32, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"in rx_packet(), status %4.4x, rx_status %4.4x.\0A\00", align 1
@EL3_STATUS = common dso_local global i64 0, align 8
@RX_STATUS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"    Receiving packet size %d status %4.4x.\0A\00", align 1
@RX_FIFO = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"couldn't allocate a sk_buff of size %d.\0A\00", align 1
@RxDiscard = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"too much work in el3_rx!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @el3_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @el3_rx(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %3, align 4
  store i32 32, i32* %4, align 4
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* @EL3_STATUS, align 8
  %16 = add nsw i64 %14, %15
  %17 = call signext i16 @inw(i64 %16)
  %18 = load i32, i32* %3, align 4
  %19 = zext i32 %18 to i64
  %20 = load i64, i64* @RX_STATUS, align 8
  %21 = add nsw i64 %19, %20
  %22 = call signext i16 @inw(i64 %21)
  %23 = sext i16 %22 to i32
  %24 = call i32 (%struct.net_device*, i8*, i16, ...) @netdev_dbg(%struct.net_device* %12, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i16 signext %17, i32 %23)
  br label %25

25:                                               ; preds = %160, %1
  %26 = load i32, i32* %3, align 4
  %27 = zext i32 %26 to i64
  %28 = load i64, i64* @RX_STATUS, align 8
  %29 = add nsw i64 %27, %28
  %30 = call signext i16 @inw(i64 %29)
  store i16 %30, i16* %5, align 2
  %31 = sext i16 %30 to i32
  %32 = and i32 %31, 32768
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %25
  %35 = load i32, i32* %4, align 4
  %36 = icmp sgt i32 %35, 0
  br label %37

37:                                               ; preds = %34, %25
  %38 = phi i1 [ false, %25 ], [ %36, %34 ]
  br i1 %38, label %39, label %164

39:                                               ; preds = %37
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %4, align 4
  %42 = load i16, i16* %5, align 2
  %43 = sext i16 %42 to i32
  %44 = and i32 %43, 16384
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %95

46:                                               ; preds = %39
  %47 = load i16, i16* %5, align 2
  %48 = sext i16 %47 to i32
  %49 = and i32 %48, 14336
  %50 = trunc i32 %49 to i16
  store i16 %50, i16* %6, align 2
  %51 = load %struct.net_device*, %struct.net_device** %2, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  %56 = load i16, i16* %6, align 2
  %57 = sext i16 %56 to i32
  switch i32 %57, label %94 [
    i32 0, label %58
    i32 2048, label %64
    i32 4096, label %70
    i32 6144, label %76
    i32 8192, label %82
    i32 10240, label %88
  ]

58:                                               ; preds = %46
  %59 = load %struct.net_device*, %struct.net_device** %2, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  br label %94

64:                                               ; preds = %46
  %65 = load %struct.net_device*, %struct.net_device** %2, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  br label %94

70:                                               ; preds = %46
  %71 = load %struct.net_device*, %struct.net_device** %2, align 8
  %72 = getelementptr inbounds %struct.net_device, %struct.net_device* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  br label %94

76:                                               ; preds = %46
  %77 = load %struct.net_device*, %struct.net_device** %2, align 8
  %78 = getelementptr inbounds %struct.net_device, %struct.net_device* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 4
  br label %94

82:                                               ; preds = %46
  %83 = load %struct.net_device*, %struct.net_device** %2, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  br label %94

88:                                               ; preds = %46
  %89 = load %struct.net_device*, %struct.net_device** %2, align 8
  %90 = getelementptr inbounds %struct.net_device, %struct.net_device* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %46, %88, %82, %76, %70, %64, %58
  br label %160

95:                                               ; preds = %39
  %96 = load i16, i16* %5, align 2
  %97 = sext i16 %96 to i32
  %98 = and i32 %97, 2047
  %99 = trunc i32 %98 to i16
  store i16 %99, i16* %7, align 2
  %100 = load %struct.net_device*, %struct.net_device** %2, align 8
  %101 = load i16, i16* %7, align 2
  %102 = sext i16 %101 to i32
  %103 = add nsw i32 %102, 5
  %104 = trunc i32 %103 to i16
  %105 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %100, i16 signext %104)
  store %struct.sk_buff* %105, %struct.sk_buff** %8, align 8
  %106 = load %struct.net_device*, %struct.net_device** %2, align 8
  %107 = load i16, i16* %7, align 2
  %108 = load i16, i16* %5, align 2
  %109 = sext i16 %108 to i32
  %110 = call i32 (%struct.net_device*, i8*, i16, ...) @netdev_dbg(%struct.net_device* %106, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i16 signext %107, i32 %109)
  %111 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %112 = icmp ne %struct.sk_buff* %111, null
  br i1 %112, label %113, label %150

113:                                              ; preds = %95
  %114 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %115 = call i32 @skb_reserve(%struct.sk_buff* %114, i32 2)
  %116 = load i32, i32* %3, align 4
  %117 = zext i32 %116 to i64
  %118 = load i64, i64* @RX_FIFO, align 8
  %119 = add nsw i64 %117, %118
  %120 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %121 = load i16, i16* %7, align 2
  %122 = call i32 @skb_put(%struct.sk_buff* %120, i16 signext %121)
  %123 = load i16, i16* %7, align 2
  %124 = sext i16 %123 to i32
  %125 = add nsw i32 %124, 3
  %126 = ashr i32 %125, 2
  %127 = trunc i32 %126 to i16
  %128 = call i32 @insl(i64 %119, i32 %122, i16 signext %127)
  %129 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %130 = load %struct.net_device*, %struct.net_device** %2, align 8
  %131 = call i32 @eth_type_trans(%struct.sk_buff* %129, %struct.net_device* %130)
  %132 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %133 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 4
  %134 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %135 = call i32 @netif_rx(%struct.sk_buff* %134)
  %136 = load %struct.net_device*, %struct.net_device** %2, align 8
  %137 = getelementptr inbounds %struct.net_device, %struct.net_device* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 4
  %141 = load i16, i16* %7, align 2
  %142 = sext i16 %141 to i32
  %143 = load %struct.net_device*, %struct.net_device** %2, align 8
  %144 = getelementptr inbounds %struct.net_device, %struct.net_device* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i16, i16* %145, align 4
  %147 = sext i16 %146 to i32
  %148 = add nsw i32 %147, %142
  %149 = trunc i32 %148 to i16
  store i16 %149, i16* %145, align 4
  br label %159

150:                                              ; preds = %95
  %151 = load %struct.net_device*, %struct.net_device** %2, align 8
  %152 = load i16, i16* %7, align 2
  %153 = call i32 (%struct.net_device*, i8*, i16, ...) @netdev_dbg(%struct.net_device* %151, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i16 signext %152)
  %154 = load %struct.net_device*, %struct.net_device** %2, align 8
  %155 = getelementptr inbounds %struct.net_device, %struct.net_device* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %156, align 4
  br label %159

159:                                              ; preds = %150, %113
  br label %160

160:                                              ; preds = %159, %94
  %161 = load %struct.net_device*, %struct.net_device** %2, align 8
  %162 = load i32, i32* @RxDiscard, align 4
  %163 = call i32 @tc589_wait_for_completion(%struct.net_device* %161, i32 %162)
  br label %25

164:                                              ; preds = %37
  %165 = load i32, i32* %4, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = load %struct.net_device*, %struct.net_device** %2, align 8
  %169 = call i32 @netdev_warn(%struct.net_device* %168, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %170

170:                                              ; preds = %167, %164
  ret i32 0
}

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i16 signext, ...) #1

declare dso_local signext i16 @inw(i64) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i16 signext) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @insl(i64, i32, i16 signext) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i16 signext) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @tc589_wait_for_completion(%struct.net_device*, i32) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
