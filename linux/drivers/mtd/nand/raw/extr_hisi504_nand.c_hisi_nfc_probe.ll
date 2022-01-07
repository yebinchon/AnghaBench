; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_hisi504_nand.c_hisi_nfc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_hisi504_nand.c_hisi_nfc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.hinfc_host = type { i8*, i8*, %struct.nand_chip, %struct.device* }
%struct.nand_chip = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i8*, i8*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.mtd_info = type { i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device* }
%struct.resource = type { i32 }

@HINFC504_MAX_CHIP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"no IRQ resource defined\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"devm_ioremap_resource[1] fail\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"hisi_nand\00", align 1
@hisi_nfc_cmdfunc = common dso_local global i32 0, align 4
@hisi_nfc_select_chip = common dso_local global i32 0, align 4
@hisi_nfc_read_byte = common dso_local global i32 0, align 4
@hisi_nfc_write_buf = common dso_local global i32 0, align 4
@hisi_nfc_read_buf = common dso_local global i32 0, align 4
@HINFC504_CHIP_DELAY = common dso_local global i32 0, align 4
@nand_get_set_features_notsupp = common dso_local global i8* null, align 8
@hinfc_irq_handle = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"nandc\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"failed to request IRQ\0A\00", align 1
@hisi_nfc_controller_ops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"Err MTD partition=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hisi_nfc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_nfc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.hinfc_host*, align 8
  %9 = alloca %struct.nand_chip*, align 8
  %10 = alloca %struct.mtd_info*, align 8
  %11 = alloca %struct.resource*, align 8
  %12 = alloca %struct.device_node*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %4, align 4
  %13 = load i32, i32* @HINFC504_MAX_CHIP, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %7, align 8
  %16 = load %struct.device*, %struct.device** %7, align 8
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 0
  %18 = load %struct.device_node*, %struct.device_node** %17, align 8
  store %struct.device_node* %18, %struct.device_node** %12, align 8
  %19 = load %struct.device*, %struct.device** %7, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.hinfc_host* @devm_kzalloc(%struct.device* %19, i32 72, i32 %20)
  store %struct.hinfc_host* %21, %struct.hinfc_host** %8, align 8
  %22 = load %struct.hinfc_host*, %struct.hinfc_host** %8, align 8
  %23 = icmp ne %struct.hinfc_host* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %171

27:                                               ; preds = %1
  %28 = load %struct.device*, %struct.device** %7, align 8
  %29 = load %struct.hinfc_host*, %struct.hinfc_host** %8, align 8
  %30 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %29, i32 0, i32 3
  store %struct.device* %28, %struct.device** %30, align 8
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = load %struct.hinfc_host*, %struct.hinfc_host** %8, align 8
  %33 = call i32 @platform_set_drvdata(%struct.platform_device* %31, %struct.hinfc_host* %32)
  %34 = load %struct.hinfc_host*, %struct.hinfc_host** %8, align 8
  %35 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %34, i32 0, i32 2
  store %struct.nand_chip* %35, %struct.nand_chip** %9, align 8
  %36 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %37 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %36)
  store %struct.mtd_info* %37, %struct.mtd_info** %10, align 8
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = call i32 @platform_get_irq(%struct.platform_device* %38, i32 0)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %27
  %43 = load %struct.device*, %struct.device** %7, align 8
  %44 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @ENXIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %171

