; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_sr9700.c_sr9700_link_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_sr9700.c_sr9700_link_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, i32 }
%struct.ethtool_cmd = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"link_reset() speed: %d duplex: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*)* @sr9700_link_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sr9700_link_reset(%struct.usbnet* %0) #0 {
  %2 = alloca %struct.usbnet*, align 8
  %3 = alloca %struct.ethtool_cmd, align 4
  store %struct.usbnet* %0, %struct.usbnet** %2, align 8
  %4 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %5 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %4, i32 0, i32 1
  %6 = call i32 @mii_check_media(i32* %5, i32 1, i32 1)
  %7 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %8 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %7, i32 0, i32 1
  %9 = call i32 @mii_ethtool_gset(i32* %8, %struct.ethtool_cmd* %3)
  %10 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %11 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %3, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %3, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @netdev_dbg(i32 %12, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %16)
  ret i32 0
}

declare dso_local i32 @mii_check_media(i32*, i32, i32) #1

declare dso_local i32 @mii_ethtool_gset(i32*, %struct.ethtool_cmd*) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
