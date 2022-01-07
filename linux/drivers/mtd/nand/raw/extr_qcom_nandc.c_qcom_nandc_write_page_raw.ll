; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_qcom_nandc_write_page_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_qcom_nandc_write_page_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32*, %struct.nand_ecc_ctrl }
%struct.nand_ecc_ctrl = type { i32, i32 }
%struct.mtd_info = type { i32 }
%struct.qcom_nand_host = type { i32, i32, i32, i32, i32, i32 }
%struct.qcom_nand_controller = type { i32 }

@FLASH_BUF_ACC = common dso_local global i32 0, align 4
@NAND_BAM_NO_EOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failure to write raw page\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32, i32)* @qcom_nandc_write_page_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_nandc_write_page_raw(%struct.nand_chip* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mtd_info*, align 8
  %10 = alloca %struct.qcom_nand_host*, align 8
  %11 = alloca %struct.qcom_nand_controller*, align 8
  %12 = alloca %struct.nand_ecc_ctrl*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %22 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %23 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %22)
  store %struct.mtd_info* %23, %struct.mtd_info** %9, align 8
  %24 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %25 = call %struct.qcom_nand_host* @to_qcom_nand_host(%struct.nand_chip* %24)
  store %struct.qcom_nand_host* %25, %struct.qcom_nand_host** %10, align 8
  %26 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %27 = call %struct.qcom_nand_controller* @get_qcom_nand_controller(%struct.nand_chip* %26)
  store %struct.qcom_nand_controller* %27, %struct.qcom_nand_controller** %11, align 8
  %28 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %29 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %28, i32 0, i32 1
  store %struct.nand_ecc_ctrl* %29, %struct.nand_ecc_ctrl** %12, align 8
  %30 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @nand_prog_page_begin_op(%struct.nand_chip* %30, i32 %31, i32 0, i32* null, i32 0)
  %33 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %11, align 8
  %34 = call i32 @clear_read_regs(%struct.qcom_nand_controller* %33)
  %35 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %11, align 8
  %36 = call i32 @clear_bam_transaction(%struct.qcom_nand_controller* %35)
  %37 = load i32*, i32** %6, align 8
  store i32* %37, i32** %13, align 8
  %38 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %39 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %14, align 8
  %41 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %10, align 8
  %42 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %41, i32 0, i32 0
  store i32 0, i32* %42, align 4
  %43 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %10, align 8
  %44 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %12, align 8
  %45 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @update_rw_regs(%struct.qcom_nand_host* %43, i32 %46, i32 0)
  %48 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %11, align 8
  %49 = call i32 @config_nand_page_write(%struct.qcom_nand_controller* %48)
  store i32 0, i32* %15, align 4
  br label %50

50:                                               ; preds = %167, %4
  %51 = load i32, i32* %15, align 4
  %52 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %12, align 8
  %53 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %170

56:                                               ; preds = %50
  %57 = load i32, i32* @FLASH_BUF_ACC, align 4
  store i32 %57, i32* %21, align 4
  %58 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %59 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %10, align 8
  %62 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %12, align 8
  %65 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %66, 1
  %68 = mul nsw i32 %63, %67
  %69 = sub nsw i32 %60, %68
  store i32 %69, i32* %17, align 4
  %70 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %10, align 8
  %71 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %19, align 4
  %73 = load i32, i32* %15, align 4
  %74 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %12, align 8
  %75 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = sub nsw i32 %76, 1
  %78 = icmp eq i32 %73, %77
  br i1 %78, label %79, label %103

79:                                               ; preds = %56
  %80 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %12, align 8
  %81 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %17, align 4
  %84 = sub nsw i32 %82, %83
  %85 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %12, align 8
  %86 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = sub nsw i32 %87, 1
  %89 = shl i32 %88, 2
  %90 = sub nsw i32 %84, %89
  store i32 %90, i32* %18, align 4
  %91 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %12, align 8
  %92 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = shl i32 %93, 2
  %95 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %10, align 8
  %96 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %94, %97
  %99 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %10, align 8
  %100 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %98, %101
  store i32 %102, i32* %20, align 4
  br label %116

103:                                              ; preds = %56
  %104 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %10, align 8
  %105 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %17, align 4
  %108 = sub nsw i32 %106, %107
  store i32 %108, i32* %18, align 4
  %109 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %10, align 8
  %110 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %10, align 8
  %113 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %111, %114
  store i32 %115, i32* %20, align 4
  br label %116

