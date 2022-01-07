; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_smsc75xx.c_smsc75xx_init_mac_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_smsc75xx.c_smsc75xx_init_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@EEPROM_MAC_OFFSET = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"MAC address read from EEPROM\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"MAC address set to eth_random_addr\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbnet*)* @smsc75xx_init_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smsc75xx_init_mac_address(%struct.usbnet* %0) #0 {
  %2 = alloca %struct.usbnet*, align 8
  %3 = alloca i32*, align 8
  store %struct.usbnet* %0, %struct.usbnet** %2, align 8
  %4 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %5 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %4, i32 0, i32 1
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32* @of_get_mac_address(i32 %9)
  store i32* %10, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @IS_ERR(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %1
  %15 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %16 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @ether_addr_copy(i32 %19, i32* %20)
  br label %60

22:                                               ; preds = %1
  %23 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %24 = load i32, i32* @EEPROM_MAC_OFFSET, align 4
  %25 = load i32, i32* @ETH_ALEN, align 4
  %26 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %27 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @smsc75xx_read_eeprom(%struct.usbnet* %23, i32 %24, i32 %25, i32 %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %22
  %34 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %35 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %34, i32 0, i32 0
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @is_valid_ether_addr(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %33
  %42 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %43 = load i32, i32* @ifup, align 4
  %44 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %45 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %44, i32 0, i32 0
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = call i32 @netif_dbg(%struct.usbnet* %42, i32 %43, %struct.TYPE_7__* %46, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %60

48:                                               ; preds = %33
  br label %49

49:                                               ; preds = %48, %22
  %50 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %51 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %50, i32 0, i32 0
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = call i32 @eth_hw_addr_random(%struct.TYPE_7__* %52)
  %54 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %55 = load i32, i32* @ifup, align 4
  %56 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %57 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %56, i32 0, i32 0
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = call i32 @netif_dbg(%struct.usbnet* %54, i32 %55, %struct.TYPE_7__* %58, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %49, %41, %14
  ret void
}

declare dso_local i32* @of_get_mac_address(i32) #1

declare dso_local i32 @IS_ERR(i32*) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i64 @smsc75xx_read_eeprom(%struct.usbnet*, i32, i32, i32) #1

declare dso_local i64 @is_valid_ether_addr(i32) #1

declare dso_local i32 @netif_dbg(%struct.usbnet*, i32, %struct.TYPE_7__*, i8*) #1

declare dso_local i32 @eth_hw_addr_random(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
