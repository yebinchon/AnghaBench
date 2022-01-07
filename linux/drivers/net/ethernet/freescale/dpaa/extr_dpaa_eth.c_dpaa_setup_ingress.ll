; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_dpaa_setup_ingress.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_dpaa_setup_ingress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa_priv = type { i32, i32 }
%struct.dpaa_fq = type { i32, i32, i32, %struct.qman_fq }
%struct.qman_fq = type { i32 }

@QMAN_FQ_FLAG_NO_ENQUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpaa_priv*, %struct.dpaa_fq*, %struct.qman_fq*)* @dpaa_setup_ingress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpaa_setup_ingress(%struct.dpaa_priv* %0, %struct.dpaa_fq* %1, %struct.qman_fq* %2) #0 {
  %4 = alloca %struct.dpaa_priv*, align 8
  %5 = alloca %struct.dpaa_fq*, align 8
  %6 = alloca %struct.qman_fq*, align 8
  store %struct.dpaa_priv* %0, %struct.dpaa_priv** %4, align 8
  store %struct.dpaa_fq* %1, %struct.dpaa_fq** %5, align 8
  store %struct.qman_fq* %2, %struct.qman_fq** %6, align 8
  %7 = load %struct.dpaa_fq*, %struct.dpaa_fq** %5, align 8
  %8 = getelementptr inbounds %struct.dpaa_fq, %struct.dpaa_fq* %7, i32 0, i32 3
  %9 = load %struct.qman_fq*, %struct.qman_fq** %6, align 8
  %10 = bitcast %struct.qman_fq* %8 to i8*
  %11 = bitcast %struct.qman_fq* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 %11, i64 4, i1 false)
  %12 = load %struct.dpaa_priv*, %struct.dpaa_priv** %4, align 8
  %13 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.dpaa_fq*, %struct.dpaa_fq** %5, align 8
  %16 = getelementptr inbounds %struct.dpaa_fq, %struct.dpaa_fq* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @QMAN_FQ_FLAG_NO_ENQUEUE, align 4
  %18 = load %struct.dpaa_fq*, %struct.dpaa_fq** %5, align 8
  %19 = getelementptr inbounds %struct.dpaa_fq, %struct.dpaa_fq* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.dpaa_priv*, %struct.dpaa_priv** %4, align 8
  %21 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.dpaa_fq*, %struct.dpaa_fq** %5, align 8
  %24 = getelementptr inbounds %struct.dpaa_fq, %struct.dpaa_fq* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
