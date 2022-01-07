; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_qcom_nand_host_init_and_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_qcom_nand_host_init_and_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_nand_controller = type { %struct.device*, i32, %struct.TYPE_6__*, i32 }
%struct.device = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.qcom_nand_host = type { i32, i32, %struct.nand_chip }
%struct.nand_chip = type { i32, i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i8*, i8*, i32, i32, i32, i32, i32 }
%struct.device_node = type { i32 }
%struct.mtd_info = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.device* }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"can't get chip-select\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"qcom_nand.%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@qcom_nandc_command = common dso_local global i32 0, align 4
@qcom_nandc_select_chip = common dso_local global i32 0, align 4
@qcom_nandc_read_byte = common dso_local global i32 0, align 4
@qcom_nandc_read_buf = common dso_local global i32 0, align 4
@qcom_nandc_write_buf = common dso_local global i32 0, align 4
@nand_get_set_features_notsupp = common dso_local global i8* null, align 8
@qcom_nandc_block_bad = common dso_local global i32 0, align 4
@qcom_nandc_block_markbad = common dso_local global i32 0, align 4
@NAND_NO_SUBPAGE_WRITE = common dso_local global i32 0, align 4
@NAND_USE_BOUNCE_BUFFER = common dso_local global i32 0, align 4
@NAND_SKIP_BBTSCAN = common dso_local global i32 0, align 4
@NAND_STATUS_READY = common dso_local global i32 0, align 4
@NAND_STATUS_WP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"failed to allocate bam transaction\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_nand_controller*, %struct.qcom_nand_host*, %struct.device_node*)* @qcom_nand_host_init_and_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_nand_host_init_and_register(%struct.qcom_nand_controller* %0, %struct.qcom_nand_host* %1, %struct.device_node* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qcom_nand_controller*, align 8
  %6 = alloca %struct.qcom_nand_host*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.nand_chip*, align 8
  %9 = alloca %struct.mtd_info*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32, align 4
  store %struct.qcom_nand_controller* %0, %struct.qcom_nand_controller** %5, align 8
  store %struct.qcom_nand_host* %1, %struct.qcom_nand_host** %6, align 8
  store %struct.device_node* %2, %struct.device_node** %7, align 8
  %12 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %6, align 8
  %13 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %12, i32 0, i32 2
  store %struct.nand_chip* %13, %struct.nand_chip** %8, align 8
  %14 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %15 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %14)
  store %struct.mtd_info* %15, %struct.mtd_info** %9, align 8
  %16 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %5, align 8
  %17 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %16, i32 0, i32 0
  %18 = load %struct.device*, %struct.device** %17, align 8
  store %struct.device* %18, %struct.device** %10, align 8
  %19 = load %struct.device_node*, %struct.device_node** %7, align 8
  %20 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %6, align 8
  %21 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %20, i32 0, i32 1
  %22 = call i32 @of_property_read_u32(%struct.device_node* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load %struct.device*, %struct.device** %10, align 8
  %27 = call i32 @dev_err(%struct.device* %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @ENXIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %153

30:                                               ; preds = %3
  %31 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %32 = load %struct.device_node*, %struct.device_node** %7, align 8
  %33 = call i32 @nand_set_flash_node(%struct.nand_chip* %31, %struct.device_node* %32)
  %34 = load %struct.device*, %struct.device** %10, align 8
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %6, align 8
  %37 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @devm_kasprintf(%struct.device* %34, i32 %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %41 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %43 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %30
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %153

49:                                               ; preds = %30
  %50 = load i32, i32* @THIS_MODULE, align 4
  %51 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %52 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load %struct.device*, %struct.device** %10, align 8
  %54 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %55 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store %struct.device* %53, %struct.device** %56, align 8
  %57 = load i32, i32* @qcom_nandc_command, align 4
  %58 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %59 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 8
  store i32 %57, i32* %60, align 8
  %61 = load i32, i32* @qcom_nandc_select_chip, align 4
  %62 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %63 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 7
  store i32 %61, i32* %64, align 4
  %65 = load i32, i32* @qcom_nandc_read_byte, align 4
  %66 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %67 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 6
  store i32 %65, i32* %68, align 8
  %69 = load i32, i32* @qcom_nandc_read_buf, align 4
  %70 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %71 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 5
  store i32 %69, i32* %72, align 4
  %73 = load i32, i32* @qcom_nandc_write_buf, align 4
  %74 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %75 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 4
  store i32 %73, i32* %76, align 8
  %77 = load i8*, i8** @nand_get_set_features_notsupp, align 8
  %78 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %79 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 3
  store i8* %77, i8** %80, align 8
  %81 = load i8*, i8** @nand_get_set_features_notsupp, align 8
  %82 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %83 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 2
  store i8* %81, i8** %84, align 8
  %85 = load i32, i32* @qcom_nandc_block_bad, align 4
  %86 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %87 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  store i32 %85, i32* %88, align 4
  %89 = load i32, i32* @qcom_nandc_block_markbad, align 4
  %90 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %91 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  store i32 %89, i32* %92, align 8
  %93 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %5, align 8
  %94 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %93, i32 0, i32 3
  %95 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %96 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %95, i32 0, i32 1
  store i32* %94, i32** %96, align 8
  %97 = load i32, i32* @NAND_NO_SUBPAGE_WRITE, align 4
  %98 = load i32, i32* @NAND_USE_BOUNCE_BUFFER, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @NAND_SKIP_BBTSCAN, align 4
  %101 = or i32 %99, %100
  %102 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %103 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 8
  %106 = load i32, i32* @NAND_STATUS_READY, align 4
  %107 = load i32, i32* @NAND_STATUS_WP, align 4
  %108 = or i32 %106, %107
  %109 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %6, align 8
  %110 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  %111 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %112 = call i32 @nand_scan(%struct.nand_chip* %111, i32 1)
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %11, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %49
  %116 = load i32, i32* %11, align 4
  store i32 %116, i32* %4, align 4
  br label %153

117:                                              ; preds = %49
  %118 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %5, align 8
  %119 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %118, i32 0, i32 2
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %143

124:                                              ; preds = %117
  %125 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %5, align 8
  %126 = call i32 @free_bam_transaction(%struct.qcom_nand_controller* %125)
  %127 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %5, align 8
  %128 = call i32 @alloc_bam_transaction(%struct.qcom_nand_controller* %127)
  %129 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %5, align 8
  %130 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 8
  %131 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %5, align 8
  %132 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %142, label %135

135:                                              ; preds = %124
  %136 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %5, align 8
  %137 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %136, i32 0, i32 0
  %138 = load %struct.device*, %struct.device** %137, align 8
  %139 = call i32 @dev_err(%struct.device* %138, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %140 = load i32, i32* @ENOMEM, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %4, align 4
  br label %153

142:                                              ; preds = %124
  br label %143

143:                                              ; preds = %142, %117
  %144 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %145 = call i32 @mtd_device_register(%struct.mtd_info* %144, i32* null, i32 0)
  store i32 %145, i32* %11, align 4
  %146 = load i32, i32* %11, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %143
  %149 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %150 = call i32 @nand_cleanup(%struct.nand_chip* %149)
  br label %151

151:                                              ; preds = %148, %143
  %152 = load i32, i32* %11, align 4
  store i32 %152, i32* %4, align 4
  br label %153

153:                                              ; preds = %151, %135, %115, %46, %25
  %154 = load i32, i32* %4, align 4
  ret i32 %154
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @nand_set_flash_node(%struct.nand_chip*, %struct.device_node*) #1

declare dso_local i32 @devm_kasprintf(%struct.device*, i32, i8*, i32) #1

declare dso_local i32 @nand_scan(%struct.nand_chip*, i32) #1

declare dso_local i32 @free_bam_transaction(%struct.qcom_nand_controller*) #1

declare dso_local i32 @alloc_bam_transaction(%struct.qcom_nand_controller*) #1

declare dso_local i32 @mtd_device_register(%struct.mtd_info*, i32*, i32) #1

declare dso_local i32 @nand_cleanup(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
