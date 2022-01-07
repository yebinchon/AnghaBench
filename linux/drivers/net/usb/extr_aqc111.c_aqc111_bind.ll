; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_aqc111.c_aqc111_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_aqc111.c_aqc111_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, %struct.TYPE_7__*, i32, i32, %struct.aqc111_data* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32 }
%struct.aqc111_data = type { i32, i32 }
%struct.usb_interface = type { i32 }
%struct.usb_device = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"usbnet_get_endpoints failed\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@URB_SIZE = common dso_local global i32 0, align 4
@aqc111_netdev_ops = common dso_local global i32 0, align 4
@aqc111_ethtool_ops = common dso_local global i32 0, align 4
@AQ_SUPPORT_HW_FEATURE = common dso_local global i32 0, align 4
@AQ_SUPPORT_FEATURE = common dso_local global i32 0, align 4
@AQ_SUPPORT_VLAN_FEATURE = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@USB_SPEED_SUPER = common dso_local global i32 0, align 4
@SPEED_5000 = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, %struct.usb_interface*)* @aqc111_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aqc111_bind(%struct.usbnet* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.aqc111_data*, align 8
  %9 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %4, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %5, align 8
  %10 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %11 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %10)
  store %struct.usb_device* %11, %struct.usb_device** %6, align 8
  %12 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %13 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  %15 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %16 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %24 = call i32 @usb_driver_set_configuration(%struct.usb_device* %23, i32 1)
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %158

27:                                               ; preds = %2
  %28 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %29 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @usb_reset_configuration(i32 %30)
  %32 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %33 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %34 = call i32 @usbnet_get_endpoints(%struct.usbnet* %32, %struct.usb_interface* %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %27
  %38 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %39 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %38, i32 0, i32 1
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = call i32 @netdev_dbg(%struct.TYPE_7__* %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %3, align 4
  br label %158

43:                                               ; preds = %27
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.aqc111_data* @kzalloc(i32 8, i32 %44)
  store %struct.aqc111_data* %45, %struct.aqc111_data** %8, align 8
  %46 = load %struct.aqc111_data*, %struct.aqc111_data** %8, align 8
  %47 = icmp ne %struct.aqc111_data* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %158

51:                                               ; preds = %43
  %52 = load %struct.aqc111_data*, %struct.aqc111_data** %8, align 8
  %53 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %54 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %53, i32 0, i32 4
  store %struct.aqc111_data* %52, %struct.aqc111_data** %54, align 8
  %55 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %56 = call i32 @aqc111_read_perm_mac(%struct.usbnet* %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %154

60:                                               ; preds = %51
  %61 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %62 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %61, i32 0, i32 1
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 9
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %67 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %66, i32 0, i32 1
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 8
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @ether_addr_copy(i32 %65, i32 %70)
  %72 = load i32, i32* @URB_SIZE, align 4
  %73 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %74 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %76 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %75, i32 0, i32 1
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = add i64 %80, 4
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %78, align 8
  %83 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %84 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %83, i32 0, i32 1
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = add i64 %88, 4
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %86, align 4
  %91 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %92 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %91, i32 0, i32 1
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 2
  store i32 16334, i32* %94, align 8
  %95 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %96 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %95, i32 0, i32 1
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 7
  store i32* @aqc111_netdev_ops, i32** %98, align 8
  %99 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %100 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %99, i32 0, i32 1
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 6
  store i32* @aqc111_ethtool_ops, i32** %102, align 8
  %103 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %104 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i64 @usb_device_no_sg_constraint(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %60
  %109 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %110 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %109, i32 0, i32 0
  store i32 1, i32* %110, align 8
  br label %111

111:                                              ; preds = %108, %60
  %112 = load i32, i32* @AQ_SUPPORT_HW_FEATURE, align 4
  %113 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %114 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %113, i32 0, i32 1
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, %112
  store i32 %118, i32* %116, align 4
  %119 = load i32, i32* @AQ_SUPPORT_FEATURE, align 4
  %120 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %121 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %120, i32 0, i32 1
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = or i32 %124, %119
  store i32 %125, i32* %123, align 8
  %126 = load i32, i32* @AQ_SUPPORT_VLAN_FEATURE, align 4
  %127 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %128 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %127, i32 0, i32 1
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %126
  store i32 %132, i32* %130, align 4
  %133 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %134 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %133, i32 0, i32 1
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %134, align 8
  %136 = call i32 @netif_set_gso_max_size(%struct.TYPE_7__* %135, i32 65535)
  %137 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %138 = load %struct.aqc111_data*, %struct.aqc111_data** %8, align 8
  %139 = call i32 @aqc111_read_fw_version(%struct.usbnet* %137, %struct.aqc111_data* %138)
  %140 = load i32, i32* @AUTONEG_ENABLE, align 4
  %141 = load %struct.aqc111_data*, %struct.aqc111_data** %8, align 8
  %142 = getelementptr inbounds %struct.aqc111_data, %struct.aqc111_data* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* @USB_SPEED_SUPER, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %111
  %147 = load i32, i32* @SPEED_5000, align 4
  br label %150

148:                                              ; preds = %111
  %149 = load i32, i32* @SPEED_1000, align 4
  br label %150

150:                                              ; preds = %148, %146
  %151 = phi i32 [ %147, %146 ], [ %149, %148 ]
  %152 = load %struct.aqc111_data*, %struct.aqc111_data** %8, align 8
  %153 = getelementptr inbounds %struct.aqc111_data, %struct.aqc111_data* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 4
  store i32 0, i32* %3, align 4
  br label %158

154:                                              ; preds = %59
  %155 = load %struct.aqc111_data*, %struct.aqc111_data** %8, align 8
  %156 = call i32 @kfree(%struct.aqc111_data* %155)
  %157 = load i32, i32* %9, align 4
  store i32 %157, i32* %3, align 4
  br label %158

158:                                              ; preds = %154, %150, %48, %37, %22
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @usb_driver_set_configuration(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_reset_configuration(i32) #1

declare dso_local i32 @usbnet_get_endpoints(%struct.usbnet*, %struct.usb_interface*) #1

declare dso_local i32 @netdev_dbg(%struct.TYPE_7__*, i8*) #1

declare dso_local %struct.aqc111_data* @kzalloc(i32, i32) #1

declare dso_local i32 @aqc111_read_perm_mac(%struct.usbnet*) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i64 @usb_device_no_sg_constraint(i32) #1

declare dso_local i32 @netif_set_gso_max_size(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @aqc111_read_fw_version(%struct.usbnet*, %struct.aqc111_data*) #1

declare dso_local i32 @kfree(%struct.aqc111_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
