; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_omap-usb-host.c_usbhs_omap_get_dt_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_omap-usb-host.c_usbhs_omap_get_dt_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.usbhs_omap_platform_data = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [10 x i8] c"num-ports\00", align 1
@OMAP3_HS_USB_PORTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Too many num_ports <%d> in device tree. Max %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@OMAP_USBHS_PORT_MODE_UNUSED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"port%d-mode\00", align 1
@port_modes = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Invalid port%d-mode \22%s\22 in device tree\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"port%d-mode: %s -> %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"single-ulpi-bypass\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.usbhs_omap_platform_data*)* @usbhs_omap_get_dt_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhs_omap_get_dt_pdata(%struct.device* %0, %struct.usbhs_omap_platform_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.usbhs_omap_platform_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca [11 x i8], align 1
  %10 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.usbhs_omap_platform_data* %1, %struct.usbhs_omap_platform_data** %5, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %8, align 8
  %14 = load %struct.device_node*, %struct.device_node** %8, align 8
  %15 = load %struct.usbhs_omap_platform_data*, %struct.usbhs_omap_platform_data** %5, align 8
  %16 = getelementptr inbounds %struct.usbhs_omap_platform_data, %struct.usbhs_omap_platform_data* %15, i32 0, i32 0
  %17 = call i32 @of_property_read_u32(%struct.device_node* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.usbhs_omap_platform_data*, %struct.usbhs_omap_platform_data** %5, align 8
  %22 = getelementptr inbounds %struct.usbhs_omap_platform_data, %struct.usbhs_omap_platform_data* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  br label %23

23:                                               ; preds = %20, %2
  %24 = load %struct.usbhs_omap_platform_data*, %struct.usbhs_omap_platform_data** %5, align 8
  %25 = getelementptr inbounds %struct.usbhs_omap_platform_data, %struct.usbhs_omap_platform_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @OMAP3_HS_USB_PORTS, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = load %struct.usbhs_omap_platform_data*, %struct.usbhs_omap_platform_data** %5, align 8
  %32 = getelementptr inbounds %struct.usbhs_omap_platform_data, %struct.usbhs_omap_platform_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @OMAP3_HS_USB_PORTS, align 4
  %35 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %30, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %34)
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %97

38:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %89, %38
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @OMAP3_HS_USB_PORTS, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %92

43:                                               ; preds = %39
  %44 = load i32, i32* @OMAP_USBHS_PORT_MODE_UNUSED, align 4
  %45 = load %struct.usbhs_omap_platform_data*, %struct.usbhs_omap_platform_data** %5, align 8
  %46 = getelementptr inbounds %struct.usbhs_omap_platform_data, %struct.usbhs_omap_platform_data* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 %44, i32* %50, align 4
  %51 = getelementptr inbounds [11 x i8], [11 x i8]* %9, i64 0, i64 0
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  %54 = call i32 @snprintf(i8* %51, i32 11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load %struct.device_node*, %struct.device_node** %8, align 8
  %56 = getelementptr inbounds [11 x i8], [11 x i8]* %9, i64 0, i64 0
  %57 = call i32 @of_property_read_string(%struct.device_node* %55, i8* %56, i8** %10)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %43
  br label %89

61:                                               ; preds = %43
  %62 = load i32, i32* @port_modes, align 4
  %63 = load i32, i32* @port_modes, align 4
  %64 = call i32 @ARRAY_SIZE(i32 %63)
  %65 = load i8*, i8** %10, align 8
  %66 = call i32 @match_string(i32 %62, i32 %64, i8* %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %61
  %70 = load %struct.device*, %struct.device** %4, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load i8*, i8** %10, align 8
  %73 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %70, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %71, i8* %72)
  %74 = load i32, i32* @ENODEV, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %97

76:                                               ; preds = %61
  %77 = load %struct.device*, %struct.device** %4, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load i8*, i8** %10, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @dev_dbg(%struct.device* %77, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %78, i8* %79, i32 %80)
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.usbhs_omap_platform_data*, %struct.usbhs_omap_platform_data** %5, align 8
  %84 = getelementptr inbounds %struct.usbhs_omap_platform_data, %struct.usbhs_omap_platform_data* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  store i32 %82, i32* %88, align 4
  br label %89

89:                                               ; preds = %76, %60
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %7, align 4
  br label %39

92:                                               ; preds = %39
  %93 = load %struct.device_node*, %struct.device_node** %8, align 8
  %94 = call i32 @of_property_read_bool(%struct.device_node* %93, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %95 = load %struct.usbhs_omap_platform_data*, %struct.usbhs_omap_platform_data** %5, align 8
  %96 = getelementptr inbounds %struct.usbhs_omap_platform_data, %struct.usbhs_omap_platform_data* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %92, %69, %29
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, i8**) #1

declare dso_local i32 @match_string(i32, i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i8*, i32) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
