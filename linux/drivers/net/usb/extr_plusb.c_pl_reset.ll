; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_plusb.c_pl_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_plusb.c_pl_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }

@PL_S_EN = common dso_local global i32 0, align 4
@PL_RESET_OUT = common dso_local global i32 0, align 4
@PL_RESET_IN = common dso_local global i32 0, align 4
@PL_PEER_E = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"pl_reset --> %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*)* @pl_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl_reset(%struct.usbnet* %0) #0 {
  %2 = alloca %struct.usbnet*, align 8
  %3 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %2, align 8
  %4 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %5 = load i32, i32* @PL_S_EN, align 4
  %6 = load i32, i32* @PL_RESET_OUT, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @PL_RESET_IN, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @PL_PEER_E, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @pl_set_QuickLink_features(%struct.usbnet* %4, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %1
  %16 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %17 = call i64 @netif_msg_probe(%struct.usbnet* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %21 = load i32, i32* @link, align 4
  %22 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %23 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @netif_dbg(%struct.usbnet* %20, i32 %21, i32 %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %19, %15, %1
  ret i32 0
}

declare dso_local i32 @pl_set_QuickLink_features(%struct.usbnet*, i32) #1

declare dso_local i64 @netif_msg_probe(%struct.usbnet*) #1

declare dso_local i32 @netif_dbg(%struct.usbnet*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
