; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_coal_params_qcaps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_coal_params_qcaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32, %struct.bnxt_coal_cap, %struct.hwrm_ring_aggint_qcaps_output* }
%struct.bnxt_coal_cap = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct.hwrm_ring_aggint_qcaps_output = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hwrm_ring_aggint_qcaps_input = type { i32 }

@BNXT_LEGACY_COAL_CMPL_PARAMS = common dso_local global i8* null, align 8
@HWRM_RING_AGGINT_QCAPS = common dso_local global i32 0, align 4
@HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt*)* @bnxt_hwrm_coal_params_qcaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_hwrm_coal_params_qcaps(%struct.bnxt* %0) #0 {
  %2 = alloca %struct.bnxt*, align 8
  %3 = alloca %struct.hwrm_ring_aggint_qcaps_output*, align 8
  %4 = alloca %struct.bnxt_coal_cap*, align 8
  %5 = alloca %struct.hwrm_ring_aggint_qcaps_input, align 4
  %6 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %2, align 8
  %7 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %8 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %7, i32 0, i32 3
  %9 = load %struct.hwrm_ring_aggint_qcaps_output*, %struct.hwrm_ring_aggint_qcaps_output** %8, align 8
  store %struct.hwrm_ring_aggint_qcaps_output* %9, %struct.hwrm_ring_aggint_qcaps_output** %3, align 8
  %10 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %11 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %10, i32 0, i32 2
  store %struct.bnxt_coal_cap* %11, %struct.bnxt_coal_cap** %4, align 8
  %12 = bitcast %struct.hwrm_ring_aggint_qcaps_input* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 4, i1 false)
  %13 = load i8*, i8** @BNXT_LEGACY_COAL_CMPL_PARAMS, align 8
  %14 = load %struct.bnxt_coal_cap*, %struct.bnxt_coal_cap** %4, align 8
  %15 = getelementptr inbounds %struct.bnxt_coal_cap, %struct.bnxt_coal_cap* %14, i32 0, i32 9
  store i8* %13, i8** %15, align 8
  %16 = load %struct.bnxt_coal_cap*, %struct.bnxt_coal_cap** %4, align 8
  %17 = getelementptr inbounds %struct.bnxt_coal_cap, %struct.bnxt_coal_cap* %16, i32 0, i32 0
  store i32 63, i32* %17, align 8
  %18 = load %struct.bnxt_coal_cap*, %struct.bnxt_coal_cap** %4, align 8
  %19 = getelementptr inbounds %struct.bnxt_coal_cap, %struct.bnxt_coal_cap* %18, i32 0, i32 1
  store i32 63, i32* %19, align 4
  %20 = load %struct.bnxt_coal_cap*, %struct.bnxt_coal_cap** %4, align 8
  %21 = getelementptr inbounds %struct.bnxt_coal_cap, %struct.bnxt_coal_cap* %20, i32 0, i32 2
  store i32 65535, i32* %21, align 8
  %22 = load %struct.bnxt_coal_cap*, %struct.bnxt_coal_cap** %4, align 8
  %23 = getelementptr inbounds %struct.bnxt_coal_cap, %struct.bnxt_coal_cap* %22, i32 0, i32 3
  store i32 65535, i32* %23, align 4
  %24 = load %struct.bnxt_coal_cap*, %struct.bnxt_coal_cap** %4, align 8
  %25 = getelementptr inbounds %struct.bnxt_coal_cap, %struct.bnxt_coal_cap* %24, i32 0, i32 4
  store i32 65535, i32* %25, align 8
  %26 = load %struct.bnxt_coal_cap*, %struct.bnxt_coal_cap** %4, align 8
  %27 = getelementptr inbounds %struct.bnxt_coal_cap, %struct.bnxt_coal_cap* %26, i32 0, i32 5
  store i32 65535, i32* %27, align 4
  %28 = load %struct.bnxt_coal_cap*, %struct.bnxt_coal_cap** %4, align 8
  %29 = getelementptr inbounds %struct.bnxt_coal_cap, %struct.bnxt_coal_cap* %28, i32 0, i32 6
  store i32 65535, i32* %29, align 8
  %30 = load %struct.bnxt_coal_cap*, %struct.bnxt_coal_cap** %4, align 8
  %31 = getelementptr inbounds %struct.bnxt_coal_cap, %struct.bnxt_coal_cap* %30, i32 0, i32 7
  store i32 80, i32* %31, align 4
  %32 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %33 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %34, 67842
  br i1 %35, label %36, label %37

