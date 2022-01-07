; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_mcba_usb.c_mcba_usb_process_ka_usb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_mcba_usb.c_mcba_usb_process_ka_usb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcba_priv = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mcba_usb_msg_ka_usb = type { i64, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"PIC USB version %hhu.%hhu\0A\00", align 1
@MCBA_TERMINATION_ENABLED = common dso_local global i32 0, align 4
@MCBA_TERMINATION_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mcba_priv*, %struct.mcba_usb_msg_ka_usb*)* @mcba_usb_process_ka_usb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcba_usb_process_ka_usb(%struct.mcba_priv* %0, %struct.mcba_usb_msg_ka_usb* %1) #0 {
  %3 = alloca %struct.mcba_priv*, align 8
  %4 = alloca %struct.mcba_usb_msg_ka_usb*, align 8
  store %struct.mcba_priv* %0, %struct.mcba_priv** %3, align 8
  store %struct.mcba_usb_msg_ka_usb* %1, %struct.mcba_usb_msg_ka_usb** %4, align 8
  %5 = load %struct.mcba_priv*, %struct.mcba_priv** %3, align 8
  %6 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @unlikely(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = load %struct.mcba_priv*, %struct.mcba_priv** %3, align 8
  %12 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.mcba_usb_msg_ka_usb*, %struct.mcba_usb_msg_ka_usb** %4, align 8
  %15 = getelementptr inbounds %struct.mcba_usb_msg_ka_usb, %struct.mcba_usb_msg_ka_usb* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.mcba_usb_msg_ka_usb*, %struct.mcba_usb_msg_ka_usb** %4, align 8
  %18 = getelementptr inbounds %struct.mcba_usb_msg_ka_usb, %struct.mcba_usb_msg_ka_usb* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @netdev_info(i32 %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19)
  %21 = load %struct.mcba_priv*, %struct.mcba_priv** %3, align 8
  %22 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %21, i32 0, i32 0
  store i32 0, i32* %22, align 4
  br label %23

23:                                               ; preds = %10, %2
  %24 = load %struct.mcba_usb_msg_ka_usb*, %struct.mcba_usb_msg_ka_usb** %4, align 8
  %25 = getelementptr inbounds %struct.mcba_usb_msg_ka_usb, %struct.mcba_usb_msg_ka_usb* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i32, i32* @MCBA_TERMINATION_ENABLED, align 4
  %30 = load %struct.mcba_priv*, %struct.mcba_priv** %3, align 8
  %31 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  br label %38

33:                                               ; preds = %23
  %34 = load i32, i32* @MCBA_TERMINATION_DISABLED, align 4
  %35 = load %struct.mcba_priv*, %struct.mcba_priv** %3, align 8
  %36 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 4
  br label %38

38:                                               ; preds = %33, %28
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netdev_info(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
