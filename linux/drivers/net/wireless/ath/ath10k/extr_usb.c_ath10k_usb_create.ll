; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_usb.c_ath10k_usb_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_usb.c_ath10k_usb_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.usb_interface = type { i32 }
%struct.ath10k_usb = type { i8*, i8*, %struct.ath10k_usb_pipe*, %struct.usb_interface*, %struct.usb_device*, i32 }
%struct.ath10k_usb_pipe = type { i32, i32 }
%struct.usb_device = type { i32 }

@ATH10K_USB_PIPE_MAX = common dso_local global i32 0, align 4
@ath10k_usb_io_comp_work = common dso_local global i32 0, align 4
@ATH10K_USB_MAX_DIAG_CMD = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ATH10K_USB_MAX_DIAG_RESP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.usb_interface*)* @ath10k_usb_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_usb_create(%struct.ath10k* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca %struct.ath10k_usb*, align 8
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca %struct.ath10k_usb_pipe*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %5, align 8
  %11 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %12 = call %struct.ath10k_usb* @ath10k_usb_priv(%struct.ath10k* %11)
  store %struct.ath10k_usb* %12, %struct.ath10k_usb** %6, align 8
  %13 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %14 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %13)
  store %struct.usb_device* %14, %struct.usb_device** %7, align 8
  %15 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %16 = load %struct.ath10k_usb*, %struct.ath10k_usb** %6, align 8
  %17 = call i32 @usb_set_intfdata(%struct.usb_interface* %15, %struct.ath10k_usb* %16)
  %18 = load %struct.ath10k_usb*, %struct.ath10k_usb** %6, align 8
  %19 = getelementptr inbounds %struct.ath10k_usb, %struct.ath10k_usb* %18, i32 0, i32 5
  %20 = call i32 @spin_lock_init(i32* %19)
  %21 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %22 = load %struct.ath10k_usb*, %struct.ath10k_usb** %6, align 8
  %23 = getelementptr inbounds %struct.ath10k_usb, %struct.ath10k_usb* %22, i32 0, i32 4
  store %struct.usb_device* %21, %struct.usb_device** %23, align 8
  %24 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %25 = load %struct.ath10k_usb*, %struct.ath10k_usb** %6, align 8
  %26 = getelementptr inbounds %struct.ath10k_usb, %struct.ath10k_usb* %25, i32 0, i32 3
  store %struct.usb_interface* %24, %struct.usb_interface** %26, align 8
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %45, %2
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @ATH10K_USB_PIPE_MAX, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %27
  %32 = load %struct.ath10k_usb*, %struct.ath10k_usb** %6, align 8
  %33 = getelementptr inbounds %struct.ath10k_usb, %struct.ath10k_usb* %32, i32 0, i32 2
  %34 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %34, i64 %36
  store %struct.ath10k_usb_pipe* %37, %struct.ath10k_usb_pipe** %8, align 8
  %38 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %8, align 8
  %39 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %38, i32 0, i32 1
  %40 = load i32, i32* @ath10k_usb_io_comp_work, align 4
  %41 = call i32 @INIT_WORK(i32* %39, i32 %40)
  %42 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %8, align 8
  %43 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %42, i32 0, i32 0
  %44 = call i32 @skb_queue_head_init(i32* %43)
  br label %45

45:                                               ; preds = %31
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %10, align 4
  br label %27

48:                                               ; preds = %27
  %49 = load i32, i32* @ATH10K_USB_MAX_DIAG_CMD, align 4
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call i8* @kzalloc(i32 %49, i32 %50)
  %52 = load %struct.ath10k_usb*, %struct.ath10k_usb** %6, align 8
  %53 = getelementptr inbounds %struct.ath10k_usb, %struct.ath10k_usb* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load %struct.ath10k_usb*, %struct.ath10k_usb** %6, align 8
  %55 = getelementptr inbounds %struct.ath10k_usb, %struct.ath10k_usb* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %48
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %9, align 4
  br label %82

61:                                               ; preds = %48
  %62 = load i32, i32* @ATH10K_USB_MAX_DIAG_RESP, align 4
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call i8* @kzalloc(i32 %62, i32 %63)
  %65 = load %struct.ath10k_usb*, %struct.ath10k_usb** %6, align 8
  %66 = getelementptr inbounds %struct.ath10k_usb, %struct.ath10k_usb* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  %67 = load %struct.ath10k_usb*, %struct.ath10k_usb** %6, align 8
  %68 = getelementptr inbounds %struct.ath10k_usb, %struct.ath10k_usb* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %61
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %9, align 4
  br label %82

74:                                               ; preds = %61
  %75 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %76 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %77 = call i32 @ath10k_usb_setup_pipe_resources(%struct.ath10k* %75, %struct.usb_interface* %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %82

81:                                               ; preds = %74
  store i32 0, i32* %3, align 4
  br label %86

82:                                               ; preds = %80, %71, %58
  %83 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %84 = call i32 @ath10k_usb_destroy(%struct.ath10k* %83)
  %85 = load i32, i32* %9, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %82, %81
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.ath10k_usb* @ath10k_usb_priv(%struct.ath10k*) #1

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.ath10k_usb*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @ath10k_usb_setup_pipe_resources(%struct.ath10k*, %struct.usb_interface*) #1

declare dso_local i32 @ath10k_usb_destroy(%struct.ath10k*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
