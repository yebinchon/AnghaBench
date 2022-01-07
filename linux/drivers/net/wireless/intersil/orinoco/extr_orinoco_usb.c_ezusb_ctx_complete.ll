; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_orinoco_usb.c_ezusb_ctx_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_orinoco_usb.c_ezusb_ctx_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_context = type { i32, i32, i32, i32, %struct.ezusb_priv* }
%struct.ezusb_priv = type { i64, i32, %struct.net_device* }
%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32 }

@EZUSB_RID_TX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Called, CTX not terminating, but device gone\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Called, CTX not in terminating state.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request_context*)* @ezusb_ctx_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ezusb_ctx_complete(%struct.request_context* %0) #0 {
  %2 = alloca %struct.request_context*, align 8
  %3 = alloca %struct.ezusb_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.net_device_stats*, align 8
  store %struct.request_context* %0, %struct.request_context** %2, align 8
  %7 = load %struct.request_context*, %struct.request_context** %2, align 8
  %8 = getelementptr inbounds %struct.request_context, %struct.request_context* %7, i32 0, i32 4
  %9 = load %struct.ezusb_priv*, %struct.ezusb_priv** %8, align 8
  store %struct.ezusb_priv* %9, %struct.ezusb_priv** %3, align 8
  %10 = load %struct.ezusb_priv*, %struct.ezusb_priv** %3, align 8
  %11 = getelementptr inbounds %struct.ezusb_priv, %struct.ezusb_priv* %10, i32 0, i32 1
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.request_context*, %struct.request_context** %2, align 8
  %15 = getelementptr inbounds %struct.request_context, %struct.request_context* %14, i32 0, i32 3
  %16 = call i32 @list_del_init(i32* %15)
  %17 = load %struct.ezusb_priv*, %struct.ezusb_priv** %3, align 8
  %18 = getelementptr inbounds %struct.ezusb_priv, %struct.ezusb_priv* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %1
  %22 = load %struct.ezusb_priv*, %struct.ezusb_priv** %3, align 8
  %23 = getelementptr inbounds %struct.ezusb_priv, %struct.ezusb_priv* %22, i32 0, i32 1
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  %26 = load %struct.ezusb_priv*, %struct.ezusb_priv** %3, align 8
  %27 = call i32 @ezusb_req_queue_run(%struct.ezusb_priv* %26)
  %28 = load %struct.ezusb_priv*, %struct.ezusb_priv** %3, align 8
  %29 = getelementptr inbounds %struct.ezusb_priv, %struct.ezusb_priv* %28, i32 0, i32 1
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  br label %32

32:                                               ; preds = %21, %1
  %33 = load %struct.request_context*, %struct.request_context** %2, align 8
  %34 = getelementptr inbounds %struct.request_context, %struct.request_context* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %80 [
    i32 132, label %36
    i32 131, label %36
    i32 130, label %36
    i32 129, label %36
    i32 128, label %36
  ]

36:                                               ; preds = %32, %32, %32, %32, %32
  %37 = load %struct.ezusb_priv*, %struct.ezusb_priv** %3, align 8
  %38 = getelementptr inbounds %struct.ezusb_priv, %struct.ezusb_priv* %37, i32 0, i32 1
  %39 = load i64, i64* %4, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  %41 = load %struct.request_context*, %struct.request_context** %2, align 8
  %42 = getelementptr inbounds %struct.request_context, %struct.request_context* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @EZUSB_RID_TX, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %74

46:                                               ; preds = %36
  %47 = load %struct.ezusb_priv*, %struct.ezusb_priv** %3, align 8
  %48 = getelementptr inbounds %struct.ezusb_priv, %struct.ezusb_priv* %47, i32 0, i32 2
  %49 = load %struct.net_device*, %struct.net_device** %48, align 8
  %50 = icmp ne %struct.net_device* %49, null
  br i1 %50, label %51, label %74

51:                                               ; preds = %46
  %52 = load %struct.ezusb_priv*, %struct.ezusb_priv** %3, align 8
  %53 = getelementptr inbounds %struct.ezusb_priv, %struct.ezusb_priv* %52, i32 0, i32 2
  %54 = load %struct.net_device*, %struct.net_device** %53, align 8
  store %struct.net_device* %54, %struct.net_device** %5, align 8
  %55 = load %struct.net_device*, %struct.net_device** %5, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 0
  store %struct.net_device_stats* %56, %struct.net_device_stats** %6, align 8
  %57 = load %struct.request_context*, %struct.request_context** %2, align 8
  %58 = getelementptr inbounds %struct.request_context, %struct.request_context* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 132
  br i1 %60, label %61, label %66

61:                                               ; preds = %51
  %62 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %63 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  br label %71

66:                                               ; preds = %51
  %67 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %68 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %66, %61
  %72 = load %struct.net_device*, %struct.net_device** %5, align 8
  %73 = call i32 @netif_wake_queue(%struct.net_device* %72)
  br label %74

74:                                               ; preds = %71, %46, %36
  %75 = load %struct.request_context*, %struct.request_context** %2, align 8
  %76 = getelementptr inbounds %struct.request_context, %struct.request_context* %75, i32 0, i32 1
  %77 = call i32 @ezusb_complete_all(i32* %76)
  %78 = load %struct.request_context*, %struct.request_context** %2, align 8
  %79 = call i32 @ezusb_request_context_put(%struct.request_context* %78)
  br label %98

80:                                               ; preds = %32
  %81 = load %struct.ezusb_priv*, %struct.ezusb_priv** %3, align 8
  %82 = getelementptr inbounds %struct.ezusb_priv, %struct.ezusb_priv* %81, i32 0, i32 1
  %83 = load i64, i64* %4, align 8
  %84 = call i32 @spin_unlock_irqrestore(i32* %82, i64 %83)
  %85 = load %struct.ezusb_priv*, %struct.ezusb_priv** %3, align 8
  %86 = getelementptr inbounds %struct.ezusb_priv, %struct.ezusb_priv* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %96, label %89

89:                                               ; preds = %80
  %90 = call i32 @err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %91 = load %struct.request_context*, %struct.request_context** %2, align 8
  %92 = getelementptr inbounds %struct.request_context, %struct.request_context* %91, i32 0, i32 1
  %93 = call i32 @ezusb_complete_all(i32* %92)
  %94 = load %struct.request_context*, %struct.request_context** %2, align 8
  %95 = call i32 @ezusb_request_context_put(%struct.request_context* %94)
  br label %98

96:                                               ; preds = %80
  %97 = call i32 @err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %89, %74
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ezusb_req_queue_run(%struct.ezusb_priv*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @ezusb_complete_all(i32*) #1

declare dso_local i32 @ezusb_request_context_put(%struct.request_context*) #1

declare dso_local i32 @err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