47:                                               ; preds = %27
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = load i32, i32* @IORESOURCE_MEM, align 4
  %50 = call %struct.resource* @platform_get_resource(%struct.platform_device* %48, i32 %49, i32 0)
  store %struct.resource* %50, %struct.resource** %11, align 8
  %51 = load %struct.device*, %struct.device** %7, align 8
  %52 = load %struct.resource*, %struct.resource** %11, align 8
  %53 = call i8* @devm_ioremap_resource(%struct.device* %51, %struct.resource* %52)
  %54 = load %struct.hinfc_host*, %struct.hinfc_host** %8, align 8
  %55 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  %56 = load %struct.hinfc_host*, %struct.hinfc_host** %8, align 8
  %57 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i64 @IS_ERR(i8* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %47
  %62 = load %struct.hinfc_host*, %struct.hinfc_host** %8, align 8
  %63 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @PTR_ERR(i8* %64)
  store i32 %65, i32* %2, align 4
  br label %171

66:                                               ; preds = %47
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = load i32, i32* @IORESOURCE_MEM, align 4
  %69 = call %struct.resource* @platform_get_resource(%struct.platform_device* %67, i32 %68, i32 1)
  store %struct.resource* %69, %struct.resource** %11, align 8
  %70 = load %struct.device*, %struct.device** %7, align 8
  %71 = load %struct.resource*, %struct.resource** %11, align 8
  %72 = call i8* @devm_ioremap_resource(%struct.device* %70, %struct.resource* %71)
  %73 = load %struct.hinfc_host*, %struct.hinfc_host** %8, align 8
  %74 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %73, i32 0, i32 0
  store i8* %72, i8** %74, align 8
  %75 = load %struct.hinfc_host*, %struct.hinfc_host** %8, align 8
  %76 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i64 @IS_ERR(i8* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %66
  %81 = load %struct.device*, %struct.device** %7, align 8
  %82 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %81, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %83 = load %struct.hinfc_host*, %struct.hinfc_host** %8, align 8
  %84 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @PTR_ERR(i8* %85)
  store i32 %86, i32* %2, align 4
  br label %171

87:                                               ; preds = %66
  %88 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %89 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %88, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %89, align 8
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %90, i32 0, i32 0
  %92 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %93 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  store %struct.device* %91, %struct.device** %94, align 8
  %95 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %96 = load %struct.hinfc_host*, %struct.hinfc_host** %8, align 8
  %97 = call i32 @nand_set_controller_data(%struct.nand_chip* %95, %struct.hinfc_host* %96)
  %98 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %99 = load %struct.device_node*, %struct.device_node** %12, align 8
  %100 = call i32 @nand_set_flash_node(%struct.nand_chip* %98, %struct.device_node* %99)
  %101 = load i32, i32* @hisi_nfc_cmdfunc, align 4
  %102 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %103 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 8
  store i32 %101, i32* %104, align 4
  %105 = load i32, i32* @hisi_nfc_select_chip, align 4
  %106 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %107 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 7
  store i32 %105, i32* %108, align 8
  %109 = load i32, i32* @hisi_nfc_read_byte, align 4
  %110 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %111 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 6
  store i32 %109, i32* %112, align 4
  %113 = load i32, i32* @hisi_nfc_write_buf, align 4
  %114 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %115 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 5
  store i32 %113, i32* %116, align 8
  %117 = load i32, i32* @hisi_nfc_read_buf, align 4
  %118 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %119 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 4
  store i32 %117, i32* %120, align 4
  %121 = load i32, i32* @HINFC504_CHIP_DELAY, align 4
  %122 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %123 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 3
  store i32 %121, i32* %124, align 8
  %125 = load i8*, i8** @nand_get_set_features_notsupp, align 8
  %126 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %127 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 2
  store i8* %125, i8** %128, align 8
  %129 = load i8*, i8** @nand_get_set_features_notsupp, align 8
  %130 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %131 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  store i8* %129, i8** %132, align 8
  %133 = load %struct.hinfc_host*, %struct.hinfc_host** %8, align 8
  %134 = call i32 @hisi_nfc_host_init(%struct.hinfc_host* %133)
  %135 = load %struct.device*, %struct.device** %7, align 8
  %136 = load i32, i32* %5, align 4
  %137 = load i32, i32* @hinfc_irq_handle, align 4
  %138 = load %struct.hinfc_host*, %struct.hinfc_host** %8, align 8
  %139 = call i32 @devm_request_irq(%struct.device* %135, i32 %136, i32 %137, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), %struct.hinfc_host* %138)
  store i32 %139, i32* %4, align 4
  %140 = load i32, i32* %4, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %87
  %143 = load %struct.device*, %struct.device** %7, align 8
  %144 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %143, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %145 = load i32, i32* %4, align 4
  store i32 %145, i32* %2, align 4
  br label %171

146:                                              ; preds = %87
  %147 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %148 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  store i32* @hisi_nfc_controller_ops, i32** %150, align 8
  %151 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %152 = load i32, i32* %6, align 4
  %153 = call i32 @nand_scan(%struct.nand_chip* %151, i32 %152)
  store i32 %153, i32* %4, align 4
  %154 = load i32, i32* %4, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %146
  %157 = load i32, i32* %4, align 4
  store i32 %157, i32* %2, align 4
  br label %171

158:                                              ; preds = %146
  %159 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %160 = call i32 @mtd_device_register(%struct.mtd_info* %159, i32* null, i32 0)
  store i32 %160, i32* %4, align 4
  %161 = load i32, i32* %4, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %158
  %164 = load %struct.device*, %struct.device** %7, align 8
  %165 = load i32, i32* %4, align 4
  %166 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %164, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %165)
  %167 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %168 = call i32 @nand_cleanup(%struct.nand_chip* %167)
  %169 = load i32, i32* %4, align 4
  store i32 %169, i32* %2, align 4
  br label %171

170:                                              ; preds = %158
  store i32 0, i32* %2, align 4
  br label %171

171:                                              ; preds = %170, %163, %156, %142, %80, %61, %42, %24
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local %struct.hinfc_host* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.hinfc_host*) #1

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @nand_set_controller_data(%struct.nand_chip*, %struct.hinfc_host*) #1

declare dso_local i32 @nand_set_flash_node(%struct.nand_chip*, %struct.device_node*) #1

declare dso_local i32 @hisi_nfc_host_init(%struct.hinfc_host*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.hinfc_host*) #1

declare dso_local i32 @nand_scan(%struct.nand_chip*, i32) #1

declare dso_local i32 @mtd_device_register(%struct.mtd_info*, i32*, i32) #1

declare dso_local i32 @nand_cleanup(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
