; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_func_backing_store_qcaps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_func_backing_store_qcaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32, i32, %struct.bnxt_ctx_mem_info*, %struct.hwrm_func_backing_store_qcaps_output* }
%struct.bnxt_ctx_mem_info = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.bnxt_ctx_pg_info** }
%struct.bnxt_ctx_pg_info = type { i32 }
%struct.hwrm_func_backing_store_qcaps_output = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hwrm_func_backing_store_qcaps_input = type { i32 }

@HWRM_FUNC_BACKING_STORE_QCAPS = common dso_local global i32 0, align 4
@HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*)* @bnxt_hwrm_func_backing_store_qcaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_hwrm_func_backing_store_qcaps(%struct.bnxt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca %struct.hwrm_func_backing_store_qcaps_input, align 4
  %5 = alloca %struct.hwrm_func_backing_store_qcaps_output*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnxt_ctx_pg_info*, align 8
  %8 = alloca %struct.bnxt_ctx_mem_info*, align 8
  %9 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  %10 = bitcast %struct.hwrm_func_backing_store_qcaps_input* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 4, i1 false)
  %11 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %12 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %11, i32 0, i32 4
  %13 = load %struct.hwrm_func_backing_store_qcaps_output*, %struct.hwrm_func_backing_store_qcaps_output** %12, align 8
  store %struct.hwrm_func_backing_store_qcaps_output* %13, %struct.hwrm_func_backing_store_qcaps_output** %5, align 8
  %14 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %15 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %16, 67842
  br i1 %17, label %27, label %18

