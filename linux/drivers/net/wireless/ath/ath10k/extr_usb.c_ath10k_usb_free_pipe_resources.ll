; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_usb.c_ath10k_usb_free_pipe_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_usb.c_ath10k_usb_free_pipe_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_usb_pipe = type { i64, i64, i32, i32, i32 }
%struct.ath10k_urb_context = type { i32 }

@ATH10K_DBG_USB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"usb free resources lpipe %d hpipe 0x%x urbs %d avail %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"usb urb leak lpipe %d hpipe 0x%x urbs %d avail %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*, %struct.ath10k_usb_pipe*)* @ath10k_usb_free_pipe_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_usb_free_pipe_resources(%struct.ath10k* %0, %struct.ath10k_usb_pipe* %1) #0 {
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.ath10k_usb_pipe*, align 8
  %5 = alloca %struct.ath10k_urb_context*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store %struct.ath10k_usb_pipe* %1, %struct.ath10k_usb_pipe** %4, align 8
  %6 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %4, align 8
  %7 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %60

11:                                               ; preds = %2
  %12 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %13 = load i32, i32* @ATH10K_DBG_USB, align 4
  %14 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %4, align 8
  %15 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %4, align 8
  %18 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %4, align 8
  %21 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %4, align 8
  %24 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @ath10k_dbg(%struct.ath10k* %12, i32 %13, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19, i64 %22, i64 %25)
  %27 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %4, align 8
  %28 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %4, align 8
  %31 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %11
  %35 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %36 = load i32, i32* @ATH10K_DBG_USB, align 4
  %37 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %4, align 8
  %38 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %4, align 8
  %41 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %4, align 8
  %44 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %4, align 8
  %47 = getelementptr inbounds %struct.ath10k_usb_pipe, %struct.ath10k_usb_pipe* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @ath10k_dbg(%struct.ath10k* %35, i32 %36, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %42, i64 %45, i64 %48)
  br label %50

50:                                               ; preds = %34, %11
  br label %51

51:                                               ; preds = %57, %50
  %52 = load %struct.ath10k_usb_pipe*, %struct.ath10k_usb_pipe** %4, align 8
  %53 = call %struct.ath10k_urb_context* @ath10k_usb_alloc_urb_from_pipe(%struct.ath10k_usb_pipe* %52)
  store %struct.ath10k_urb_context* %53, %struct.ath10k_urb_context** %5, align 8
  %54 = load %struct.ath10k_urb_context*, %struct.ath10k_urb_context** %5, align 8
  %55 = icmp ne %struct.ath10k_urb_context* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  br label %60

57:                                               ; preds = %51
  %58 = load %struct.ath10k_urb_context*, %struct.ath10k_urb_context** %5, align 8
  %59 = call i32 @kfree(%struct.ath10k_urb_context* %58)
  br label %51

60:                                               ; preds = %10, %56
  ret void
}

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32, i64, i64) #1

declare dso_local %struct.ath10k_urb_context* @ath10k_usb_alloc_urb_from_pipe(%struct.ath10k_usb_pipe*) #1

declare dso_local i32 @kfree(%struct.ath10k_urb_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
