; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_usb.c_ath10k_usb_post_recv_transfers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_usb.c_ath10k_usb_post_recv_transfers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_usb_pipe = type { i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ath10k_urb_context = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.urb = type { i32 }

@ATH10K_USB_RX_BUFFER_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ath10k_usb_recv_complete = common dso_local global i32 0, align 4
@ATH10K_DBG_USB_BULK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"usb bulk recv submit %d 0x%x ep 0x%2.2x len %d buf 0x%pK\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"usb bulk recv failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*, %struct.ath10k_usb_pipe*)* @ath10k_usb_post_recv_transfers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_usb_post_recv_transfers(%struct.ath10k* %0, %struct.ath10k_usb_pipe* %1) #0 {
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.ath10k_usb_pipe*, align 8
  %5 = alloca %struct.ath10k_urb_context*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store %struct.ath10k_usb_pipe* %1, %struct.ath10k_usb_pipe** %4, align 8
  br label %8

8:                                                ; preds = %83, %2
  %9 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %4, align 8
  %10 = call %struct.ath10k_urb_context* @ath10k_usb_alloc_urb_from_pipe(%struct.ath10k_usb_pipe* %9)
  store %struct.ath10k_urb_context* %10, %struct.ath10k_urb_context** %5, align 8
  %11 = load %struct.ath10k_urb_context*, %struct.ath10k_urb_context** %5, align 8
  %12 = icmp ne %struct.ath10k_urb_context* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  br label %86

14:                                               ; preds = %8
  %15 = load i32, i32* @ATH10K_USB_RX_BUFFER_SIZE, align 4
  %16 = call %struct.TYPE_4__* @dev_alloc_skb(i32 %15)
  %17 = load %struct.ath10k_urb_context*, %struct.ath10k_urb_context** %5, align 8
  %18 = getelementptr inbounds %struct.ath10k_urb_context, %struct.ath10k_urb_context* %17, i32 0, i32 0
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %18, align 8
  %19 = load %struct.ath10k_urb_context*, %struct.ath10k_urb_context** %5, align 8
  %20 = getelementptr inbounds %struct.ath10k_urb_context, %struct.ath10k_urb_context* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = icmp ne %struct.TYPE_4__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %14
  br label %87

24:                                               ; preds = %14
  %25 = load i32, i32* @GFP_ATOMIC, align 4
  %26 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %25)
  store %struct.urb* %26, %struct.urb** %6, align 8
  %27 = load %struct.urb*, %struct.urb** %6, align 8
  %28 = icmp ne %struct.urb* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %87

30:                                               ; preds = %24
  %31 = load %struct.urb*, %struct.urb** %6, align 8
  %32 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %4, align 8
  %33 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %32, i32 0, i32 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %4, align 8
  %38 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.ath10k_urb_context*, %struct.ath10k_urb_context** %5, align 8
  %41 = getelementptr inbounds %struct.ath10k_urb_context, %struct.ath10k_urb_context* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @ATH10K_USB_RX_BUFFER_SIZE, align 4
  %46 = load i32, i32* @ath10k_usb_recv_complete, align 4
  %47 = load %struct.ath10k_urb_context*, %struct.ath10k_urb_context** %5, align 8
  %48 = call i32 @usb_fill_bulk_urb(%struct.urb* %31, i32 %36, i32 %39, i32 %44, i32 %45, i32 %46, %struct.ath10k_urb_context* %47)
  %49 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %50 = load i32, i32* @ATH10K_DBG_USB_BULK, align 4
  %51 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %4, align 8
  %52 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %4, align 8
  %55 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %4, align 8
  %58 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @ATH10K_USB_RX_BUFFER_SIZE, align 4
  %61 = load %struct.ath10k_urb_context*, %struct.ath10k_urb_context** %5, align 8
  %62 = getelementptr inbounds %struct.ath10k_urb_context, %struct.ath10k_urb_context* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = call i32 (%struct.ath10k*, i32, i8*, i32, ...) @ath10k_dbg(%struct.ath10k* %49, i32 %50, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %56, i32 %59, i32 %60, %struct.TYPE_4__* %63)
  %65 = load %struct.urb*, %struct.urb** %6, align 8
  %66 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %4, align 8
  %67 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %66, i32 0, i32 0
  %68 = call i32 @usb_anchor_urb(%struct.urb* %65, i32* %67)
  %69 = load %struct.urb*, %struct.urb** %6, align 8
  %70 = load i32, i32* @GFP_ATOMIC, align 4
  %71 = call i32 @usb_submit_urb(%struct.urb* %69, i32 %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %30
  %75 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %76 = load i32, i32* @ATH10K_DBG_USB_BULK, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i32 (%struct.ath10k*, i32, i8*, i32, ...) @ath10k_dbg(%struct.ath10k* %75, i32 %76, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  %79 = load %struct.urb*, %struct.urb** %6, align 8
  %80 = call i32 @usb_unanchor_urb(%struct.urb* %79)
  %81 = load %struct.urb*, %struct.urb** %6, align 8
  %82 = call i32 @usb_free_urb(%struct.urb* %81)
  br label %87

83:                                               ; preds = %30
  %84 = load %struct.urb*, %struct.urb** %6, align 8
  %85 = call i32 @usb_free_urb(%struct.urb* %84)
  br label %8

86:                                               ; preds = %13
  br label %90

87:                                               ; preds = %74, %29, %23
  %88 = load %struct.ath10k_urb_context*, %struct.ath10k_urb_context** %5, align 8
  %89 = call i32 @ath10k_usb_cleanup_recv_urb(%struct.ath10k_urb_context* %88)
  br label %90

90:                                               ; preds = %87, %86
  ret void
}

declare dso_local %struct.ath10k_urb_context* @ath10k_usb_alloc_urb_from_pipe(%struct.ath10k_usb_pipe*) #1

declare dso_local %struct.TYPE_4__* @dev_alloc_skb(i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i32, i32, i32, %struct.ath10k_urb_context*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, ...) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @ath10k_usb_cleanup_recv_urb(%struct.ath10k_urb_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
