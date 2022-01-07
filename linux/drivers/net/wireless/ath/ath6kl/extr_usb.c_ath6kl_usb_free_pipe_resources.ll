; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_usb.c_ath6kl_usb_free_pipe_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_usb.c_ath6kl_usb_free_pipe_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl_usb_pipe = type { i64, i64, i32, i32, i32* }
%struct.ath6kl_urb_context = type { i32 }

@ATH6KL_DBG_USB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"ath6kl usb: free resources lpipe:%dhpipe:0x%X urbs:%d avail:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"ath6kl usb: urb leak! lpipe:%dhpipe:0x%X urbs:%d avail:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath6kl_usb_pipe*)* @ath6kl_usb_free_pipe_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath6kl_usb_free_pipe_resources(%struct.ath6kl_usb_pipe* %0) #0 {
  %2 = alloca %struct.ath6kl_usb_pipe*, align 8
  %3 = alloca %struct.ath6kl_urb_context*, align 8
  store %struct.ath6kl_usb_pipe* %0, %struct.ath6kl_usb_pipe** %2, align 8
  %4 = load %struct.ath6kl_usb_pipe*, %struct.ath6kl_usb_pipe** %2, align 8
  %5 = getelementptr inbounds %struct.ath6kl_usb_pipe, %struct.ath6kl_usb_pipe* %4, i32 0, i32 4
  %6 = load i32*, i32** %5, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %56

9:                                                ; preds = %1
  %10 = load i32, i32* @ATH6KL_DBG_USB, align 4
  %11 = load %struct.ath6kl_usb_pipe*, %struct.ath6kl_usb_pipe** %2, align 8
  %12 = getelementptr inbounds %struct.ath6kl_usb_pipe, %struct.ath6kl_usb_pipe* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ath6kl_usb_pipe*, %struct.ath6kl_usb_pipe** %2, align 8
  %15 = getelementptr inbounds %struct.ath6kl_usb_pipe, %struct.ath6kl_usb_pipe* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.ath6kl_usb_pipe*, %struct.ath6kl_usb_pipe** %2, align 8
  %18 = getelementptr inbounds %struct.ath6kl_usb_pipe, %struct.ath6kl_usb_pipe* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.ath6kl_usb_pipe*, %struct.ath6kl_usb_pipe** %2, align 8
  %21 = getelementptr inbounds %struct.ath6kl_usb_pipe, %struct.ath6kl_usb_pipe* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @ath6kl_dbg(i32 %10, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16, i64 %19, i64 %22)
  %24 = load %struct.ath6kl_usb_pipe*, %struct.ath6kl_usb_pipe** %2, align 8
  %25 = getelementptr inbounds %struct.ath6kl_usb_pipe, %struct.ath6kl_usb_pipe* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.ath6kl_usb_pipe*, %struct.ath6kl_usb_pipe** %2, align 8
  %28 = getelementptr inbounds %struct.ath6kl_usb_pipe, %struct.ath6kl_usb_pipe* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %9
  %32 = load i32, i32* @ATH6KL_DBG_USB, align 4
  %33 = load %struct.ath6kl_usb_pipe*, %struct.ath6kl_usb_pipe** %2, align 8
  %34 = getelementptr inbounds %struct.ath6kl_usb_pipe, %struct.ath6kl_usb_pipe* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ath6kl_usb_pipe*, %struct.ath6kl_usb_pipe** %2, align 8
  %37 = getelementptr inbounds %struct.ath6kl_usb_pipe, %struct.ath6kl_usb_pipe* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ath6kl_usb_pipe*, %struct.ath6kl_usb_pipe** %2, align 8
  %40 = getelementptr inbounds %struct.ath6kl_usb_pipe, %struct.ath6kl_usb_pipe* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.ath6kl_usb_pipe*, %struct.ath6kl_usb_pipe** %2, align 8
  %43 = getelementptr inbounds %struct.ath6kl_usb_pipe, %struct.ath6kl_usb_pipe* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @ath6kl_dbg(i32 %32, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %38, i64 %41, i64 %44)
  br label %46

46:                                               ; preds = %31, %9
  br label %47

47:                                               ; preds = %46, %53
  %48 = load %struct.ath6kl_usb_pipe*, %struct.ath6kl_usb_pipe** %2, align 8
  %49 = call %struct.ath6kl_urb_context* @ath6kl_usb_alloc_urb_from_pipe(%struct.ath6kl_usb_pipe* %48)
  store %struct.ath6kl_urb_context* %49, %struct.ath6kl_urb_context** %3, align 8
  %50 = load %struct.ath6kl_urb_context*, %struct.ath6kl_urb_context** %3, align 8
  %51 = icmp eq %struct.ath6kl_urb_context* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %56

53:                                               ; preds = %47
  %54 = load %struct.ath6kl_urb_context*, %struct.ath6kl_urb_context** %3, align 8
  %55 = call i32 @kfree(%struct.ath6kl_urb_context* %54)
  br label %47

56:                                               ; preds = %8, %52
  ret void
}

declare dso_local i32 @ath6kl_dbg(i32, i8*, i32, i32, i64, i64) #1

declare dso_local %struct.ath6kl_urb_context* @ath6kl_usb_alloc_urb_from_pipe(%struct.ath6kl_usb_pipe*) #1

declare dso_local i32 @kfree(%struct.ath6kl_urb_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
