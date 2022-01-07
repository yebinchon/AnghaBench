; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_smsc75xx.c_smsc75xx_set_mac_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_smsc75xx.c_smsc75xx_set_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@RX_ADDRH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Failed to write RX_ADDRH: %d\0A\00", align 1
@RX_ADDRL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to write RX_ADDRL: %d\0A\00", align 1
@ADDR_FILTX_FB_VALID = common dso_local global i32 0, align 4
@ADDR_FILTX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to write ADDR_FILTX: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Failed to write ADDR_FILTX+4: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*)* @smsc75xx_set_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc75xx_set_mac_address(%struct.usbnet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  %7 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %8 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %15 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 %20, 8
  %22 = or i32 %13, %21
  %23 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %24 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %29, 16
  %31 = or i32 %22, %30
  %32 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %33 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 3
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 24
  %40 = or i32 %31, %39
  store i32 %40, i32* %4, align 4
  %41 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %42 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %49 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 5
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %54, 8
  %56 = or i32 %47, %55
  store i32 %56, i32* %5, align 4
  %57 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %58 = load i64, i64* @RX_ADDRH, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @smsc75xx_write_reg(%struct.usbnet* %57, i64 %58, i32 %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %1
  %64 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %65 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @netdev_warn(%struct.TYPE_2__* %66, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %2, align 4
  br label %117

70:                                               ; preds = %1
  %71 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %72 = load i64, i64* @RX_ADDRL, align 8
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @smsc75xx_write_reg(%struct.usbnet* %71, i64 %72, i32 %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %70
  %78 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %79 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @netdev_warn(%struct.TYPE_2__* %80, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %2, align 4
  br label %117

84:                                               ; preds = %70
  %85 = load i32, i32* @ADDR_FILTX_FB_VALID, align 4
  %86 = load i32, i32* %5, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %5, align 4
  %88 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %89 = load i64, i64* @ADDR_FILTX, align 8
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @smsc75xx_write_reg(%struct.usbnet* %88, i64 %89, i32 %90)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %84
  %95 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %96 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @netdev_warn(%struct.TYPE_2__* %97, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* %6, align 4
  store i32 %100, i32* %2, align 4
  br label %117

101:                                              ; preds = %84
  %102 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %103 = load i64, i64* @ADDR_FILTX, align 8
  %104 = add nsw i64 %103, 4
  %105 = load i32, i32* %4, align 4
  %106 = call i32 @smsc75xx_write_reg(%struct.usbnet* %102, i64 %104, i32 %105)
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %101
  %110 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %111 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %110, i32 0, i32 0
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @netdev_warn(%struct.TYPE_2__* %112, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %109, %101
  %116 = load i32, i32* %6, align 4
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %115, %94, %77, %63
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32 @smsc75xx_write_reg(%struct.usbnet*, i64, i32) #1

declare dso_local i32 @netdev_warn(%struct.TYPE_2__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
