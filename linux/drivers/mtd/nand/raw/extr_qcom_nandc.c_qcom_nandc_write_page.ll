; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_qcom_nandc_write_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_qcom_nandc_write_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32*, %struct.nand_ecc_ctrl }
%struct.nand_ecc_ctrl = type { i32, i32, i32 }
%struct.qcom_nand_host = type { i32, i32, i32, i32, i32 }
%struct.qcom_nand_controller = type { i32 }

@FLASH_BUF_ACC = common dso_local global i64 0, align 8
@NAND_BAM_NO_EOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"failure to write page\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32, i32)* @qcom_nandc_write_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_nandc_write_page(%struct.nand_chip* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.qcom_nand_host*, align 8
  %10 = alloca %struct.qcom_nand_controller*, align 8
  %11 = alloca %struct.nand_ecc_ctrl*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %18 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %19 = call %struct.qcom_nand_host* @to_qcom_nand_host(%struct.nand_chip* %18)
  store %struct.qcom_nand_host* %19, %struct.qcom_nand_host** %9, align 8
  %20 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %21 = call %struct.qcom_nand_controller* @get_qcom_nand_controller(%struct.nand_chip* %20)
  store %struct.qcom_nand_controller* %21, %struct.qcom_nand_controller** %10, align 8
  %22 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %23 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %22, i32 0, i32 1
  store %struct.nand_ecc_ctrl* %23, %struct.nand_ecc_ctrl** %11, align 8
  %24 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @nand_prog_page_begin_op(%struct.nand_chip* %24, i32 %25, i32 0, i32* null, i32 0)
  %27 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %10, align 8
  %28 = call i32 @clear_read_regs(%struct.qcom_nand_controller* %27)
  %29 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %10, align 8
  %30 = call i32 @clear_bam_transaction(%struct.qcom_nand_controller* %29)
  %31 = load i32*, i32** %6, align 8
  store i32* %31, i32** %12, align 8
  %32 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %33 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %13, align 8
  %35 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %9, align 8
  %36 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  %37 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %9, align 8
  %38 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %11, align 8
  %39 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @update_rw_regs(%struct.qcom_nand_host* %37, i32 %40, i32 0)
  %42 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %10, align 8
  %43 = call i32 @config_nand_page_write(%struct.qcom_nand_controller* %42)
  store i32 0, i32* %14, align 4
  br label %44

44:                                               ; preds = %135, %4
  %45 = load i32, i32* %14, align 4
  %46 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %11, align 8
  %47 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %138

50:                                               ; preds = %44
  %51 = load i32, i32* %14, align 4
  %52 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %11, align 8
  %53 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %54, 1
  %56 = icmp eq i32 %51, %55
  br i1 %56, label %57, label %79

57:                                               ; preds = %50
  %58 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %11, align 8
  %59 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %11, align 8
  %62 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %63, 1
  %65 = shl i32 %64, 2
  %66 = sub nsw i32 %60, %65
  store i32 %66, i32* %16, align 4
  %67 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %11, align 8
  %68 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = shl i32 %69, 2
  %71 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %9, align 8
  %72 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %70, %73
  %75 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %9, align 8
  %76 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %74, %77
  store i32 %78, i32* %17, align 4
  br label %86

79:                                               ; preds = %50
  %80 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %9, align 8
  %81 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %16, align 4
  %83 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %11, align 8
  %84 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %17, align 4
  br label %86

86:                                               ; preds = %79, %57
  %87 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %10, align 8
  %88 = load i64, i64* @FLASH_BUF_ACC, align 8
  %89 = load i32*, i32** %12, align 8
  %90 = load i32, i32* %16, align 4
  %91 = load i32, i32* %14, align 4
  %92 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %11, align 8
  %93 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = sub nsw i32 %94, 1
  %96 = icmp eq i32 %91, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %86
  %98 = load i32, i32* @NAND_BAM_NO_EOT, align 4
  br label %100

99:                                               ; preds = %86
  br label %100

100:                                              ; preds = %99, %97
  %101 = phi i32 [ %98, %97 ], [ 0, %99 ]
  %102 = call i32 @write_data_dma(%struct.qcom_nand_controller* %87, i64 %88, i32* %89, i32 %90, i32 %101)
  %103 = load i32, i32* %14, align 4
  %104 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %11, align 8
  %105 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = sub nsw i32 %106, 1
  %108 = icmp eq i32 %103, %107
  br i1 %108, label %109, label %124

109:                                              ; preds = %100
  %110 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %9, align 8
  %111 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %13, align 8
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  store i32* %115, i32** %13, align 8
  %116 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %10, align 8
  %117 = load i64, i64* @FLASH_BUF_ACC, align 8
  %118 = load i32, i32* %16, align 4
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %117, %119
  %121 = load i32*, i32** %13, align 8
  %122 = load i32, i32* %17, align 4
  %123 = call i32 @write_data_dma(%struct.qcom_nand_controller* %116, i64 %120, i32* %121, i32 %122, i32 0)
  br label %124

124:                                              ; preds = %109, %100
  %125 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %10, align 8
  %126 = call i32 @config_nand_cw_write(%struct.qcom_nand_controller* %125)
  %127 = load i32, i32* %16, align 4
  %128 = load i32*, i32** %12, align 8
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  store i32* %130, i32** %12, align 8
  %131 = load i32, i32* %17, align 4
  %132 = load i32*, i32** %13, align 8
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  store i32* %134, i32** %13, align 8
  br label %135

135:                                              ; preds = %124
  %136 = load i32, i32* %14, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %14, align 4
  br label %44

138:                                              ; preds = %44
  %139 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %10, align 8
  %140 = call i32 @submit_descs(%struct.qcom_nand_controller* %139)
  store i32 %140, i32* %15, align 4
  %141 = load i32, i32* %15, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %138
  %144 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %10, align 8
  %145 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @dev_err(i32 %146, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %148

148:                                              ; preds = %143, %138
  %149 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %10, align 8
  %150 = call i32 @free_descs(%struct.qcom_nand_controller* %149)
  %151 = load i32, i32* %15, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %148
  %154 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %155 = call i32 @nand_prog_page_end_op(%struct.nand_chip* %154)
  store i32 %155, i32* %15, align 4
  br label %156

156:                                              ; preds = %153, %148
  %157 = load i32, i32* %15, align 4
  ret i32 %157
}

declare dso_local %struct.qcom_nand_host* @to_qcom_nand_host(%struct.nand_chip*) #1

declare dso_local %struct.qcom_nand_controller* @get_qcom_nand_controller(%struct.nand_chip*) #1

declare dso_local i32 @nand_prog_page_begin_op(%struct.nand_chip*, i32, i32, i32*, i32) #1

declare dso_local i32 @clear_read_regs(%struct.qcom_nand_controller*) #1

declare dso_local i32 @clear_bam_transaction(%struct.qcom_nand_controller*) #1

declare dso_local i32 @update_rw_regs(%struct.qcom_nand_host*, i32, i32) #1

declare dso_local i32 @config_nand_page_write(%struct.qcom_nand_controller*) #1

declare dso_local i32 @write_data_dma(%struct.qcom_nand_controller*, i64, i32*, i32, i32) #1

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
