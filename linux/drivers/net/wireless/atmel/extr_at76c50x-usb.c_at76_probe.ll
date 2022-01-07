; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_at76c50x-usb.c_at76_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_at76c50x-usb.c_at76_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i64 }
%struct.at76_priv = type { i32, i32 }
%struct.fwentry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.usb_device = type { i32 }
%struct.mib_fw_version = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@DBG_DEVSTART = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"opmode %d\00", align 1
@OPMODE_HW_CONFIG_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"cannot handle a device in HW_CONFIG_MODE\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@OPMODE_NORMAL_NIC_WITH_FLASH = common dso_local global i32 0, align 4
@OPMODE_NORMAL_NIC_WITHOUT_FLASH = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"downloading internal firmware\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"error %d downloading internal firmware\0A\00", align 1
@MIB_FW_VERSION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"downloading external firmware\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"error %d getting firmware version\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @at76_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at76_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca %struct.usb_device_id*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.at76_priv*, align 8
  %7 = alloca %struct.fwentry*, align 8
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mib_fw_version*, align 8
  %12 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %3, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %4, align 8
  store i32 0, i32* %10, align 4
  store %struct.mib_fw_version* null, %struct.mib_fw_version** %11, align 8
  %13 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %14 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %12, align 4
  %17 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %18 = call i32 @interface_to_usbdev(%struct.usb_interface* %17)
  %19 = call %struct.usb_device* @usb_get_dev(i32 %18)
  store %struct.usb_device* %19, %struct.usb_device** %8, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.mib_fw_version* @kmalloc(i32 8, i32 %20)
  store %struct.mib_fw_version* %21, %struct.mib_fw_version** %11, align 8
  %22 = load %struct.mib_fw_version*, %struct.mib_fw_version** %11, align 8
  %23 = icmp ne %struct.mib_fw_version* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %165

27:                                               ; preds = %2
  %28 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %29 = load i32, i32* %12, align 4
  %30 = call %struct.fwentry* @at76_load_firmware(%struct.usb_device* %28, i32 %29)
  store %struct.fwentry* %30, %struct.fwentry** %7, align 8
  %31 = load %struct.fwentry*, %struct.fwentry** %7, align 8
  %32 = icmp ne %struct.fwentry* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @ENOENT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %165

