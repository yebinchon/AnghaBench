; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_orinoco_usb.c_ezusb_alloc_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_orinoco_usb.c_ezusb_alloc_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_context = type { i32, i32, i32, i8*, i8*, i32, %struct.ezusb_priv*, %struct.request_context*, i32 }
%struct.ezusb_priv = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@BULK_BUF_SIZE = common dso_local global i32 0, align 4
@EZUSB_CTX_START = common dso_local global i32 0, align 4
@ezusb_request_timerfn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.request_context* (%struct.ezusb_priv*, i8*, i8*)* @ezusb_alloc_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.request_context* @ezusb_alloc_ctx(%struct.ezusb_priv* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.request_context*, align 8
  %5 = alloca %struct.ezusb_priv*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.request_context*, align 8
  store %struct.ezusb_priv* %0, %struct.ezusb_priv** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* @GFP_ATOMIC, align 4
  %10 = call %struct.request_context* @kzalloc(i32 64, i32 %9)
  store %struct.request_context* %10, %struct.request_context** %8, align 8
  %11 = load %struct.request_context*, %struct.request_context** %8, align 8
  %12 = icmp ne %struct.request_context* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.request_context* null, %struct.request_context** %4, align 8
  br label %67

14:                                               ; preds = %3
  %15 = load i32, i32* @BULK_BUF_SIZE, align 4
  %16 = load i32, i32* @GFP_ATOMIC, align 4
  %17 = call %struct.request_context* @kmalloc(i32 %15, i32 %16)
  %18 = load %struct.request_context*, %struct.request_context** %8, align 8
  %19 = getelementptr inbounds %struct.request_context, %struct.request_context* %18, i32 0, i32 7
  store %struct.request_context* %17, %struct.request_context** %19, align 8
  %20 = load %struct.request_context*, %struct.request_context** %8, align 8
  %21 = getelementptr inbounds %struct.request_context, %struct.request_context* %20, i32 0, i32 7
  %22 = load %struct.request_context*, %struct.request_context** %21, align 8
  %23 = icmp ne %struct.request_context* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %14
  %25 = load %struct.request_context*, %struct.request_context** %8, align 8
  %26 = call i32 @kfree(%struct.request_context* %25)
  store %struct.request_context* null, %struct.request_context** %4, align 8
  br label %67

27:                                               ; preds = %14
  %28 = load i32, i32* @GFP_ATOMIC, align 4
  %29 = call i32 @usb_alloc_urb(i32 0, i32 %28)
  %30 = load %struct.request_context*, %struct.request_context** %8, align 8
  %31 = getelementptr inbounds %struct.request_context, %struct.request_context* %30, i32 0, i32 8
  store i32 %29, i32* %31, align 8
  %32 = load %struct.request_context*, %struct.request_context** %8, align 8
  %33 = getelementptr inbounds %struct.request_context, %struct.request_context* %32, i32 0, i32 8
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %27
  %37 = load %struct.request_context*, %struct.request_context** %8, align 8
  %38 = getelementptr inbounds %struct.request_context, %struct.request_context* %37, i32 0, i32 7
  %39 = load %struct.request_context*, %struct.request_context** %38, align 8
  %40 = call i32 @kfree(%struct.request_context* %39)
  %41 = load %struct.request_context*, %struct.request_context** %8, align 8
  %42 = call i32 @kfree(%struct.request_context* %41)
  store %struct.request_context* null, %struct.request_context** %4, align 8
  br label %67

43:                                               ; preds = %27
  %44 = load %struct.ezusb_priv*, %struct.ezusb_priv** %5, align 8
  %45 = load %struct.request_context*, %struct.request_context** %8, align 8
  %46 = getelementptr inbounds %struct.request_context, %struct.request_context* %45, i32 0, i32 6
  store %struct.ezusb_priv* %44, %struct.ezusb_priv** %46, align 8
  %47 = load i32, i32* @EZUSB_CTX_START, align 4
  %48 = load %struct.request_context*, %struct.request_context** %8, align 8
  %49 = getelementptr inbounds %struct.request_context, %struct.request_context* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = load %struct.request_context*, %struct.request_context** %8, align 8
  %52 = getelementptr inbounds %struct.request_context, %struct.request_context* %51, i32 0, i32 4
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = load %struct.request_context*, %struct.request_context** %8, align 8
  %55 = getelementptr inbounds %struct.request_context, %struct.request_context* %54, i32 0, i32 3
  store i8* %53, i8** %55, align 8
  %56 = load %struct.request_context*, %struct.request_context** %8, align 8
  %57 = getelementptr inbounds %struct.request_context, %struct.request_context* %56, i32 0, i32 2
  %58 = call i32 @refcount_set(i32* %57, i32 1)
  %59 = load %struct.request_context*, %struct.request_context** %8, align 8
  %60 = getelementptr inbounds %struct.request_context, %struct.request_context* %59, i32 0, i32 1
  %61 = call i32 @init_completion(i32* %60)
  %62 = load %struct.request_context*, %struct.request_context** %8, align 8
  %63 = getelementptr inbounds %struct.request_context, %struct.request_context* %62, i32 0, i32 0
  %64 = load i32, i32* @ezusb_request_timerfn, align 4
  %65 = call i32 @timer_setup(i32* %63, i32 %64, i32 0)
  %66 = load %struct.request_context*, %struct.request_context** %8, align 8
  store %struct.request_context* %66, %struct.request_context** %4, align 8
  br label %67

67:                                               ; preds = %43, %36, %24, %13
  %68 = load %struct.request_context*, %struct.request_context** %4, align 8
  ret %struct.request_context* %68
}

declare dso_local %struct.request_context* @kzalloc(i32, i32) #1

declare dso_local %struct.request_context* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.request_context*) #1

declare dso_local i32 @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
