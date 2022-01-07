; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_fwrt_dump_txf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_fwrt_dump_txf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_fw_runtime = type { i32 }
%struct.iwl_fw_error_dump_data = type { i8*, i8*, i64 }
%struct.iwl_fw_error_dump_fifo = type { i8*, i8*, i8*, i8*, i8*, i8*, i64 }

@IWL_FW_ERROR_DUMP_TXF = common dso_local global i32 0, align 4
@TXF_FIFO_ITEM_CNT = common dso_local global i32 0, align 4
@TXF_WR_PTR = common dso_local global i32 0, align 4
@TXF_RD_PTR = common dso_local global i32 0, align 4
@TXF_FENCE_PTR = common dso_local global i32 0, align 4
@TXF_LOCK_FENCE = common dso_local global i32 0, align 4
@TXF_READ_MODIFY_ADDR = common dso_local global i32 0, align 4
@TXF_READ_MODIFY_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_fw_runtime*, %struct.iwl_fw_error_dump_data**, i32, i32, i32)* @iwl_fwrt_dump_txf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_fwrt_dump_txf(%struct.iwl_fw_runtime* %0, %struct.iwl_fw_error_dump_data** %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.iwl_fw_runtime*, align 8
  %7 = alloca %struct.iwl_fw_error_dump_data**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.iwl_fw_error_dump_fifo*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iwl_fw_runtime* %0, %struct.iwl_fw_runtime** %6, align 8
  store %struct.iwl_fw_error_dump_data** %1, %struct.iwl_fw_error_dump_data*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.iwl_fw_error_dump_data**, %struct.iwl_fw_error_dump_data*** %7, align 8
  %16 = load %struct.iwl_fw_error_dump_data*, %struct.iwl_fw_error_dump_data** %15, align 8
  %17 = getelementptr inbounds %struct.iwl_fw_error_dump_data, %struct.iwl_fw_error_dump_data* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = bitcast i8* %19 to %struct.iwl_fw_error_dump_fifo*
  store %struct.iwl_fw_error_dump_fifo* %20, %struct.iwl_fw_error_dump_fifo** %11, align 8
  %21 = load %struct.iwl_fw_error_dump_fifo*, %struct.iwl_fw_error_dump_fifo** %11, align 8
  %22 = getelementptr inbounds %struct.iwl_fw_error_dump_fifo, %struct.iwl_fw_error_dump_fifo* %21, i32 0, i32 6
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = bitcast i8* %24 to i32*
  store i32* %25, i32** %12, align 8
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %5
  br label %143

30:                                               ; preds = %5
  %31 = load i32, i32* @IWL_FW_ERROR_DUMP_TXF, align 4
  %32 = call i8* @cpu_to_le32(i32 %31)
  %33 = load %struct.iwl_fw_error_dump_data**, %struct.iwl_fw_error_dump_data*** %7, align 8
  %34 = load %struct.iwl_fw_error_dump_data*, %struct.iwl_fw_error_dump_data** %33, align 8
  %35 = getelementptr inbounds %struct.iwl_fw_error_dump_data, %struct.iwl_fw_error_dump_data* %34, i32 0, i32 1
  store i8* %32, i8** %35, align 8
  %36 = load i32, i32* %13, align 4
  %37 = sext i32 %36 to i64
  %38 = add i64 %37, 56
  %39 = trunc i64 %38 to i32
  %40 = call i8* @cpu_to_le32(i32 %39)
  %41 = load %struct.iwl_fw_error_dump_data**, %struct.iwl_fw_error_dump_data*** %7, align 8
  %42 = load %struct.iwl_fw_error_dump_data*, %struct.iwl_fw_error_dump_data** %41, align 8
  %43 = getelementptr inbounds %struct.iwl_fw_error_dump_data, %struct.iwl_fw_error_dump_data* %42, i32 0, i32 0
  store i8* %40, i8** %43, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i8* @cpu_to_le32(i32 %44)
  %46 = load %struct.iwl_fw_error_dump_fifo*, %struct.iwl_fw_error_dump_fifo** %11, align 8
  %47 = getelementptr inbounds %struct.iwl_fw_error_dump_fifo, %struct.iwl_fw_error_dump_fifo* %46, i32 0, i32 5
  store i8* %45, i8** %47, align 8
  %48 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %6, align 8
  %49 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @TXF_FIFO_ITEM_CNT, align 4
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %51, %52
  %54 = call i32 @iwl_trans_read_prph(i32 %50, i32 %53)
  %55 = call i8* @cpu_to_le32(i32 %54)
  %56 = load %struct.iwl_fw_error_dump_fifo*, %struct.iwl_fw_error_dump_fifo** %11, align 8
  %57 = getelementptr inbounds %struct.iwl_fw_error_dump_fifo, %struct.iwl_fw_error_dump_fifo* %56, i32 0, i32 4
  store i8* %55, i8** %57, align 8
  %58 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %6, align 8
  %59 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @TXF_WR_PTR, align 4
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %61, %62
  %64 = call i32 @iwl_trans_read_prph(i32 %60, i32 %63)
  %65 = call i8* @cpu_to_le32(i32 %64)
  %66 = load %struct.iwl_fw_error_dump_fifo*, %struct.iwl_fw_error_dump_fifo** %11, align 8
  %67 = getelementptr inbounds %struct.iwl_fw_error_dump_fifo, %struct.iwl_fw_error_dump_fifo* %66, i32 0, i32 3
  store i8* %65, i8** %67, align 8
  %68 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %6, align 8
  %69 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @TXF_RD_PTR, align 4
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %71, %72
  %74 = call i32 @iwl_trans_read_prph(i32 %70, i32 %73)
  %75 = call i8* @cpu_to_le32(i32 %74)
  %76 = load %struct.iwl_fw_error_dump_fifo*, %struct.iwl_fw_error_dump_fifo** %11, align 8
  %77 = getelementptr inbounds %struct.iwl_fw_error_dump_fifo, %struct.iwl_fw_error_dump_fifo* %76, i32 0, i32 2
  store i8* %75, i8** %77, align 8
  %78 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %6, align 8
  %79 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @TXF_FENCE_PTR, align 4
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %81, %82
  %84 = call i32 @iwl_trans_read_prph(i32 %80, i32 %83)
  %85 = call i8* @cpu_to_le32(i32 %84)
  %86 = load %struct.iwl_fw_error_dump_fifo*, %struct.iwl_fw_error_dump_fifo** %11, align 8
  %87 = getelementptr inbounds %struct.iwl_fw_error_dump_fifo, %struct.iwl_fw_error_dump_fifo* %86, i32 0, i32 1
  store i8* %85, i8** %87, align 8
  %88 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %6, align 8
  %89 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @TXF_LOCK_FENCE, align 4
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %91, %92
  %94 = call i32 @iwl_trans_read_prph(i32 %90, i32 %93)
  %95 = call i8* @cpu_to_le32(i32 %94)
  %96 = load %struct.iwl_fw_error_dump_fifo*, %struct.iwl_fw_error_dump_fifo** %11, align 8
  %97 = getelementptr inbounds %struct.iwl_fw_error_dump_fifo, %struct.iwl_fw_error_dump_fifo* %96, i32 0, i32 0
  store i8* %95, i8** %97, align 8
  %98 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %6, align 8
  %99 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @TXF_READ_MODIFY_ADDR, align 4
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %101, %102
  %104 = load i32, i32* @TXF_WR_PTR, align 4
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %104, %105
  %107 = call i32 @iwl_trans_write_prph(i32 %100, i32 %103, i32 %106)
  %108 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %6, align 8
  %109 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @TXF_READ_MODIFY_DATA, align 4
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %111, %112
  %114 = call i32 @iwl_trans_read_prph(i32 %110, i32 %113)
  %115 = load i32, i32* %13, align 4
  %116 = sext i32 %115 to i64
  %117 = udiv i64 %116, 4
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %119

119:                                              ; preds = %135, %30
  %120 = load i32, i32* %14, align 4
  %121 = load i32, i32* %13, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %138

123:                                              ; preds = %119
  %124 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %6, align 8
  %125 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @TXF_READ_MODIFY_DATA, align 4
  %128 = load i32, i32* %9, align 4
  %129 = add nsw i32 %127, %128
  %130 = call i32 @iwl_trans_read_prph(i32 %126, i32 %129)
  %131 = load i32*, i32** %12, align 8
  %132 = load i32, i32* %14, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  store i32 %130, i32* %134, align 4
  br label %135

135:                                              ; preds = %123
  %136 = load i32, i32* %14, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %14, align 4
  br label %119

138:                                              ; preds = %119
  %139 = load %struct.iwl_fw_error_dump_data**, %struct.iwl_fw_error_dump_data*** %7, align 8
  %140 = load %struct.iwl_fw_error_dump_data*, %struct.iwl_fw_error_dump_data** %139, align 8
  %141 = call %struct.iwl_fw_error_dump_data* @iwl_fw_error_next_data(%struct.iwl_fw_error_dump_data* %140)
  %142 = load %struct.iwl_fw_error_dump_data**, %struct.iwl_fw_error_dump_data*** %7, align 8
  store %struct.iwl_fw_error_dump_data* %141, %struct.iwl_fw_error_dump_data** %142, align 8
  br label %143

143:                                              ; preds = %138, %29
  ret void
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @iwl_trans_read_prph(i32, i32) #1

declare dso_local i32 @iwl_trans_write_prph(i32, i32, i32) #1

declare dso_local %struct.iwl_fw_error_dump_data* @iwl_fw_error_next_data(%struct.iwl_fw_error_dump_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
