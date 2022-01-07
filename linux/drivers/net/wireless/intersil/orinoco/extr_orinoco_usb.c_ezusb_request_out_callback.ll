; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_orinoco_usb.c_ezusb_request_out_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_orinoco_usb.c_ezusb_request_out_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i64, %struct.request_context* }
%struct.request_context = type { i32, i32, i32, i64, %struct.ezusb_priv* }
%struct.ezusb_priv = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"interrupt called with dead ctx\0A\00", align 1
@EZUSB_CTX_REQ_COMPLETE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@DEF_TIMEOUT = common dso_local global i64 0, align 8
@EZUSB_CTX_COMPLETE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Unexpected state(0x%x, %d) in OUT URB\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @ezusb_request_out_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ezusb_request_out_callback(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.request_context*, align 8
  %6 = alloca %struct.ezusb_priv*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %7 = load %struct.urb*, %struct.urb** %2, align 8
  %8 = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 1
  %9 = load %struct.request_context*, %struct.request_context** %8, align 8
  store %struct.request_context* %9, %struct.request_context** %5, align 8
  %10 = load %struct.request_context*, %struct.request_context** %5, align 8
  %11 = getelementptr inbounds %struct.request_context, %struct.request_context* %10, i32 0, i32 4
  %12 = load %struct.ezusb_priv*, %struct.ezusb_priv** %11, align 8
  store %struct.ezusb_priv* %12, %struct.ezusb_priv** %6, align 8
  %13 = load %struct.ezusb_priv*, %struct.ezusb_priv** %6, align 8
  %14 = getelementptr inbounds %struct.ezusb_priv, %struct.ezusb_priv* %13, i32 0, i32 0
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.request_context*, %struct.request_context** %5, align 8
  %18 = getelementptr inbounds %struct.request_context, %struct.request_context* %17, i32 0, i32 1
  %19 = call i32 @del_timer(i32* %18)
  %20 = load %struct.request_context*, %struct.request_context** %5, align 8
  %21 = getelementptr inbounds %struct.request_context, %struct.request_context* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load %struct.ezusb_priv*, %struct.ezusb_priv** %6, align 8
  %26 = getelementptr inbounds %struct.ezusb_priv, %struct.ezusb_priv* %25, i32 0, i32 0
  %27 = load i64, i64* %3, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  %29 = call i32 @pr_warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %106

30:                                               ; preds = %1
  %31 = load %struct.request_context*, %struct.request_context** %5, align 8
  %32 = getelementptr inbounds %struct.request_context, %struct.request_context* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %4, align 4
  %34 = load %struct.urb*, %struct.urb** %2, align 8
  %35 = getelementptr inbounds %struct.urb, %struct.urb* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %82

38:                                               ; preds = %30
  %39 = load i32, i32* %4, align 4
  switch i32 %39, label %71 [
    i32 130, label %40
    i32 128, label %61
  ]

40:                                               ; preds = %38
  %41 = load %struct.request_context*, %struct.request_context** %5, align 8
  %42 = getelementptr inbounds %struct.request_context, %struct.request_context* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %40
  %46 = load i32, i32* @EZUSB_CTX_REQ_COMPLETE, align 4
  %47 = load %struct.request_context*, %struct.request_context** %5, align 8
  %48 = getelementptr inbounds %struct.request_context, %struct.request_context* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.ezusb_priv*, %struct.ezusb_priv** %6, align 8
  %50 = load %struct.request_context*, %struct.request_context** %5, align 8
  %51 = getelementptr inbounds %struct.request_context, %struct.request_context* %50, i32 0, i32 1
  %52 = load i64, i64* @jiffies, align 8
  %53 = load i64, i64* @DEF_TIMEOUT, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @ezusb_mod_timer(%struct.ezusb_priv* %49, i32* %51, i64 %54)
  %56 = load %struct.ezusb_priv*, %struct.ezusb_priv** %6, align 8
  %57 = getelementptr inbounds %struct.ezusb_priv, %struct.ezusb_priv* %56, i32 0, i32 0
  %58 = load i64, i64* %3, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  br label %81

60:                                               ; preds = %40
  br label %61

61:                                               ; preds = %38, %60
  %62 = load i32, i32* @EZUSB_CTX_COMPLETE, align 4
  %63 = load %struct.request_context*, %struct.request_context** %5, align 8
  %64 = getelementptr inbounds %struct.request_context, %struct.request_context* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.ezusb_priv*, %struct.ezusb_priv** %6, align 8
  %66 = getelementptr inbounds %struct.ezusb_priv, %struct.ezusb_priv* %65, i32 0, i32 0
  %67 = load i64, i64* %3, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  %69 = load %struct.request_context*, %struct.request_context** %5, align 8
  %70 = call i32 @ezusb_ctx_complete(%struct.request_context* %69)
  br label %81

71:                                               ; preds = %38
  %72 = load %struct.ezusb_priv*, %struct.ezusb_priv** %6, align 8
  %73 = getelementptr inbounds %struct.ezusb_priv, %struct.ezusb_priv* %72, i32 0, i32 0
  %74 = load i64, i64* %3, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  %76 = load i32, i32* %4, align 4
  %77 = load %struct.urb*, %struct.urb** %2, align 8
  %78 = getelementptr inbounds %struct.urb, %struct.urb* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %76, i64 %79)
  br label %81

