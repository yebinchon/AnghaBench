; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_fwrt_dump_rxf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_fwrt_dump_rxf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_fw_runtime = type { i32 }
%struct.iwl_fw_error_dump_data = type { i8*, i8*, i64 }
%struct.iwl_fw_error_dump_fifo = type { i8*, i8*, i8*, i8*, i8*, i8*, i64 }

@IWL_FW_ERROR_DUMP_RXF = common dso_local global i32 0, align 4
@RXF_RD_D_SPACE = common dso_local global i32 0, align 4
@RXF_RD_WR_PTR = common dso_local global i32 0, align 4
@RXF_RD_RD_PTR = common dso_local global i32 0, align 4
@RXF_RD_FENCE_PTR = common dso_local global i32 0, align 4
@RXF_SET_FENCE_MODE = common dso_local global i32 0, align 4
@RXF_LD_WR2FENCE = common dso_local global i32 0, align 4
@RXF_LD_FENCE_OFFSET_ADDR = common dso_local global i32 0, align 4
@RXF_FIFO_RD_FENCE_INC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_fw_runtime*, %struct.iwl_fw_error_dump_data**, i32, i32, i32)* @iwl_fwrt_dump_rxf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_fwrt_dump_rxf(%struct.iwl_fw_runtime* %0, %struct.iwl_fw_error_dump_data** %1, i32 %2, i32 %3, i32 %4) #0 {
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
  br label %147

30:                                               ; preds = %5
  %31 = load i32, i32* @IWL_FW_ERROR_DUMP_RXF, align 4
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
  %51 = load i32, i32* @RXF_RD_D_SPACE, align 4
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
  %61 = load i32, i32* @RXF_RD_WR_PTR, align 4
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
  %71 = load i32, i32* @RXF_RD_RD_PTR, align 4
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
  %81 = load i32, i32* @RXF_RD_FENCE_PTR, align 4
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
  %91 = load i32, i32* @RXF_SET_FENCE_MODE, align 4
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
  %101 = load i32, i32* @RXF_SET_FENCE_MODE, align 4
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %101, %102
  %104 = call i32 @iwl_trans_write_prph(i32 %100, i32 %103, i32 1)
  %105 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %6, align 8
  %106 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @RXF_LD_WR2FENCE, align 4
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %108, %109
  %111 = call i32 @iwl_trans_write_prph(i32 %107, i32 %110, i32 1)
  %112 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %6, align 8
  %113 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @RXF_LD_FENCE_OFFSET_ADDR, align 4
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %115, %116
  %118 = call i32 @iwl_trans_write_prph(i32 %114, i32 %117, i32 0)
  %119 = load i32, i32* %13, align 4
  %120 = sext i32 %119 to i64
  %121 = udiv i64 %120, 4
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %123

123:                                              ; preds = %139, %30
  %124 = load i32, i32* %14, align 4
  %125 = load i32, i32* %13, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %142

127:                                              ; preds = %123
  %128 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %6, align 8
  %129 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @RXF_FIFO_RD_FENCE_INC, align 4
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %131, %132
  %134 = call i32 @iwl_trans_read_prph(i32 %130, i32 %133)
  %135 = load i32*, i32** %12, align 8
  %136 = load i32, i32* %14, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  store i32 %134, i32* %138, align 4
  br label %139

139:                                              ; preds = %127
  %140 = load i32, i32* %14, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %14, align 4
  br label %123

142:                                              ; preds = %123
  %143 = load %struct.iwl_fw_error_dump_data**, %struct.iwl_fw_error_dump_data*** %7, align 8
  %144 = load %struct.iwl_fw_error_dump_data*, %struct.iwl_fw_error_dump_data** %143, align 8
  %145 = call %struct.iwl_fw_error_dump_data* @iwl_fw_error_next_data(%struct.iwl_fw_error_dump_data* %144)
  %146 = load %struct.iwl_fw_error_dump_data**, %struct.iwl_fw_error_dump_data*** %7, align 8
  store %struct.iwl_fw_error_dump_data* %145, %struct.iwl_fw_error_dump_data** %146, align 8
  br label %147

147:                                              ; preds = %142, %29
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
