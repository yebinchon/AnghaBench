; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_usb.c_ath10k_usb_hif_tx_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_usb.c_ath10k_usb_hif_tx_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_hif_sg_item = type { %struct.sk_buff* }
%struct.sk_buff = type { i32, i32 }
%struct.ath10k_usb = type { i32, %struct.ath10k_usb_pipe* }
%struct.ath10k_usb_pipe = type { i32, i32, i32 }
%struct.ath10k_urb_context = type { i32, %struct.sk_buff* }
%struct.urb = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ath10k_usb_transmit_complete = common dso_local global i32 0, align 4
@URB_ZERO_PACKET = common dso_local global i32 0, align 4
@ATH10K_DBG_USB_BULK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"usb bulk transmit failed: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, i64, %struct.ath10k_hif_sg_item*, i32)* @ath10k_usb_hif_tx_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_usb_hif_tx_sg(%struct.ath10k* %0, i64 %1, %struct.ath10k_hif_sg_item* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ath10k_hif_sg_item*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ath10k_usb*, align 8
  %11 = alloca %struct.ath10k_usb_pipe*, align 8
  %12 = alloca %struct.ath10k_urb_context*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca %struct.urb*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.ath10k_hif_sg_item* %2, %struct.ath10k_hif_sg_item** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %18 = call %struct.ath10k_usb* @ath10k_usb_priv(%struct.ath10k* %17)
  store %struct.ath10k_usb* %18, %struct.ath10k_usb** %10, align 8
  %19 = load %struct.ath10k_usb*, %struct.ath10k_usb** %10, align 8
  %20 = getelementptr inbounds %struct.ath10k_usb, %struct.ath10k_usb* %19, i32 0, i32 1
  %21 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %20, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %21, i64 %22
  store %struct.ath10k_usb_pipe* %23, %struct.ath10k_usb_pipe** %11, align 8
  store i32 0, i32* %16, align 4
  br label %24

24:                                               ; preds = %106, %4
  %25 = load i32, i32* %16, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %109

28:                                               ; preds = %24
  %29 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %11, align 8
  %30 = call %struct.ath10k_urb_context* @ath10k_usb_alloc_urb_from_pipe(%struct.ath10k_usb_pipe* %29)
  store %struct.ath10k_urb_context* %30, %struct.ath10k_urb_context** %12, align 8
  %31 = load %struct.ath10k_urb_context*, %struct.ath10k_urb_context** %12, align 8
  %32 = icmp ne %struct.ath10k_urb_context* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %15, align 4
  br label %116

36:                                               ; preds = %28
  %37 = load %struct.ath10k_hif_sg_item*, %struct.ath10k_hif_sg_item** %8, align 8
  %38 = load i32, i32* %16, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %37, i64 %39
  %41 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %40, i32 0, i32 0
  %42 = load %struct.sk_buff*, %struct.sk_buff** %41, align 8
  store %struct.sk_buff* %42, %struct.sk_buff** %13, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %44 = load %struct.ath10k_urb_context*, %struct.ath10k_urb_context** %12, align 8
  %45 = getelementptr inbounds %struct.ath10k_urb_context, %struct.ath10k_urb_context* %44, i32 0, i32 1
  store %struct.sk_buff* %43, %struct.sk_buff** %45, align 8
  %46 = load i32, i32* @GFP_ATOMIC, align 4
  %47 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %46)
  store %struct.urb* %47, %struct.urb** %14, align 8
  %48 = load %struct.urb*, %struct.urb** %14, align 8
  %49 = icmp ne %struct.urb* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %36
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %15, align 4
  br label %110

53:                                               ; preds = %36
  %54 = load %struct.urb*, %struct.urb** %14, align 8
  %55 = load %struct.ath10k_usb*, %struct.ath10k_usb** %10, align 8
  %56 = getelementptr inbounds %struct.ath10k_usb, %struct.ath10k_usb* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %11, align 8
  %59 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @ath10k_usb_transmit_complete, align 4
  %68 = load %struct.ath10k_urb_context*, %struct.ath10k_urb_context** %12, align 8
  %69 = call i32 @usb_fill_bulk_urb(%struct.urb* %54, i32 %57, i32 %60, i32 %63, i32 %66, i32 %67, %struct.ath10k_urb_context* %68)
  %70 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %11, align 8
  %74 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = srem i32 %72, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %53
  %79 = load i32, i32* @URB_ZERO_PACKET, align 4
  %80 = load %struct.urb*, %struct.urb** %14, align 8
  %81 = getelementptr inbounds %struct.urb, %struct.urb* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %78, %53
  %85 = load %struct.urb*, %struct.urb** %14, align 8
  %86 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %11, align 8
  %87 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %86, i32 0, i32 1
  %88 = call i32 @usb_anchor_urb(%struct.urb* %85, i32* %87)
  %89 = load %struct.urb*, %struct.urb** %14, align 8
  %90 = load i32, i32* @GFP_ATOMIC, align 4
  %91 = call i32 @usb_submit_urb(%struct.urb* %89, i32 %90)
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %15, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %84
  %95 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %96 = load i32, i32* @ATH10K_DBG_USB_BULK, align 4
  %97 = load i32, i32* %15, align 4
  %98 = call i32 @ath10k_dbg(%struct.ath10k* %95, i32 %96, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %97)
  %99 = load %struct.urb*, %struct.urb** %14, align 8
  %100 = call i32 @usb_unanchor_urb(%struct.urb* %99)
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %15, align 4
  br label %110

103:                                              ; preds = %84
  %104 = load %struct.urb*, %struct.urb** %14, align 8
  %105 = call i32 @usb_free_urb(%struct.urb* %104)
  br label %106

106:                                              ; preds = %103
  %107 = load i32, i32* %16, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %16, align 4
  br label %24

109:                                              ; preds = %24
  store i32 0, i32* %5, align 4
  br label %118

110:                                              ; preds = %94, %50
  %111 = load %struct.ath10k_urb_context*, %struct.ath10k_urb_context** %12, align 8
  %112 = getelementptr inbounds %struct.ath10k_urb_context, %struct.ath10k_urb_context* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.ath10k_urb_context*, %struct.ath10k_urb_context** %12, align 8
  %115 = call i32 @ath10k_usb_free_urb_to_pipe(i32 %113, %struct.ath10k_urb_context* %114)
  br label %116

116:                                              ; preds = %110, %33
  %117 = load i32, i32* %15, align 4
  store i32 %117, i32* %5, align 4
  br label %118

118:                                              ; preds = %116, %109
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local %struct.ath10k_usb* @ath10k_usb_priv(%struct.ath10k*) #1

declare dso_local %struct.ath10k_urb_context* @ath10k_usb_alloc_urb_from_pipe(%struct.ath10k_usb_pipe*) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i32, i32, i32, %struct.ath10k_urb_context*) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @ath10k_usb_free_urb_to_pipe(i32, %struct.ath10k_urb_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
