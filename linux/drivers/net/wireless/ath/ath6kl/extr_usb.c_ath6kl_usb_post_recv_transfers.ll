; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_usb.c_ath6kl_usb_post_recv_transfers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_usb.c_ath6kl_usb_post_recv_transfers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl_usb_pipe = type { i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ath6kl_urb_context = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.urb = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ath6kl_usb_recv_complete = common dso_local global i32 0, align 4
@ATH6KL_DBG_USB_BULK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"ath6kl usb: bulk recv submit:%d, 0x%X (ep:0x%2.2X), %d bytes buf:0x%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"ath6kl usb : usb bulk recv failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath6kl_usb_pipe*, i32)* @ath6kl_usb_post_recv_transfers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath6kl_usb_post_recv_transfers(%struct.ath6kl_usb_pipe* %0, i32 %1) #0 {
  %3 = alloca %struct.ath6kl_usb_pipe*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath6kl_urb_context*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i32, align 4
  store %struct.ath6kl_usb_pipe* %0, %struct.ath6kl_usb_pipe** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %8

8:                                                ; preds = %2, %81
  %9 = load %struct.ath6kl_usb_pipe*, %struct.ath6kl_usb_pipe** %3, align 8
  %10 = call %struct.ath6kl_urb_context* @ath6kl_usb_alloc_urb_from_pipe(%struct.ath6kl_usb_pipe* %9)
  store %struct.ath6kl_urb_context* %10, %struct.ath6kl_urb_context** %5, align 8
  %11 = load %struct.ath6kl_urb_context*, %struct.ath6kl_urb_context** %5, align 8
  %12 = icmp eq %struct.ath6kl_urb_context* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  br label %84

14:                                               ; preds = %8
  %15 = load i32, i32* %4, align 4
  %16 = call %struct.TYPE_4__* @dev_alloc_skb(i32 %15)
  %17 = load %struct.ath6kl_urb_context*, %struct.ath6kl_urb_context** %5, align 8
  %18 = getelementptr inbounds %struct.ath6kl_urb_context, %struct.ath6kl_urb_context* %17, i32 0, i32 0
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %18, align 8
  %19 = load %struct.ath6kl_urb_context*, %struct.ath6kl_urb_context** %5, align 8
  %20 = getelementptr inbounds %struct.ath6kl_urb_context, %struct.ath6kl_urb_context* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = icmp eq %struct.TYPE_4__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  br label %85

24:                                               ; preds = %14
  %25 = load i32, i32* @GFP_ATOMIC, align 4
  %26 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %25)
  store %struct.urb* %26, %struct.urb** %6, align 8
  %27 = load %struct.urb*, %struct.urb** %6, align 8
  %28 = icmp eq %struct.urb* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %85

30:                                               ; preds = %24
  %31 = load %struct.urb*, %struct.urb** %6, align 8
  %32 = load %struct.ath6kl_usb_pipe*, %struct.ath6kl_usb_pipe** %3, align 8
  %33 = getelementptr inbounds %struct.ath6kl_usb_pipe, %struct.ath6kl_usb_pipe* %32, i32 0, i32 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ath6kl_usb_pipe*, %struct.ath6kl_usb_pipe** %3, align 8
  %38 = getelementptr inbounds %struct.ath6kl_usb_pipe, %struct.ath6kl_usb_pipe* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.ath6kl_urb_context*, %struct.ath6kl_urb_context** %5, align 8
  %41 = getelementptr inbounds %struct.ath6kl_urb_context, %struct.ath6kl_urb_context* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @ath6kl_usb_recv_complete, align 4
  %47 = load %struct.ath6kl_urb_context*, %struct.ath6kl_urb_context** %5, align 8
  %48 = call i32 @usb_fill_bulk_urb(%struct.urb* %31, i32 %36, i32 %39, i32 %44, i32 %45, i32 %46, %struct.ath6kl_urb_context* %47)
  %49 = load i32, i32* @ATH6KL_DBG_USB_BULK, align 4
  %50 = load %struct.ath6kl_usb_pipe*, %struct.ath6kl_usb_pipe** %3, align 8
  %51 = getelementptr inbounds %struct.ath6kl_usb_pipe, %struct.ath6kl_usb_pipe* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ath6kl_usb_pipe*, %struct.ath6kl_usb_pipe** %3, align 8
  %54 = getelementptr inbounds %struct.ath6kl_usb_pipe, %struct.ath6kl_usb_pipe* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.ath6kl_usb_pipe*, %struct.ath6kl_usb_pipe** %3, align 8
  %57 = getelementptr inbounds %struct.ath6kl_usb_pipe, %struct.ath6kl_usb_pipe* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.ath6kl_urb_context*, %struct.ath6kl_urb_context** %5, align 8
  %61 = getelementptr inbounds %struct.ath6kl_urb_context, %struct.ath6kl_urb_context* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = call i32 (i32, i8*, i32, ...) @ath6kl_dbg(i32 %49, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %55, i32 %58, i32 %59, %struct.TYPE_4__* %62)
  %64 = load %struct.urb*, %struct.urb** %6, align 8
  %65 = load %struct.ath6kl_usb_pipe*, %struct.ath6kl_usb_pipe** %3, align 8
  %66 = getelementptr inbounds %struct.ath6kl_usb_pipe, %struct.ath6kl_usb_pipe* %65, i32 0, i32 0
  %67 = call i32 @usb_anchor_urb(%struct.urb* %64, i32* %66)
  %68 = load %struct.urb*, %struct.urb** %6, align 8
  %69 = load i32, i32* @GFP_ATOMIC, align 4
  %70 = call i32 @usb_submit_urb(%struct.urb* %68, i32 %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %30
  %74 = load i32, i32* @ATH6KL_DBG_USB_BULK, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 (i32, i8*, i32, ...) @ath6kl_dbg(i32 %74, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = load %struct.urb*, %struct.urb** %6, align 8
  %78 = call i32 @usb_unanchor_urb(%struct.urb* %77)
  %79 = load %struct.urb*, %struct.urb** %6, align 8
  %80 = call i32 @usb_free_urb(%struct.urb* %79)
  br label %85

81:                                               ; preds = %30
  %82 = load %struct.urb*, %struct.urb** %6, align 8
  %83 = call i32 @usb_free_urb(%struct.urb* %82)
  br label %8

84:                                               ; preds = %13
  br label %88

85:                                               ; preds = %73, %29, %23
  %86 = load %struct.ath6kl_urb_context*, %struct.ath6kl_urb_context** %5, align 8
  %87 = call i32 @ath6kl_usb_cleanup_recv_urb(%struct.ath6kl_urb_context* %86)
  br label %88

88:                                               ; preds = %85, %84
  ret void
}

declare dso_local %struct.ath6kl_urb_context* @ath6kl_usb_alloc_urb_from_pipe(%struct.ath6kl_usb_pipe*) #1

declare dso_local %struct.TYPE_4__* @dev_alloc_skb(i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i32, i32, i32, %struct.ath6kl_urb_context*) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @ath6kl_usb_cleanup_recv_urb(%struct.ath6kl_urb_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
