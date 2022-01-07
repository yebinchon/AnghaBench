; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_mcba_usb.c_convert_can2host_bitrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_mcba_usb.c_convert_can2host_bitrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcba_usb_msg_ka_can = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mcba_usb_msg_ka_can*)* @convert_can2host_bitrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_can2host_bitrate(%struct.mcba_usb_msg_ka_can* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mcba_usb_msg_ka_can*, align 8
  %4 = alloca i32, align 4
  store %struct.mcba_usb_msg_ka_can* %0, %struct.mcba_usb_msg_ka_can** %3, align 8
  %5 = load %struct.mcba_usb_msg_ka_can*, %struct.mcba_usb_msg_ka_can** %3, align 8
  %6 = getelementptr inbounds %struct.mcba_usb_msg_ka_can, %struct.mcba_usb_msg_ka_can* %5, i32 0, i32 0
  %7 = call i32 @get_unaligned_be16(i32* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 33
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 83
  br i1 %12, label %13, label %17

13:                                               ; preds = %10, %1
  %14 = load i32, i32* %4, align 4
  %15 = mul nsw i32 %14, 1000
  %16 = add nsw i32 %15, 333
  store i32 %16, i32* %2, align 4
  br label %20

17:                                               ; preds = %10
  %18 = load i32, i32* %4, align 4
  %19 = mul nsw i32 %18, 1000
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %17, %13
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @get_unaligned_be16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
