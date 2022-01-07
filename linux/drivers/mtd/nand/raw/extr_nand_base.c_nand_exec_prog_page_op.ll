; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_exec_prog_page_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_exec_prog_page_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, i32, i32 }
%struct.mtd_info = type { i32 }
%struct.nand_sdr_timings = type { i32, i32, i32 }
%struct.nand_op_instr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.nand_operation = type { i64, i32 }

@NAND_CMD_READ0 = common dso_local global i32 0, align 4
@NAND_CMD_SEQIN = common dso_local global i32 0, align 4
@NAND_CMD_PAGEPROG = common dso_local global i32 0, align 4
@NAND_ROW_ADDR_3 = common dso_local global i32 0, align 4
@NAND_CMD_READOOB = common dso_local global i32 0, align 4
@NAND_BUSWIDTH_16 = common dso_local global i32 0, align 4
@NAND_CMD_READ1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32, i32, i8*, i32, i32)* @nand_exec_prog_page_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nand_exec_prog_page_op(%struct.nand_chip* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nand_chip*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mtd_info*, align 8
  %15 = alloca %struct.nand_sdr_timings*, align 8
  %16 = alloca [5 x i32], align 16
  %17 = alloca [6 x %struct.nand_op_instr], align 16
  %18 = alloca %struct.nand_operation, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %22 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %23 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %22)
  store %struct.mtd_info* %23, %struct.mtd_info** %14, align 8
  %24 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %25 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %24, i32 0, i32 2
  %26 = call %struct.nand_sdr_timings* @nand_get_sdr_timings(i32* %25)
  store %struct.nand_sdr_timings* %26, %struct.nand_sdr_timings** %15, align 8
  %27 = bitcast [5 x i32]* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %27, i8 0, i64 20, i1 false)
  %28 = getelementptr inbounds [6 x %struct.nand_op_instr], [6 x %struct.nand_op_instr]* %17, i64 0, i64 0
  %29 = load i32, i32* @NAND_CMD_READ0, align 4
  %30 = call i64 @NAND_OP_CMD(i32 %29, i32 0)
  %31 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %28, i32 0, i32 0
  %32 = bitcast %struct.TYPE_6__* %31 to i64*
  store i64 %30, i64* %32, align 8
  %33 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %28, i64 1
  %34 = load i32, i32* @NAND_CMD_SEQIN, align 4
  %35 = call i64 @NAND_OP_CMD(i32 %34, i32 0)
  %36 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %33, i32 0, i32 0
  %37 = bitcast %struct.TYPE_6__* %36 to i64*
  store i64 %35, i64* %37, align 8
  %38 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %33, i64 1
  %39 = getelementptr inbounds [5 x i32], [5 x i32]* %16, i64 0, i64 0
  %40 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %15, align 8
  %41 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @PSEC_TO_NSEC(i32 %42)
  %44 = call i64 @NAND_OP_ADDR(i32 0, i32* %39, i32 %43)
  %45 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %38, i32 0, i32 0
  %46 = bitcast %struct.TYPE_6__* %45 to i64*
  store i64 %44, i64* %46, align 8
  %47 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %38, i64 1
  %48 = load i32, i32* %12, align 4
  %49 = load i8*, i8** %11, align 8
  %50 = call i64 @NAND_OP_DATA_OUT(i32 %48, i8* %49, i32 0)
  %51 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %47, i32 0, i32 0
  %52 = bitcast %struct.TYPE_6__* %51 to i64*
  store i64 %50, i64* %52, align 8
  %53 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %47, i64 1
  %54 = load i32, i32* @NAND_CMD_PAGEPROG, align 4
  %55 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %15, align 8
  %56 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @PSEC_TO_NSEC(i32 %57)
  %59 = call i64 @NAND_OP_CMD(i32 %54, i32 %58)
  %60 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %53, i32 0, i32 0
  %61 = bitcast %struct.TYPE_6__* %60 to i64*
  store i64 %59, i64* %61, align 8
  %62 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %53, i64 1
  %63 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %15, align 8
  %64 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @PSEC_TO_MSEC(i32 %65)
  %67 = call i64 @NAND_OP_WAIT_RDY(i32 %66, i32 0)
  %68 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %62, i32 0, i32 0
  %69 = bitcast %struct.TYPE_6__* %68 to i64*
  store i64 %67, i64* %69, align 8
  %70 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %71 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds [6 x %struct.nand_op_instr], [6 x %struct.nand_op_instr]* %17, i64 0, i64 0
  %74 = call { i64, i32 } @NAND_OPERATION(i32 %72, %struct.nand_op_instr* %73)
  %75 = bitcast %struct.nand_operation* %18 to { i64, i32 }*
  %76 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %75, i32 0, i32 0
  %77 = extractvalue { i64, i32 } %74, 0
  store i64 %77, i64* %76, align 8
  %78 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %75, i32 0, i32 1
  %79 = extractvalue { i64, i32 } %74, 1
  store i32 %79, i32* %78, align 8
  %80 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %81 = getelementptr inbounds [5 x i32], [5 x i32]* %16, i64 0, i64 0
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @nand_fill_column_cycles(%struct.nand_chip* %80, i32* %81, i32 %82)
  store i32 %83, i32* %19, align 4
  %84 = load i32, i32* %19, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %6
  %87 = load i32, i32* %19, align 4
  store i32 %87, i32* %7, align 4
  br label %193

