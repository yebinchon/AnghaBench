; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_ring_grp_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_ring_grp_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i64, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.hwrm_ring_grp_alloc_output* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.hwrm_ring_grp_alloc_output = type { i32 }
%struct.hwrm_ring_grp_alloc_input = type { i8*, i8*, i8*, i8*, i32 }

@BNXT_FLAG_CHIP_P5 = common dso_local global i32 0, align 4
@HWRM_RING_GRP_ALLOC = common dso_local global i32 0, align 4
@HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*)* @bnxt_hwrm_ring_grp_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_hwrm_ring_grp_alloc(%struct.bnxt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hwrm_ring_grp_alloc_input, align 8
  %7 = alloca %struct.hwrm_ring_grp_alloc_output*, align 8
  %8 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %10 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @BNXT_FLAG_CHIP_P5, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %109

16:                                               ; preds = %1
  %17 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %18 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %17, i32 0, i32 2
  %19 = call i32 @mutex_lock(i32* %18)
  store i64 0, i64* %4, align 8
  br label %20

20:                                               ; preds = %101, %16
  %21 = load i64, i64* %4, align 8
  %22 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %23 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ult i64 %21, %24
  br i1 %25, label %26, label %104

26:                                               ; preds = %20
  %27 = bitcast %struct.hwrm_ring_grp_alloc_input* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %27, i8 0, i64 40, i1 false)
  %28 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %29 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %28, i32 0, i32 5
  %30 = load %struct.hwrm_ring_grp_alloc_output*, %struct.hwrm_ring_grp_alloc_output** %29, align 8
  store %struct.hwrm_ring_grp_alloc_output* %30, %struct.hwrm_ring_grp_alloc_output** %7, align 8
  %31 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %32 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %31, i32 0, i32 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = load i64, i64* %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %8, align 4
  %40 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %41 = load i32, i32* @HWRM_RING_GRP_ALLOC, align 4
  %42 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt* %40, %struct.hwrm_ring_grp_alloc_input* %6, i32 %41, i32 -1, i32 -1)
  %43 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %44 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %43, i32 0, i32 3
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @cpu_to_le16(i32 %50)
  %52 = getelementptr inbounds %struct.hwrm_ring_grp_alloc_input, %struct.hwrm_ring_grp_alloc_input* %6, i32 0, i32 3
  store i8* %51, i8** %52, align 8
  %53 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %54 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %53, i32 0, i32 3
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @cpu_to_le16(i32 %60)
  %62 = getelementptr inbounds %struct.hwrm_ring_grp_alloc_input, %struct.hwrm_ring_grp_alloc_input* %6, i32 0, i32 2
  store i8* %61, i8** %62, align 8
  %63 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %64 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %63, i32 0, i32 3
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @cpu_to_le16(i32 %70)
  %72 = getelementptr inbounds %struct.hwrm_ring_grp_alloc_input, %struct.hwrm_ring_grp_alloc_input* %6, i32 0, i32 1
  store i8* %71, i8** %72, align 8
  %73 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %74 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %73, i32 0, i32 3
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @cpu_to_le16(i32 %80)
  %82 = getelementptr inbounds %struct.hwrm_ring_grp_alloc_input, %struct.hwrm_ring_grp_alloc_input* %6, i32 0, i32 0
  store i8* %81, i8** %82, align 8
  %83 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %84 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %85 = call i32 @_hwrm_send_message(%struct.bnxt* %83, %struct.hwrm_ring_grp_alloc_input* %6, i32 40, i32 %84)
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %26
  br label %104

89:                                               ; preds = %26
  %90 = load %struct.hwrm_ring_grp_alloc_output*, %struct.hwrm_ring_grp_alloc_output** %7, align 8
  %91 = getelementptr inbounds %struct.hwrm_ring_grp_alloc_output, %struct.hwrm_ring_grp_alloc_output* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @le32_to_cpu(i32 %92)
  %94 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %95 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %94, i32 0, i32 3
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  store i32 %93, i32* %100, align 4
  br label %101

101:                                              ; preds = %89
  %102 = load i64, i64* %4, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %4, align 8
  br label %20

104:                                              ; preds = %88, %20
  %105 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %106 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %105, i32 0, i32 2
  %107 = call i32 @mutex_unlock(i32* %106)
  %108 = load i32, i32* %5, align 4
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %104, %15
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt*, %struct.hwrm_ring_grp_alloc_input*, i32, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @_hwrm_send_message(%struct.bnxt*, %struct.hwrm_ring_grp_alloc_input*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
