; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_ch9200.c_get_mac_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_ch9200.c_get_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"get_mac_address:\0A\09usbnet VID:%0x PID:%0x\0A\00", align 1
@REQUEST_READ = common dso_local global i32 0, align 4
@MAC_REG_STATION_L = common dso_local global i32 0, align 4
@CONTROL_TIMEOUT_MS = common dso_local global i32 0, align 4
@MAC_REG_STATION_M = common dso_local global i32 0, align 4
@MAC_REG_STATION_H = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, i8*)* @get_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_mac_address(%struct.usbnet* %0, i8* %1) #0 {
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [6 x i8], align 1
  %7 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %9 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %12 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @le16_to_cpu(i32 %16)
  %18 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %19 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @le16_to_cpu(i32 %23)
  %25 = call i32 @netdev_dbg(i32 %10, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %24)
  %26 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 0
  %27 = call i32 @memset(i8* %26, i32 0, i32 6)
  %28 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %29 = load i32, i32* @REQUEST_READ, align 4
  %30 = load i32, i32* @MAC_REG_STATION_L, align 4
  %31 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 0
  %32 = load i32, i32* @CONTROL_TIMEOUT_MS, align 4
  %33 = call i32 @control_read(%struct.usbnet* %28, i32 %29, i32 0, i32 %30, i8* %31, i32 2, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %35 = load i32, i32* @REQUEST_READ, align 4
  %36 = load i32, i32* @MAC_REG_STATION_M, align 4
  %37 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 0
  %38 = getelementptr inbounds i8, i8* %37, i64 2
  %39 = load i32, i32* @CONTROL_TIMEOUT_MS, align 4
  %40 = call i32 @control_read(%struct.usbnet* %34, i32 %35, i32 0, i32 %36, i8* %38, i32 2, i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* %7, align 4
  %43 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %44 = load i32, i32* @REQUEST_READ, align 4
  %45 = load i32, i32* @MAC_REG_STATION_H, align 4
  %46 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 0
  %47 = getelementptr inbounds i8, i8* %46, i64 4
  %48 = load i32, i32* @CONTROL_TIMEOUT_MS, align 4
  %49 = call i32 @control_read(%struct.usbnet* %43, i32 %44, i32 0, i32 %45, i8* %47, i32 2, i32 %48)
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @ETH_ALEN, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %2
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %55, %2
  %59 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 5
  %60 = load i8, i8* %59, align 1
  %61 = load i8*, i8** %4, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  store i8 %60, i8* %62, align 1
  %63 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 4
  %64 = load i8, i8* %63, align 1
  %65 = load i8*, i8** %4, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  store i8 %64, i8* %66, align 1
  %67 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 3
  %68 = load i8, i8* %67, align 1
  %69 = load i8*, i8** %4, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 2
  store i8 %68, i8* %70, align 1
  %71 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 2
  %72 = load i8, i8* %71, align 1
  %73 = load i8*, i8** %4, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 3
  store i8 %72, i8* %74, align 1
  %75 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 1
  %76 = load i8, i8* %75, align 1
  %77 = load i8*, i8** %4, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 4
  store i8 %76, i8* %78, align 1
  %79 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 0
  %80 = load i8, i8* %79, align 1
  %81 = load i8*, i8** %4, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 5
  store i8 %80, i8* %82, align 1
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @netdev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @control_read(%struct.usbnet*, i32, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
