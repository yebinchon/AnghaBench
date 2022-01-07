; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c574_cs.c_el3_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c574_cs.c_el3_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i16, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i16, i32, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"%s: in rx_packet(), status %4.4x, rx_status %4.4x.\0A\00", align 1
@EL3_STATUS = common dso_local global i64 0, align 8
@RxStatus = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"  Receiving packet size %d status %4.4x.\0A\00", align 1
@RX_FIFO = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"%s: couldn't allocate a sk_buff of size %d.\0A\00", align 1
@RxDiscard = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @el3_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @el3_rx(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 1
  %15 = load i16, i16* %14, align 4
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = load i64, i64* @EL3_STATUS, align 8
  %19 = add nsw i64 %17, %18
  %20 = call signext i16 @inw(i64 %19)
  %21 = load i32, i32* %5, align 4
  %22 = zext i32 %21 to i64
  %23 = load i64, i64* @RxStatus, align 8
  %24 = add nsw i64 %22, %23
  %25 = call signext i16 @inw(i64 %24)
  %26 = sext i16 %25 to i32
  %27 = call i32 (i8*, i16, i16, ...) @pr_debug(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i16 signext %15, i16 signext %20, i32 %26)
  br label %28

28:                                               ; preds = %163, %2
  %29 = load i32, i32* %5, align 4
  %30 = zext i32 %29 to i64
  %31 = load i64, i64* @RxStatus, align 8
  %32 = add nsw i64 %30, %31
  %33 = call signext i16 @inw(i64 %32)
  store i16 %33, i16* %6, align 2
  %34 = sext i16 %33 to i32
  %35 = and i32 %34, 32768
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %28
  %38 = load i32, i32* %4, align 4
  %39 = icmp sgt i32 %38, 0
  br label %40

40:                                               ; preds = %37, %28
  %41 = phi i1 [ false, %28 ], [ %39, %37 ]
  br i1 %41, label %42, label %167

42:                                               ; preds = %40
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %4, align 4
  %45 = load i16, i16* %6, align 2
  %46 = sext i16 %45 to i32
  %47 = and i32 %46, 16384
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %98

49:                                               ; preds = %42
  %50 = load i16, i16* %6, align 2
  %51 = sext i16 %50 to i32
  %52 = and i32 %51, 14336
  %53 = trunc i32 %52 to i16
  store i16 %53, i16* %7, align 2
  %54 = load %struct.net_device*, %struct.net_device** %3, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  %59 = load i16, i16* %7, align 2
  %60 = sext i16 %59 to i32
  switch i32 %60, label %97 [
    i32 0, label %61
    i32 2048, label %67
    i32 4096, label %73
    i32 6144, label %79
    i32 8192, label %85
    i32 10240, label %91
  ]

61:                                               ; preds = %49
  %62 = load %struct.net_device*, %struct.net_device** %3, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  br label %97

67:                                               ; preds = %49
  %68 = load %struct.net_device*, %struct.net_device** %3, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  br label %97

73:                                               ; preds = %49
  %74 = load %struct.net_device*, %struct.net_device** %3, align 8
  %75 = getelementptr inbounds %struct.net_device, %struct.net_device* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  br label %97

79:                                               ; preds = %49
  %80 = load %struct.net_device*, %struct.net_device** %3, align 8
  %81 = getelementptr inbounds %struct.net_device, %struct.net_device* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  br label %97

85:                                               ; preds = %49
  %86 = load %struct.net_device*, %struct.net_device** %3, align 8
  %87 = getelementptr inbounds %struct.net_device, %struct.net_device* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  br label %97

91:                                               ; preds = %49
  %92 = load %struct.net_device*, %struct.net_device** %3, align 8
  %93 = getelementptr inbounds %struct.net_device, %struct.net_device* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %49, %91, %85, %79, %73, %67, %61
  br label %163

98:                                               ; preds = %42
  %99 = load i16, i16* %6, align 2
  %100 = sext i16 %99 to i32
  %101 = and i32 %100, 2047
  %102 = trunc i32 %101 to i16
  store i16 %102, i16* %8, align 2
  %103 = load %struct.net_device*, %struct.net_device** %3, align 8
  %104 = load i16, i16* %8, align 2
  %105 = sext i16 %104 to i32
  %106 = add nsw i32 %105, 5
  %107 = trunc i32 %106 to i16
  %108 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %103, i16 signext %107)
  store %struct.sk_buff* %108, %struct.sk_buff** %9, align 8
  %109 = load i16, i16* %8, align 2
  %110 = load i16, i16* %6, align 2
  %111 = call i32 (i8*, i16, i16, ...) @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i16 signext %109, i16 signext %110)
  %112 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %113 = icmp ne %struct.sk_buff* %112, null
  br i1 %113, label %114, label %151

