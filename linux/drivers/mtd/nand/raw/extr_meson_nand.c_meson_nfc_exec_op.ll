; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_meson_nand.c_meson_nfc_exec_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_meson_nand.c_meson_nfc_exec_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.nand_operation = type { i64, %struct.nand_op_instr*, i32 }
%struct.nand_op_instr = type { i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_7__ = type { i32 }
%struct.meson_nfc_nand_chip = type { i32 }
%struct.meson_nfc = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@NFC_CLK_CYCLE = common dso_local global i32 0, align 4
@NFC_CMD_CLE = common dso_local global i64 0, align 8
@NFC_REG_CMD = common dso_local global i64 0, align 8
@NFC_CMD_ALE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, %struct.nand_operation*, i32)* @meson_nfc_exec_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_nfc_exec_op(%struct.nand_chip* %0, %struct.nand_operation* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca %struct.nand_operation*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.meson_nfc_nand_chip*, align 8
  %9 = alloca %struct.meson_nfc*, align 8
  %10 = alloca %struct.nand_op_instr*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store %struct.nand_operation* %1, %struct.nand_operation** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %17 = call %struct.meson_nfc_nand_chip* @to_meson_nand(%struct.nand_chip* %16)
  store %struct.meson_nfc_nand_chip* %17, %struct.meson_nfc_nand_chip** %8, align 8
  %18 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %19 = call %struct.meson_nfc* @nand_get_controller_data(%struct.nand_chip* %18)
  store %struct.meson_nfc* %19, %struct.meson_nfc** %9, align 8
  store %struct.nand_op_instr* null, %struct.nand_op_instr** %10, align 8
  %20 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %21 = load %struct.nand_operation*, %struct.nand_operation** %6, align 8
  %22 = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @meson_nfc_select_chip(%struct.nand_chip* %20, i32 %23)
  store i64 0, i64* %12, align 8
  br label %25

25:                                               ; preds = %177, %3
  %26 = load i64, i64* %12, align 8
  %27 = load %struct.nand_operation*, %struct.nand_operation** %6, align 8
  %28 = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %26, %29
  br i1 %30, label %31, label %180

31:                                               ; preds = %25
  %32 = load %struct.nand_operation*, %struct.nand_operation** %6, align 8
  %33 = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %32, i32 0, i32 1
  %34 = load %struct.nand_op_instr*, %struct.nand_op_instr** %33, align 8
  %35 = load i64, i64* %12, align 8
  %36 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %34, i64 %35
  store %struct.nand_op_instr* %36, %struct.nand_op_instr** %10, align 8
  %37 = load %struct.nand_op_instr*, %struct.nand_op_instr** %10, align 8
  %38 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @PSEC_TO_NSEC(i32 %39)
  %41 = load %struct.meson_nfc_nand_chip*, %struct.meson_nfc_nand_chip** %8, align 8
  %42 = getelementptr inbounds %struct.meson_nfc_nand_chip, %struct.meson_nfc_nand_chip* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @NFC_CLK_CYCLE, align 4
  %45 = mul nsw i32 %43, %44
  %46 = call i64 @DIV_ROUND_UP(i32 %40, i32 %45)
  store i64 %46, i64* %13, align 8
  %47 = load %struct.nand_op_instr*, %struct.nand_op_instr** %10, align 8
  %48 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  switch i32 %49, label %176 [
    i32 131, label %50
    i32 132, label %76
    i32 130, label %119
    i32 129, label %139
    i32 128, label %159
  ]

50:                                               ; preds = %31
  %51 = load %struct.meson_nfc*, %struct.meson_nfc** %9, align 8
  %52 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @NFC_CMD_CLE, align 8
  %56 = or i64 %54, %55
  store i64 %56, i64* %14, align 8
  %57 = load %struct.nand_op_instr*, %struct.nand_op_instr** %10, align 8
  %58 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = and i32 %61, 255
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* %14, align 8
  %65 = or i64 %64, %63
  store i64 %65, i64* %14, align 8
  %66 = load i64, i64* %14, align 8
  %67 = load %struct.meson_nfc*, %struct.meson_nfc** %9, align 8
  %68 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @NFC_REG_CMD, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @writel(i64 %66, i64 %71)
  %73 = load %struct.meson_nfc*, %struct.meson_nfc** %9, align 8
  %74 = load i64, i64* %13, align 8
  %75 = call i32 @meson_nfc_cmd_idle(%struct.meson_nfc* %73, i64 %74)
  br label %176

76:                                               ; preds = %31
  store i32 0, i32* %15, align 4
  br label %77

77:                                               ; preds = %112, %76
  %78 = load i32, i32* %15, align 4
  %79 = load %struct.nand_op_instr*, %struct.nand_op_instr** %10, align 8
  %80 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %78, %83
  br i1 %84, label %85, label %115

85:                                               ; preds = %77
  %86 = load %struct.meson_nfc*, %struct.meson_nfc** %9, align 8
  %87 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @NFC_CMD_ALE, align 8
  %91 = or i64 %89, %90
  store i64 %91, i64* %14, align 8
  %92 = load %struct.nand_op_instr*, %struct.nand_op_instr** %10, align 8
  %93 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %15, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, 255
  %102 = sext i32 %101 to i64
  %103 = load i64, i64* %14, align 8
  %104 = or i64 %103, %102
  store i64 %104, i64* %14, align 8
  %105 = load i64, i64* %14, align 8
  %106 = load %struct.meson_nfc*, %struct.meson_nfc** %9, align 8
  %107 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @NFC_REG_CMD, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @writel(i64 %105, i64 %110)
  br label %112

112:                                              ; preds = %85
  %113 = load i32, i32* %15, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %15, align 4
  br label %77

115:                                              ; preds = %77
  %116 = load %struct.meson_nfc*, %struct.meson_nfc** %9, align 8
  %117 = load i64, i64* %13, align 8
  %118 = call i32 @meson_nfc_cmd_idle(%struct.meson_nfc* %116, i64 %117)
  br label %176

119:                                              ; preds = %31
  %120 = load %struct.nand_op_instr*, %struct.nand_op_instr** %10, align 8
  %121 = call i8* @meson_nand_op_get_dma_safe_input_buf(%struct.nand_op_instr* %120)
  store i8* %121, i8** %11, align 8
  %122 = load i8*, i8** %11, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %127, label %124

124:                                              ; preds = %119
  %125 = load i32, i32* @ENOMEM, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %4, align 4
  br label %183

127:                                              ; preds = %119
  %128 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %129 = load i8*, i8** %11, align 8
  %130 = load %struct.nand_op_instr*, %struct.nand_op_instr** %10, align 8
  %131 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @meson_nfc_read_buf(%struct.nand_chip* %128, i8* %129, i32 %134)
  %136 = load %struct.nand_op_instr*, %struct.nand_op_instr** %10, align 8
  %137 = load i8*, i8** %11, align 8
  %138 = call i32 @meson_nand_op_put_dma_safe_input_buf(%struct.nand_op_instr* %136, i8* %137)
  br label %176

139:                                              ; preds = %31
  %140 = load %struct.nand_op_instr*, %struct.nand_op_instr** %10, align 8
  %141 = call i8* @meson_nand_op_get_dma_safe_output_buf(%struct.nand_op_instr* %140)
  store i8* %141, i8** %11, align 8
  %142 = load i8*, i8** %11, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %147, label %144

144:                                              ; preds = %139
  %145 = load i32, i32* @ENOMEM, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %4, align 4
  br label %183

147:                                              ; preds = %139
  %148 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %149 = load i8*, i8** %11, align 8
  %150 = load %struct.nand_op_instr*, %struct.nand_op_instr** %10, align 8
  %151 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @meson_nfc_write_buf(%struct.nand_chip* %148, i8* %149, i32 %154)
  %156 = load %struct.nand_op_instr*, %struct.nand_op_instr** %10, align 8
  %157 = load i8*, i8** %11, align 8
  %158 = call i32 @meson_nand_op_put_dma_safe_output_buf(%struct.nand_op_instr* %156, i8* %157)
  br label %176

159:                                              ; preds = %31
  %160 = load %struct.meson_nfc*, %struct.meson_nfc** %9, align 8
  %161 = load %struct.nand_op_instr*, %struct.nand_op_instr** %10, align 8
  %162 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @meson_nfc_queue_rb(%struct.meson_nfc* %160, i32 %165)
  %167 = load %struct.nand_op_instr*, %struct.nand_op_instr** %10, align 8
  %168 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %159
  %172 = load %struct.meson_nfc*, %struct.meson_nfc** %9, align 8
  %173 = load i64, i64* %13, align 8
  %174 = call i32 @meson_nfc_cmd_idle(%struct.meson_nfc* %172, i64 %173)
  br label %175

175:                                              ; preds = %171, %159
  br label %176

176:                                              ; preds = %31, %175, %147, %127, %115, %50
  br label %177

177:                                              ; preds = %176
  %178 = load i64, i64* %12, align 8
  %179 = add i64 %178, 1
  store i64 %179, i64* %12, align 8
  br label %25

180:                                              ; preds = %25
  %181 = load %struct.meson_nfc*, %struct.meson_nfc** %9, align 8
  %182 = call i32 @meson_nfc_wait_cmd_finish(%struct.meson_nfc* %181, i32 1000)
  store i32 0, i32* %4, align 4
  br label %183

183:                                              ; preds = %180, %144, %124
  %184 = load i32, i32* %4, align 4
  ret i32 %184
}

declare dso_local %struct.meson_nfc_nand_chip* @to_meson_nand(%struct.nand_chip*) #1

declare dso_local %struct.meson_nfc* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @meson_nfc_select_chip(%struct.nand_chip*, i32) #1

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @PSEC_TO_NSEC(i32) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @meson_nfc_cmd_idle(%struct.meson_nfc*, i64) #1

declare dso_local i8* @meson_nand_op_get_dma_safe_input_buf(%struct.nand_op_instr*) #1

declare dso_local i32 @meson_nfc_read_buf(%struct.nand_chip*, i8*, i32) #1

declare dso_local i32 @meson_nand_op_put_dma_safe_input_buf(%struct.nand_op_instr*, i8*) #1

declare dso_local i8* @meson_nand_op_get_dma_safe_output_buf(%struct.nand_op_instr*) #1

declare dso_local i32 @meson_nfc_write_buf(%struct.nand_chip*, i8*, i32) #1

declare dso_local i32 @meson_nand_op_put_dma_safe_output_buf(%struct.nand_op_instr*, i8*) #1

declare dso_local i32 @meson_nfc_queue_rb(%struct.meson_nfc*, i32) #1

declare dso_local i32 @meson_nfc_wait_cmd_finish(%struct.meson_nfc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
