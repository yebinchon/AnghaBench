; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.lan78xx_net = type { i32, i64, i32, i32, %struct.TYPE_3__, i32, i32, i32, %struct.urb*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.urb = type { i64 }
%struct.sk_buff = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@STAT_UPDATE_TIMER = common dso_local global i64 0, align 8
@EVENT_DEV_OPEN = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@tx_start = common dso_local global i32 0, align 4
@EVENT_DEV_ASLEEP = common dso_local global i32 0, align 4
@WUCSR2 = common dso_local global i32 0, align 4
@WUCSR = common dso_local global i32 0, align 4
@WK_SRC = common dso_local global i32 0, align 4
@WUCSR2_NS_RCD_ = common dso_local global i32 0, align 4
@WUCSR2_ARP_RCD_ = common dso_local global i32 0, align 4
@WUCSR2_IPV6_TCPSYN_RCD_ = common dso_local global i32 0, align 4
@WUCSR2_IPV4_TCPSYN_RCD_ = common dso_local global i32 0, align 4
@WUCSR_EEE_TX_WAKE_ = common dso_local global i32 0, align 4
@WUCSR_EEE_RX_WAKE_ = common dso_local global i32 0, align 4
@WUCSR_PFDA_FR_ = common dso_local global i32 0, align 4
@WUCSR_RFE_WAKE_FR_ = common dso_local global i32 0, align 4
@WUCSR_WUFR_ = common dso_local global i32 0, align 4
@WUCSR_MPR_ = common dso_local global i32 0, align 4
@WUCSR_BCST_FR_ = common dso_local global i32 0, align 4
@MAC_TX = common dso_local global i32 0, align 4
@MAC_TX_TXEN_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*)* @lan78xx_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan78xx_resume(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.lan78xx_net*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %8 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %9 = call %struct.lan78xx_net* @usb_get_intfdata(%struct.usb_interface* %8)
  store %struct.lan78xx_net* %9, %struct.lan78xx_net** %3, align 8
  %10 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %11 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %10, i32 0, i32 10
  %12 = call i32 @timer_pending(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %1
  %15 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %16 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %18 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %17, i32 0, i32 10
  %19 = load i64, i64* @jiffies, align 8
  %20 = load i64, i64* @STAT_UPDATE_TIMER, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @mod_timer(i32* %18, i64 %21)
  br label %23

23:                                               ; preds = %14, %1
  %24 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %25 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %24, i32 0, i32 9
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %25, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %118, label %29

29:                                               ; preds = %23
  %30 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %31 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %30, i32 0, i32 8
  %32 = load %struct.urb*, %struct.urb** %31, align 8
  %33 = icmp ne %struct.urb* %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %29
  %35 = load i32, i32* @EVENT_DEV_OPEN, align 4
  %36 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %37 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %36, i32 0, i32 5
  %38 = call i64 @test_bit(i32 %35, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %42 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %41, i32 0, i32 8
  %43 = load %struct.urb*, %struct.urb** %42, align 8
  %44 = load i32, i32* @GFP_NOIO, align 4
  %45 = call i32 @usb_submit_urb(%struct.urb* %43, i32 %44)
  br label %46

46:                                               ; preds = %40, %34, %29
  %47 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %48 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = call i32 @spin_lock_irq(i32* %49)
  br label %51

51:                                               ; preds = %85, %46
  %52 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %53 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %52, i32 0, i32 7
  %54 = call %struct.urb* @usb_get_from_anchor(i32* %53)
  store %struct.urb* %54, %struct.urb** %5, align 8
  %55 = icmp ne %struct.urb* %54, null
  br i1 %55, label %56, label %86

56:                                               ; preds = %51
  %57 = load %struct.urb*, %struct.urb** %5, align 8
  %58 = getelementptr inbounds %struct.urb, %struct.urb* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %struct.sk_buff*
  store %struct.sk_buff* %60, %struct.sk_buff** %4, align 8
  %61 = load %struct.urb*, %struct.urb** %5, align 8
  %62 = load i32, i32* @GFP_ATOMIC, align 4
  %63 = call i32 @usb_submit_urb(%struct.urb* %61, i32 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %56
  %67 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %68 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %67)
  %69 = load %struct.urb*, %struct.urb** %5, align 8
  %70 = call i32 @usb_free_urb(%struct.urb* %69)
  %71 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %72 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @usb_autopm_put_interface_async(i32 %73)
  br label %85

75:                                               ; preds = %56
  %76 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %77 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @netif_trans_update(i32 %78)
  %80 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %81 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %80, i32 0, i32 4
  %82 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %83 = load i32, i32* @tx_start, align 4
  %84 = call i32 @lan78xx_queue_skb(%struct.TYPE_3__* %81, %struct.sk_buff* %82, i32 %83)
  br label %85

85:                                               ; preds = %75, %66
  br label %51

86:                                               ; preds = %51
  %87 = load i32, i32* @EVENT_DEV_ASLEEP, align 4
  %88 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %89 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %88, i32 0, i32 5
  %90 = call i32 @clear_bit(i32 %87, i32* %89)
  %91 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %92 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = call i32 @spin_unlock_irq(i32* %93)
  %95 = load i32, i32* @EVENT_DEV_OPEN, align 4
  %96 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %97 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %96, i32 0, i32 5
  %98 = call i64 @test_bit(i32 %95, i32* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %117

100:                                              ; preds = %86
  %101 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %102 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %101, i32 0, i32 4
  %103 = call i64 @skb_queue_len(%struct.TYPE_3__* %102)
  %104 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %105 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp sge i64 %103, %106
  br i1 %107, label %113, label %108

108:                                              ; preds = %100
  %109 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %110 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @netif_start_queue(i32 %111)
  br label %113

113:                                              ; preds = %108, %100
  %114 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %115 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %114, i32 0, i32 2
  %116 = call i32 @tasklet_schedule(i32* %115)
  br label %117

117:                                              ; preds = %113, %86
  br label %118

118:                                              ; preds = %117, %23
  %119 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %120 = load i32, i32* @WUCSR2, align 4
  %121 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %119, i32 %120, i32 0)
  store i32 %121, i32* %6, align 4
  %122 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %123 = load i32, i32* @WUCSR, align 4
  %124 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %122, i32 %123, i32 0)
  store i32 %124, i32* %6, align 4
  %125 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %126 = load i32, i32* @WK_SRC, align 4
  %127 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %125, i32 %126, i32 -917729)
  store i32 %127, i32* %6, align 4
  %128 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %129 = load i32, i32* @WUCSR2, align 4
  %130 = load i32, i32* @WUCSR2_NS_RCD_, align 4
  %131 = load i32, i32* @WUCSR2_ARP_RCD_, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @WUCSR2_IPV6_TCPSYN_RCD_, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* @WUCSR2_IPV4_TCPSYN_RCD_, align 4
  %136 = or i32 %134, %135
  %137 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %128, i32 %129, i32 %136)
  store i32 %137, i32* %6, align 4
  %138 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %139 = load i32, i32* @WUCSR, align 4
  %140 = load i32, i32* @WUCSR_EEE_TX_WAKE_, align 4
  %141 = load i32, i32* @WUCSR_EEE_RX_WAKE_, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @WUCSR_PFDA_FR_, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @WUCSR_RFE_WAKE_FR_, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* @WUCSR_WUFR_, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @WUCSR_MPR_, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* @WUCSR_BCST_FR_, align 4
  %152 = or i32 %150, %151
  %153 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %138, i32 %139, i32 %152)
  store i32 %153, i32* %6, align 4
  %154 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %155 = load i32, i32* @MAC_TX, align 4
  %156 = call i32 @lan78xx_read_reg(%struct.lan78xx_net* %154, i32 %155, i32* %7)
  store i32 %156, i32* %6, align 4
  %157 = load i32, i32* @MAC_TX_TXEN_, align 4
  %158 = load i32, i32* %7, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %7, align 4
  %160 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %161 = load i32, i32* @MAC_TX, align 4
  %162 = load i32, i32* %7, align 4
  %163 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %160, i32 %161, i32 %162)
  store i32 %163, i32* %6, align 4
  ret i32 0
}

declare dso_local %struct.lan78xx_net* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @timer_pending(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local %struct.urb* @usb_get_from_anchor(i32*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @usb_autopm_put_interface_async(i32) #1

declare dso_local i32 @netif_trans_update(i32) #1

declare dso_local i32 @lan78xx_queue_skb(%struct.TYPE_3__*, %struct.sk_buff*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i64 @skb_queue_len(%struct.TYPE_3__*) #1

declare dso_local i32 @netif_start_queue(i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @lan78xx_write_reg(%struct.lan78xx_net*, i32, i32) #1

declare dso_local i32 @lan78xx_read_reg(%struct.lan78xx_net*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
