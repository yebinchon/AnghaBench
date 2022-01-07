; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_ax88172a.c_ax88172a_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_ax88172a.c_ax88172a_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, %struct.TYPE_4__*, %struct.TYPE_5__*, %struct.ax88172a_private* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32*, i32*, i32 }
%struct.ax88172a_private = type { i32, i32 }
%struct.usb_interface = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AX_CMD_READ_NODE_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to read MAC address: %d\0A\00", align 1
@ax88172a_netdev_ops = common dso_local global i32 0, align 4
@ax88172a_ethtool_ops = common dso_local global i32 0, align 4
@AX_CMD_SW_PHY_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"Failed to read software interface selection register: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"AX_CMD_SW_PHY_STATUS = 0x%02x\0A\00", align 1
@AX_PHY_SELECT_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"use internal phy\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"use external phy\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Interface mode not supported by driver\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@FLAG_FRAMING_AX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, %struct.usb_interface*)* @ax88172a_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ax88172a_bind(%struct.usbnet* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ax88172a_private*, align 8
  %10 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %4, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %5, align 8
  %11 = load i32, i32* @ETH_ALEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %16 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %17 = call i32 @usbnet_get_endpoints(%struct.usbnet* %15, %struct.usb_interface* %16)
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.ax88172a_private* @kzalloc(i32 8, i32 %18)
  store %struct.ax88172a_private* %19, %struct.ax88172a_private** %9, align 8
  %20 = load %struct.ax88172a_private*, %struct.ax88172a_private** %9, align 8
  %21 = icmp ne %struct.ax88172a_private* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %135

25:                                               ; preds = %2
  %26 = load %struct.ax88172a_private*, %struct.ax88172a_private** %9, align 8
  %27 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %28 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %27, i32 0, i32 3
  store %struct.ax88172a_private* %26, %struct.ax88172a_private** %28, align 8
  %29 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %30 = load i32, i32* @AX_CMD_READ_NODE_ID, align 4
  %31 = load i32, i32* @ETH_ALEN, align 4
  %32 = call i32 @asix_read_cmd(%struct.usbnet* %29, i32 %30, i32 0, i32 0, i32 %31, i32* %14, i32 0)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %25
  %36 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %37 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %36, i32 0, i32 2
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 (%struct.TYPE_5__*, i8*, ...) @netdev_err(%struct.TYPE_5__* %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %131

41:                                               ; preds = %25
  %42 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %43 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %42, i32 0, i32 2
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @ETH_ALEN, align 4
  %48 = call i32 @memcpy(i32 %46, i32* %14, i32 %47)
  %49 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %50 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %49, i32 0, i32 2
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  store i32* @ax88172a_netdev_ops, i32** %52, align 8
  %53 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %54 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %53, i32 0, i32 2
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i32* @ax88172a_ethtool_ops, i32** %56, align 8
  %57 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %58 = load i32, i32* @AX_CMD_SW_PHY_STATUS, align 4
  %59 = call i32 @asix_read_cmd(%struct.usbnet* %57, i32 %58, i32 0, i32 0, i32 1, i32* %14, i32 0)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %41
  %63 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %64 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %63, i32 0, i32 2
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 (%struct.TYPE_5__*, i8*, ...) @netdev_err(%struct.TYPE_5__* %65, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  br label %131

68:                                               ; preds = %41
  %69 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %70 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %69, i32 0, i32 2
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds i32, i32* %14, i64 0
  %73 = load i32, i32* %72, align 16
  %74 = call i32 (%struct.TYPE_5__*, i8*, ...) @netdev_dbg(%struct.TYPE_5__* %71, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  %75 = getelementptr inbounds i32, i32* %14, i64 0
  %76 = load i32, i32* %75, align 16
  %77 = load i32, i32* @AX_PHY_SELECT_MASK, align 4
  %78 = and i32 %76, %77
  switch i32 %78, label %93 [
    i32 128, label %79
    i32 129, label %86
  ]

79:                                               ; preds = %68
  %80 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %81 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %80, i32 0, i32 2
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = call i32 (%struct.TYPE_5__*, i8*, ...) @netdev_dbg(%struct.TYPE_5__* %82, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %84 = load %struct.ax88172a_private*, %struct.ax88172a_private** %9, align 8
  %85 = getelementptr inbounds %struct.ax88172a_private, %struct.ax88172a_private* %84, i32 0, i32 0
  store i32 1, i32* %85, align 4
  br label %100

86:                                               ; preds = %68
  %87 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %88 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %87, i32 0, i32 2
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = call i32 (%struct.TYPE_5__*, i8*, ...) @netdev_dbg(%struct.TYPE_5__* %89, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %91 = load %struct.ax88172a_private*, %struct.ax88172a_private** %9, align 8
  %92 = getelementptr inbounds %struct.ax88172a_private, %struct.ax88172a_private* %91, i32 0, i32 0
  store i32 0, i32* %92, align 4
  br label %100

93:                                               ; preds = %68
  %94 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %95 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %94, i32 0, i32 2
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = call i32 (%struct.TYPE_5__*, i8*, ...) @netdev_err(%struct.TYPE_5__* %96, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %98 = load i32, i32* @ENOTSUPP, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %6, align 4
  br label %131

100:                                              ; preds = %86, %79
  %101 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %102 = load %struct.ax88172a_private*, %struct.ax88172a_private** %9, align 8
  %103 = getelementptr inbounds %struct.ax88172a_private, %struct.ax88172a_private* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @asix_read_phy_addr(%struct.usbnet* %101, i32 %104)
  %106 = load %struct.ax88172a_private*, %struct.ax88172a_private** %9, align 8
  %107 = getelementptr inbounds %struct.ax88172a_private, %struct.ax88172a_private* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %109 = load %struct.ax88172a_private*, %struct.ax88172a_private** %9, align 8
  %110 = getelementptr inbounds %struct.ax88172a_private, %struct.ax88172a_private* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @ax88172a_reset_phy(%struct.usbnet* %108, i32 %111)
  %113 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %114 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %113, i32 0, i32 1
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @FLAG_FRAMING_AX, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %100
  %122 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %123 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %122, i32 0, i32 0
  store i32 2048, i32* %123, align 8
  br label %124

124:                                              ; preds = %121, %100
  %125 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %126 = call i32 @ax88172a_init_mdio(%struct.usbnet* %125)
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %6, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  br label %131

130:                                              ; preds = %124
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %135

131:                                              ; preds = %129, %93, %62, %35
  %132 = load %struct.ax88172a_private*, %struct.ax88172a_private** %9, align 8
  %133 = call i32 @kfree(%struct.ax88172a_private* %132)
  %134 = load i32, i32* %6, align 4
  store i32 %134, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %135

135:                                              ; preds = %131, %130, %22
  %136 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %136)
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @usbnet_get_endpoints(%struct.usbnet*, %struct.usb_interface*) #2

declare dso_local %struct.ax88172a_private* @kzalloc(i32, i32) #2

declare dso_local i32 @asix_read_cmd(%struct.usbnet*, i32, i32, i32, i32, i32*, i32) #2

declare dso_local i32 @netdev_err(%struct.TYPE_5__*, i8*, ...) #2

declare dso_local i32 @memcpy(i32, i32*, i32) #2

declare dso_local i32 @netdev_dbg(%struct.TYPE_5__*, i8*, ...) #2

declare dso_local i32 @asix_read_phy_addr(%struct.usbnet*, i32) #2

declare dso_local i32 @ax88172a_reset_phy(%struct.usbnet*, i32) #2

declare dso_local i32 @ax88172a_init_mdio(%struct.usbnet*) #2

declare dso_local i32 @kfree(%struct.ax88172a_private*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
