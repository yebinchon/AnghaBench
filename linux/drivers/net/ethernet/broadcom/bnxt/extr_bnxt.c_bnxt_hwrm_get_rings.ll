; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_get_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_get_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32, i32, %struct.bnxt_hw_resc, %struct.hwrm_func_qcfg_output* }
%struct.bnxt_hw_resc = type { i32, i32, i32, i32, i32, i32, i8* }
%struct.hwrm_func_qcfg_output = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.hwrm_func_qcfg_input = type { i32, i32 }

@HWRM_FUNC_QCFG = common dso_local global i32 0, align 4
@HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@BNXT_FLAG_CHIP_P5 = common dso_local global i32 0, align 4
@BNXT_FLAG_AGG_RINGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*)* @bnxt_hwrm_get_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_hwrm_get_rings(%struct.bnxt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca %struct.hwrm_func_qcfg_output*, align 8
  %5 = alloca %struct.bnxt_hw_resc*, align 8
  %6 = alloca %struct.hwrm_func_qcfg_input, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  %12 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %13 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %12, i32 0, i32 4
  %14 = load %struct.hwrm_func_qcfg_output*, %struct.hwrm_func_qcfg_output** %13, align 8
  store %struct.hwrm_func_qcfg_output* %14, %struct.hwrm_func_qcfg_output** %4, align 8
  %15 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %16 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %15, i32 0, i32 3
  store %struct.bnxt_hw_resc* %16, %struct.bnxt_hw_resc** %5, align 8
  %17 = bitcast %struct.hwrm_func_qcfg_input* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 8, i1 false)
  %18 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %19 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %20, 67073
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %156