116:                                              ; preds = %103, %79
  %117 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %11, align 8
  %118 = load i32, i32* %21, align 4
  %119 = load i32*, i32** %13, align 8
  %120 = load i32, i32* %17, align 4
  %121 = load i32, i32* @NAND_BAM_NO_EOT, align 4
  %122 = call i32 @write_data_dma(%struct.qcom_nand_controller* %117, i32 %118, i32* %119, i32 %120, i32 %121)
  %123 = load i32, i32* %17, align 4
  %124 = load i32, i32* %21, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %21, align 4
  %126 = load i32, i32* %17, align 4
  %127 = load i32*, i32** %13, align 8
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  store i32* %129, i32** %13, align 8
  %130 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %11, align 8
  %131 = load i32, i32* %21, align 4
  %132 = load i32*, i32** %14, align 8
  %133 = load i32, i32* %19, align 4
  %134 = load i32, i32* @NAND_BAM_NO_EOT, align 4
  %135 = call i32 @write_data_dma(%struct.qcom_nand_controller* %130, i32 %131, i32* %132, i32 %133, i32 %134)
  %136 = load i32, i32* %19, align 4
  %137 = load i32, i32* %21, align 4
  %138 = add nsw i32 %137, %136
  store i32 %138, i32* %21, align 4
  %139 = load i32, i32* %19, align 4
  %140 = load i32*, i32** %14, align 8
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds i32, i32* %140, i64 %141
  store i32* %142, i32** %14, align 8
  %143 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %11, align 8
  %144 = load i32, i32* %21, align 4
  %145 = load i32*, i32** %13, align 8
  %146 = load i32, i32* %18, align 4
  %147 = load i32, i32* @NAND_BAM_NO_EOT, align 4
  %148 = call i32 @write_data_dma(%struct.qcom_nand_controller* %143, i32 %144, i32* %145, i32 %146, i32 %147)
  %149 = load i32, i32* %18, align 4
  %150 = load i32, i32* %21, align 4
  %151 = add nsw i32 %150, %149
  store i32 %151, i32* %21, align 4
  %152 = load i32, i32* %18, align 4
  %153 = load i32*, i32** %13, align 8
  %154 = sext i32 %152 to i64
  %155 = getelementptr inbounds i32, i32* %153, i64 %154
  store i32* %155, i32** %13, align 8
  %156 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %11, align 8
  %157 = load i32, i32* %21, align 4
  %158 = load i32*, i32** %14, align 8
  %159 = load i32, i32* %20, align 4
  %160 = call i32 @write_data_dma(%struct.qcom_nand_controller* %156, i32 %157, i32* %158, i32 %159, i32 0)
  %161 = load i32, i32* %20, align 4
  %162 = load i32*, i32** %14, align 8
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds i32, i32* %162, i64 %163
  store i32* %164, i32** %14, align 8
  %165 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %11, align 8
  %166 = call i32 @config_nand_cw_write(%struct.qcom_nand_controller* %165)
  br label %167

167:                                              ; preds = %116
  %168 = load i32, i32* %15, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %15, align 4
  br label %50

170:                                              ; preds = %50
  %171 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %11, align 8
  %172 = call i32 @submit_descs(%struct.qcom_nand_controller* %171)
  store i32 %172, i32* %16, align 4
  %173 = load i32, i32* %16, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %170
  %176 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %11, align 8
  %177 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @dev_err(i32 %178, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %180

180:                                              ; preds = %175, %170
  %181 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %11, align 8
  %182 = call i32 @free_descs(%struct.qcom_nand_controller* %181)
  %183 = load i32, i32* %16, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %188, label %185

185:                                              ; preds = %180
  %186 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %187 = call i32 @nand_prog_page_end_op(%struct.nand_chip* %186)
  store i32 %187, i32* %16, align 4
  br label %188

188:                                              ; preds = %185, %180
  %189 = load i32, i32* %16, align 4
  ret i32 %189
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.qcom_nand_host* @to_qcom_nand_host(%struct.nand_chip*) #1

declare dso_local %struct.qcom_nand_controller* @get_qcom_nand_controller(%struct.nand_chip*) #1

declare dso_local i32 @nand_prog_page_begin_op(%struct.nand_chip*, i32, i32, i32*, i32) #1

declare dso_local i32 @clear_read_regs(%struct.qcom_nand_controller*) #1

declare dso_local i32 @clear_bam_transaction(%struct.qcom_nand_controller*) #1

declare dso_local i32 @update_rw_regs(%struct.qcom_nand_host*, i32, i32) #1

declare dso_local i32 @config_nand_page_write(%struct.qcom_nand_controller*) #1

declare dso_local i32 @write_data_dma(%struct.qcom_nand_controller*, i32, i32*, i32, i32) #1

declare dso_local i32 @config_nand_cw_write(%struct.qcom_nand_controller*) #1

declare dso_local i32 @submit_descs(%struct.qcom_nand_controller*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @free_descs(%struct.qcom_nand_controller*) #1

declare dso_local i32 @nand_prog_page_end_op(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
