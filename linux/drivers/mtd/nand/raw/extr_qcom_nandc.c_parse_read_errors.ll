; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_parse_read_errors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_parse_read_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_nand_host = type { i32, i64, %struct.nand_chip }
%struct.nand_chip = type { %struct.nand_ecc_ctrl }
%struct.nand_ecc_ctrl = type { i32, i32, i64 }
%struct.qcom_nand_controller = type { i64 }
%struct.mtd_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.read_stats = type { i32, i32, i32 }

@FS_OP_ERR = common dso_local global i32 0, align 4
@BS_UNCORRECTABLE_BIT = common dso_local global i32 0, align 4
@ERASED_CW = common dso_local global i32 0, align 4
@FS_MPU_ERR = common dso_local global i32 0, align 4
@BS_CORRECTABLE_ERR_MSK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_nand_host*, i32*, i32*, i32)* @parse_read_errors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_read_errors(%struct.qcom_nand_host* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qcom_nand_host*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nand_chip*, align 8
  %11 = alloca %struct.qcom_nand_controller*, align 8
  %12 = alloca %struct.mtd_info*, align 8
  %13 = alloca %struct.nand_ecc_ctrl*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.read_stats*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.qcom_nand_host* %0, %struct.qcom_nand_host** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %28 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %6, align 8
  %29 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %28, i32 0, i32 2
  store %struct.nand_chip* %29, %struct.nand_chip** %10, align 8
  %30 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %31 = call %struct.qcom_nand_controller* @get_qcom_nand_controller(%struct.nand_chip* %30)
  store %struct.qcom_nand_controller* %31, %struct.qcom_nand_controller** %11, align 8
  %32 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %33 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %32)
  store %struct.mtd_info* %33, %struct.mtd_info** %12, align 8
  %34 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %35 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %34, i32 0, i32 0
  store %struct.nand_ecc_ctrl* %35, %struct.nand_ecc_ctrl** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %17, align 4
  %36 = load i32*, i32** %7, align 8
  store i32* %36, i32** %20, align 8
  %37 = load i32*, i32** %8, align 8
  store i32* %37, i32** %21, align 8
  %38 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %11, align 8
  %39 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.read_stats*
  store %struct.read_stats* %41, %struct.read_stats** %16, align 8
  %42 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %11, align 8
  %43 = call i32 @nandc_read_buffer_sync(%struct.qcom_nand_controller* %42, i32 1)
  store i32 0, i32* %19, align 4
  br label %44

44:                                               ; preds = %171, %4
  %45 = load i32, i32* %19, align 4
  %46 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %13, align 8
  %47 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %176

50:                                               ; preds = %44
  %51 = load i32, i32* %19, align 4
  %52 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %13, align 8
  %53 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sub nsw i32 %54, 1
  %56 = icmp eq i32 %51, %55
  br i1 %56, label %57, label %71

57:                                               ; preds = %50
  %58 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %13, align 8
  %59 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %13, align 8
  %62 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 %63, 1
  %65 = shl i32 %64, 2
  %66 = sub nsw i32 %60, %65
  store i32 %66, i32* %25, align 4
  %67 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %13, align 8
  %68 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = shl i32 %69, 2
  store i32 %70, i32* %26, align 4
  br label %75

71:                                               ; preds = %50
  %72 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %6, align 8
  %73 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* %25, align 4
  store i32 0, i32* %26, align 4
  br label %75

75:                                               ; preds = %71, %57
  %76 = load %struct.read_stats*, %struct.read_stats** %16, align 8
  %77 = getelementptr inbounds %struct.read_stats, %struct.read_stats* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @le32_to_cpu(i32 %78)
  store i32 %79, i32* %22, align 4
  %80 = load %struct.read_stats*, %struct.read_stats** %16, align 8
  %81 = getelementptr inbounds %struct.read_stats, %struct.read_stats* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @le32_to_cpu(i32 %82)
  store i32 %83, i32* %23, align 4
  %84 = load %struct.read_stats*, %struct.read_stats** %16, align 8
  %85 = getelementptr inbounds %struct.read_stats, %struct.read_stats* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @le32_to_cpu(i32 %86)
  store i32 %87, i32* %24, align 4
  %88 = load i32, i32* %22, align 4
  %89 = load i32, i32* @FS_OP_ERR, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %128

92:                                               ; preds = %75
  %93 = load i32, i32* %23, align 4
  %94 = load i32, i32* @BS_UNCORRECTABLE_BIT, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %128