114:                                              ; preds = %98
  %115 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %116 = call i32 @skb_reserve(%struct.sk_buff* %115, i32 2)
  %117 = load i32, i32* %5, align 4
  %118 = zext i32 %117 to i64
  %119 = load i64, i64* @RX_FIFO, align 8
  %120 = add nsw i64 %118, %119
  %121 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %122 = load i16, i16* %8, align 2
  %123 = call i32 @skb_put(%struct.sk_buff* %121, i16 signext %122)
  %124 = load i16, i16* %8, align 2
  %125 = sext i16 %124 to i32
  %126 = add nsw i32 %125, 3
  %127 = ashr i32 %126, 2
  %128 = trunc i32 %127 to i16
  %129 = call i32 @insl(i64 %120, i32 %123, i16 signext %128)
  %130 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %131 = load %struct.net_device*, %struct.net_device** %3, align 8
  %132 = call i32 @eth_type_trans(%struct.sk_buff* %130, %struct.net_device* %131)
  %133 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %134 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 4
  %135 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %136 = call i32 @netif_rx(%struct.sk_buff* %135)
  %137 = load %struct.net_device*, %struct.net_device** %3, align 8
  %138 = getelementptr inbounds %struct.net_device, %struct.net_device* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 4
  %142 = load i16, i16* %8, align 2
  %143 = sext i16 %142 to i32
  %144 = load %struct.net_device*, %struct.net_device** %3, align 8
  %145 = getelementptr inbounds %struct.net_device, %struct.net_device* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load i16, i16* %146, align 4
  %148 = sext i16 %147 to i32
  %149 = add nsw i32 %148, %143
  %150 = trunc i32 %149 to i16
  store i16 %150, i16* %146, align 4
  br label %162

151:                                              ; preds = %98
  %152 = load %struct.net_device*, %struct.net_device** %3, align 8
  %153 = getelementptr inbounds %struct.net_device, %struct.net_device* %152, i32 0, i32 1
  %154 = load i16, i16* %153, align 4
  %155 = load i16, i16* %8, align 2
  %156 = call i32 (i8*, i16, i16, ...) @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i16 signext %154, i16 signext %155)
  %157 = load %struct.net_device*, %struct.net_device** %3, align 8
  %158 = getelementptr inbounds %struct.net_device, %struct.net_device* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %159, align 4
  br label %162

162:                                              ; preds = %151, %114
  br label %163

163:                                              ; preds = %162, %97
  %164 = load %struct.net_device*, %struct.net_device** %3, align 8
  %165 = load i32, i32* @RxDiscard, align 4
  %166 = call i32 @tc574_wait_for_completion(%struct.net_device* %164, i32 %165)
  br label %28

167:                                              ; preds = %40
  %168 = load i32, i32* %4, align 4
  ret i32 %168
}

declare dso_local i32 @pr_debug(i8*, i16 signext, i16 signext, ...) #1

declare dso_local signext i16 @inw(i64) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i16 signext) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @insl(i64, i32, i16 signext) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i16 signext) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @tc574_wait_for_completion(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
