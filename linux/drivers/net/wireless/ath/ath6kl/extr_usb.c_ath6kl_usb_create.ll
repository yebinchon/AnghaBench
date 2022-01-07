; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_usb.c_ath6kl_usb_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_usb.c_ath6kl_usb_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl_usb = type { i32*, i32*, %struct.ath6kl_usb_pipe*, %struct.usb_interface*, %struct.usb_device*, i32 }
%struct.ath6kl_usb_pipe = type { i32, i32 }
%struct.usb_device = type { i32 }
%struct.usb_interface = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ATH6KL_USB_PIPE_MAX = common dso_local global i32 0, align 4
@ath6kl_usb_io_comp_work = common dso_local global i32 0, align 4
@ATH6KL_USB_MAX_DIAG_CMD = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ATH6KL_USB_MAX_DIAG_RESP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ath6kl_usb* (%struct.usb_interface*)* @ath6kl_usb_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ath6kl_usb* @ath6kl_usb_create(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca %struct.ath6kl_usb*, align 8
  %5 = alloca %struct.ath6kl_usb_pipe*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %8 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %9 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %8)
  store %struct.usb_device* %9, %struct.usb_device** %3, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i8* @kzalloc(i32 48, i32 %10)
  %12 = bitcast i8* %11 to %struct.ath6kl_usb*
  store %struct.ath6kl_usb* %12, %struct.ath6kl_usb** %4, align 8
  %13 = load %struct.ath6kl_usb*, %struct.ath6kl_usb** %4, align 8
  %14 = icmp eq %struct.ath6kl_usb* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %81

16:                                               ; preds = %1
  %17 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %18 = load %struct.ath6kl_usb*, %struct.ath6kl_usb** %4, align 8
  %19 = call i32 @usb_set_intfdata(%struct.usb_interface* %17, %struct.ath6kl_usb* %18)
  %20 = load %struct.ath6kl_usb*, %struct.ath6kl_usb** %4, align 8
  %21 = getelementptr inbounds %struct.ath6kl_usb, %struct.ath6kl_usb* %20, i32 0, i32 5
  %22 = call i32 @spin_lock_init(i32* %21)
  %23 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %24 = load %struct.ath6kl_usb*, %struct.ath6kl_usb** %4, align 8
  %25 = getelementptr inbounds %struct.ath6kl_usb, %struct.ath6kl_usb* %24, i32 0, i32 4
  store %struct.usb_device* %23, %struct.usb_device** %25, align 8
  %26 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %27 = load %struct.ath6kl_usb*, %struct.ath6kl_usb** %4, align 8
  %28 = getelementptr inbounds %struct.ath6kl_usb, %struct.ath6kl_usb* %27, i32 0, i32 3
  store %struct.usb_interface* %26, %struct.usb_interface** %28, align 8
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %47, %16
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @ATH6KL_USB_PIPE_MAX, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %29
  %34 = load %struct.ath6kl_usb*, %struct.ath6kl_usb** %4, align 8
  %35 = getelementptr inbounds %struct.ath6kl_usb, %struct.ath6kl_usb* %34, i32 0, i32 2
  %36 = load %struct.ath6kl_usb_pipe*, %struct.ath6kl_usb_pipe** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.ath6kl_usb_pipe, %struct.ath6kl_usb_pipe* %36, i64 %38
  store %struct.ath6kl_usb_pipe* %39, %struct.ath6kl_usb_pipe** %5, align 8
  %40 = load %struct.ath6kl_usb_pipe*, %struct.ath6kl_usb_pipe** %5, align 8
  %41 = getelementptr inbounds %struct.ath6kl_usb_pipe, %struct.ath6kl_usb_pipe* %40, i32 0, i32 1
  %42 = load i32, i32* @ath6kl_usb_io_comp_work, align 4
  %43 = call i32 @INIT_WORK(i32* %41, i32 %42)
  %44 = load %struct.ath6kl_usb_pipe*, %struct.ath6kl_usb_pipe** %5, align 8
  %45 = getelementptr inbounds %struct.ath6kl_usb_pipe, %struct.ath6kl_usb_pipe* %44, i32 0, i32 0
  %46 = call i32 @skb_queue_head_init(i32* %45)
  br label %47

47:                                               ; preds = %33
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %29

50:                                               ; preds = %29
  %51 = load i32, i32* @ATH6KL_USB_MAX_DIAG_CMD, align 4
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i8* @kzalloc(i32 %51, i32 %52)
  %54 = bitcast i8* %53 to i32*
  %55 = load %struct.ath6kl_usb*, %struct.ath6kl_usb** %4, align 8
  %56 = getelementptr inbounds %struct.ath6kl_usb, %struct.ath6kl_usb* %55, i32 0, i32 1
  store i32* %54, i32** %56, align 8
  %57 = load %struct.ath6kl_usb*, %struct.ath6kl_usb** %4, align 8
  %58 = getelementptr inbounds %struct.ath6kl_usb, %struct.ath6kl_usb* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %50
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %6, align 4
  br label %81

64:                                               ; preds = %50
  %65 = load i32, i32* @ATH6KL_USB_MAX_DIAG_RESP, align 4
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call i8* @kzalloc(i32 %65, i32 %66)
  %68 = bitcast i8* %67 to i32*
  %69 = load %struct.ath6kl_usb*, %struct.ath6kl_usb** %4, align 8
  %70 = getelementptr inbounds %struct.ath6kl_usb, %struct.ath6kl_usb* %69, i32 0, i32 0
  store i32* %68, i32** %70, align 8
  %71 = load %struct.ath6kl_usb*, %struct.ath6kl_usb** %4, align 8
  %72 = getelementptr inbounds %struct.ath6kl_usb, %struct.ath6kl_usb* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %64
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %6, align 4
  br label %81

78:                                               ; preds = %64
  %79 = load %struct.ath6kl_usb*, %struct.ath6kl_usb** %4, align 8
  %80 = call i32 @ath6kl_usb_setup_pipe_resources(%struct.ath6kl_usb* %79)
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %78, %75, %61, %15
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load %struct.ath6kl_usb*, %struct.ath6kl_usb** %4, align 8
  %86 = call i32 @ath6kl_usb_destroy(%struct.ath6kl_usb* %85)
  store %struct.ath6kl_usb* null, %struct.ath6kl_usb** %4, align 8
  br label %87

87:                                               ; preds = %84, %81
  %88 = load %struct.ath6kl_usb*, %struct.ath6kl_usb** %4, align 8
  ret %struct.ath6kl_usb* %88
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.ath6kl_usb*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @ath6kl_usb_setup_pipe_resources(%struct.ath6kl_usb*) #1

declare dso_local i32 @ath6kl_usb_destroy(%struct.ath6kl_usb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
