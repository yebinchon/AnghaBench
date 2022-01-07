; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_hwmtm.c_init_descr_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_hwmtm.c_init_descr_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { i32 }
%union.s_fp_descr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, %struct.TYPE_2__*, i8* }

@.str = private unnamed_addr constant [26 x i8] c"descr ring starts at = %p\00", align 1
@BMU_CHECK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"descr ring ends at = %p\00", align 1
@DDI_DMA_SYNC_FORDEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s_smc*, %union.s_fp_descr*, i32)* @init_descr_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_descr_ring(%struct.s_smc* %0, %union.s_fp_descr* %1, i32 %2) #0 {
  %4 = alloca %struct.s_smc*, align 8
  %5 = alloca %union.s_fp_descr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.s_fp_descr*, align 8
  %9 = alloca %union.s_fp_descr*, align 8
  %10 = alloca i32, align 4
  store %struct.s_smc* %0, %struct.s_smc** %4, align 8
  store %union.s_fp_descr* %1, %union.s_fp_descr** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %union.s_fp_descr*, %union.s_fp_descr** %5, align 8
  %12 = call i32 @DB_GEN(i32 3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %union.s_fp_descr* %11)
  %13 = load i32, i32* %6, align 4
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %7, align 4
  %15 = load %union.s_fp_descr*, %union.s_fp_descr** %5, align 8
  store %union.s_fp_descr* %15, %union.s_fp_descr** %8, align 8
  br label %16

16:                                               ; preds = %42, %3
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %45

19:                                               ; preds = %16
  %20 = load %union.s_fp_descr*, %union.s_fp_descr** %8, align 8
  store %union.s_fp_descr* %20, %union.s_fp_descr** %9, align 8
  %21 = load %union.s_fp_descr*, %union.s_fp_descr** %8, align 8
  %22 = getelementptr inbounds %union.s_fp_descr, %union.s_fp_descr* %21, i32 1
  store %union.s_fp_descr* %22, %union.s_fp_descr** %8, align 8
  %23 = load i32, i32* @BMU_CHECK, align 4
  %24 = call i8* @cpu_to_le32(i32 %23)
  %25 = load %union.s_fp_descr*, %union.s_fp_descr** %9, align 8
  %26 = bitcast %union.s_fp_descr* %25 to %struct.TYPE_2__*
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  store volatile i8* %24, i8** %27, align 8
  %28 = load %union.s_fp_descr*, %union.s_fp_descr** %8, align 8
  %29 = bitcast %union.s_fp_descr* %28 to %struct.TYPE_2__*
  %30 = load %union.s_fp_descr*, %union.s_fp_descr** %9, align 8
  %31 = bitcast %union.s_fp_descr* %30 to %struct.TYPE_2__*
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store volatile %struct.TYPE_2__* %29, %struct.TYPE_2__** %32, align 8
  %33 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %34 = load %union.s_fp_descr*, %union.s_fp_descr** %8, align 8
  %35 = bitcast %union.s_fp_descr* %34 to i8*
  %36 = call i32 @mac_drv_virt2phys(%struct.s_smc* %33, i8* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i8* @cpu_to_le32(i32 %37)
  %39 = load %union.s_fp_descr*, %union.s_fp_descr** %9, align 8
  %40 = bitcast %union.s_fp_descr* %39 to %struct.TYPE_2__*
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store volatile i8* %38, i8** %41, align 8
  br label %42

42:                                               ; preds = %19
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %7, align 4
  br label %16

45:                                               ; preds = %16
  %46 = load %union.s_fp_descr*, %union.s_fp_descr** %8, align 8
  %47 = call i32 @DB_GEN(i32 3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), %union.s_fp_descr* %46)
  %48 = load i32, i32* @BMU_CHECK, align 4
  %49 = call i8* @cpu_to_le32(i32 %48)
  %50 = load %union.s_fp_descr*, %union.s_fp_descr** %8, align 8
  %51 = bitcast %union.s_fp_descr* %50 to %struct.TYPE_2__*
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  store volatile i8* %49, i8** %52, align 8
  %53 = load %union.s_fp_descr*, %union.s_fp_descr** %5, align 8
  %54 = bitcast %union.s_fp_descr* %53 to %struct.TYPE_2__*
  %55 = load %union.s_fp_descr*, %union.s_fp_descr** %8, align 8
  %56 = bitcast %union.s_fp_descr* %55 to %struct.TYPE_2__*
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  store volatile %struct.TYPE_2__* %54, %struct.TYPE_2__** %57, align 8
  %58 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %59 = load %union.s_fp_descr*, %union.s_fp_descr** %5, align 8
  %60 = bitcast %union.s_fp_descr* %59 to i8*
  %61 = call i32 @mac_drv_virt2phys(%struct.s_smc* %58, i8* %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i8* @cpu_to_le32(i32 %62)
  %64 = load %union.s_fp_descr*, %union.s_fp_descr** %8, align 8
  %65 = bitcast %union.s_fp_descr* %64 to %struct.TYPE_2__*
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store volatile i8* %63, i8** %66, align 8
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %7, align 4
  %68 = load %union.s_fp_descr*, %union.s_fp_descr** %5, align 8
  store %union.s_fp_descr* %68, %union.s_fp_descr** %8, align 8
  br label %69

69:                                               ; preds = %79, %45
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %69
  %73 = load %union.s_fp_descr*, %union.s_fp_descr** %8, align 8
  %74 = bitcast %union.s_fp_descr* %73 to %struct.TYPE_2__*
  %75 = load i32, i32* @DDI_DMA_SYNC_FORDEV, align 4
  %76 = call i32 @DRV_BUF_FLUSH(%struct.TYPE_2__* %74, i32 %75)
  %77 = load %union.s_fp_descr*, %union.s_fp_descr** %8, align 8
  %78 = getelementptr inbounds %union.s_fp_descr, %union.s_fp_descr* %77, i32 1
  store %union.s_fp_descr* %78, %union.s_fp_descr** %8, align 8
  br label %79

79:                                               ; preds = %72
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %7, align 4
  br label %69

82:                                               ; preds = %69
  %83 = load i32, i32* %10, align 4
  ret i32 %83
}

declare dso_local i32 @DB_GEN(i32, i8*, %union.s_fp_descr*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @mac_drv_virt2phys(%struct.s_smc*, i8*) #1

declare dso_local i32 @DRV_BUF_FLUSH(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
