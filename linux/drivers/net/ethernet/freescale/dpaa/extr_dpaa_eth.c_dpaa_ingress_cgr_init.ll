; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_dpaa_ingress_cgr_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_dpaa_ingress_cgr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa_priv = type { i32, %struct.TYPE_5__*, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.qm_mcc_initcgr = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i8*, i32, i8* }

@.str = private unnamed_addr constant [28 x i8] c"Error %d allocating CGR ID\0A\00", align 1
@QM_CGR_WE_CS_THRES = common dso_local global i32 0, align 4
@QM_CGR_EN = common dso_local global i8* null, align 8
@DPAA_INGRESS_CS_THRESHOLD = common dso_local global i32 0, align 4
@QM_CGR_WE_CSTD_EN = common dso_local global i32 0, align 4
@QMAN_CGR_FLAG_USE_INIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Error %d creating ingress CGR with ID %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"Created ingress CGR %d for netdev with hwaddr %pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpaa_priv*)* @dpaa_ingress_cgr_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpaa_ingress_cgr_init(%struct.dpaa_priv* %0) #0 {
  %2 = alloca %struct.dpaa_priv*, align 8
  %3 = alloca %struct.qm_mcc_initcgr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dpaa_priv* %0, %struct.dpaa_priv** %2, align 8
  %6 = load %struct.dpaa_priv*, %struct.dpaa_priv** %2, align 8
  %7 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = call i32 @qman_alloc_cgrid(i32* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.dpaa_priv*, %struct.dpaa_priv** %2, align 8
  %14 = call i64 @netif_msg_drv(%struct.dpaa_priv* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* %5, align 4
  %18 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %16, %12
  br label %82

20:                                               ; preds = %1
  %21 = call i32 @memset(%struct.qm_mcc_initcgr* %3, i32 0, i32 32)
  %22 = load i32, i32* @QM_CGR_WE_CS_THRES, align 4
  %23 = call i32 @cpu_to_be16(i32 %22)
  %24 = getelementptr inbounds %struct.qm_mcc_initcgr, %struct.qm_mcc_initcgr* %3, i32 0, i32 1
  store i32 %23, i32* %24, align 8
  %25 = load i8*, i8** @QM_CGR_EN, align 8
  %26 = getelementptr inbounds %struct.qm_mcc_initcgr, %struct.qm_mcc_initcgr* %3, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* @DPAA_INGRESS_CS_THRESHOLD, align 4
  store i32 %28, i32* %4, align 4
  %29 = getelementptr inbounds %struct.qm_mcc_initcgr, %struct.qm_mcc_initcgr* %3, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @qm_cgr_cs_thres_set64(i32* %30, i32 %31, i32 1)
  %33 = load i32, i32* @QM_CGR_WE_CSTD_EN, align 4
  %34 = call i32 @cpu_to_be16(i32 %33)
  %35 = getelementptr inbounds %struct.qm_mcc_initcgr, %struct.qm_mcc_initcgr* %3, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %34
  store i32 %37, i32* %35, align 8
  %38 = load i8*, i8** @QM_CGR_EN, align 8
  %39 = getelementptr inbounds %struct.qm_mcc_initcgr, %struct.qm_mcc_initcgr* %3, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  %41 = load %struct.dpaa_priv*, %struct.dpaa_priv** %2, align 8
  %42 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %41, i32 0, i32 2
  %43 = load i32, i32* @QMAN_CGR_FLAG_USE_INIT, align 4
  %44 = call i32 @qman_create_cgr(%struct.TYPE_6__* %42, i32 %43, %struct.qm_mcc_initcgr* %3)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %20
  %48 = load %struct.dpaa_priv*, %struct.dpaa_priv** %2, align 8
  %49 = call i64 @netif_msg_drv(%struct.dpaa_priv* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.dpaa_priv*, %struct.dpaa_priv** %2, align 8
  %54 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %56)
  br label %58

58:                                               ; preds = %51, %47
  %59 = load %struct.dpaa_priv*, %struct.dpaa_priv** %2, align 8
  %60 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @qman_release_cgrid(i32 %62)
  br label %82

64:                                               ; preds = %20
  %65 = load %struct.dpaa_priv*, %struct.dpaa_priv** %2, align 8
  %66 = call i64 @netif_msg_drv(%struct.dpaa_priv* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %64
  %69 = load %struct.dpaa_priv*, %struct.dpaa_priv** %2, align 8
  %70 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.dpaa_priv*, %struct.dpaa_priv** %2, align 8
  %74 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %73, i32 0, i32 1
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @pr_debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %72, i32 %77)
  br label %79

79:                                               ; preds = %68, %64
  %80 = load %struct.dpaa_priv*, %struct.dpaa_priv** %2, align 8
  %81 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %80, i32 0, i32 0
  store i32 1, i32* %81, align 8
  br label %82

82:                                               ; preds = %79, %58, %19
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @qman_alloc_cgrid(i32*) #1

declare dso_local i64 @netif_msg_drv(%struct.dpaa_priv*) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i32 @memset(%struct.qm_mcc_initcgr*, i32, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @qm_cgr_cs_thres_set64(i32*, i32, i32) #1

declare dso_local i32 @qman_create_cgr(%struct.TYPE_6__*, i32, %struct.qm_mcc_initcgr*) #1

declare dso_local i32 @qman_release_cgrid(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