81:                                               ; preds = %71, %61, %45
  br label %105

82:                                               ; preds = %30
  %83 = load i32, i32* %4, align 4
  switch i32 %83, label %94 [
    i32 130, label %84
    i32 128, label %84
    i32 131, label %87
    i32 129, label %87
  ]

84:                                               ; preds = %82, %82
  %85 = load %struct.request_context*, %struct.request_context** %5, align 8
  %86 = getelementptr inbounds %struct.request_context, %struct.request_context* %85, i32 0, i32 0
  store i32 131, i32* %86, align 8
  br label %87

87:                                               ; preds = %82, %82, %84
  %88 = load %struct.ezusb_priv*, %struct.ezusb_priv** %6, align 8
  %89 = getelementptr inbounds %struct.ezusb_priv, %struct.ezusb_priv* %88, i32 0, i32 0
  %90 = load i64, i64* %3, align 8
  %91 = call i32 @spin_unlock_irqrestore(i32* %89, i64 %90)
  %92 = load %struct.request_context*, %struct.request_context** %5, align 8
  %93 = call i32 @ezusb_ctx_complete(%struct.request_context* %92)
  br label %104

94:                                               ; preds = %82
  %95 = load %struct.ezusb_priv*, %struct.ezusb_priv** %6, align 8
  %96 = getelementptr inbounds %struct.ezusb_priv, %struct.ezusb_priv* %95, i32 0, i32 0
  %97 = load i64, i64* %3, align 8
  %98 = call i32 @spin_unlock_irqrestore(i32* %96, i64 %97)
  %99 = load i32, i32* %4, align 4
  %100 = load %struct.urb*, %struct.urb** %2, align 8
  %101 = getelementptr inbounds %struct.urb, %struct.urb* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %99, i64 %102)
  br label %104

104:                                              ; preds = %94, %87
  br label %105

105:                                              ; preds = %104, %81
  br label %106

106:                                              ; preds = %105, %24
  %107 = load %struct.request_context*, %struct.request_context** %5, align 8
  %108 = call i32 @ezusb_request_context_put(%struct.request_context* %107)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @ezusb_mod_timer(%struct.ezusb_priv*, i32*, i64) #1

declare dso_local i32 @ezusb_ctx_complete(%struct.request_context*) #1

declare dso_local i32 @err(i8*, i32, i64) #1

declare dso_local i32 @ezusb_request_context_put(%struct.request_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
