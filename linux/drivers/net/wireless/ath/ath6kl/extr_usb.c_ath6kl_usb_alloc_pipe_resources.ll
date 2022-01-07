; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_usb.c_ath6kl_usb_alloc_pipe_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_usb.c_ath6kl_usb_alloc_pipe_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl_usb_pipe = type { i32, i32, i32, i32, i32 }
%struct.ath6kl_urb_context = type { %struct.ath6kl_usb_pipe* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ATH6KL_DBG_USB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"ath6kl usb: alloc resources lpipe:%d hpipe:0x%X urbs:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl_usb_pipe*, i32)* @ath6kl_usb_alloc_pipe_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_usb_alloc_pipe_resources(%struct.ath6kl_usb_pipe* %0, i32 %1) #0 {
  %3 = alloca %struct.ath6kl_usb_pipe*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath6kl_urb_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ath6kl_usb_pipe* %0, %struct.ath6kl_usb_pipe** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.ath6kl_usb_pipe*, %struct.ath6kl_usb_pipe** %3, align 8
  %9 = getelementptr inbounds %struct.ath6kl_usb_pipe, %struct.ath6kl_usb_pipe* %8, i32 0, i32 4
  %10 = call i32 @INIT_LIST_HEAD(i32* %9)
  %11 = load %struct.ath6kl_usb_pipe*, %struct.ath6kl_usb_pipe** %3, align 8
  %12 = getelementptr inbounds %struct.ath6kl_usb_pipe, %struct.ath6kl_usb_pipe* %11, i32 0, i32 3
  %13 = call i32 @init_usb_anchor(i32* %12)
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %37, %2
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %40

18:                                               ; preds = %14
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.ath6kl_urb_context* @kzalloc(i32 8, i32 %19)
  store %struct.ath6kl_urb_context* %20, %struct.ath6kl_urb_context** %5, align 8
  %21 = load %struct.ath6kl_urb_context*, %struct.ath6kl_urb_context** %5, align 8
  %22 = icmp eq %struct.ath6kl_urb_context* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %52

26:                                               ; preds = %18
  %27 = load %struct.ath6kl_usb_pipe*, %struct.ath6kl_usb_pipe** %3, align 8
  %28 = load %struct.ath6kl_urb_context*, %struct.ath6kl_urb_context** %5, align 8
  %29 = getelementptr inbounds %struct.ath6kl_urb_context, %struct.ath6kl_urb_context* %28, i32 0, i32 0
  store %struct.ath6kl_usb_pipe* %27, %struct.ath6kl_usb_pipe** %29, align 8
  %30 = load %struct.ath6kl_usb_pipe*, %struct.ath6kl_usb_pipe** %3, align 8
  %31 = getelementptr inbounds %struct.ath6kl_usb_pipe, %struct.ath6kl_usb_pipe* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = load %struct.ath6kl_usb_pipe*, %struct.ath6kl_usb_pipe** %3, align 8
  %35 = load %struct.ath6kl_urb_context*, %struct.ath6kl_urb_context** %5, align 8
  %36 = call i32 @ath6kl_usb_free_urb_to_pipe(%struct.ath6kl_usb_pipe* %34, %struct.ath6kl_urb_context* %35)
  br label %37

37:                                               ; preds = %26
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %14

40:                                               ; preds = %14
  %41 = load i32, i32* @ATH6KL_DBG_USB, align 4
  %42 = load %struct.ath6kl_usb_pipe*, %struct.ath6kl_usb_pipe** %3, align 8
  %43 = getelementptr inbounds %struct.ath6kl_usb_pipe, %struct.ath6kl_usb_pipe* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ath6kl_usb_pipe*, %struct.ath6kl_usb_pipe** %3, align 8
  %46 = getelementptr inbounds %struct.ath6kl_usb_pipe, %struct.ath6kl_usb_pipe* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ath6kl_usb_pipe*, %struct.ath6kl_usb_pipe** %3, align 8
  %49 = getelementptr inbounds %struct.ath6kl_usb_pipe, %struct.ath6kl_usb_pipe* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ath6kl_dbg(i32 %41, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %47, i32 %50)
  br label %52

52:                                               ; preds = %40, %23
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_usb_anchor(i32*) #1

declare dso_local %struct.ath6kl_urb_context* @kzalloc(i32, i32) #1

declare dso_local i32 @ath6kl_usb_free_urb_to_pipe(%struct.ath6kl_usb_pipe*, %struct.ath6kl_urb_context*) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
