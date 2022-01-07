; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_ax88172a.c_ax88172a_init_mdio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_ax88172a.c_ax88172a_init_mdio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, %struct.TYPE_7__*, %struct.ax88172a_private* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.ax88172a_private = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8*, i32, i32*, i32*, i8* }

@.str = private unnamed_addr constant [29 x i8] c"Could not allocate MDIO bus\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@asix_mdio_bus_read = common dso_local global i32 0, align 4
@asix_mdio_bus_write = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Asix MDIO Bus\00", align 1
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"usb-%03d:%03d\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Could not register MDIO bus\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"registered mdio bus %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*)* @ax88172a_init_mdio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ax88172a_init_mdio(%struct.usbnet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca %struct.ax88172a_private*, align 8
  %5 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  %6 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %7 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %6, i32 0, i32 2
  %8 = load %struct.ax88172a_private*, %struct.ax88172a_private** %7, align 8
  store %struct.ax88172a_private* %8, %struct.ax88172a_private** %4, align 8
  %9 = call %struct.TYPE_8__* (...) @mdiobus_alloc()
  %10 = load %struct.ax88172a_private*, %struct.ax88172a_private** %4, align 8
  %11 = getelementptr inbounds %struct.ax88172a_private, %struct.ax88172a_private* %10, i32 0, i32 0
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %11, align 8
  %12 = load %struct.ax88172a_private*, %struct.ax88172a_private** %4, align 8
  %13 = getelementptr inbounds %struct.ax88172a_private, %struct.ax88172a_private* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = icmp ne %struct.TYPE_8__* %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %1
  %17 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %18 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @netdev_err(i32 %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %88

23:                                               ; preds = %1
  %24 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %25 = bitcast %struct.usbnet* %24 to i8*
  %26 = load %struct.ax88172a_private*, %struct.ax88172a_private** %4, align 8
  %27 = getelementptr inbounds %struct.ax88172a_private, %struct.ax88172a_private* %26, i32 0, i32 0
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 4
  store i8* %25, i8** %29, align 8
  %30 = load %struct.ax88172a_private*, %struct.ax88172a_private** %4, align 8
  %31 = getelementptr inbounds %struct.ax88172a_private, %struct.ax88172a_private* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 3
  store i32* @asix_mdio_bus_read, i32** %33, align 8
  %34 = load %struct.ax88172a_private*, %struct.ax88172a_private** %4, align 8
  %35 = getelementptr inbounds %struct.ax88172a_private, %struct.ax88172a_private* %34, i32 0, i32 0
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  store i32* @asix_mdio_bus_write, i32** %37, align 8
  %38 = load %struct.ax88172a_private*, %struct.ax88172a_private** %4, align 8
  %39 = getelementptr inbounds %struct.ax88172a_private, %struct.ax88172a_private* %38, i32 0, i32 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %41, align 8
  %42 = load %struct.ax88172a_private*, %struct.ax88172a_private** %4, align 8
  %43 = getelementptr inbounds %struct.ax88172a_private, %struct.ax88172a_private* %42, i32 0, i32 0
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %48 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %49 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %48, i32 0, i32 1
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %56 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %55, i32 0, i32 1
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @snprintf(i32 %46, i32 %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %54, i32 %59)
  %61 = load %struct.ax88172a_private*, %struct.ax88172a_private** %4, align 8
  %62 = getelementptr inbounds %struct.ax88172a_private, %struct.ax88172a_private* %61, i32 0, i32 0
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = call i32 @mdiobus_register(%struct.TYPE_8__* %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %23
  %68 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %69 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @netdev_err(i32 %70, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %82

72:                                               ; preds = %23
  %73 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %74 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.ax88172a_private*, %struct.ax88172a_private** %4, align 8
  %77 = getelementptr inbounds %struct.ax88172a_private, %struct.ax88172a_private* %76, i32 0, i32 0
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @netdev_info(i32 %75, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %80)
  store i32 0, i32* %2, align 4
  br label %88

82:                                               ; preds = %67
  %83 = load %struct.ax88172a_private*, %struct.ax88172a_private** %4, align 8
  %84 = getelementptr inbounds %struct.ax88172a_private, %struct.ax88172a_private* %83, i32 0, i32 0
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = call i32 @mdiobus_free(%struct.TYPE_8__* %85)
  %87 = load i32, i32* %5, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %82, %72, %16
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local %struct.TYPE_8__* @mdiobus_alloc(...) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @mdiobus_register(%struct.TYPE_8__*) #1

declare dso_local i32 @netdev_info(i32, i8*, i32) #1

declare dso_local i32 @mdiobus_free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
