; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_usb.c_ath10k_usb_alloc_pipe_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_usb.c_ath10k_usb_alloc_pipe_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_usb_pipe = type { i32, i32, i32, i32, i32 }
%struct.ath10k_urb_context = type { %struct.ath10k_usb_pipe* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ATH10K_DBG_USB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"usb alloc resources lpipe %d hpipe 0x%x urbs %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.ath10k_usb_pipe*, i32)* @ath10k_usb_alloc_pipe_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_usb_alloc_pipe_resources(%struct.ath10k* %0, %struct.ath10k_usb_pipe* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca %struct.ath10k_usb_pipe*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ath10k_urb_context*, align 8
  %9 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store %struct.ath10k_usb_pipe* %1, %struct.ath10k_usb_pipe** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %6, align 8
  %11 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %10, i32 0, i32 4
  %12 = call i32 @INIT_LIST_HEAD(i32* %11)
  %13 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %6, align 8
  %14 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %13, i32 0, i32 3
  %15 = call i32 @init_usb_anchor(i32* %14)
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %39, %3
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %42

20:                                               ; preds = %16
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.ath10k_urb_context* @kzalloc(i32 8, i32 %21)
  store %struct.ath10k_urb_context* %22, %struct.ath10k_urb_context** %8, align 8
  %23 = load %struct.ath10k_urb_context*, %struct.ath10k_urb_context** %8, align 8
  %24 = icmp ne %struct.ath10k_urb_context* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %55

28:                                               ; preds = %20
  %29 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %6, align 8
  %30 = load %struct.ath10k_urb_context*, %struct.ath10k_urb_context** %8, align 8
  %31 = getelementptr inbounds %struct.ath10k_urb_context, %struct.ath10k_urb_context* %30, i32 0, i32 0
  store %struct.ath10k_usb_pipe* %29, %struct.ath10k_usb_pipe** %31, align 8
  %32 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %6, align 8
  %33 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %6, align 8
  %37 = load %struct.ath10k_urb_context*, %struct.ath10k_urb_context** %8, align 8
  %38 = call i32 @ath10k_usb_free_urb_to_pipe(%struct.ath10k_usb_pipe* %36, %struct.ath10k_urb_context* %37)
  br label %39

39:                                               ; preds = %28
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %9, align 4
  br label %16

42:                                               ; preds = %16
  %43 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %44 = load i32, i32* @ATH10K_DBG_USB, align 4
  %45 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %6, align 8
  %46 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %6, align 8
  %49 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %6, align 8
  %52 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ath10k_dbg(%struct.ath10k* %43, i32 %44, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %50, i32 %53)
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %42, %25
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_usb_anchor(i32*) #1

declare dso_local %struct.ath10k_urb_context* @kzalloc(i32, i32) #1

declare dso_local i32 @ath10k_usb_free_urb_to_pipe(%struct.ath10k_usb_pipe*, %struct.ath10k_urb_context*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