36:                                               ; preds = %1
  br label %122

37:                                               ; preds = %1
  %38 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %39 = load i32, i32* @HWRM_RING_AGGINT_QCAPS, align 4
  %40 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt* %38, %struct.hwrm_ring_aggint_qcaps_input* %5, i32 %39, i32 -1, i32 -1)
  %41 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %42 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %41, i32 0, i32 1
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %45 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %46 = call i32 @_hwrm_send_message_silent(%struct.bnxt* %44, %struct.hwrm_ring_aggint_qcaps_input* %5, i32 4, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %118, label %49

49:                                               ; preds = %37
  %50 = load %struct.hwrm_ring_aggint_qcaps_output*, %struct.hwrm_ring_aggint_qcaps_output** %3, align 8
  %51 = getelementptr inbounds %struct.hwrm_ring_aggint_qcaps_output, %struct.hwrm_ring_aggint_qcaps_output* %50, i32 0, i32 9
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @le32_to_cpu(i32 %52)
  %54 = load %struct.bnxt_coal_cap*, %struct.bnxt_coal_cap** %4, align 8
  %55 = getelementptr inbounds %struct.bnxt_coal_cap, %struct.bnxt_coal_cap* %54, i32 0, i32 9
  store i8* %53, i8** %55, align 8
  %56 = load %struct.hwrm_ring_aggint_qcaps_output*, %struct.hwrm_ring_aggint_qcaps_output** %3, align 8
  %57 = getelementptr inbounds %struct.hwrm_ring_aggint_qcaps_output, %struct.hwrm_ring_aggint_qcaps_output* %56, i32 0, i32 8
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @le32_to_cpu(i32 %58)
  %60 = load %struct.bnxt_coal_cap*, %struct.bnxt_coal_cap** %4, align 8
  %61 = getelementptr inbounds %struct.bnxt_coal_cap, %struct.bnxt_coal_cap* %60, i32 0, i32 8
  store i8* %59, i8** %61, align 8
  %62 = load %struct.hwrm_ring_aggint_qcaps_output*, %struct.hwrm_ring_aggint_qcaps_output** %3, align 8
  %63 = getelementptr inbounds %struct.hwrm_ring_aggint_qcaps_output, %struct.hwrm_ring_aggint_qcaps_output* %62, i32 0, i32 7
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @le16_to_cpu(i32 %64)
  %66 = ptrtoint i8* %65 to i32
  %67 = load %struct.bnxt_coal_cap*, %struct.bnxt_coal_cap** %4, align 8
  %68 = getelementptr inbounds %struct.bnxt_coal_cap, %struct.bnxt_coal_cap* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.hwrm_ring_aggint_qcaps_output*, %struct.hwrm_ring_aggint_qcaps_output** %3, align 8
  %70 = getelementptr inbounds %struct.hwrm_ring_aggint_qcaps_output, %struct.hwrm_ring_aggint_qcaps_output* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @le16_to_cpu(i32 %71)
  %73 = ptrtoint i8* %72 to i32
  %74 = load %struct.bnxt_coal_cap*, %struct.bnxt_coal_cap** %4, align 8
  %75 = getelementptr inbounds %struct.bnxt_coal_cap, %struct.bnxt_coal_cap* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.hwrm_ring_aggint_qcaps_output*, %struct.hwrm_ring_aggint_qcaps_output** %3, align 8
  %77 = getelementptr inbounds %struct.hwrm_ring_aggint_qcaps_output, %struct.hwrm_ring_aggint_qcaps_output* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @le16_to_cpu(i32 %78)
  %80 = ptrtoint i8* %79 to i32
  %81 = load %struct.bnxt_coal_cap*, %struct.bnxt_coal_cap** %4, align 8
  %82 = getelementptr inbounds %struct.bnxt_coal_cap, %struct.bnxt_coal_cap* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load %struct.hwrm_ring_aggint_qcaps_output*, %struct.hwrm_ring_aggint_qcaps_output** %3, align 8
  %84 = getelementptr inbounds %struct.hwrm_ring_aggint_qcaps_output, %struct.hwrm_ring_aggint_qcaps_output* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = call i8* @le16_to_cpu(i32 %85)
  %87 = ptrtoint i8* %86 to i32
  %88 = load %struct.bnxt_coal_cap*, %struct.bnxt_coal_cap** %4, align 8
  %89 = getelementptr inbounds %struct.bnxt_coal_cap, %struct.bnxt_coal_cap* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 4
  %90 = load %struct.hwrm_ring_aggint_qcaps_output*, %struct.hwrm_ring_aggint_qcaps_output** %3, align 8
  %91 = getelementptr inbounds %struct.hwrm_ring_aggint_qcaps_output, %struct.hwrm_ring_aggint_qcaps_output* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i8* @le16_to_cpu(i32 %92)
  %94 = ptrtoint i8* %93 to i32
  %95 = load %struct.bnxt_coal_cap*, %struct.bnxt_coal_cap** %4, align 8
  %96 = getelementptr inbounds %struct.bnxt_coal_cap, %struct.bnxt_coal_cap* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 8
  %97 = load %struct.hwrm_ring_aggint_qcaps_output*, %struct.hwrm_ring_aggint_qcaps_output** %3, align 8
  %98 = getelementptr inbounds %struct.hwrm_ring_aggint_qcaps_output, %struct.hwrm_ring_aggint_qcaps_output* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i8* @le16_to_cpu(i32 %99)
  %101 = ptrtoint i8* %100 to i32
  %102 = load %struct.bnxt_coal_cap*, %struct.bnxt_coal_cap** %4, align 8
  %103 = getelementptr inbounds %struct.bnxt_coal_cap, %struct.bnxt_coal_cap* %102, i32 0, i32 5
  store i32 %101, i32* %103, align 4
  %104 = load %struct.hwrm_ring_aggint_qcaps_output*, %struct.hwrm_ring_aggint_qcaps_output** %3, align 8
  %105 = getelementptr inbounds %struct.hwrm_ring_aggint_qcaps_output, %struct.hwrm_ring_aggint_qcaps_output* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i8* @le16_to_cpu(i32 %106)
  %108 = ptrtoint i8* %107 to i32
  %109 = load %struct.bnxt_coal_cap*, %struct.bnxt_coal_cap** %4, align 8
  %110 = getelementptr inbounds %struct.bnxt_coal_cap, %struct.bnxt_coal_cap* %109, i32 0, i32 6
  store i32 %108, i32* %110, align 8
  %111 = load %struct.hwrm_ring_aggint_qcaps_output*, %struct.hwrm_ring_aggint_qcaps_output** %3, align 8
  %112 = getelementptr inbounds %struct.hwrm_ring_aggint_qcaps_output, %struct.hwrm_ring_aggint_qcaps_output* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i8* @le16_to_cpu(i32 %113)
  %115 = ptrtoint i8* %114 to i32
  %116 = load %struct.bnxt_coal_cap*, %struct.bnxt_coal_cap** %4, align 8
  %117 = getelementptr inbounds %struct.bnxt_coal_cap, %struct.bnxt_coal_cap* %116, i32 0, i32 7
  store i32 %115, i32* %117, align 4
  br label %118

118:                                              ; preds = %49, %37
  %119 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %120 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %119, i32 0, i32 1
  %121 = call i32 @mutex_unlock(i32* %120)
  br label %122

122:                                              ; preds = %118, %36
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt*, %struct.hwrm_ring_aggint_qcaps_input*, i32, i32, i32) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @_hwrm_send_message_silent(%struct.bnxt*, %struct.hwrm_ring_aggint_qcaps_input*, i32, i32) #2

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
