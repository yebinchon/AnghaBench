; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_ax88179_178a.c_ax88179_phy_read_mmd_indirect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_ax88179_178a.c_ax88179_phy_read_mmd_indirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }

@AX_ACCESS_PHY = common dso_local global i32 0, align 4
@AX88179_PHY_ID = common dso_local global i32 0, align 4
@MII_MMD_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, i32, i32)* @ax88179_phy_read_mmd_indirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ax88179_phy_read_mmd_indirect(%struct.usbnet* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usbnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @ax88179_phy_mmd_indirect(%struct.usbnet* %10, i32 %11, i32 %12)
  %14 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %15 = load i32, i32* @AX_ACCESS_PHY, align 4
  %16 = load i32, i32* @AX88179_PHY_ID, align 4
  %17 = load i32, i32* @MII_MMD_DATA, align 4
  %18 = call i32 @ax88179_read_cmd(%struct.usbnet* %14, i32 %15, i32 %16, i32 %17, i32 2, i32* %9)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %4, align 4
  br label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local i32 @ax88179_phy_mmd_indirect(%struct.usbnet*, i32, i32) #1

declare dso_local i32 @ax88179_read_cmd(%struct.usbnet*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
