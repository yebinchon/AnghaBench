; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_qcom_nandc_read_cw_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_qcom_nandc_read_cw_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.nand_chip = type { %struct.nand_ecc_ctrl }
%struct.nand_ecc_ctrl = type { i32, i32 }
%struct.qcom_nand_host = type { i32, i32, i32, i32, i32, i32 }
%struct.qcom_nand_controller = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@FLASH_BUF_ACC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failure to read raw cw %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.nand_chip*, i32*, i32*, i32, i32)* @qcom_nandc_read_cw_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_nandc_read_cw_raw(%struct.mtd_info* %0, %struct.nand_chip* %1, i32* %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mtd_info*, align 8
  %9 = alloca %struct.nand_chip*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.qcom_nand_host*, align 8
  %15 = alloca %struct.qcom_nand_controller*, align 8
  %16 = alloca %struct.nand_ecc_ctrl*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %8, align 8
  store %struct.nand_chip* %1, %struct.nand_chip** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %24 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %25 = call %struct.qcom_nand_host* @to_qcom_nand_host(%struct.nand_chip* %24)
  store %struct.qcom_nand_host* %25, %struct.qcom_nand_host** %14, align 8
  %26 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %27 = call %struct.qcom_nand_controller* @get_qcom_nand_controller(%struct.nand_chip* %26)
  store %struct.qcom_nand_controller* %27, %struct.qcom_nand_controller** %15, align 8
  %28 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %29 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %28, i32 0, i32 0
  store %struct.nand_ecc_ctrl* %29, %struct.nand_ecc_ctrl** %16, align 8
  %30 = load i32, i32* @FLASH_BUF_ACC, align 4
  store i32 %30, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %31 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %32 = load i32, i32* %12, align 4
  %33 = call i32 @nand_read_page_op(%struct.nand_chip* %31, i32 %32, i32 0, i32* null, i32 0)
  %34 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %14, align 8
  %35 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %34, i32 0, i32 0
  store i32 0, i32* %35, align 4
  %36 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %15, align 8
  %37 = call i32 @clear_bam_transaction(%struct.qcom_nand_controller* %36)
  %38 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %14, align 8
  %39 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %14, align 8
  %40 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %13, align 4
  %43 = mul nsw i32 %41, %42
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @set_address(%struct.qcom_nand_host* %38, i32 %43, i32 %44)
  %46 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %14, align 8
  %47 = call i32 @update_rw_regs(%struct.qcom_nand_host* %46, i32 1, i32 1)
  %48 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %15, align 8
  %49 = call i32 @config_nand_page_read(%struct.qcom_nand_controller* %48)
  %50 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %51 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %14, align 8
  %54 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %16, align 8
  %57 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %58, 1
  %60 = mul nsw i32 %55, %59
  %61 = sub nsw i32 %52, %60
  store i32 %61, i32* %17, align 4
  %62 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %14, align 8
  %63 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %19, align 4
  %65 = load i32, i32* %13, align 4
  %66 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %16, align 8
  %67 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sub nsw i32 %68, 1
  %70 = icmp eq i32 %65, %69
  br i1 %70, label %71, label %95

71:                                               ; preds = %6
  %72 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %16, align 8
  %73 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %17, align 4
  %76 = sub nsw i32 %74, %75
  %77 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %16, align 8
  %78 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %79, 1
  %81 = mul nsw i32 %80, 4
  %82 = sub nsw i32 %76, %81
  store i32 %82, i32* %18, align 4
  %83 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %16, align 8
  %84 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = mul nsw i32 %85, 4
  %87 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %14, align 8
  %88 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %86, %89
  %91 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %14, align 8
  %92 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %90, %93
  store i32 %94, i32* %20, align 4
  br label %108

95:                                               ; preds = %6
  %96 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %14, align 8
  %97 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %17, align 4
  %100 = sub nsw i32 %98, %99
  store i32 %100, i32* %18, align 4
  %101 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %14, align 8
  %102 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %14, align 8
  %105 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %103, %106
  store i32 %107, i32* %20, align 4
  br label %108

108:                                              ; preds = %95, %71
  %109 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %15, align 8
  %110 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %109, i32 0, i32 1
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %141

115:                                              ; preds = %108
  %116 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %15, align 8
  %117 = load i32, i32* %23, align 4
  %118 = load i32, i32* %17, align 4
  %119 = call i32 @nandc_set_read_loc(%struct.qcom_nand_controller* %116, i32 0, i32 %117, i32 %118, i32 0)
  %120 = load i32, i32* %17, align 4
  %121 = load i32, i32* %23, align 4
  %122 = add nsw i32 %121, %120
  store i32 %122, i32* %23, align 4
  %123 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %15, align 8
  %124 = load i32, i32* %23, align 4
  %125 = load i32, i32* %19, align 4
  %126 = call i32 @nandc_set_read_loc(%struct.qcom_nand_controller* %123, i32 1, i32 %124, i32 %125, i32 0)
  %127 = load i32, i32* %19, align 4
  %128 = load i32, i32* %23, align 4
  %129 = add nsw i32 %128, %127
  store i32 %129, i32* %23, align 4
  %130 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %15, align 8
  %131 = load i32, i32* %23, align 4
  %132 = load i32, i32* %18, align 4
  %133 = call i32 @nandc_set_read_loc(%struct.qcom_nand_controller* %130, i32 2, i32 %131, i32 %132, i32 0)
  %134 = load i32, i32* %18, align 4
  %135 = load i32, i32* %23, align 4
  %136 = add nsw i32 %135, %134
  store i32 %136, i32* %23, align 4
  %137 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %15, align 8
  %138 = load i32, i32* %23, align 4
  %139 = load i32, i32* %20, align 4
  %140 = call i32 @nandc_set_read_loc(%struct.qcom_nand_controller* %137, i32 3, i32 %138, i32 %139, i32 1)
  br label %141

141:                                              ; preds = %115, %108
  %142 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %15, align 8
  %143 = call i32 @config_nand_cw_read(%struct.qcom_nand_controller* %142, i32 0)
  %144 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %15, align 8
  %145 = load i32, i32* %22, align 4
  %146 = load i32*, i32** %10, align 8
  %147 = load i32, i32* %17, align 4
  %148 = call i32 @read_data_dma(%struct.qcom_nand_controller* %144, i32 %145, i32* %146, i32 %147, i32 0)
  %149 = load i32, i32* %17, align 4
  %150 = load i32, i32* %22, align 4
  %151 = add nsw i32 %150, %149
  store i32 %151, i32* %22, align 4
  %152 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %15, align 8
  %153 = load i32, i32* %22, align 4
  %154 = load i32*, i32** %11, align 8
  %155 = load i32, i32* %19, align 4
  %156 = call i32 @read_data_dma(%struct.qcom_nand_controller* %152, i32 %153, i32* %154, i32 %155, i32 0)
  %157 = load i32, i32* %19, align 4
  %158 = load i32, i32* %22, align 4
  %159 = add nsw i32 %158, %157
  store i32 %159, i32* %22, align 4
  %160 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %15, align 8
  %161 = load i32, i32* %22, align 4
  %162 = load i32*, i32** %10, align 8
  %163 = load i32, i32* %17, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %18, align 4
  %167 = call i32 @read_data_dma(%struct.qcom_nand_controller* %160, i32 %161, i32* %165, i32 %166, i32 0)
  %168 = load i32, i32* %18, align 4
  %169 = load i32, i32* %22, align 4
  %170 = add nsw i32 %169, %168
  store i32 %170, i32* %22, align 4
  %171 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %15, align 8
  %172 = load i32, i32* %22, align 4
  %173 = load i32*, i32** %11, align 8
  %174 = load i32, i32* %19, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %20, align 4
  %178 = call i32 @read_data_dma(%struct.qcom_nand_controller* %171, i32 %172, i32* %176, i32 %177, i32 0)
  %179 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %15, align 8
  %180 = call i32 @submit_descs(%struct.qcom_nand_controller* %179)
  store i32 %180, i32* %21, align 4
  %181 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %15, align 8
  %182 = call i32 @free_descs(%struct.qcom_nand_controller* %181)
  %183 = load i32, i32* %21, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %192

185:                                              ; preds = %141
  %186 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %15, align 8
  %187 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* %13, align 4
  %190 = call i32 @dev_err(i32 %188, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %189)
  %191 = load i32, i32* %21, align 4
  store i32 %191, i32* %7, align 4
  br label %195

192:                                              ; preds = %141
  %193 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %14, align 8
  %194 = call i32 @check_flash_errors(%struct.qcom_nand_host* %193, i32 1)
  store i32 %194, i32* %7, align 4
  br label %195

195:                                              ; preds = %192, %185
  %196 = load i32, i32* %7, align 4
  ret i32 %196
}