36:                                               ; preds = %27
  %37 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %38 = call i32 @at76_get_op_mode(%struct.usb_device* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* @DBG_DEVSTART, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @at76_dbg(i32 %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @OPMODE_HW_CONFIG_MODE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %36
  %46 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %47 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %46, i32 0, i32 0
  %48 = call i32 (i32*, i8*, ...) @dev_err(i32* %47, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @EBUSY, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %165

51:                                               ; preds = %36
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @OPMODE_NORMAL_NIC_WITH_FLASH, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %75

55:                                               ; preds = %51
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @OPMODE_NORMAL_NIC_WITHOUT_FLASH, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %75

59:                                               ; preds = %55
  %60 = load i32, i32* @KERN_DEBUG, align 4
  %61 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %62 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %61, i32 0, i32 0
  %63 = call i32 @dev_printk(i32 %60, i32* %62, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %64 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %65 = load %struct.fwentry*, %struct.fwentry** %7, align 8
  %66 = call i32 @at76_load_internal_fw(%struct.usb_device* %64, %struct.fwentry* %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %59
  %70 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %71 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %70, i32 0, i32 0
  %72 = load i32, i32* %5, align 4
  %73 = call i32 (i32*, i8*, ...) @dev_err(i32* %71, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %69, %59
  br label %165

75:                                               ; preds = %55, %51
  %76 = load %struct.fwentry*, %struct.fwentry** %7, align 8
  %77 = getelementptr inbounds %struct.fwentry, %struct.fwentry* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp sgt i64 %79, 0
  br i1 %80, label %91, label %81

81:                                               ; preds = %75
  %82 = load %struct.fwentry*, %struct.fwentry** %7, align 8
  %83 = getelementptr inbounds %struct.fwentry, %struct.fwentry* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = icmp sge i32 %85, 100
  br i1 %86, label %91, label %87

87:                                               ; preds = %81
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @OPMODE_NORMAL_NIC_WITH_FLASH, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %109

91:                                               ; preds = %87, %81, %75
  %92 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %93 = load i32, i32* @MIB_FW_VERSION, align 4
  %94 = load %struct.mib_fw_version*, %struct.mib_fw_version** %11, align 8
  %95 = call i32 @at76_get_mib(%struct.usb_device* %92, i32 %93, %struct.mib_fw_version* %94, i32 8)
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %5, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %107, label %98

98:                                               ; preds = %91
  %99 = load %struct.mib_fw_version*, %struct.mib_fw_version** %11, align 8
  %100 = getelementptr inbounds %struct.mib_fw_version, %struct.mib_fw_version* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.mib_fw_version*, %struct.mib_fw_version** %11, align 8
  %103 = getelementptr inbounds %struct.mib_fw_version, %struct.mib_fw_version* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %101, %104
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %98, %91
  store i32 1, i32* %10, align 4
  br label %108

108:                                              ; preds = %107, %98
  br label %110

109:                                              ; preds = %87
  store i32 1, i32* %10, align 4
  br label %110

110:                                              ; preds = %109, %108
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %137

113:                                              ; preds = %110
  %114 = load i32, i32* @KERN_DEBUG, align 4
  %115 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %116 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %115, i32 0, i32 0
  %117 = call i32 @dev_printk(i32 %114, i32* %116, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %118 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %119 = load %struct.fwentry*, %struct.fwentry** %7, align 8
  %120 = call i32 @at76_load_external_fw(%struct.usb_device* %118, %struct.fwentry* %119)
  store i32 %120, i32* %5, align 4
  %121 = load i32, i32* %5, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %113
  br label %165

124:                                              ; preds = %113
  %125 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %126 = load i32, i32* @MIB_FW_VERSION, align 4
  %127 = load %struct.mib_fw_version*, %struct.mib_fw_version** %11, align 8
  %128 = call i32 @at76_get_mib(%struct.usb_device* %125, i32 %126, %struct.mib_fw_version* %127, i32 8)
  store i32 %128, i32* %5, align 4
  %129 = load i32, i32* %5, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %124
  %132 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %133 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %132, i32 0, i32 0
  %134 = load i32, i32* %5, align 4
  %135 = call i32 (i32*, i8*, ...) @dev_err(i32* %133, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %134)
  br label %165

136:                                              ; preds = %124
  br label %137

137:                                              ; preds = %136, %110
  %138 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %139 = call %struct.at76_priv* @at76_alloc_new_device(%struct.usb_device* %138)
  store %struct.at76_priv* %139, %struct.at76_priv** %6, align 8
  %140 = load %struct.at76_priv*, %struct.at76_priv** %6, align 8
  %141 = icmp ne %struct.at76_priv* %140, null
  br i1 %141, label %145, label %142

142:                                              ; preds = %137
  %143 = load i32, i32* @ENOMEM, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %5, align 4
  br label %165

145:                                              ; preds = %137
  %146 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %147 = load %struct.at76_priv*, %struct.at76_priv** %6, align 8
  %148 = call i32 @usb_set_intfdata(%struct.usb_interface* %146, %struct.at76_priv* %147)
  %149 = load %struct.at76_priv*, %struct.at76_priv** %6, align 8
  %150 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %149, i32 0, i32 1
  %151 = load %struct.mib_fw_version*, %struct.mib_fw_version** %11, align 8
  %152 = call i32 @memcpy(i32* %150, %struct.mib_fw_version* %151, i32 8)
  %153 = load i32, i32* %12, align 4
  %154 = load %struct.at76_priv*, %struct.at76_priv** %6, align 8
  %155 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 4
  %156 = load %struct.at76_priv*, %struct.at76_priv** %6, align 8
  %157 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %158 = call i32 @at76_init_new_device(%struct.at76_priv* %156, %struct.usb_interface* %157)
  store i32 %158, i32* %5, align 4
  %159 = load i32, i32* %5, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %145
  %162 = load %struct.at76_priv*, %struct.at76_priv** %6, align 8
  %163 = call i32 @at76_delete_device(%struct.at76_priv* %162)
  br label %164

164:                                              ; preds = %161, %145
  br label %165

165:                                              ; preds = %164, %142, %131, %123, %74, %45, %33, %24
  %166 = load %struct.mib_fw_version*, %struct.mib_fw_version** %11, align 8
  %167 = call i32 @kfree(%struct.mib_fw_version* %166)
  %168 = load i32, i32* %5, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %165
  %171 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %172 = call i32 @usb_put_dev(%struct.usb_device* %171)
  br label %173

173:                                              ; preds = %170, %165
  %174 = load i32, i32* %5, align 4
  ret i32 %174
}

declare dso_local %struct.usb_device* @usb_get_dev(i32) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.mib_fw_version* @kmalloc(i32, i32) #1

declare dso_local %struct.fwentry* @at76_load_firmware(%struct.usb_device*, i32) #1

declare dso_local i32 @at76_get_op_mode(%struct.usb_device*) #1

declare dso_local i32 @at76_dbg(i32, i8*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*) #1

declare dso_local i32 @at76_load_internal_fw(%struct.usb_device*, %struct.fwentry*) #1

declare dso_local i32 @at76_get_mib(%struct.usb_device*, i32, %struct.mib_fw_version*, i32) #1

declare dso_local i32 @at76_load_external_fw(%struct.usb_device*, %struct.fwentry*) #1

declare dso_local %struct.at76_priv* @at76_alloc_new_device(%struct.usb_device*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.at76_priv*) #1

declare dso_local i32 @memcpy(i32*, %struct.mib_fw_version*, i32) #1

declare dso_local i32 @at76_init_new_device(%struct.at76_priv*, %struct.usb_interface*) #1

declare dso_local i32 @at76_delete_device(%struct.at76_priv*) #1

declare dso_local i32 @kfree(%struct.mib_fw_version*) #1

declare dso_local i32 @usb_put_dev(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
