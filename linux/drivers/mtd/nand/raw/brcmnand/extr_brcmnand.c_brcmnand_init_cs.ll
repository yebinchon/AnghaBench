; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_brcmnand.c_brcmnand_init_cs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_brcmnand.c_brcmnand_init_cs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmnand_host = type { i32, %struct.nand_chip, %struct.platform_device*, %struct.brcmnand_controller* }
%struct.nand_chip = type { i32*, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }
%struct.platform_device = type { i32 }
%struct.brcmnand_controller = type { i32 }
%struct.device_node = type { i32 }
%struct.mtd_info = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"can't get chip-select\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"brcmnand.%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@brcmnand_cmd_ctrl = common dso_local global i32 0, align 4
@brcmnand_cmdfunc = common dso_local global i32 0, align 4
@brcmnand_waitfunc = common dso_local global i32 0, align 4
@brcmnand_read_byte = common dso_local global i32 0, align 4
@brcmnand_read_buf = common dso_local global i32 0, align 4
@brcmnand_write_buf = common dso_local global i32 0, align 4
@NAND_ECC_HW = common dso_local global i32 0, align 4
@brcmnand_read_page = common dso_local global i32 0, align 4
@brcmnand_write_page = common dso_local global i32 0, align 4
@brcmnand_read_page_raw = common dso_local global i32 0, align 4
@brcmnand_write_page_raw = common dso_local global i32 0, align 4
@brcmnand_write_oob_raw = common dso_local global i32 0, align 4
@brcmnand_read_oob_raw = common dso_local global i32 0, align 4
@brcmnand_read_oob = common dso_local global i32 0, align 4
@brcmnand_write_oob = common dso_local global i32 0, align 4
@BRCMNAND_CS_CFG = common dso_local global i32 0, align 4
@CFG_BUS_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmnand_host*, %struct.device_node*)* @brcmnand_init_cs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmnand_init_cs(%struct.brcmnand_host* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.brcmnand_host*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.brcmnand_controller*, align 8
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca %struct.mtd_info*, align 8
  %9 = alloca %struct.nand_chip*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.brcmnand_host* %0, %struct.brcmnand_host** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %12 = load %struct.brcmnand_host*, %struct.brcmnand_host** %4, align 8
  %13 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %12, i32 0, i32 3
  %14 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %13, align 8
  store %struct.brcmnand_controller* %14, %struct.brcmnand_controller** %6, align 8
  %15 = load %struct.brcmnand_host*, %struct.brcmnand_host** %4, align 8
  %16 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %15, i32 0, i32 2
  %17 = load %struct.platform_device*, %struct.platform_device** %16, align 8
  store %struct.platform_device* %17, %struct.platform_device** %7, align 8
  %18 = load %struct.device_node*, %struct.device_node** %5, align 8
  %19 = load %struct.brcmnand_host*, %struct.brcmnand_host** %4, align 8
  %20 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %19, i32 0, i32 0
  %21 = call i32 @of_property_read_u32(%struct.device_node* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = call i32 @dev_err(i32* %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @ENXIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %162

30:                                               ; preds = %2
  %31 = load %struct.brcmnand_host*, %struct.brcmnand_host** %4, align 8
  %32 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %31, i32 0, i32 1
  %33 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %32)
  store %struct.mtd_info* %33, %struct.mtd_info** %8, align 8
  %34 = load %struct.brcmnand_host*, %struct.brcmnand_host** %4, align 8
  %35 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %34, i32 0, i32 1
  store %struct.nand_chip* %35, %struct.nand_chip** %9, align 8
  %36 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %37 = load %struct.device_node*, %struct.device_node** %5, align 8
  %38 = call i32 @nand_set_flash_node(%struct.nand_chip* %36, %struct.device_node* %37)
  %39 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %40 = load %struct.brcmnand_host*, %struct.brcmnand_host** %4, align 8
  %41 = call i32 @nand_set_controller_data(%struct.nand_chip* %39, %struct.brcmnand_host* %40)
  %42 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = load %struct.brcmnand_host*, %struct.brcmnand_host** %4, align 8
  %46 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @devm_kasprintf(i32* %43, i32 %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %50 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %52 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %30
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %162

58:                                               ; preds = %30
  %59 = load i32, i32* @THIS_MODULE, align 4
  %60 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %61 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %65 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i32* %63, i32** %66, align 8
  %67 = load i32, i32* @brcmnand_cmd_ctrl, align 4
  %68 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %69 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 5
  store i32 %67, i32* %70, align 4
  %71 = load i32, i32* @brcmnand_cmdfunc, align 4
  %72 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %73 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 4
  store i32 %71, i32* %74, align 4
  %75 = load i32, i32* @brcmnand_waitfunc, align 4
  %76 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %77 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 3
  store i32 %75, i32* %78, align 4
  %79 = load i32, i32* @brcmnand_read_byte, align 4
  %80 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %81 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 2
  store i32 %79, i32* %82, align 4
  %83 = load i32, i32* @brcmnand_read_buf, align 4
  %84 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %85 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  store i32 %83, i32* %86, align 4
  %87 = load i32, i32* @brcmnand_write_buf, align 4
  %88 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %89 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 4
  %91 = load i32, i32* @NAND_ECC_HW, align 4
  %92 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %93 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 8
  store i32 %91, i32* %94, align 8
  %95 = load i32, i32* @brcmnand_read_page, align 4
  %96 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %97 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 7
  store i32 %95, i32* %98, align 4
  %99 = load i32, i32* @brcmnand_write_page, align 4
  %100 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %101 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 6
  store i32 %99, i32* %102, align 8
  %103 = load i32, i32* @brcmnand_read_page_raw, align 4
  %104 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %105 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 5
  store i32 %103, i32* %106, align 4
  %107 = load i32, i32* @brcmnand_write_page_raw, align 4
  %108 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %109 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 4
  store i32 %107, i32* %110, align 8
  %111 = load i32, i32* @brcmnand_write_oob_raw, align 4
  %112 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %113 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 3
  store i32 %111, i32* %114, align 4
  %115 = load i32, i32* @brcmnand_read_oob_raw, align 4
  %116 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %117 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 2
  store i32 %115, i32* %118, align 8
  %119 = load i32, i32* @brcmnand_read_oob, align 4
  %120 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %121 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  store i32 %119, i32* %122, align 4
  %123 = load i32, i32* @brcmnand_write_oob, align 4
  %124 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %125 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  store i32 %123, i32* %126, align 8
  %127 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %6, align 8
  %128 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %127, i32 0, i32 0
  %129 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %130 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %129, i32 0, i32 0
  store i32* %128, i32** %130, align 8
  %131 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %6, align 8
  %132 = load %struct.brcmnand_host*, %struct.brcmnand_host** %4, align 8
  %133 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @BRCMNAND_CS_CFG, align 4
  %136 = call i32 @brcmnand_cs_offset(%struct.brcmnand_controller* %131, i32 %134, i32 %135)
  store i32 %136, i32* %11, align 4
  %137 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %6, align 8
  %138 = load i32, i32* %11, align 4
  %139 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %6, align 8
  %140 = load i32, i32* %11, align 4
  %141 = call i32 @nand_readreg(%struct.brcmnand_controller* %139, i32 %140)
  %142 = load i32, i32* @CFG_BUS_WIDTH, align 4
  %143 = xor i32 %142, -1
  %144 = and i32 %141, %143
  %145 = call i32 @nand_writereg(%struct.brcmnand_controller* %137, i32 %138, i32 %144)
  %146 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %147 = call i32 @nand_scan(%struct.nand_chip* %146, i32 1)
  store i32 %147, i32* %10, align 4
  %148 = load i32, i32* %10, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %58
  %151 = load i32, i32* %10, align 4
  store i32 %151, i32* %3, align 4
  br label %162

152:                                              ; preds = %58
  %153 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %154 = call i32 @mtd_device_register(%struct.mtd_info* %153, i32* null, i32 0)
  store i32 %154, i32* %10, align 4
  %155 = load i32, i32* %10, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %152
  %158 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %159 = call i32 @nand_cleanup(%struct.nand_chip* %158)
  br label %160

160:                                              ; preds = %157, %152
  %161 = load i32, i32* %10, align 4
  store i32 %161, i32* %3, align 4
  br label %162

162:                                              ; preds = %160, %150, %55, %24
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @nand_set_flash_node(%struct.nand_chip*, %struct.device_node*) #1

declare dso_local i32 @nand_set_controller_data(%struct.nand_chip*, %struct.brcmnand_host*) #1

declare dso_local i32 @devm_kasprintf(i32*, i32, i8*, i32) #1

declare dso_local i32 @brcmnand_cs_offset(%struct.brcmnand_controller*, i32, i32) #1

declare dso_local i32 @nand_writereg(%struct.brcmnand_controller*, i32, i32) #1

declare dso_local i32 @nand_readreg(%struct.brcmnand_controller*, i32) #1

declare dso_local i32 @nand_scan(%struct.nand_chip*, i32) #1

declare dso_local i32 @mtd_device_register(%struct.mtd_info*, i32*, i32) #1

declare dso_local i32 @nand_cleanup(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
