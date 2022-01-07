; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_read_page_ecc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_read_page_ecc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_nand_host = type { i32, i32, i32, i32, %struct.nand_chip }
%struct.nand_chip = type { %struct.nand_ecc_ctrl }
%struct.nand_ecc_ctrl = type { i32, i32 }
%struct.qcom_nand_controller = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@FLASH_BUF_ACC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"failure to read page/oob\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_nand_host*, i32*, i32*, i32)* @read_page_ecc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_page_ecc(%struct.qcom_nand_host* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qcom_nand_host*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nand_chip*, align 8
  %11 = alloca %struct.qcom_nand_controller*, align 8
  %12 = alloca %struct.nand_ecc_ctrl*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.qcom_nand_host* %0, %struct.qcom_nand_host** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %20 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %6, align 8
  %21 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %20, i32 0, i32 4
  store %struct.nand_chip* %21, %struct.nand_chip** %10, align 8
  %22 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %23 = call %struct.qcom_nand_controller* @get_qcom_nand_controller(%struct.nand_chip* %22)
  store %struct.qcom_nand_controller* %23, %struct.qcom_nand_controller** %11, align 8
  %24 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %25 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %24, i32 0, i32 0
  store %struct.nand_ecc_ctrl* %25, %struct.nand_ecc_ctrl** %12, align 8
  %26 = load i32*, i32** %7, align 8
  store i32* %26, i32** %13, align 8
  %27 = load i32*, i32** %8, align 8
  store i32* %27, i32** %14, align 8
  %28 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %11, align 8
  %29 = call i32 @config_nand_page_read(%struct.qcom_nand_controller* %28)
  store i32 0, i32* %15, align 4
  br label %30

30:                                               ; preds = %164, %4
  %31 = load i32, i32* %15, align 4
  %32 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %12, align 8
  %33 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %167

36:                                               ; preds = %30
  %37 = load i32, i32* %15, align 4
  %38 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %12, align 8
  %39 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %40, 1
  %42 = icmp eq i32 %37, %41
  br i1 %42, label %43, label %65

43:                                               ; preds = %36
  %44 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %12, align 8
  %45 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %12, align 8
  %48 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %49, 1
  %51 = shl i32 %50, 2
  %52 = sub nsw i32 %46, %51
  store i32 %52, i32* %17, align 4
  %53 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %12, align 8
  %54 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %55, 2
  %57 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %6, align 8
  %58 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %56, %59
  %61 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %6, align 8
  %62 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %60, %63
  store i32 %64, i32* %18, align 4
  br label %76

65:                                               ; preds = %36
  %66 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %6, align 8
  %67 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %17, align 4
  %69 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %6, align 8
  %70 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %6, align 8
  %73 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %71, %74
  store i32 %75, i32* %18, align 4
  br label %76

76:                                               ; preds = %65, %43
  %77 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %11, align 8
  %78 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %111

83:                                               ; preds = %76
  %84 = load i32*, i32** %7, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %97

86:                                               ; preds = %83
  %87 = load i32*, i32** %8, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %97

89:                                               ; preds = %86
  %90 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %11, align 8
  %91 = load i32, i32* %17, align 4
  %92 = call i32 @nandc_set_read_loc(%struct.qcom_nand_controller* %90, i32 0, i32 0, i32 %91, i32 0)
  %93 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %11, align 8
  %94 = load i32, i32* %17, align 4
  %95 = load i32, i32* %18, align 4
  %96 = call i32 @nandc_set_read_loc(%struct.qcom_nand_controller* %93, i32 1, i32 %94, i32 %95, i32 1)
  br label %110

97:                                               ; preds = %86, %83
  %98 = load i32*, i32** %7, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %11, align 8
  %102 = load i32, i32* %17, align 4
  %103 = call i32 @nandc_set_read_loc(%struct.qcom_nand_controller* %101, i32 0, i32 0, i32 %102, i32 1)
  br label %109

104:                                              ; preds = %97
  %105 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %11, align 8
  %106 = load i32, i32* %17, align 4
  %107 = load i32, i32* %18, align 4
  %108 = call i32 @nandc_set_read_loc(%struct.qcom_nand_controller* %105, i32 0, i32 %106, i32 %107, i32 1)
  br label %109

109:                                              ; preds = %104, %100
  br label %110

110:                                              ; preds = %109, %89
  br label %111

