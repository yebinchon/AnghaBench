; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_usbnet.c_usbnet_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_usbnet.c_usbnet_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usbnet = type { i32, i32, i32, %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.sk_buff = type { i32 }
%struct.urb = type { i32, i64 }

@GFP_NOIO = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@EVENT_DEV_ASLEEP = common dso_local global i32 0, align 4
@EVENT_DEV_OPEN = common dso_local global i32 0, align 4
@EVENT_RX_HALT = common dso_local global i32 0, align 4
@EVENT_DEVICE_REPORT_IDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbnet_resume(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %7 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %8 = call %struct.usbnet* @usb_get_intfdata(%struct.usb_interface* %7)
  store %struct.usbnet* %8, %struct.usbnet** %3, align 8
  %9 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %10 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %9, i32 0, i32 7
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %10, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %114, label %14

14:                                               ; preds = %1
  %15 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %16 = load i32, i32* @GFP_NOIO, align 4
  %17 = call i32 @__usbnet_status_start_force(%struct.usbnet* %15, i32 %16)
  %18 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %19 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = call i32 @spin_lock_irq(i32* %20)
  br label %22

22:                                               ; preds = %59, %14
  %23 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %24 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %23, i32 0, i32 6
  %25 = call %struct.urb* @usb_get_from_anchor(i32* %24)
  store %struct.urb* %25, %struct.urb** %5, align 8
  %26 = icmp ne %struct.urb* %25, null
  br i1 %26, label %27, label %60

27:                                               ; preds = %22
  %28 = load %struct.urb*, %struct.urb** %5, align 8
  %29 = getelementptr inbounds %struct.urb, %struct.urb* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.sk_buff*
  store %struct.sk_buff* %31, %struct.sk_buff** %4, align 8
  %32 = load %struct.urb*, %struct.urb** %5, align 8
  %33 = load i32, i32* @GFP_ATOMIC, align 4
  %34 = call i32 @usb_submit_urb(%struct.urb* %32, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %27
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %38)
  %40 = load %struct.urb*, %struct.urb** %5, align 8
  %41 = getelementptr inbounds %struct.urb, %struct.urb* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @kfree(i32 %42)
  %44 = load %struct.urb*, %struct.urb** %5, align 8
  %45 = call i32 @usb_free_urb(%struct.urb* %44)
  %46 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %47 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @usb_autopm_put_interface_async(i32 %48)
  br label %59

50:                                               ; preds = %27
  %51 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %52 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @netif_trans_update(i32 %53)
  %55 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %56 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %55, i32 0, i32 3
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = call i32 @__skb_queue_tail(%struct.TYPE_2__* %56, %struct.sk_buff* %57)
  br label %59

59:                                               ; preds = %50, %37
  br label %22

60:                                               ; preds = %22
  %61 = call i32 (...) @smp_mb()
  %62 = load i32, i32* @EVENT_DEV_ASLEEP, align 4
  %63 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %64 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %63, i32 0, i32 0
  %65 = call i32 @clear_bit(i32 %62, i32* %64)
  %66 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %67 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = call i32 @spin_unlock_irq(i32* %68)
  %70 = load i32, i32* @EVENT_DEV_OPEN, align 4
  %71 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %72 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %71, i32 0, i32 0
  %73 = call i64 @test_bit(i32 %70, i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %113

75:                                               ; preds = %60
  %76 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %77 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @netif_device_present(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %75
  %82 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %83 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %82, i32 0, i32 4
  %84 = call i32 @timer_pending(i32* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %96, label %86

86:                                               ; preds = %81
  %87 = load i32, i32* @EVENT_RX_HALT, align 4
  %88 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %89 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %88, i32 0, i32 0
  %90 = call i64 @test_bit(i32 %87, i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %86
  %93 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %94 = load i32, i32* @GFP_NOIO, align 4
  %95 = call i32 @rx_alloc_submit(%struct.usbnet* %93, i32 %94)
  br label %96

96:                                               ; preds = %92, %86, %81, %75
  %97 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %98 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %102 = call i64 @TX_QLEN(%struct.usbnet* %101)
  %103 = icmp sge i64 %100, %102
  br i1 %103, label %109, label %104

104:                                              ; preds = %96
  %105 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %106 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @netif_tx_wake_all_queues(i32 %107)
  br label %109

109:                                              ; preds = %104, %96
  %110 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %111 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %110, i32 0, i32 1
  %112 = call i32 @tasklet_schedule(i32* %111)
  br label %113

113:                                              ; preds = %109, %60
  br label %114

114:                                              ; preds = %113, %1
  %115 = load i32, i32* @EVENT_DEVICE_REPORT_IDLE, align 4
  %116 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %117 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %116, i32 0, i32 0
  %118 = call i64 @test_and_clear_bit(i32 %115, i32* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %114
  %121 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %122 = call i32 @usb_autopm_get_interface_no_resume(%struct.usb_interface* %121)
  br label %123

123:                                              ; preds = %120, %114
  ret i32 0
}

declare dso_local %struct.usbnet* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @__usbnet_status_start_force(%struct.usbnet*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local %struct.urb* @usb_get_from_anchor(i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @usb_autopm_put_interface_async(i32) #1

declare dso_local i32 @netif_trans_update(i32) #1

declare dso_local i32 @__skb_queue_tail(%struct.TYPE_2__*, %struct.sk_buff*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @netif_device_present(i32) #1

declare dso_local i32 @timer_pending(i32*) #1

declare dso_local i32 @rx_alloc_submit(%struct.usbnet*, i32) #1

declare dso_local i64 @TX_QLEN(%struct.usbnet*) #1

declare dso_local i32 @netif_tx_wake_all_queues(i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @usb_autopm_get_interface_no_resume(%struct.usb_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