88:                                               ; preds = %6
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %19, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %19, align 4
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds [5 x i32], [5 x i32]* %16, i64 0, i64 %92
  store i32 %89, i32* %93, align 4
  %94 = load i32, i32* %9, align 4
  %95 = lshr i32 %94, 8
  %96 = load i32, i32* %19, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %19, align 4
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds [5 x i32], [5 x i32]* %16, i64 0, i64 %98
  store i32 %95, i32* %99, align 4
  %100 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %101 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @NAND_ROW_ADDR_3, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %88
  %107 = load i32, i32* %9, align 4
  %108 = lshr i32 %107, 16
  %109 = load i32, i32* %19, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %19, align 4
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds [5 x i32], [5 x i32]* %16, i64 0, i64 %111
  store i32 %108, i32* %112, align 4
  br label %113

113:                                              ; preds = %106, %88
  %114 = load i32, i32* %19, align 4
  %115 = getelementptr inbounds [6 x %struct.nand_op_instr], [6 x %struct.nand_op_instr]* %17, i64 0, i64 2
  %116 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  store i32 %114, i32* %118, align 4
  %119 = load i32, i32* %13, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %132, label %121

121:                                              ; preds = %113
  %122 = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %18, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = sub nsw i64 %123, 2
  store i64 %124, i64* %122, align 8
  %125 = load i32, i32* %12, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %121
  %128 = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %18, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %129, -1
  store i64 %130, i64* %128, align 8
  br label %131

131:                                              ; preds = %127, %121
  br label %132

132:                                              ; preds = %131, %113
  %133 = load %struct.mtd_info*, %struct.mtd_info** %14, align 8
  %134 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = icmp sle i32 %135, 512
  br i1 %136, label %137, label %167

137:                                              ; preds = %132
  %138 = load i32, i32* %10, align 4
  %139 = load %struct.mtd_info*, %struct.mtd_info** %14, align 8
  %140 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp uge i32 %138, %141
  br i1 %142, label %143, label %149

143:                                              ; preds = %137
  %144 = load i32, i32* @NAND_CMD_READOOB, align 4
  %145 = getelementptr inbounds [6 x %struct.nand_op_instr], [6 x %struct.nand_op_instr]* %17, i64 0, i64 0
  %146 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  store i32 %144, i32* %148, align 16
  br label %166

149:                                              ; preds = %137
  %150 = load i32, i32* %10, align 4
  %151 = icmp uge i32 %150, 256
  br i1 %151, label %152, label %165

152:                                              ; preds = %149
  %153 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %154 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %165, label %159

159:                                              ; preds = %152
  %160 = load i32, i32* @NAND_CMD_READ1, align 4
  %161 = getelementptr inbounds [6 x %struct.nand_op_instr], [6 x %struct.nand_op_instr]* %17, i64 0, i64 0
  %162 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 0
  store i32 %160, i32* %164, align 16
  br label %165

165:                                              ; preds = %159, %152, %149
  br label %166

166:                                              ; preds = %165, %143
  br label %174

167:                                              ; preds = %132
  %168 = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %18, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %168, align 8
  %171 = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %18, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = add nsw i64 %172, -1
  store i64 %173, i64* %171, align 8
  br label %174

174:                                              ; preds = %167, %166
  %175 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %176 = call i32 @nand_exec_op(%struct.nand_chip* %175, %struct.nand_operation* %18)
  store i32 %176, i32* %20, align 4
  %177 = load i32, i32* %13, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %174
  %180 = load i32, i32* %20, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %179, %174
  %183 = load i32, i32* %20, align 4
  store i32 %183, i32* %7, align 4
  br label %193

184:                                              ; preds = %179
  %185 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %186 = call i32 @nand_status_op(%struct.nand_chip* %185, i32* %21)
  store i32 %186, i32* %20, align 4
  %187 = load i32, i32* %20, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %184
  %190 = load i32, i32* %20, align 4
  store i32 %190, i32* %7, align 4
  br label %193

191:                                              ; preds = %184
  %192 = load i32, i32* %21, align 4
  store i32 %192, i32* %7, align 4
  br label %193

193:                                              ; preds = %191, %189, %182, %86
  %194 = load i32, i32* %7, align 4
  ret i32 %194
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.nand_sdr_timings* @nand_get_sdr_timings(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @NAND_OP_CMD(i32, i32) #1

declare dso_local i64 @NAND_OP_ADDR(i32, i32*, i32) #1

declare dso_local i32 @PSEC_TO_NSEC(i32) #1

declare dso_local i64 @NAND_OP_DATA_OUT(i32, i8*, i32) #1

declare dso_local i64 @NAND_OP_WAIT_RDY(i32, i32) #1

declare dso_local i32 @PSEC_TO_MSEC(i32) #1

declare dso_local { i64, i32 } @NAND_OPERATION(i32, %struct.nand_op_instr*) #1

declare dso_local i32 @nand_fill_column_cycles(%struct.nand_chip*, i32*, i32) #1

declare dso_local i32 @nand_exec_op(%struct.nand_chip*, %struct.nand_operation*) #1

declare dso_local i32 @nand_status_op(%struct.nand_chip*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
