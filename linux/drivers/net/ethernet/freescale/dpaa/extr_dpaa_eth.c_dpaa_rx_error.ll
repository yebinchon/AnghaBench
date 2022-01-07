; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_dpaa_rx_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_dpaa_rx_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dpaa_priv = type { i32 }
%struct.dpaa_percpu_priv = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.qm_fd = type { i32 }

@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Err FD status = 0x%08x\0A\00", align 1
@FM_FD_STAT_RX_ERRORS = common dso_local global i32 0, align 4
@FM_FD_ERR_DMA = common dso_local global i32 0, align 4
@FM_FD_ERR_PHYSICAL = common dso_local global i32 0, align 4
@FM_FD_ERR_SIZE = common dso_local global i32 0, align 4
@FM_FD_ERR_PRS_HDR_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.dpaa_priv*, %struct.dpaa_percpu_priv*, %struct.qm_fd*, i32)* @dpaa_rx_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpaa_rx_error(%struct.net_device* %0, %struct.dpaa_priv* %1, %struct.dpaa_percpu_priv* %2, %struct.qm_fd* %3, i32 %4) #0 {
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.dpaa_priv*, align 8
  %8 = alloca %struct.dpaa_percpu_priv*, align 8
  %9 = alloca %struct.qm_fd*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.dpaa_priv* %1, %struct.dpaa_priv** %7, align 8
  store %struct.dpaa_percpu_priv* %2, %struct.dpaa_percpu_priv** %8, align 8
  store %struct.qm_fd* %3, %struct.qm_fd** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = call i64 (...) @net_ratelimit()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %5
  %14 = load %struct.dpaa_priv*, %struct.dpaa_priv** %7, align 8
  %15 = load i32, i32* @hw, align 4
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = load %struct.qm_fd*, %struct.qm_fd** %9, align 8
  %18 = getelementptr inbounds %struct.qm_fd, %struct.qm_fd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @be32_to_cpu(i32 %19)
  %21 = load i32, i32* @FM_FD_STAT_RX_ERRORS, align 4
  %22 = and i32 %20, %21
  %23 = call i32 @netif_err(%struct.dpaa_priv* %14, i32 %15, %struct.net_device* %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %13, %5
  %25 = load %struct.dpaa_percpu_priv*, %struct.dpaa_percpu_priv** %8, align 8
  %26 = getelementptr inbounds %struct.dpaa_percpu_priv, %struct.dpaa_percpu_priv* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = load %struct.qm_fd*, %struct.qm_fd** %9, align 8
  %31 = getelementptr inbounds %struct.qm_fd, %struct.qm_fd* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @be32_to_cpu(i32 %32)
  %34 = load i32, i32* @FM_FD_ERR_DMA, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %24
  %38 = load %struct.dpaa_percpu_priv*, %struct.dpaa_percpu_priv** %8, align 8
  %39 = getelementptr inbounds %struct.dpaa_percpu_priv, %struct.dpaa_percpu_priv* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %37, %24
  %44 = load %struct.qm_fd*, %struct.qm_fd** %9, align 8
  %45 = getelementptr inbounds %struct.qm_fd, %struct.qm_fd* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @be32_to_cpu(i32 %46)
  %48 = load i32, i32* @FM_FD_ERR_PHYSICAL, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %43
  %52 = load %struct.dpaa_percpu_priv*, %struct.dpaa_percpu_priv** %8, align 8
  %53 = getelementptr inbounds %struct.dpaa_percpu_priv, %struct.dpaa_percpu_priv* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %51, %43
  %58 = load %struct.qm_fd*, %struct.qm_fd** %9, align 8
  %59 = getelementptr inbounds %struct.qm_fd, %struct.qm_fd* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @be32_to_cpu(i32 %60)
  %62 = load i32, i32* @FM_FD_ERR_SIZE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %57
  %66 = load %struct.dpaa_percpu_priv*, %struct.dpaa_percpu_priv** %8, align 8
  %67 = getelementptr inbounds %struct.dpaa_percpu_priv, %struct.dpaa_percpu_priv* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %65, %57
  %72 = load %struct.qm_fd*, %struct.qm_fd** %9, align 8
  %73 = getelementptr inbounds %struct.qm_fd, %struct.qm_fd* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @be32_to_cpu(i32 %74)
  %76 = load i32, i32* @FM_FD_ERR_PRS_HDR_ERR, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %71
  %80 = load %struct.dpaa_percpu_priv*, %struct.dpaa_percpu_priv** %8, align 8
  %81 = getelementptr inbounds %struct.dpaa_percpu_priv, %struct.dpaa_percpu_priv* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %79, %71
  %86 = load %struct.net_device*, %struct.net_device** %6, align 8
  %87 = load %struct.qm_fd*, %struct.qm_fd** %9, align 8
  %88 = call i32 @dpaa_fd_release(%struct.net_device* %86, %struct.qm_fd* %87)
  ret void
}

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @netif_err(%struct.dpaa_priv*, i32, %struct.net_device*, i8*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @dpaa_fd_release(%struct.net_device*, %struct.qm_fd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
