; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_vnic_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_vnic_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32, %struct.TYPE_6__*, i32, %struct.TYPE_5__*, %struct.bnxt_vnic_info*, %struct.hwrm_vnic_alloc_output* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.bnxt_vnic_info = type { i64*, i32, i64* }
%struct.hwrm_vnic_alloc_output = type { i32 }
%struct.hwrm_vnic_alloc_input = type { i32, i32 }

@BNXT_FLAG_CHIP_P5 = common dso_local global i32 0, align 4
@INVALID_HW_RING_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Not enough ring groups avail:%x req:%x\0A\00", align 1
@BNXT_MAX_CTX_PER_VNIC = common dso_local global i32 0, align 4
@VNIC_ALLOC_REQ_FLAGS_DEFAULT = common dso_local global i32 0, align 4
@HWRM_VNIC_ALLOC = common dso_local global i32 0, align 4
@HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, i64, i32, i32)* @bnxt_hwrm_vnic_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_hwrm_vnic_alloc(%struct.bnxt* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bnxt*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.hwrm_vnic_alloc_input, align 4
  %15 = alloca %struct.hwrm_vnic_alloc_output*, align 8
  %16 = alloca %struct.bnxt_vnic_info*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = add i32 %17, %18
  store i32 %19, i32* %13, align 4
  %20 = bitcast %struct.hwrm_vnic_alloc_input* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 8, i1 false)
  %21 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %22 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %21, i32 0, i32 6
  %23 = load %struct.hwrm_vnic_alloc_output*, %struct.hwrm_vnic_alloc_output** %22, align 8
  store %struct.hwrm_vnic_alloc_output* %23, %struct.hwrm_vnic_alloc_output** %15, align 8
  %24 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %25 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %24, i32 0, i32 5
  %26 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %26, i64 %27
  store %struct.bnxt_vnic_info* %28, %struct.bnxt_vnic_info** %16, align 8
  %29 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %30 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @BNXT_FLAG_CHIP_P5, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %4
  br label %91

36:                                               ; preds = %4
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %38

38:                                               ; preds = %85, %36
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %90

42:                                               ; preds = %38
  %43 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %44 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %43, i32 0, i32 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %12, align 4
  %53 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %54 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %53, i32 0, i32 2
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = load i32, i32* %12, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @INVALID_HW_RING_ID, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %42
  %64 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %65 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @netdev_err(i32 %66, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %68)
  br label %90

70:                                               ; preds = %42
  %71 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %72 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %71, i32 0, i32 2
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = load i32, i32* %12, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %16, align 8
  %80 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %79, i32 0, i32 0
  %81 = load i64*, i64** %80, align 8
  %82 = load i32, i32* %11, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  store i64 %78, i64* %84, align 8
  br label %85

85:                                               ; preds = %70
  %86 = load i32, i32* %10, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %11, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %11, align 4
  br label %38

90:                                               ; preds = %63, %38
  br label %91

91:                                               ; preds = %90, %35
  store i32 0, i32* %10, align 4
  br label %92

92:                                               ; preds = %104, %91
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* @BNXT_MAX_CTX_PER_VNIC, align 4
  %95 = icmp ult i32 %93, %94
  br i1 %95, label %96, label %107

96:                                               ; preds = %92
  %97 = load i64, i64* @INVALID_HW_RING_ID, align 8
  %98 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %16, align 8
  %99 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %98, i32 0, i32 2
  %100 = load i64*, i64** %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %100, i64 %102
  store i64 %97, i64* %103, align 8
  br label %104

104:                                              ; preds = %96
  %105 = load i32, i32* %10, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %10, align 4
  br label %92

107:                                              ; preds = %92
  %108 = load i64, i64* %6, align 8
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load i32, i32* @VNIC_ALLOC_REQ_FLAGS_DEFAULT, align 4
  %112 = call i32 @cpu_to_le32(i32 %111)
  %113 = getelementptr inbounds %struct.hwrm_vnic_alloc_input, %struct.hwrm_vnic_alloc_input* %14, i32 0, i32 0
  store i32 %112, i32* %113, align 4
  br label %114

114:                                              ; preds = %110, %107
  %115 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %116 = load i32, i32* @HWRM_VNIC_ALLOC, align 4
  %117 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt* %115, %struct.hwrm_vnic_alloc_input* %14, i32 %116, i32 -1, i32 -1)
  %118 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %119 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %118, i32 0, i32 1
  %120 = call i32 @mutex_lock(i32* %119)
  %121 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %122 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %123 = call i32 @_hwrm_send_message(%struct.bnxt* %121, %struct.hwrm_vnic_alloc_input* %14, i32 8, i32 %122)
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* %9, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %133, label %126

126:                                              ; preds = %114
  %127 = load %struct.hwrm_vnic_alloc_output*, %struct.hwrm_vnic_alloc_output** %15, align 8
  %128 = getelementptr inbounds %struct.hwrm_vnic_alloc_output, %struct.hwrm_vnic_alloc_output* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @le32_to_cpu(i32 %129)
  %131 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %16, align 8
  %132 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 8
  br label %133

133:                                              ; preds = %126, %114
  %134 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %135 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %134, i32 0, i32 1
  %136 = call i32 @mutex_unlock(i32* %135)
  %137 = load i32, i32* %9, align 4
  ret i32 %137
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @netdev_err(i32, i8*, i32, i32) #2

declare dso_local i32 @cpu_to_le32(i32) #2

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt*, %struct.hwrm_vnic_alloc_input*, i32, i32, i32) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @_hwrm_send_message(%struct.bnxt*, %struct.hwrm_vnic_alloc_input*, i32, i32) #2

declare dso_local i32 @le32_to_cpu(i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