23:                                               ; preds = %1
  %24 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %25 = load i32, i32* @HWRM_FUNC_QCFG, align 4
  %26 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt* %24, %struct.hwrm_func_qcfg_input* %6, i32 %25, i32 -1, i32 -1)
  %27 = call i32 @cpu_to_le16(i32 65535)
  %28 = getelementptr inbounds %struct.hwrm_func_qcfg_input, %struct.hwrm_func_qcfg_input* %6, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %30 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %29, i32 0, i32 2
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %33 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %34 = call i32 @_hwrm_send_message(%struct.bnxt* %32, %struct.hwrm_func_qcfg_input* %6, i32 8, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %23
  %38 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %39 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %38, i32 0, i32 2
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %2, align 4
  br label %156

42:                                               ; preds = %23
  %43 = load %struct.hwrm_func_qcfg_output*, %struct.hwrm_func_qcfg_output** %4, align 8
  %44 = getelementptr inbounds %struct.hwrm_func_qcfg_output, %struct.hwrm_func_qcfg_output* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @le16_to_cpu(i32 %45)
  %47 = ptrtoint i8* %46 to i32
  %48 = load %struct.bnxt_hw_resc*, %struct.bnxt_hw_resc** %5, align 8
  %49 = getelementptr inbounds %struct.bnxt_hw_resc, %struct.bnxt_hw_resc* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %51 = call i64 @BNXT_NEW_RM(%struct.bnxt* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %152

53:                                               ; preds = %42
  %54 = load %struct.hwrm_func_qcfg_output*, %struct.hwrm_func_qcfg_output** %4, align 8
  %55 = getelementptr inbounds %struct.hwrm_func_qcfg_output, %struct.hwrm_func_qcfg_output* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @le16_to_cpu(i32 %56)
  %58 = ptrtoint i8* %57 to i32
  %59 = load %struct.bnxt_hw_resc*, %struct.bnxt_hw_resc** %5, align 8
  %60 = getelementptr inbounds %struct.bnxt_hw_resc, %struct.bnxt_hw_resc* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.hwrm_func_qcfg_output*, %struct.hwrm_func_qcfg_output** %4, align 8
  %62 = getelementptr inbounds %struct.hwrm_func_qcfg_output, %struct.hwrm_func_qcfg_output* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @le32_to_cpu(i32 %63)
  %65 = load %struct.bnxt_hw_resc*, %struct.bnxt_hw_resc** %5, align 8
  %66 = getelementptr inbounds %struct.bnxt_hw_resc, %struct.bnxt_hw_resc* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load %struct.hwrm_func_qcfg_output*, %struct.hwrm_func_qcfg_output** %4, align 8
  %68 = getelementptr inbounds %struct.hwrm_func_qcfg_output, %struct.hwrm_func_qcfg_output* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @le16_to_cpu(i32 %69)
  %71 = load %struct.bnxt_hw_resc*, %struct.bnxt_hw_resc** %5, align 8
  %72 = getelementptr inbounds %struct.bnxt_hw_resc, %struct.bnxt_hw_resc* %71, i32 0, i32 6
  store i8* %70, i8** %72, align 8
  %73 = load %struct.hwrm_func_qcfg_output*, %struct.hwrm_func_qcfg_output** %4, align 8
  %74 = getelementptr inbounds %struct.hwrm_func_qcfg_output, %struct.hwrm_func_qcfg_output* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @le16_to_cpu(i32 %75)
  %77 = ptrtoint i8* %76 to i32
  store i32 %77, i32* %8, align 4
  %78 = load %struct.hwrm_func_qcfg_output*, %struct.hwrm_func_qcfg_output** %4, align 8
  %79 = getelementptr inbounds %struct.hwrm_func_qcfg_output, %struct.hwrm_func_qcfg_output* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @le16_to_cpu(i32 %80)
  %82 = ptrtoint i8* %81 to i32
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load %struct.bnxt_hw_resc*, %struct.bnxt_hw_resc** %5, align 8
  %85 = getelementptr inbounds %struct.bnxt_hw_resc, %struct.bnxt_hw_resc* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  %86 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %87 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @BNXT_FLAG_CHIP_P5, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %145

92:                                               ; preds = %53
  %93 = load %struct.bnxt_hw_resc*, %struct.bnxt_hw_resc** %5, align 8
  %94 = getelementptr inbounds %struct.bnxt_hw_resc, %struct.bnxt_hw_resc* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %10, align 4
  %96 = load %struct.bnxt_hw_resc*, %struct.bnxt_hw_resc** %5, align 8
  %97 = getelementptr inbounds %struct.bnxt_hw_resc, %struct.bnxt_hw_resc* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  store i32 %98, i32* %11, align 4
  %99 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %100 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @BNXT_FLAG_AGG_RINGS, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %92
  %106 = load i32, i32* %10, align 4
  %107 = ashr i32 %106, 1
  store i32 %107, i32* %10, align 4
  br label %108

108:                                              ; preds = %105, %92
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %110, %111
  %113 = icmp slt i32 %109, %112
  br i1 %113, label %114, label %134

114:                                              ; preds = %108
  %115 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @bnxt_trim_rings(%struct.bnxt* %115, i32* %10, i32* %11, i32 %116, i32 0)
  %118 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %119 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @BNXT_FLAG_AGG_RINGS, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %114
  %125 = load i32, i32* %10, align 4
  %126 = shl i32 %125, 1
  store i32 %126, i32* %10, align 4
  br label %127

127:                                              ; preds = %124, %114
  %128 = load i32, i32* %10, align 4
  %129 = load %struct.bnxt_hw_resc*, %struct.bnxt_hw_resc** %5, align 8
  %130 = getelementptr inbounds %struct.bnxt_hw_resc, %struct.bnxt_hw_resc* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* %11, align 4
  %132 = load %struct.bnxt_hw_resc*, %struct.bnxt_hw_resc** %5, align 8
  %133 = getelementptr inbounds %struct.bnxt_hw_resc, %struct.bnxt_hw_resc* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  br label %134

134:                                              ; preds = %127, %108
  %135 = load %struct.hwrm_func_qcfg_output*, %struct.hwrm_func_qcfg_output** %4, align 8
  %136 = getelementptr inbounds %struct.hwrm_func_qcfg_output, %struct.hwrm_func_qcfg_output* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i8* @le16_to_cpu(i32 %137)
  %139 = ptrtoint i8* %138 to i32
  %140 = load %struct.bnxt_hw_resc*, %struct.bnxt_hw_resc** %5, align 8
  %141 = getelementptr inbounds %struct.bnxt_hw_resc, %struct.bnxt_hw_resc* %140, i32 0, i32 3
  store i32 %139, i32* %141, align 4
  %142 = load i32, i32* %10, align 4
  %143 = load %struct.bnxt_hw_resc*, %struct.bnxt_hw_resc** %5, align 8
  %144 = getelementptr inbounds %struct.bnxt_hw_resc, %struct.bnxt_hw_resc* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 8
  br label %145

145:                                              ; preds = %134, %53
  %146 = load i32, i32* %8, align 4
  %147 = load %struct.bnxt_hw_resc*, %struct.bnxt_hw_resc** %5, align 8
  %148 = getelementptr inbounds %struct.bnxt_hw_resc, %struct.bnxt_hw_resc* %147, i32 0, i32 4
  store i32 %146, i32* %148, align 8
  %149 = load i32, i32* %9, align 4
  %150 = load %struct.bnxt_hw_resc*, %struct.bnxt_hw_resc** %5, align 8
  %151 = getelementptr inbounds %struct.bnxt_hw_resc, %struct.bnxt_hw_resc* %150, i32 0, i32 5
  store i32 %149, i32* %151, align 4
  br label %152

152:                                              ; preds = %145, %42
  %153 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %154 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %153, i32 0, i32 2
  %155 = call i32 @mutex_unlock(i32* %154)
  store i32 0, i32* %2, align 4
  br label %156

156:                                              ; preds = %152, %37, %22
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt*, %struct.hwrm_func_qcfg_input*, i32, i32, i32) #2

declare dso_local i32 @cpu_to_le16(i32) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @_hwrm_send_message(%struct.bnxt*, %struct.hwrm_func_qcfg_input*, i32, i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i8* @le16_to_cpu(i32) #2

declare dso_local i64 @BNXT_NEW_RM(%struct.bnxt*) #2

declare dso_local i32 @le32_to_cpu(i32) #2

declare dso_local i32 @bnxt_trim_rings(%struct.bnxt*, i32*, i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