111:                                              ; preds = %110, %76
  %112 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %11, align 8
  %113 = call i32 @config_nand_cw_read(%struct.qcom_nand_controller* %112, i32 1)
  %114 = load i32*, i32** %7, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %122

116:                                              ; preds = %111
  %117 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %11, align 8
  %118 = load i64, i64* @FLASH_BUF_ACC, align 8
  %119 = load i32*, i32** %7, align 8
  %120 = load i32, i32* %17, align 4
  %121 = call i32 @read_data_dma(%struct.qcom_nand_controller* %117, i64 %118, i32* %119, i32 %120, i32 0)
  br label %122

122:                                              ; preds = %116, %111
  %123 = load i32*, i32** %8, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %147

125:                                              ; preds = %122
  store i32 0, i32* %19, align 4
  br label %126

126:                                              ; preds = %135, %125
  %127 = load i32, i32* %19, align 4
  %128 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %6, align 8
  %129 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = icmp slt i32 %127, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %126
  %133 = load i32*, i32** %8, align 8
  %134 = getelementptr inbounds i32, i32* %133, i32 1
  store i32* %134, i32** %8, align 8
  store i32 255, i32* %133, align 4
  br label %135

135:                                              ; preds = %132
  %136 = load i32, i32* %19, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %19, align 4
  br label %126

138:                                              ; preds = %126
  %139 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %11, align 8
  %140 = load i64, i64* @FLASH_BUF_ACC, align 8
  %141 = load i32, i32* %17, align 4
  %142 = sext i32 %141 to i64
  %143 = add nsw i64 %140, %142
  %144 = load i32*, i32** %8, align 8
  %145 = load i32, i32* %18, align 4
  %146 = call i32 @read_data_dma(%struct.qcom_nand_controller* %139, i64 %143, i32* %144, i32 %145, i32 0)
  br label %147

147:                                              ; preds = %138, %122
  %148 = load i32*, i32** %7, align 8
  %149 = icmp ne i32* %148, null
  br i1 %149, label %150, label %155

150:                                              ; preds = %147
  %151 = load i32, i32* %17, align 4
  %152 = load i32*, i32** %7, align 8
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  store i32* %154, i32** %7, align 8
  br label %155

155:                                              ; preds = %150, %147
  %156 = load i32*, i32** %8, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %158, label %163

158:                                              ; preds = %155
  %159 = load i32, i32* %18, align 4
  %160 = load i32*, i32** %8, align 8
  %161 = sext i32 %159 to i64
  %162 = getelementptr inbounds i32, i32* %160, i64 %161
  store i32* %162, i32** %8, align 8
  br label %163

163:                                              ; preds = %158, %155
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %15, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %15, align 4
  br label %30

167:                                              ; preds = %30
  %168 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %11, align 8
  %169 = call i32 @submit_descs(%struct.qcom_nand_controller* %168)
  store i32 %169, i32* %16, align 4
  %170 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %11, align 8
  %171 = call i32 @free_descs(%struct.qcom_nand_controller* %170)
  %172 = load i32, i32* %16, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %167
  %175 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %11, align 8
  %176 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @dev_err(i32 %177, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %179 = load i32, i32* %16, align 4
  store i32 %179, i32* %5, align 4
  br label %186

180:                                              ; preds = %167
  %181 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %6, align 8
  %182 = load i32*, i32** %13, align 8
  %183 = load i32*, i32** %14, align 8
  %184 = load i32, i32* %9, align 4
  %185 = call i32 @parse_read_errors(%struct.qcom_nand_host* %181, i32* %182, i32* %183, i32 %184)
  store i32 %185, i32* %5, align 4
  br label %186

186:                                              ; preds = %180, %174
  %187 = load i32, i32* %5, align 4
  ret i32 %187
}

declare dso_local %struct.qcom_nand_controller* @get_qcom_nand_controller(%struct.nand_chip*) #1

declare dso_local i32 @config_nand_page_read(%struct.qcom_nand_controller*) #1

declare dso_local i32 @nandc_set_read_loc(%struct.qcom_nand_controller*, i32, i32, i32, i32) #1

declare dso_local i32 @config_nand_cw_read(%struct.qcom_nand_controller*, i32) #1

declare dso_local i32 @read_data_dma(%struct.qcom_nand_controller*, i64, i32*, i32, i32) #1

declare dso_local i32 @submit_descs(%struct.qcom_nand_controller*) #1

declare dso_local i32 @free_descs(%struct.qcom_nand_controller*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @parse_read_errors(%struct.qcom_nand_host*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
