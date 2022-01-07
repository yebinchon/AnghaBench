; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_mcs7830.c_mcs7830_apply_base_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_mcs7830.c_mcs7830_apply_base_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Cannot set MAC address\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Cannot set autoneg\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*)* @mcs7830_apply_base_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcs7830_apply_base_config(%struct.usbnet* %0) #0 {
  %2 = alloca %struct.usbnet*, align 8
  %3 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %2, align 8
  %4 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %5 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %6 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %5, i32 0, i32 1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @mcs7830_hif_set_mac_address(%struct.usbnet* %4, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %15 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = call i32 @dev_info(i32* %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %37

19:                                               ; preds = %1
  %20 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %21 = call i32 @mcs7830_set_autoneg(%struct.usbnet* %20, i32 0)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %26 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = call i32 @dev_info(i32* %28, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %37

30:                                               ; preds = %19
  %31 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %32 = call i32 @mcs7830_hif_update_multicast_hash(%struct.usbnet* %31)
  %33 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %34 = call i32 @mcs7830_hif_update_config(%struct.usbnet* %33)
  %35 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %36 = call i32 @mcs7830_rev_C_fixup(%struct.usbnet* %35)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %30, %24, %13
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @mcs7830_hif_set_mac_address(%struct.usbnet*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @mcs7830_set_autoneg(%struct.usbnet*, i32) #1

declare dso_local i32 @mcs7830_hif_update_multicast_hash(%struct.usbnet*) #1

declare dso_local i32 @mcs7830_hif_update_config(%struct.usbnet*) #1

declare dso_local i32 @mcs7830_rev_C_fixup(%struct.usbnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
