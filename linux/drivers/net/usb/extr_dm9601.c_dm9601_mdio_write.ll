; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_dm9601.c_dm9601_mdio_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_dm9601.c_dm9601_mdio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.usbnet = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Only internal phy supported\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"dm9601_mdio_write() phy_id=0x%02x, loc=0x%02x, val=0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32, i32)* @dm9601_mdio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm9601_mdio_write(%struct.net_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.usbnet*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.usbnet* @netdev_priv(%struct.net_device* %11)
  store %struct.usbnet* %12, %struct.usbnet** %9, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @cpu_to_le16(i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %19 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %34

22:                                               ; preds = %4
  %23 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %24 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %25, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %27, i32 %28)
  %30 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @dm_write_shared_word(%struct.usbnet* %30, i32 1, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %22, %17
  ret void
}

declare dso_local %struct.usbnet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*, ...) #1

declare dso_local i32 @dm_write_shared_word(%struct.usbnet*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
