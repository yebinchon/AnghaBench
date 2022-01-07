; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_usbnet.c_usbnet_bh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_usbnet.c_usbnet_bh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, %struct.TYPE_6__, i32, %struct.TYPE_5__, i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.timer_list = type { i32 }
%struct.sk_buff = type { i64 }
%struct.skb_data = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@delay = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"bogus skb state %d\0A\00", align 1
@EVENT_RX_KILL = common dso_local global i32 0, align 4
@EVENT_RX_PAUSED = common dso_local global i32 0, align 4
@EVENT_RX_HALT = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOLINK = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"rxqlen %d --> %d\0A\00", align 1
@dev = common dso_local global %struct.usbnet* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @usbnet_bh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbnet_bh(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.skb_data*, align 8
  %6 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %7 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %8 = ptrtoint %struct.usbnet* %7 to i32
  %9 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %10 = load i32, i32* @delay, align 4
  %11 = call %struct.usbnet* @from_timer(i32 %8, %struct.timer_list* %9, i32 %10)
  store %struct.usbnet* %11, %struct.usbnet** %3, align 8
  br label %12

12:                                               ; preds = %53, %38, %25, %1
  %13 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %14 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %13, i32 0, i32 7
  %15 = call %struct.sk_buff* @skb_dequeue(%struct.TYPE_8__* %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %4, align 8
  %16 = icmp ne %struct.sk_buff* %15, null
  br i1 %16, label %17, label %54

17:                                               ; preds = %12
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.skb_data*
  store %struct.skb_data* %21, %struct.skb_data** %5, align 8
  %22 = load %struct.skb_data*, %struct.skb_data** %5, align 8
  %23 = getelementptr inbounds %struct.skb_data, %struct.skb_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %45 [
    i32 129, label %25
    i32 128, label %31
    i32 130, label %38
  ]

25:                                               ; preds = %17
  %26 = load %struct.skb_data*, %struct.skb_data** %5, align 8
  %27 = getelementptr inbounds %struct.skb_data, %struct.skb_data* %26, i32 0, i32 0
  store i32 130, i32* %27, align 8
  %28 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = call i32 @rx_process(%struct.usbnet* %28, %struct.sk_buff* %29)
  br label %12

31:                                               ; preds = %17
  %32 = load %struct.skb_data*, %struct.skb_data** %5, align 8
  %33 = getelementptr inbounds %struct.skb_data, %struct.skb_data* %32, i32 0, i32 1
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @kfree(i32 %36)
  br label %38

38:                                               ; preds = %17, %31
  %39 = load %struct.skb_data*, %struct.skb_data** %5, align 8
  %40 = getelementptr inbounds %struct.skb_data, %struct.skb_data* %39, i32 0, i32 1
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = call i32 @usb_free_urb(%struct.TYPE_7__* %41)
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = call i32 @dev_kfree_skb(%struct.sk_buff* %43)
  br label %12

45:                                               ; preds = %17
  %46 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %47 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.skb_data*, %struct.skb_data** %5, align 8
  %50 = getelementptr inbounds %struct.skb_data, %struct.skb_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @netdev_dbg(i32 %48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %45
  br label %12

54:                                               ; preds = %12
  %55 = load i32, i32* @EVENT_RX_KILL, align 4
  %56 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %57 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %56, i32 0, i32 4
  %58 = call i32 @clear_bit(i32 %55, i32* %57)
  %59 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %60 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %59, i32 0, i32 6
  %61 = call i64 @waitqueue_active(i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %85

63:                                               ; preds = %54
  %64 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %65 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %69 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %67, %72
  %74 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %75 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %74, i32 0, i32 7
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %73, %77
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %63
  %81 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %82 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %81, i32 0, i32 6
  %83 = call i32 @wake_up_all(i32* %82)
  br label %84

84:                                               ; preds = %80, %63
  br label %184

85:                                               ; preds = %54
  %86 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %87 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i64 @netif_running(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %183

91:                                               ; preds = %85
  %92 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %93 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @netif_device_present(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %183

97:                                               ; preds = %91
  %98 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %99 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @netif_carrier_ok(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %183

103:                                              ; preds = %97
  %104 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %105 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %104, i32 0, i32 5
  %106 = call i32 @timer_pending(i32* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %183, label %108

108:                                              ; preds = %103
  %109 = load i32, i32* @EVENT_RX_PAUSED, align 4
  %110 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %111 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %110, i32 0, i32 4
  %112 = call i32 @test_bit(i32 %109, i32* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %183, label %114

114:                                              ; preds = %108
  %115 = load i32, i32* @EVENT_RX_HALT, align 4
  %116 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %117 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %116, i32 0, i32 4
  %118 = call i32 @test_bit(i32 %115, i32* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %183, label %120

120:                                              ; preds = %114
  %121 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %122 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %6, align 4
  %126 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %127 = call i32 @RX_QLEN(%struct.usbnet* %126)
  %128 = icmp slt i32 %125, %127
  br i1 %128, label %129, label %169

129:                                              ; preds = %120
  %130 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %131 = load i32, i32* @GFP_ATOMIC, align 4
  %132 = call i32 @rx_alloc_submit(%struct.usbnet* %130, i32 %131)
  %133 = load i32, i32* @ENOLINK, align 4
  %134 = sub nsw i32 0, %133
  %135 = icmp eq i32 %132, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %129
  br label %184

137:                                              ; preds = %129
  %138 = load i32, i32* %6, align 4
  %139 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %140 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %138, %142
  br i1 %143, label %144, label %156

144:                                              ; preds = %137
  %145 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %146 = load i32, i32* @link, align 4
  %147 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %148 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* %6, align 4
  %151 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %152 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @netif_dbg(%struct.usbnet* %145, i32 %146, i32 %149, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %150, i32 %154)
  br label %156

156:                                              ; preds = %144, %137
  %157 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %158 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %162 = call i32 @RX_QLEN(%struct.usbnet* %161)
  %163 = icmp slt i32 %160, %162
  br i1 %163, label %164, label %168

164:                                              ; preds = %156
  %165 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %166 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %165, i32 0, i32 2
  %167 = call i32 @tasklet_schedule(i32* %166)
  br label %168

168:                                              ; preds = %164, %156
  br label %169

169:                                              ; preds = %168, %120
  %170 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %171 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %175 = call i64 @TX_QLEN(%struct.usbnet* %174)
  %176 = icmp slt i64 %173, %175
  br i1 %176, label %177, label %182

177:                                              ; preds = %169
  %178 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %179 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @netif_wake_queue(i32 %180)
  br label %182

182:                                              ; preds = %177, %169
  br label %183

183:                                              ; preds = %182, %114, %108, %103, %97, %91, %85
  br label %184

184:                                              ; preds = %136, %183, %84
  ret void
}

declare dso_local %struct.usbnet* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local %struct.sk_buff* @skb_dequeue(%struct.TYPE_8__*) #1

declare dso_local i32 @rx_process(%struct.usbnet*, %struct.sk_buff*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @usb_free_urb(%struct.TYPE_7__*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i64 @netif_running(i32) #1

declare dso_local i64 @netif_device_present(i32) #1

declare dso_local i64 @netif_carrier_ok(i32) #1

declare dso_local i32 @timer_pending(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @RX_QLEN(%struct.usbnet*) #1

declare dso_local i32 @rx_alloc_submit(%struct.usbnet*, i32) #1

declare dso_local i32 @netif_dbg(%struct.usbnet*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i64 @TX_QLEN(%struct.usbnet*) #1

declare dso_local i32 @netif_wake_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
