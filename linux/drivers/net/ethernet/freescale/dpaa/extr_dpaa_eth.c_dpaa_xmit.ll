; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_dpaa_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_dpaa_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa_priv = type { i32, i32*, %struct.qman_fq** }
%struct.qman_fq = type { i32 }
%struct.rtnl_link_stats64 = type { i32, i32, i32 }
%struct.qm_fd = type { i64, i32 }

@FSL_DPAA_BPID_INV = common dso_local global i64 0, align 8
@DPAA_ENQUEUE_RETRIES = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpaa_priv*, %struct.rtnl_link_stats64*, i32, %struct.qm_fd*)* @dpaa_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpaa_xmit(%struct.dpaa_priv* %0, %struct.rtnl_link_stats64* %1, i32 %2, %struct.qm_fd* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dpaa_priv*, align 8
  %7 = alloca %struct.rtnl_link_stats64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.qm_fd*, align 8
  %10 = alloca %struct.qman_fq*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dpaa_priv* %0, %struct.dpaa_priv** %6, align 8
  store %struct.rtnl_link_stats64* %1, %struct.rtnl_link_stats64** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.qm_fd* %3, %struct.qm_fd** %9, align 8
  %13 = load %struct.dpaa_priv*, %struct.dpaa_priv** %6, align 8
  %14 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %13, i32 0, i32 2
  %15 = load %struct.qman_fq**, %struct.qman_fq*** %14, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.qman_fq*, %struct.qman_fq** %15, i64 %17
  %19 = load %struct.qman_fq*, %struct.qman_fq** %18, align 8
  store %struct.qman_fq* %19, %struct.qman_fq** %10, align 8
  %20 = load %struct.qm_fd*, %struct.qm_fd** %9, align 8
  %21 = getelementptr inbounds %struct.qm_fd, %struct.qm_fd* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @FSL_DPAA_BPID_INV, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %4
  %26 = load %struct.dpaa_priv*, %struct.dpaa_priv** %6, align 8
  %27 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @qman_fq_fqid(i32 %32)
  %34 = call i32 @cpu_to_be32(i32 %33)
  %35 = load %struct.qm_fd*, %struct.qm_fd** %9, align 8
  %36 = getelementptr inbounds %struct.qm_fd, %struct.qm_fd* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  br label %39

39:                                               ; preds = %25, %4
  %40 = load %struct.dpaa_priv*, %struct.dpaa_priv** %6, align 8
  %41 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.qman_fq*, %struct.qman_fq** %10, align 8
  %44 = load %struct.qm_fd*, %struct.qm_fd** %9, align 8
  %45 = call i32 @trace_dpaa_tx_fd(i32 %42, %struct.qman_fq* %43, %struct.qm_fd* %44)
  store i32 0, i32* %12, align 4
  br label %46

46:                                               ; preds = %60, %39
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* @DPAA_ENQUEUE_RETRIES, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %46
  %51 = load %struct.qman_fq*, %struct.qman_fq** %10, align 8
  %52 = load %struct.qm_fd*, %struct.qm_fd** %9, align 8
  %53 = call i32 @qman_enqueue(%struct.qman_fq* %51, %struct.qm_fd* %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @EBUSY, align 4
  %56 = sub nsw i32 0, %55
  %57 = icmp ne i32 %54, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %63

59:                                               ; preds = %50
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %12, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %12, align 4
  br label %46

63:                                               ; preds = %58, %46
  %64 = load i32, i32* %11, align 4
  %65 = icmp slt i32 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %7, align 8
  %71 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* %5, align 4
  br label %88

75:                                               ; preds = %63
  %76 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %7, align 8
  %77 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  %80 = load %struct.qm_fd*, %struct.qm_fd** %9, align 8
  %81 = call i64 @qm_fd_get_length(%struct.qm_fd* %80)
  %82 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %7, align 8
  %83 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %85, %81
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %83, align 4
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %75, %69
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @qman_fq_fqid(i32) #1

declare dso_local i32 @trace_dpaa_tx_fd(i32, %struct.qman_fq*, %struct.qm_fd*) #1

declare dso_local i32 @qman_enqueue(%struct.qman_fq*, %struct.qm_fd*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @qm_fd_get_length(%struct.qm_fd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