18:                                               ; preds = %1
  %19 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %20 = call i64 @BNXT_VF(%struct.bnxt* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %24 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %23, i32 0, i32 3
  %25 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %24, align 8
  %26 = icmp ne %struct.bnxt_ctx_mem_info* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %22, %18, %1
  store i32 0, i32* %2, align 4
  br label %250

28:                                               ; preds = %22
  %29 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %30 = load i32, i32* @HWRM_FUNC_BACKING_STORE_QCAPS, align 4
  %31 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt* %29, %struct.hwrm_func_backing_store_qcaps_input* %4, i32 %30, i32 -1, i32 -1)
  %32 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %33 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %32, i32 0, i32 2
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %36 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %37 = call i32 @_hwrm_send_message_silent(%struct.bnxt* %35, %struct.hwrm_func_backing_store_qcaps_input* %4, i32 4, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %243, label %40

40:                                               ; preds = %28
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i8* @kzalloc(i32 200, i32 %41)
  %43 = bitcast i8* %42 to %struct.bnxt_ctx_mem_info*
  store %struct.bnxt_ctx_mem_info* %43, %struct.bnxt_ctx_mem_info** %8, align 8
  %44 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %8, align 8
  %45 = icmp ne %struct.bnxt_ctx_mem_info* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %245

49:                                               ; preds = %40
  %50 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %51 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = mul i64 4, %54
  %56 = trunc i64 %55 to i32
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call i8* @kzalloc(i32 %56, i32 %57)
  %59 = bitcast i8* %58 to %struct.bnxt_ctx_pg_info*
  store %struct.bnxt_ctx_pg_info* %59, %struct.bnxt_ctx_pg_info** %7, align 8
  %60 = load %struct.bnxt_ctx_pg_info*, %struct.bnxt_ctx_pg_info** %7, align 8
  %61 = icmp ne %struct.bnxt_ctx_pg_info* %60, null
  br i1 %61, label %67, label %62

62:                                               ; preds = %49
  %63 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %8, align 8
  %64 = call i32 @kfree(%struct.bnxt_ctx_mem_info* %63)
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %6, align 4
  br label %245

67:                                               ; preds = %49
  store i32 0, i32* %9, align 4
  br label %68

68:                                               ; preds = %83, %67
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %71 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  %74 = icmp slt i32 %69, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %68
  %76 = load %struct.bnxt_ctx_pg_info*, %struct.bnxt_ctx_pg_info** %7, align 8
  %77 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %8, align 8
  %78 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %77, i32 0, i32 24
  %79 = load %struct.bnxt_ctx_pg_info**, %struct.bnxt_ctx_pg_info*** %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.bnxt_ctx_pg_info*, %struct.bnxt_ctx_pg_info** %79, i64 %81
  store %struct.bnxt_ctx_pg_info* %76, %struct.bnxt_ctx_pg_info** %82, align 8
  br label %83

83:                                               ; preds = %75
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %9, align 4
  %86 = load %struct.bnxt_ctx_pg_info*, %struct.bnxt_ctx_pg_info** %7, align 8
  %87 = getelementptr inbounds %struct.bnxt_ctx_pg_info, %struct.bnxt_ctx_pg_info* %86, i32 1
  store %struct.bnxt_ctx_pg_info* %87, %struct.bnxt_ctx_pg_info** %7, align 8
  br label %68

88:                                               ; preds = %68
  %89 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %8, align 8
  %90 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %91 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %90, i32 0, i32 3
  store %struct.bnxt_ctx_mem_info* %89, %struct.bnxt_ctx_mem_info** %91, align 8
  %92 = load %struct.hwrm_func_backing_store_qcaps_output*, %struct.hwrm_func_backing_store_qcaps_output** %5, align 8
  %93 = getelementptr inbounds %struct.hwrm_func_backing_store_qcaps_output, %struct.hwrm_func_backing_store_qcaps_output* %92, i32 0, i32 23
  %94 = load i32, i32* %93, align 4
  %95 = call i8* @le32_to_cpu(i32 %94)
  %96 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %8, align 8
  %97 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %96, i32 0, i32 23
  store i8* %95, i8** %97, align 8
  %98 = load %struct.hwrm_func_backing_store_qcaps_output*, %struct.hwrm_func_backing_store_qcaps_output** %5, align 8
  %99 = getelementptr inbounds %struct.hwrm_func_backing_store_qcaps_output, %struct.hwrm_func_backing_store_qcaps_output* %98, i32 0, i32 22
  %100 = load i32, i32* %99, align 4
  %101 = call i8* @le16_to_cpu(i32 %100)
  %102 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %8, align 8
  %103 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %102, i32 0, i32 22
  store i8* %101, i8** %103, align 8
  %104 = load %struct.hwrm_func_backing_store_qcaps_output*, %struct.hwrm_func_backing_store_qcaps_output** %5, align 8
  %105 = getelementptr inbounds %struct.hwrm_func_backing_store_qcaps_output, %struct.hwrm_func_backing_store_qcaps_output* %104, i32 0, i32 21
  %106 = load i32, i32* %105, align 4
  %107 = call i8* @le16_to_cpu(i32 %106)
  %108 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %8, align 8
  %109 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %108, i32 0, i32 21
  store i8* %107, i8** %109, align 8
  %110 = load %struct.hwrm_func_backing_store_qcaps_output*, %struct.hwrm_func_backing_store_qcaps_output** %5, align 8
  %111 = getelementptr inbounds %struct.hwrm_func_backing_store_qcaps_output, %struct.hwrm_func_backing_store_qcaps_output* %110, i32 0, i32 20
  %112 = load i32, i32* %111, align 4
  %113 = call i8* @le16_to_cpu(i32 %112)
  %114 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %8, align 8
  %115 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %114, i32 0, i32 20
  store i8* %113, i8** %115, align 8
  %116 = load %struct.hwrm_func_backing_store_qcaps_output*, %struct.hwrm_func_backing_store_qcaps_output** %5, align 8
  %117 = getelementptr inbounds %struct.hwrm_func_backing_store_qcaps_output, %struct.hwrm_func_backing_store_qcaps_output* %116, i32 0, i32 19
  %118 = load i32, i32* %117, align 4
  %119 = call i8* @le16_to_cpu(i32 %118)
  %120 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %8, align 8
  %121 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %120, i32 0, i32 19
  store i8* %119, i8** %121, align 8
  %122 = load %struct.hwrm_func_backing_store_qcaps_output*, %struct.hwrm_func_backing_store_qcaps_output** %5, align 8
  %123 = getelementptr inbounds %struct.hwrm_func_backing_store_qcaps_output, %struct.hwrm_func_backing_store_qcaps_output* %122, i32 0, i32 18
  %124 = load i32, i32* %123, align 4
  %125 = call i8* @le32_to_cpu(i32 %124)
  %126 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %8, align 8
  %127 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %126, i32 0, i32 18
  store i8* %125, i8** %127, align 8
  %128 = load %struct.hwrm_func_backing_store_qcaps_output*, %struct.hwrm_func_backing_store_qcaps_output** %5, align 8
  %129 = getelementptr inbounds %struct.hwrm_func_backing_store_qcaps_output, %struct.hwrm_func_backing_store_qcaps_output* %128, i32 0, i32 17
  %130 = load i32, i32* %129, align 4
  %131 = call i8* @le16_to_cpu(i32 %130)
  %132 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %8, align 8
  %133 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %132, i32 0, i32 17
  store i8* %131, i8** %133, align 8
  %134 = load %struct.hwrm_func_backing_store_qcaps_output*, %struct.hwrm_func_backing_store_qcaps_output** %5, align 8
  %135 = getelementptr inbounds %struct.hwrm_func_backing_store_qcaps_output, %struct.hwrm_func_backing_store_qcaps_output* %134, i32 0, i32 16
  %136 = load i32, i32* %135, align 4
  %137 = call i8* @le16_to_cpu(i32 %136)
  %138 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %8, align 8
  %139 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %138, i32 0, i32 16
  store i8* %137, i8** %139, align 8
  %140 = load %struct.hwrm_func_backing_store_qcaps_output*, %struct.hwrm_func_backing_store_qcaps_output** %5, align 8
  %141 = getelementptr inbounds %struct.hwrm_func_backing_store_qcaps_output, %struct.hwrm_func_backing_store_qcaps_output* %140, i32 0, i32 15
  %142 = load i32, i32* %141, align 4
  %143 = call i8* @le32_to_cpu(i32 %142)
  %144 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %8, align 8
  %145 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %144, i32 0, i32 15
  store i8* %143, i8** %145, align 8
  %146 = load %struct.hwrm_func_backing_store_qcaps_output*, %struct.hwrm_func_backing_store_qcaps_output** %5, align 8
  %147 = getelementptr inbounds %struct.hwrm_func_backing_store_qcaps_output, %struct.hwrm_func_backing_store_qcaps_output* %146, i32 0, i32 14
  %148 = load i32, i32* %147, align 4
  %149 = call i8* @le16_to_cpu(i32 %148)
  %150 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %8, align 8
  %151 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %150, i32 0, i32 14
  store i8* %149, i8** %151, align 8
  %152 = load %struct.hwrm_func_backing_store_qcaps_output*, %struct.hwrm_func_backing_store_qcaps_output** %5, align 8
  %153 = getelementptr inbounds %struct.hwrm_func_backing_store_qcaps_output, %struct.hwrm_func_backing_store_qcaps_output* %152, i32 0, i32 13
  %154 = load i32, i32* %153, align 4
  %155 = call i8* @le16_to_cpu(i32 %154)
  %156 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %8, align 8
  %157 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %156, i32 0, i32 13
  store i8* %155, i8** %157, align 8
  %158 = load %struct.hwrm_func_backing_store_qcaps_output*, %struct.hwrm_func_backing_store_qcaps_output** %5, align 8
  %159 = getelementptr inbounds %struct.hwrm_func_backing_store_qcaps_output, %struct.hwrm_func_backing_store_qcaps_output* %158, i32 0, i32 12
  %160 = load i32, i32* %159, align 4
  %161 = call i8* @le16_to_cpu(i32 %160)
  %162 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %8, align 8
  %163 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %162, i32 0, i32 12
  store i8* %161, i8** %163, align 8
  %164 = load %struct.hwrm_func_backing_store_qcaps_output*, %struct.hwrm_func_backing_store_qcaps_output** %5, align 8
  %165 = getelementptr inbounds %struct.hwrm_func_backing_store_qcaps_output, %struct.hwrm_func_backing_store_qcaps_output* %164, i32 0, i32 11
  %166 = load i32, i32* %165, align 4
  %167 = call i8* @le16_to_cpu(i32 %166)
  %168 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %8, align 8
  %169 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %168, i32 0, i32 11
  store i8* %167, i8** %169, align 8
  %170 = load %struct.hwrm_func_backing_store_qcaps_output*, %struct.hwrm_func_backing_store_qcaps_output** %5, align 8
  %171 = getelementptr inbounds %struct.hwrm_func_backing_store_qcaps_output, %struct.hwrm_func_backing_store_qcaps_output* %170, i32 0, i32 10
  %172 = load i32, i32* %171, align 4
  %173 = call i8* @le32_to_cpu(i32 %172)
  %174 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %8, align 8
  %175 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %174, i32 0, i32 10
  store i8* %173, i8** %175, align 8
  %176 = load %struct.hwrm_func_backing_store_qcaps_output*, %struct.hwrm_func_backing_store_qcaps_output** %5, align 8
  %177 = getelementptr inbounds %struct.hwrm_func_backing_store_qcaps_output, %struct.hwrm_func_backing_store_qcaps_output* %176, i32 0, i32 9
  %178 = load i32, i32* %177, align 4
  %179 = call i8* @le16_to_cpu(i32 %178)
  %180 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %8, align 8
  %181 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %180, i32 0, i32 9
  store i8* %179, i8** %181, align 8
  %182 = load %struct.hwrm_func_backing_store_qcaps_output*, %struct.hwrm_func_backing_store_qcaps_output** %5, align 8
  %183 = getelementptr inbounds %struct.hwrm_func_backing_store_qcaps_output, %struct.hwrm_func_backing_store_qcaps_output* %182, i32 0, i32 8
  %184 = load i32, i32* %183, align 4
  %185 = call i8* @le16_to_cpu(i32 %184)
  %186 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %8, align 8
  %187 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %186, i32 0, i32 8
  store i8* %185, i8** %187, align 8
  %188 = load %struct.hwrm_func_backing_store_qcaps_output*, %struct.hwrm_func_backing_store_qcaps_output** %5, align 8
  %189 = getelementptr inbounds %struct.hwrm_func_backing_store_qcaps_output, %struct.hwrm_func_backing_store_qcaps_output* %188, i32 0, i32 7
  %190 = load i32, i32* %189, align 4
  %191 = call i8* @le32_to_cpu(i32 %190)
  %192 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %8, align 8
  %193 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %192, i32 0, i32 7
  store i8* %191, i8** %193, align 8
  %194 = load %struct.hwrm_func_backing_store_qcaps_output*, %struct.hwrm_func_backing_store_qcaps_output** %5, align 8
  %195 = getelementptr inbounds %struct.hwrm_func_backing_store_qcaps_output, %struct.hwrm_func_backing_store_qcaps_output* %194, i32 0, i32 6
  %196 = load i32, i32* %195, align 4
  %197 = call i8* @le32_to_cpu(i32 %196)
  %198 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %8, align 8
  %199 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %198, i32 0, i32 6
  store i8* %197, i8** %199, align 8
  %200 = load %struct.hwrm_func_backing_store_qcaps_output*, %struct.hwrm_func_backing_store_qcaps_output** %5, align 8
  %201 = getelementptr inbounds %struct.hwrm_func_backing_store_qcaps_output, %struct.hwrm_func_backing_store_qcaps_output* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %8, align 8
  %204 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %203, i32 0, i32 0
  store i32 %202, i32* %204, align 8
  %205 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %8, align 8
  %206 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %212, label %209

209:                                              ; preds = %88
  %210 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %8, align 8
  %211 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %210, i32 0, i32 0
  store i32 1, i32* %211, align 8
  br label %212

212:                                              ; preds = %209, %88
  %213 = load %struct.hwrm_func_backing_store_qcaps_output*, %struct.hwrm_func_backing_store_qcaps_output** %5, align 8
  %214 = getelementptr inbounds %struct.hwrm_func_backing_store_qcaps_output, %struct.hwrm_func_backing_store_qcaps_output* %213, i32 0, i32 5
  %215 = load i32, i32* %214, align 4
  %216 = call i8* @le32_to_cpu(i32 %215)
  %217 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %8, align 8
  %218 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %217, i32 0, i32 5
  store i8* %216, i8** %218, align 8
  %219 = load %struct.hwrm_func_backing_store_qcaps_output*, %struct.hwrm_func_backing_store_qcaps_output** %5, align 8
  %220 = getelementptr inbounds %struct.hwrm_func_backing_store_qcaps_output, %struct.hwrm_func_backing_store_qcaps_output* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 4
  %222 = call i8* @le16_to_cpu(i32 %221)
  %223 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %8, align 8
  %224 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %223, i32 0, i32 4
  store i8* %222, i8** %224, align 8
  %225 = load %struct.hwrm_func_backing_store_qcaps_output*, %struct.hwrm_func_backing_store_qcaps_output** %5, align 8
  %226 = getelementptr inbounds %struct.hwrm_func_backing_store_qcaps_output, %struct.hwrm_func_backing_store_qcaps_output* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 4
  %228 = call i8* @le16_to_cpu(i32 %227)
  %229 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %8, align 8
  %230 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %229, i32 0, i32 3
  store i8* %228, i8** %230, align 8
  %231 = load %struct.hwrm_func_backing_store_qcaps_output*, %struct.hwrm_func_backing_store_qcaps_output** %5, align 8
  %232 = getelementptr inbounds %struct.hwrm_func_backing_store_qcaps_output, %struct.hwrm_func_backing_store_qcaps_output* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 4
  %234 = call i8* @le16_to_cpu(i32 %233)
  %235 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %8, align 8
  %236 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %235, i32 0, i32 2
  store i8* %234, i8** %236, align 8
  %237 = load %struct.hwrm_func_backing_store_qcaps_output*, %struct.hwrm_func_backing_store_qcaps_output** %5, align 8
  %238 = getelementptr inbounds %struct.hwrm_func_backing_store_qcaps_output, %struct.hwrm_func_backing_store_qcaps_output* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = call i8* @le32_to_cpu(i32 %239)
  %241 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %8, align 8
  %242 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %241, i32 0, i32 1
  store i8* %240, i8** %242, align 8
  br label %244

243:                                              ; preds = %28
  store i32 0, i32* %6, align 4
  br label %244

244:                                              ; preds = %243, %212
  br label %245

245:                                              ; preds = %244, %62, %46
  %246 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %247 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %246, i32 0, i32 2
  %248 = call i32 @mutex_unlock(i32* %247)
  %249 = load i32, i32* %6, align 4
  store i32 %249, i32* %2, align 4
  br label %250

250:                                              ; preds = %245, %27
  %251 = load i32, i32* %2, align 4
  ret i32 %251
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @BNXT_VF(%struct.bnxt*) #2

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt*, %struct.hwrm_func_backing_store_qcaps_input*, i32, i32, i32) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @_hwrm_send_message_silent(%struct.bnxt*, %struct.hwrm_func_backing_store_qcaps_input*, i32, i32) #2

declare dso_local i8* @kzalloc(i32, i32) #2

declare dso_local i32 @kfree(%struct.bnxt_ctx_mem_info*) #2

declare dso_local i8* @le32_to_cpu(i32) #2

declare dso_local i8* @le16_to_cpu(i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