declare dso_local %struct.qcom_nand_host* @to_qcom_nand_host(%struct.nand_chip*) #1

declare dso_local %struct.qcom_nand_controller* @get_qcom_nand_controller(%struct.nand_chip*) #1

declare dso_local i32 @nand_read_page_op(%struct.nand_chip*, i32, i32, i32*, i32) #1

declare dso_local i32 @clear_bam_transaction(%struct.qcom_nand_controller*) #1

declare dso_local i32 @set_address(%struct.qcom_nand_host*, i32, i32) #1

declare dso_local i32 @update_rw_regs(%struct.qcom_nand_host*, i32, i32) #1

declare dso_local i32 @config_nand_page_read(%struct.qcom_nand_controller*) #1

declare dso_local i32 @nandc_set_read_loc(%struct.qcom_nand_controller*, i32, i32, i32, i32) #1

declare dso_local i32 @config_nand_cw_read(%struct.qcom_nand_controller*, i32) #1

declare dso_local i32 @read_data_dma(%struct.qcom_nand_controller*, i32, i32*, i32, i32) #1

declare dso_local i32 @submit_descs(%struct.qcom_nand_controller*) #1

declare dso_local i32 @free_descs(%struct.qcom_nand_controller*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @check_flash_errors(%struct.qcom_nand_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
