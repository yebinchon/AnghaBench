; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_asix_devices.c_ax88772_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_asix_devices.c_ax88772_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.asix_data = type { i32 }

@AX_CMD_WRITE_NODE_ID = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@AX_DEFAULT_RX_CTL = common dso_local global i32 0, align 4
@AX88772_MEDIUM_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*)* @ax88772_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ax88772_reset(%struct.usbnet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca %struct.asix_data*, align 8
  %5 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  %6 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %7 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %6, i32 0, i32 1
  %8 = bitcast i32* %7 to %struct.asix_data*
  store %struct.asix_data* %8, %struct.asix_data** %4, align 8
  %9 = load %struct.asix_data*, %struct.asix_data** %4, align 8
  %10 = getelementptr inbounds %struct.asix_data, %struct.asix_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %13 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ether_addr_copy(i32 %11, i32 %16)
  %18 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %19 = load i32, i32* @AX_CMD_WRITE_NODE_ID, align 4
  %20 = load i32, i32* @ETH_ALEN, align 4
  %21 = load %struct.asix_data*, %struct.asix_data** %4, align 8
  %22 = getelementptr inbounds %struct.asix_data, %struct.asix_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @asix_write_cmd(%struct.usbnet* %18, i32 %19, i32 0, i32 0, i32 %20, i32 %23, i32 0)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  br label %43

28:                                               ; preds = %1
  %29 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %30 = load i32, i32* @AX_DEFAULT_RX_CTL, align 4
  %31 = call i32 @asix_write_rx_ctl(%struct.usbnet* %29, i32 %30, i32 0)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %43

35:                                               ; preds = %28
  %36 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %37 = load i32, i32* @AX88772_MEDIUM_DEFAULT, align 4
  %38 = call i32 @asix_write_medium_mode(%struct.usbnet* %36, i32 %37, i32 0)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %43

42:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %45

43:                                               ; preds = %41, %34, %27
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %43, %42
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @asix_write_cmd(%struct.usbnet*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @asix_write_rx_ctl(%struct.usbnet*, i32, i32) #1

declare dso_local i32 @asix_write_medium_mode(%struct.usbnet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