97:                                               ; preds = %92
  %98 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %6, align 8
  %99 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %97
  %103 = load i32, i32* %24, align 4
  %104 = load i32, i32* @ERASED_CW, align 4
  %105 = and i32 %103, %104
  %106 = load i32, i32* @ERASED_CW, align 4
  %107 = icmp eq i32 %105, %106
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i32 1, i32 0
  store i32 %109, i32* %18, align 4
  br label %119

110:                                              ; preds = %97
  %111 = load i32*, i32** %7, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load i32*, i32** %7, align 8
  %115 = load i32, i32* %25, align 4
  %116 = call i32 @erased_chunk_check_and_fixup(i32* %114, i32 %115)
  store i32 %116, i32* %18, align 4
  br label %118

117:                                              ; preds = %110
  store i32 0, i32* %18, align 4
  br label %118

118:                                              ; preds = %117, %113
  br label %119

119:                                              ; preds = %118, %102
  %120 = load i32, i32* %18, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %119
  %123 = load i32, i32* %19, align 4
  %124 = call i32 @BIT(i32 %123)
  %125 = load i32, i32* %15, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %15, align 4
  br label %127

127:                                              ; preds = %122, %119
  br label %150

128:                                              ; preds = %92, %75
  %129 = load i32, i32* %22, align 4
  %130 = load i32, i32* @FS_OP_ERR, align 4
  %131 = load i32, i32* @FS_MPU_ERR, align 4
  %132 = or i32 %130, %131
  %133 = and i32 %129, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %128
  store i32 1, i32* %17, align 4
  br label %149

136:                                              ; preds = %128
  %137 = load i32, i32* %23, align 4
  %138 = load i32, i32* @BS_CORRECTABLE_ERR_MSK, align 4
  %139 = and i32 %137, %138
  store i32 %139, i32* %27, align 4
  %140 = load i32, i32* %27, align 4
  %141 = load %struct.mtd_info*, %struct.mtd_info** %12, align 8
  %142 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = add i32 %144, %140
  store i32 %145, i32* %143, align 4
  %146 = load i32, i32* %14, align 4
  %147 = load i32, i32* %27, align 4
  %148 = call i32 @max(i32 %146, i32 %147)
  store i32 %148, i32* %14, align 4
  br label %149

149:                                              ; preds = %136, %135
  br label %150

150:                                              ; preds = %149, %127
  %151 = load i32*, i32** %7, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %153, label %158

153:                                              ; preds = %150
  %154 = load i32, i32* %25, align 4
  %155 = load i32*, i32** %7, align 8
  %156 = sext i32 %154 to i64
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  store i32* %157, i32** %7, align 8
  br label %158

158:                                              ; preds = %153, %150
  %159 = load i32*, i32** %8, align 8
  %160 = icmp ne i32* %159, null
  br i1 %160, label %161, label %170

161:                                              ; preds = %158
  %162 = load i32, i32* %26, align 4
  %163 = sext i32 %162 to i64
  %164 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %13, align 8
  %165 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = add nsw i64 %163, %166
  %168 = load i32*, i32** %8, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 %167
  store i32* %169, i32** %8, align 8
  br label %170

170:                                              ; preds = %161, %158
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %19, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %19, align 4
  %174 = load %struct.read_stats*, %struct.read_stats** %16, align 8
  %175 = getelementptr inbounds %struct.read_stats, %struct.read_stats* %174, i32 1
  store %struct.read_stats* %175, %struct.read_stats** %16, align 8
  br label %44

176:                                              ; preds = %44
  %177 = load i32, i32* %17, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %176
  %180 = load i32, i32* @EIO, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %5, align 4
  br label %195

182:                                              ; preds = %176
  %183 = load i32, i32* %15, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %187, label %185

185:                                              ; preds = %182
  %186 = load i32, i32* %14, align 4
  store i32 %186, i32* %5, align 4
  br label %195

187:                                              ; preds = %182
  %188 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %6, align 8
  %189 = load i32*, i32** %20, align 8
  %190 = load i32*, i32** %21, align 8
  %191 = load i32, i32* %15, align 4
  %192 = load i32, i32* %9, align 4
  %193 = load i32, i32* %14, align 4
  %194 = call i32 @check_for_erased_page(%struct.qcom_nand_host* %188, i32* %189, i32* %190, i32 %191, i32 %192, i32 %193)
  store i32 %194, i32* %5, align 4
  br label %195

195:                                              ; preds = %187, %185, %179
  %196 = load i32, i32* %5, align 4
  ret i32 %196
}

declare dso_local %struct.qcom_nand_controller* @get_qcom_nand_controller(%struct.nand_chip*) #1

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @nandc_read_buffer_sync(%struct.qcom_nand_controller*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @erased_chunk_check_and_fixup(i32*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @check_for_erased_page(%struct.qcom_nand_host*, i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
