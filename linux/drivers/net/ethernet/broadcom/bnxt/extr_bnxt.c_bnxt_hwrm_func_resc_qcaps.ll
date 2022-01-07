; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_func_resc_qcaps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_func_resc_qcaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32, %struct.bnxt_pf_info, %struct.bnxt_hw_resc, %struct.hwrm_func_resource_qcaps_output* }
%struct.bnxt_pf_info = type { i64 }
%struct.bnxt_hw_resc = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.hwrm_func_resource_qcaps_output = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hwrm_func_resource_qcaps_input = type { i32, i32 }

@HWRM_FUNC_RESOURCE_QCAPS = common dso_local global i32 0, align 4
@HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@BNXT_FLAG_CHIP_P5 = common dso_local global i32 0, align 4
@BNXT_VF_RESV_STRATEGY_MINIMAL_STATIC = common dso_local global i64 0, align 8
@BNXT_VF_RESV_STRATEGY_MAXIMAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_hwrm_func_resc_qcaps(%struct.bnxt* %0, i32 %1) #0 {
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hwrm_func_resource_qcaps_output*, align 8
  %6 = alloca %struct.hwrm_func_resource_qcaps_input, align 4
  %7 = alloca %struct.bnxt_hw_resc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.bnxt_pf_info*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %12 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %11, i32 0, i32 4
  %13 = load %struct.hwrm_func_resource_qcaps_output*, %struct.hwrm_func_resource_qcaps_output** %12, align 8
  store %struct.hwrm_func_resource_qcaps_output* %13, %struct.hwrm_func_resource_qcaps_output** %5, align 8
  %14 = bitcast %struct.hwrm_func_resource_qcaps_input* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 8, i1 false)
  %15 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %16 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %15, i32 0, i32 3
  store %struct.bnxt_hw_resc* %16, %struct.bnxt_hw_resc** %7, align 8
  %17 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %18 = load i32, i32* @HWRM_FUNC_RESOURCE_QCAPS, align 4
  %19 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt* %17, %struct.hwrm_func_resource_qcaps_input* %6, i32 %18, i32 -1, i32 -1)
  %20 = call i32 @cpu_to_le16(i32 65535)
  %21 = getelementptr inbounds %struct.hwrm_func_resource_qcaps_input, %struct.hwrm_func_resource_qcaps_input* %6, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %23 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %22, i32 0, i32 1
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %26 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %27 = call i32 @_hwrm_send_message_silent(%struct.bnxt* %25, %struct.hwrm_func_resource_qcaps_input* %6, i32 8, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  br label %182

31:                                               ; preds = %2
  %32 = load %struct.hwrm_func_resource_qcaps_output*, %struct.hwrm_func_resource_qcaps_output** %5, align 8
  %33 = getelementptr inbounds %struct.hwrm_func_resource_qcaps_output, %struct.hwrm_func_resource_qcaps_output* %32, i32 0, i32 18
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @le16_to_cpu(i32 %34)
  %36 = load %struct.bnxt_hw_resc*, %struct.bnxt_hw_resc** %7, align 8
  %37 = getelementptr inbounds %struct.bnxt_hw_resc, %struct.bnxt_hw_resc* %36, i32 0, i32 17
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %31
  br label %182

41:                                               ; preds = %31
  %42 = load %struct.hwrm_func_resource_qcaps_output*, %struct.hwrm_func_resource_qcaps_output** %5, align 8
  %43 = getelementptr inbounds %struct.hwrm_func_resource_qcaps_output, %struct.hwrm_func_resource_qcaps_output* %42, i32 0, i32 17
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @le16_to_cpu(i32 %44)
  %46 = load %struct.bnxt_hw_resc*, %struct.bnxt_hw_resc** %7, align 8
  %47 = getelementptr inbounds %struct.bnxt_hw_resc, %struct.bnxt_hw_resc* %46, i32 0, i32 16
  store i8* %45, i8** %47, align 8
  %48 = load %struct.hwrm_func_resource_qcaps_output*, %struct.hwrm_func_resource_qcaps_output** %5, align 8
  %49 = getelementptr inbounds %struct.hwrm_func_resource_qcaps_output, %struct.hwrm_func_resource_qcaps_output* %48, i32 0, i32 16
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @le16_to_cpu(i32 %50)
  %52 = load %struct.bnxt_hw_resc*, %struct.bnxt_hw_resc** %7, align 8
  %53 = getelementptr inbounds %struct.bnxt_hw_resc, %struct.bnxt_hw_resc* %52, i32 0, i32 15
  store i8* %51, i8** %53, align 8
  %54 = load %struct.hwrm_func_resource_qcaps_output*, %struct.hwrm_func_resource_qcaps_output** %5, align 8
  %55 = getelementptr inbounds %struct.hwrm_func_resource_qcaps_output, %struct.hwrm_func_resource_qcaps_output* %54, i32 0, i32 15
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @le16_to_cpu(i32 %56)
  %58 = load %struct.bnxt_hw_resc*, %struct.bnxt_hw_resc** %7, align 8
  %59 = getelementptr inbounds %struct.bnxt_hw_resc, %struct.bnxt_hw_resc* %58, i32 0, i32 14
  store i8* %57, i8** %59, align 8
  %60 = load %struct.hwrm_func_resource_qcaps_output*, %struct.hwrm_func_resource_qcaps_output** %5, align 8
  %61 = getelementptr inbounds %struct.hwrm_func_resource_qcaps_output, %struct.hwrm_func_resource_qcaps_output* %60, i32 0, i32 14
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @le16_to_cpu(i32 %62)
  %64 = load %struct.bnxt_hw_resc*, %struct.bnxt_hw_resc** %7, align 8
  %65 = getelementptr inbounds %struct.bnxt_hw_resc, %struct.bnxt_hw_resc* %64, i32 0, i32 13
  store i8* %63, i8** %65, align 8
  %66 = load %struct.hwrm_func_resource_qcaps_output*, %struct.hwrm_func_resource_qcaps_output** %5, align 8
  %67 = getelementptr inbounds %struct.hwrm_func_resource_qcaps_output, %struct.hwrm_func_resource_qcaps_output* %66, i32 0, i32 13
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @le16_to_cpu(i32 %68)
  %70 = load %struct.bnxt_hw_resc*, %struct.bnxt_hw_resc** %7, align 8
  %71 = getelementptr inbounds %struct.bnxt_hw_resc, %struct.bnxt_hw_resc* %70, i32 0, i32 12
  store i8* %69, i8** %71, align 8
  %72 = load %struct.hwrm_func_resource_qcaps_output*, %struct.hwrm_func_resource_qcaps_output** %5, align 8
  %73 = getelementptr inbounds %struct.hwrm_func_resource_qcaps_output, %struct.hwrm_func_resource_qcaps_output* %72, i32 0, i32 12
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @le16_to_cpu(i32 %74)
  %76 = load %struct.bnxt_hw_resc*, %struct.bnxt_hw_resc** %7, align 8
  %77 = getelementptr inbounds %struct.bnxt_hw_resc, %struct.bnxt_hw_resc* %76, i32 0, i32 11
  store i8* %75, i8** %77, align 8
  %78 = load %struct.hwrm_func_resource_qcaps_output*, %struct.hwrm_func_resource_qcaps_output** %5, align 8
  %79 = getelementptr inbounds %struct.hwrm_func_resource_qcaps_output, %struct.hwrm_func_resource_qcaps_output* %78, i32 0, i32 11
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @le16_to_cpu(i32 %80)
  %82 = load %struct.bnxt_hw_resc*, %struct.bnxt_hw_resc** %7, align 8
  %83 = getelementptr inbounds %struct.bnxt_hw_resc, %struct.bnxt_hw_resc* %82, i32 0, i32 10
  store i8* %81, i8** %83, align 8
  %84 = load %struct.hwrm_func_resource_qcaps_output*, %struct.hwrm_func_resource_qcaps_output** %5, align 8
  %85 = getelementptr inbounds %struct.hwrm_func_resource_qcaps_output, %struct.hwrm_func_resource_qcaps_output* %84, i32 0, i32 10
  %86 = load i32, i32* %85, align 4
  %87 = call i8* @le16_to_cpu(i32 %86)
  %88 = load %struct.bnxt_hw_resc*, %struct.bnxt_hw_resc** %7, align 8
  %89 = getelementptr inbounds %struct.bnxt_hw_resc, %struct.bnxt_hw_resc* %88, i32 0, i32 0
  store i8* %87, i8** %89, align 8
  %90 = load %struct.hwrm_func_resource_qcaps_output*, %struct.hwrm_func_resource_qcaps_output** %5, align 8
  %91 = getelementptr inbounds %struct.hwrm_func_resource_qcaps_output, %struct.hwrm_func_resource_qcaps_output* %90, i32 0, i32 9
  %92 = load i32, i32* %91, align 4
  %93 = call i8* @le16_to_cpu(i32 %92)
  %94 = load %struct.bnxt_hw_resc*, %struct.bnxt_hw_resc** %7, align 8
  %95 = getelementptr inbounds %struct.bnxt_hw_resc, %struct.bnxt_hw_resc* %94, i32 0, i32 9
  store i8* %93, i8** %95, align 8
  %96 = load %struct.hwrm_func_resource_qcaps_output*, %struct.hwrm_func_resource_qcaps_output** %5, align 8
  %97 = getelementptr inbounds %struct.hwrm_func_resource_qcaps_output, %struct.hwrm_func_resource_qcaps_output* %96, i32 0, i32 8
  %98 = load i32, i32* %97, align 4
  %99 = call i8* @le16_to_cpu(i32 %98)
  %100 = load %struct.bnxt_hw_resc*, %struct.bnxt_hw_resc** %7, align 8
  %101 = getelementptr inbounds %struct.bnxt_hw_resc, %struct.bnxt_hw_resc* %100, i32 0, i32 1
  store i8* %99, i8** %101, align 8
  %102 = load %struct.hwrm_func_resource_qcaps_output*, %struct.hwrm_func_resource_qcaps_output** %5, align 8
  %103 = getelementptr inbounds %struct.hwrm_func_resource_qcaps_output, %struct.hwrm_func_resource_qcaps_output* %102, i32 0, i32 7
  %104 = load i32, i32* %103, align 4
  %105 = call i8* @le16_to_cpu(i32 %104)
  %106 = load %struct.bnxt_hw_resc*, %struct.bnxt_hw_resc** %7, align 8
  %107 = getelementptr inbounds %struct.bnxt_hw_resc, %struct.bnxt_hw_resc* %106, i32 0, i32 8
  store i8* %105, i8** %107, align 8
  %108 = load %struct.hwrm_func_resource_qcaps_output*, %struct.hwrm_func_resource_qcaps_output** %5, align 8
  %109 = getelementptr inbounds %struct.hwrm_func_resource_qcaps_output, %struct.hwrm_func_resource_qcaps_output* %108, i32 0, i32 6
  %110 = load i32, i32* %109, align 4
  %111 = call i8* @le16_to_cpu(i32 %110)
  %112 = load %struct.bnxt_hw_resc*, %struct.bnxt_hw_resc** %7, align 8
  %113 = getelementptr inbounds %struct.bnxt_hw_resc, %struct.bnxt_hw_resc* %112, i32 0, i32 7
  store i8* %111, i8** %113, align 8
  %114 = load %struct.hwrm_func_resource_qcaps_output*, %struct.hwrm_func_resource_qcaps_output** %5, align 8
  %115 = getelementptr inbounds %struct.hwrm_func_resource_qcaps_output, %struct.hwrm_func_resource_qcaps_output* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = call i8* @le16_to_cpu(i32 %116)
  %118 = load %struct.bnxt_hw_resc*, %struct.bnxt_hw_resc** %7, align 8
  %119 = getelementptr inbounds %struct.bnxt_hw_resc, %struct.bnxt_hw_resc* %118, i32 0, i32 6
  store i8* %117, i8** %119, align 8
  %120 = load %struct.hwrm_func_resource_qcaps_output*, %struct.hwrm_func_resource_qcaps_output** %5, align 8
  %121 = getelementptr inbounds %struct.hwrm_func_resource_qcaps_output, %struct.hwrm_func_resource_qcaps_output* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = call i8* @le16_to_cpu(i32 %122)
  %124 = load %struct.bnxt_hw_resc*, %struct.bnxt_hw_resc** %7, align 8
  %125 = getelementptr inbounds %struct.bnxt_hw_resc, %struct.bnxt_hw_resc* %124, i32 0, i32 5
  store i8* %123, i8** %125, align 8
  %126 = load %struct.hwrm_func_resource_qcaps_output*, %struct.hwrm_func_resource_qcaps_output** %5, align 8
  %127 = getelementptr inbounds %struct.hwrm_func_resource_qcaps_output, %struct.hwrm_func_resource_qcaps_output* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = call i8* @le16_to_cpu(i32 %128)
  %130 = load %struct.bnxt_hw_resc*, %struct.bnxt_hw_resc** %7, align 8
  %131 = getelementptr inbounds %struct.bnxt_hw_resc, %struct.bnxt_hw_resc* %130, i32 0, i32 4
  store i8* %129, i8** %131, align 8
  %132 = load %struct.hwrm_func_resource_qcaps_output*, %struct.hwrm_func_resource_qcaps_output** %5, align 8
  %133 = getelementptr inbounds %struct.hwrm_func_resource_qcaps_output, %struct.hwrm_func_resource_qcaps_output* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = call i8* @le16_to_cpu(i32 %134)
  %136 = load %struct.bnxt_hw_resc*, %struct.bnxt_hw_resc** %7, align 8
  %137 = getelementptr inbounds %struct.bnxt_hw_resc, %struct.bnxt_hw_resc* %136, i32 0, i32 3
  store i8* %135, i8** %137, align 8
  %138 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %139 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @BNXT_FLAG_CHIP_P5, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %157

144:                                              ; preds = %41
  %145 = load %struct.hwrm_func_resource_qcaps_output*, %struct.hwrm_func_resource_qcaps_output** %5, align 8
  %146 = getelementptr inbounds %struct.hwrm_func_resource_qcaps_output, %struct.hwrm_func_resource_qcaps_output* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i8* @le16_to_cpu(i32 %147)
  store i8* %148, i8** %9, align 8
  %149 = load i8*, i8** %9, align 8
  %150 = load %struct.bnxt_hw_resc*, %struct.bnxt_hw_resc** %7, align 8
  %151 = getelementptr inbounds %struct.bnxt_hw_resc, %struct.bnxt_hw_resc* %150, i32 0, i32 2
  store i8* %149, i8** %151, align 8
  %152 = load %struct.bnxt_hw_resc*, %struct.bnxt_hw_resc** %7, align 8
  %153 = getelementptr inbounds %struct.bnxt_hw_resc, %struct.bnxt_hw_resc* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = load %struct.bnxt_hw_resc*, %struct.bnxt_hw_resc** %7, align 8
  %156 = getelementptr inbounds %struct.bnxt_hw_resc, %struct.bnxt_hw_resc* %155, i32 0, i32 1
  store i8* %154, i8** %156, align 8
  br label %157

157:                                              ; preds = %144, %41
  %158 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %159 = call i64 @BNXT_PF(%struct.bnxt* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %181

161:                                              ; preds = %157
  %162 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %163 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %162, i32 0, i32 2
  store %struct.bnxt_pf_info* %163, %struct.bnxt_pf_info** %10, align 8
  %164 = load %struct.hwrm_func_resource_qcaps_output*, %struct.hwrm_func_resource_qcaps_output** %5, align 8
  %165 = getelementptr inbounds %struct.hwrm_func_resource_qcaps_output, %struct.hwrm_func_resource_qcaps_output* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i8* @le16_to_cpu(i32 %166)
  %168 = ptrtoint i8* %167 to i64
  %169 = load %struct.bnxt_pf_info*, %struct.bnxt_pf_info** %10, align 8
  %170 = getelementptr inbounds %struct.bnxt_pf_info, %struct.bnxt_pf_info* %169, i32 0, i32 0
  store i64 %168, i64* %170, align 8
  %171 = load %struct.bnxt_pf_info*, %struct.bnxt_pf_info** %10, align 8
  %172 = getelementptr inbounds %struct.bnxt_pf_info, %struct.bnxt_pf_info* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @BNXT_VF_RESV_STRATEGY_MINIMAL_STATIC, align 8
  %175 = icmp sgt i64 %173, %174
  br i1 %175, label %176, label %180

176:                                              ; preds = %161
  %177 = load i64, i64* @BNXT_VF_RESV_STRATEGY_MAXIMAL, align 8
  %178 = load %struct.bnxt_pf_info*, %struct.bnxt_pf_info** %10, align 8
  %179 = getelementptr inbounds %struct.bnxt_pf_info, %struct.bnxt_pf_info* %178, i32 0, i32 0
  store i64 %177, i64* %179, align 8
  br label %180

180:                                              ; preds = %176, %161
  br label %181

181:                                              ; preds = %180, %157
  br label %182

182:                                              ; preds = %181, %40, %30
  %183 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %184 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %183, i32 0, i32 1
  %185 = call i32 @mutex_unlock(i32* %184)
  %186 = load i32, i32* %8, align 4
  ret i32 %186
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt*, %struct.hwrm_func_resource_qcaps_input*, i32, i32, i32) #2

declare dso_local i32 @cpu_to_le16(i32) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @_hwrm_send_message_silent(%struct.bnxt*, %struct.hwrm_func_resource_qcaps_input*, i32, i32) #2

declare dso_local i8* @le16_to_cpu(i32) #2

declare dso_local i64 @BNXT_PF(%struct.bnxt*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
