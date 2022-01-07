; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_ch9200.c_ch9200_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_ch9200.c_ch9200_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__, i64 }
%struct.TYPE_3__ = type { i32, i64, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.usb_interface = type { i32 }

@ch9200_mdio_read = common dso_local global i32 0, align 4
@ch9200_mdio_write = common dso_local global i32 0, align 4
@REQUEST_WRITE = common dso_local global i32 0, align 4
@MAC_REG_THRESHOLD = common dso_local global i32 0, align 4
@CONTROL_TIMEOUT_MS = common dso_local global i32 0, align 4
@MAC_REG_FIFO_DEPTH = common dso_local global i32 0, align 4
@MAC_REG_PAUSE = common dso_local global i32 0, align 4
@MAC_REG_FLOW_CONTROL = common dso_local global i32 0, align 4
@MAC_REG_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, %struct.usb_interface*)* @ch9200_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ch9200_bind(%struct.usbnet* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x i8], align 1
  store %struct.usbnet* %0, %struct.usbnet** %4, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %9 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %10 = call i32 @usbnet_get_endpoints(%struct.usbnet* %8, %struct.usb_interface* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %3, align 4
  br label %109

15:                                               ; preds = %2
  %16 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %17 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %20 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 4
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %21, align 8
  %22 = load i32, i32* @ch9200_mdio_read, align 4
  %23 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %24 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 3
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* @ch9200_mdio_write, align 4
  %27 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %28 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  store i32 %26, i32* %29, align 8
  %30 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %31 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 31, i32* %32, align 8
  %33 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %34 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  store i32 31, i32* %35, align 4
  %36 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %37 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %42 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %40, %45
  %47 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %48 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %47, i32 0, i32 3
  store i64 %46, i64* %48, align 8
  %49 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %50 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %49, i32 0, i32 0
  store i32 1552, i32* %50, align 8
  %51 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %52 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %51, i32 0, i32 2
  %53 = call i32 @mii_nway_restart(%struct.TYPE_4__* %52)
  %54 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  store i8 1, i8* %54, align 1
  %55 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 1
  store i8 15, i8* %55, align 1
  %56 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %57 = load i32, i32* @REQUEST_WRITE, align 4
  %58 = load i32, i32* @MAC_REG_THRESHOLD, align 4
  %59 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %60 = load i32, i32* @CONTROL_TIMEOUT_MS, align 4
  %61 = call i32 @control_write(%struct.usbnet* %56, i32 %57, i32 0, i32 %58, i8* %59, i32 2, i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  store i8 -96, i8* %62, align 1
  %63 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 1
  store i8 -112, i8* %63, align 1
  %64 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %65 = load i32, i32* @REQUEST_WRITE, align 4
  %66 = load i32, i32* @MAC_REG_FIFO_DEPTH, align 4
  %67 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %68 = load i32, i32* @CONTROL_TIMEOUT_MS, align 4
  %69 = call i32 @control_write(%struct.usbnet* %64, i32 %65, i32 0, i32 %66, i8* %67, i32 2, i32 %68)
  store i32 %69, i32* %6, align 4
  %70 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  store i8 48, i8* %70, align 1
  %71 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 1
  store i8 0, i8* %71, align 1
  %72 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %73 = load i32, i32* @REQUEST_WRITE, align 4
  %74 = load i32, i32* @MAC_REG_PAUSE, align 4
  %75 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %76 = load i32, i32* @CONTROL_TIMEOUT_MS, align 4
  %77 = call i32 @control_write(%struct.usbnet* %72, i32 %73, i32 0, i32 %74, i8* %75, i32 2, i32 %76)
  store i32 %77, i32* %6, align 4
  %78 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  store i8 23, i8* %78, align 1
  %79 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 1
  store i8 -40, i8* %79, align 1
  %80 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %81 = load i32, i32* @REQUEST_WRITE, align 4
  %82 = load i32, i32* @MAC_REG_FLOW_CONTROL, align 4
  %83 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %84 = load i32, i32* @CONTROL_TIMEOUT_MS, align 4
  %85 = call i32 @control_write(%struct.usbnet* %80, i32 %81, i32 0, i32 %82, i8* %83, i32 2, i32 %84)
  store i32 %85, i32* %6, align 4
  %86 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  store i8 1, i8* %86, align 1
  %87 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 1
  store i8 0, i8* %87, align 1
  %88 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %89 = load i32, i32* @REQUEST_WRITE, align 4
  %90 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %91 = load i32, i32* @CONTROL_TIMEOUT_MS, align 4
  %92 = call i32 @control_write(%struct.usbnet* %88, i32 %89, i32 0, i32 254, i8* %90, i32 2, i32 %91)
  store i32 %92, i32* %6, align 4
  %93 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  store i8 95, i8* %93, align 1
  %94 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 1
  store i8 13, i8* %94, align 1
  %95 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %96 = load i32, i32* @REQUEST_WRITE, align 4
  %97 = load i32, i32* @MAC_REG_CTRL, align 4
  %98 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %99 = load i32, i32* @CONTROL_TIMEOUT_MS, align 4
  %100 = call i32 @control_write(%struct.usbnet* %95, i32 %96, i32 0, i32 %97, i8* %98, i32 2, i32 %99)
  store i32 %100, i32* %6, align 4
  %101 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %102 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %103 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %102, i32 0, i32 1
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @get_mac_address(%struct.usbnet* %101, i32 %106)
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %15, %13
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @usbnet_get_endpoints(%struct.usbnet*, %struct.usb_interface*) #1

declare dso_local i32 @mii_nway_restart(%struct.TYPE_4__*) #1

declare dso_local i32 @control_write(%struct.usbnet*, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @get_mac_address(%struct.usbnet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
