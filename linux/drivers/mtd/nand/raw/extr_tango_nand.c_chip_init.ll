; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tango_nand.c_chip_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tango_nand.c_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.mtd_info = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device* }
%struct.nand_chip = type { i32, i32*, %struct.TYPE_3__, %struct.nand_ecc_ctrl }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc_ctrl = type { i32, i64, i32 }
%struct.tango_chip = type { i32, i8*, i8*, i32, i64, %struct.nand_chip }
%struct.tango_nfc = type { %struct.tango_chip**, i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@MAX_CS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@tango_read_byte = common dso_local global i32 0, align 4
@tango_write_buf = common dso_local global i32 0, align 4
@tango_read_buf = common dso_local global i32 0, align 4
@tango_select_chip = common dso_local global i32 0, align 4
@tango_cmd_ctrl = common dso_local global i32 0, align 4
@tango_dev_ready = common dso_local global i32 0, align 4
@NAND_USE_BOUNCE_BUFFER = common dso_local global i32 0, align 4
@NAND_NO_SUBPAGE_WRITE = common dso_local global i32 0, align 4
@NAND_WAIT_TCCS = common dso_local global i32 0, align 4
@tango_nand_ooblayout_ops = common dso_local global i32 0, align 4
@METADATA_SIZE = common dso_local global i64 0, align 8
@BBM_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_node*)* @chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chip_init(%struct.device* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mtd_info*, align 8
  %10 = alloca %struct.nand_chip*, align 8
  %11 = alloca %struct.tango_chip*, align 8
  %12 = alloca %struct.nand_ecc_ctrl*, align 8
  %13 = alloca %struct.tango_nfc*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call %struct.tango_nfc* @dev_get_drvdata(%struct.device* %14)
  store %struct.tango_nfc* %15, %struct.tango_nfc** %13, align 8
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.tango_chip* @devm_kzalloc(%struct.device* %16, i32 104, i32 %17)
  store %struct.tango_chip* %18, %struct.tango_chip** %11, align 8
  %19 = load %struct.tango_chip*, %struct.tango_chip** %11, align 8
  %20 = icmp ne %struct.tango_chip* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %169

24:                                               ; preds = %2
  %25 = load %struct.device_node*, %struct.device_node** %5, align 8
  %26 = call i32 @of_property_count_u32_elems(%struct.device_node* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %3, align 4
  br label %169

31:                                               ; preds = %24
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 1
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* @ENOTSUPP, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %169

37:                                               ; preds = %31
  %38 = load %struct.device_node*, %struct.device_node** %5, align 8
  %39 = call i32 @of_property_read_u32_index(%struct.device_node* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 0, i32* %6)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %169

44:                                               ; preds = %37
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @MAX_CS, align 4
  %47 = icmp sge i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %169

51:                                               ; preds = %44
  %52 = load %struct.tango_chip*, %struct.tango_chip** %11, align 8
  %53 = getelementptr inbounds %struct.tango_chip, %struct.tango_chip* %52, i32 0, i32 5
  store %struct.nand_chip* %53, %struct.nand_chip** %10, align 8
  %54 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %55 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %54, i32 0, i32 3
  store %struct.nand_ecc_ctrl* %55, %struct.nand_ecc_ctrl** %12, align 8
  %56 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %57 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %56)
  store %struct.mtd_info* %57, %struct.mtd_info** %9, align 8
  %58 = load i32, i32* @tango_read_byte, align 4
  %59 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %60 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 5
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* @tango_write_buf, align 4
  %63 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %64 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 4
  store i32 %62, i32* %65, align 8
  %66 = load i32, i32* @tango_read_buf, align 4
  %67 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %68 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 3
  store i32 %66, i32* %69, align 4
  %70 = load i32, i32* @tango_select_chip, align 4
  %71 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %72 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  store i32 %70, i32* %73, align 8
  %74 = load i32, i32* @tango_cmd_ctrl, align 4
  %75 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %76 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  store i32 %74, i32* %77, align 4
  %78 = load i32, i32* @tango_dev_ready, align 4
  %79 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %80 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 8
  %82 = load i32, i32* @NAND_USE_BOUNCE_BUFFER, align 4
  %83 = load i32, i32* @NAND_NO_SUBPAGE_WRITE, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @NAND_WAIT_TCCS, align 4
  %86 = or i32 %84, %85
  %87 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %88 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load %struct.tango_nfc*, %struct.tango_nfc** %13, align 8
  %90 = getelementptr inbounds %struct.tango_nfc, %struct.tango_nfc* %89, i32 0, i32 2
  %91 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %92 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %91, i32 0, i32 1
  store i32* %90, i32** %92, align 8
  %93 = load %struct.tango_nfc*, %struct.tango_nfc** %13, align 8
  %94 = getelementptr inbounds %struct.tango_nfc, %struct.tango_nfc* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = mul nsw i32 %96, 256
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %95, %98
  %100 = load %struct.tango_chip*, %struct.tango_chip** %11, align 8
  %101 = getelementptr inbounds %struct.tango_chip, %struct.tango_chip* %100, i32 0, i32 4
  store i64 %99, i64* %101, align 8
  %102 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %103 = load %struct.device_node*, %struct.device_node** %5, align 8
  %104 = call i32 @nand_set_flash_node(%struct.nand_chip* %102, %struct.device_node* %103)
  %105 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %106 = call i32 @mtd_set_ooblayout(%struct.mtd_info* %105, i32* @tango_nand_ooblayout_ops)
  %107 = load %struct.device*, %struct.device** %4, align 8
  %108 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %109 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  store %struct.device* %107, %struct.device** %110, align 8
  %111 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %112 = call i32 @nand_scan(%struct.nand_chip* %111, i32 1)
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* %7, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %51
  %116 = load i32, i32* %7, align 4
  store i32 %116, i32* %3, align 4
  br label %169

117:                                              ; preds = %51
  %118 = load i32, i32* %6, align 4
  %119 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %12, align 8
  %120 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load i64, i64* @METADATA_SIZE, align 8
  %123 = call i32 @XFER_CFG(i32 %118, i32 1, i32 %121, i64 %122)
  %124 = load %struct.tango_chip*, %struct.tango_chip** %11, align 8
  %125 = getelementptr inbounds %struct.tango_chip, %struct.tango_chip* %124, i32 0, i32 3
  store i32 %123, i32* %125, align 8
  %126 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %12, align 8
  %127 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @METADATA_SIZE, align 8
  %130 = add nsw i64 %128, %129
  %131 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %12, align 8
  %132 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i8* @PKT_CFG(i64 %130, i32 %133)
  %135 = load %struct.tango_chip*, %struct.tango_chip** %11, align 8
  %136 = getelementptr inbounds %struct.tango_chip, %struct.tango_chip* %135, i32 0, i32 2
  store i8* %134, i8** %136, align 8
  %137 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %12, align 8
  %138 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %12, align 8
  %141 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i8* @PKT_CFG(i64 %139, i32 %142)
  %144 = load %struct.tango_chip*, %struct.tango_chip** %11, align 8
  %145 = getelementptr inbounds %struct.tango_chip, %struct.tango_chip* %144, i32 0, i32 1
  store i8* %143, i8** %145, align 8
  %146 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %147 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @BBM_SIZE, align 4
  %150 = call i32 @BB_CFG(i32 %148, i32 %149)
  %151 = load %struct.tango_chip*, %struct.tango_chip** %11, align 8
  %152 = getelementptr inbounds %struct.tango_chip, %struct.tango_chip* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 8
  %153 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %154 = call i32 @mtd_device_register(%struct.mtd_info* %153, i32* null, i32 0)
  store i32 %154, i32* %7, align 4
  %155 = load i32, i32* %7, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %117
  %158 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %159 = call i32 @nand_cleanup(%struct.nand_chip* %158)
  %160 = load i32, i32* %7, align 4
  store i32 %160, i32* %3, align 4
  br label %169

161:                                              ; preds = %117
  %162 = load %struct.tango_chip*, %struct.tango_chip** %11, align 8
  %163 = load %struct.tango_nfc*, %struct.tango_nfc** %13, align 8
  %164 = getelementptr inbounds %struct.tango_nfc, %struct.tango_nfc* %163, i32 0, i32 0
  %165 = load %struct.tango_chip**, %struct.tango_chip*** %164, align 8
  %166 = load i32, i32* %6, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.tango_chip*, %struct.tango_chip** %165, i64 %167
  store %struct.tango_chip* %162, %struct.tango_chip** %168, align 8
  store i32 0, i32* %3, align 4
  br label %169

169:                                              ; preds = %161, %157, %115, %48, %42, %34, %29, %21
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local %struct.tango_nfc* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.tango_chip* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @of_property_count_u32_elems(%struct.device_node*, i8*) #1

declare dso_local i32 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i32*) #1

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @nand_set_flash_node(%struct.nand_chip*, %struct.device_node*) #1

declare dso_local i32 @mtd_set_ooblayout(%struct.mtd_info*, i32*) #1

declare dso_local i32 @nand_scan(%struct.nand_chip*, i32) #1

declare dso_local i32 @XFER_CFG(i32, i32, i32, i64) #1

declare dso_local i8* @PKT_CFG(i64, i32) #1

declare dso_local i32 @BB_CFG(i32, i32) #1

declare dso_local i32 @mtd_device_register(%struct.mtd_info*, i32*, i32) #1

declare dso_local i32 @nand_cleanup(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
