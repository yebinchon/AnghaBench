; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_mcba_usb.c_mcba_usb_xmit_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_mcba_usb.c_mcba_usb_xmit_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcba_priv = type { i32 }
%struct.mcba_usb_msg = type { i32 }
%struct.mcba_usb_ctx = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"Lack of free ctx. Sending (%d) cmd aborted\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Failed to send cmd (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mcba_priv*, %struct.mcba_usb_msg*)* @mcba_usb_xmit_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcba_usb_xmit_cmd(%struct.mcba_priv* %0, %struct.mcba_usb_msg* %1) #0 {
  %3 = alloca %struct.mcba_priv*, align 8
  %4 = alloca %struct.mcba_usb_msg*, align 8
  %5 = alloca %struct.mcba_usb_ctx*, align 8
  %6 = alloca i32, align 4
  store %struct.mcba_priv* %0, %struct.mcba_priv** %3, align 8
  store %struct.mcba_usb_msg* %1, %struct.mcba_usb_msg** %4, align 8
  store %struct.mcba_usb_ctx* null, %struct.mcba_usb_ctx** %5, align 8
  %7 = load %struct.mcba_priv*, %struct.mcba_priv** %3, align 8
  %8 = call %struct.mcba_usb_ctx* @mcba_usb_get_free_ctx(%struct.mcba_priv* %7, i32* null)
  store %struct.mcba_usb_ctx* %8, %struct.mcba_usb_ctx** %5, align 8
  %9 = load %struct.mcba_usb_ctx*, %struct.mcba_usb_ctx** %5, align 8
  %10 = icmp ne %struct.mcba_usb_ctx* %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %2
  %12 = load %struct.mcba_priv*, %struct.mcba_priv** %3, align 8
  %13 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.mcba_usb_msg*, %struct.mcba_usb_msg** %4, align 8
  %16 = getelementptr inbounds %struct.mcba_usb_msg, %struct.mcba_usb_msg* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @netdev_err(i32 %14, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %34

19:                                               ; preds = %2
  %20 = load %struct.mcba_priv*, %struct.mcba_priv** %3, align 8
  %21 = load %struct.mcba_usb_msg*, %struct.mcba_usb_msg** %4, align 8
  %22 = load %struct.mcba_usb_ctx*, %struct.mcba_usb_ctx** %5, align 8
  %23 = call i32 @mcba_usb_xmit(%struct.mcba_priv* %20, %struct.mcba_usb_msg* %21, %struct.mcba_usb_ctx* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %19
  %27 = load %struct.mcba_priv*, %struct.mcba_priv** %3, align 8
  %28 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mcba_usb_msg*, %struct.mcba_usb_msg** %4, align 8
  %31 = getelementptr inbounds %struct.mcba_usb_msg, %struct.mcba_usb_msg* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @netdev_err(i32 %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %11, %26, %19
  ret void
}

declare dso_local %struct.mcba_usb_ctx* @mcba_usb_get_free_ctx(%struct.mcba_priv*, i32*) #1

declare dso_local i32 @netdev_err(i32, i8*, i32) #1

declare dso_local i32 @mcba_usb_xmit(%struct.mcba_priv*, %struct.mcba_usb_msg*, %struct.mcba_usb_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
