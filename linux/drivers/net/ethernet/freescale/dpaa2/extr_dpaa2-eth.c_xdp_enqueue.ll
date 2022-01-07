; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_xdp_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_xdp_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa2_eth_priv = type { i32 (%struct.dpaa2_eth_priv*, %struct.dpaa2_eth_fq*, %struct.dpaa2_fd*, i32)*, %struct.dpaa2_eth_fq.0* }
%struct.dpaa2_eth_fq = type opaque
%struct.dpaa2_eth_fq.0 = type { i32 }
%struct.dpaa2_fd = type { i32 }
%struct.dpaa2_faead = type { i64, i32 }

@DPAA2_FD_FRC_FAEADV = common dso_local global i32 0, align 4
@DPAA2_FD_CTRL_ASAL = common dso_local global i32 0, align 4
@DPAA2_FAEAD_A4V = common dso_local global i32 0, align 4
@DPAA2_FAEAD_A2V = common dso_local global i32 0, align 4
@DPAA2_FAEAD_EBDDV = common dso_local global i32 0, align 4
@DPAA2_ETH_ENQUEUE_RETRIES = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpaa2_eth_priv*, %struct.dpaa2_fd*, i8*, i64)* @xdp_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xdp_enqueue(%struct.dpaa2_eth_priv* %0, %struct.dpaa2_fd* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.dpaa2_eth_priv*, align 8
  %6 = alloca %struct.dpaa2_fd*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.dpaa2_eth_fq.0*, align 8
  %10 = alloca %struct.dpaa2_faead*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.dpaa2_eth_priv* %0, %struct.dpaa2_eth_priv** %5, align 8
  store %struct.dpaa2_fd* %1, %struct.dpaa2_fd** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load %struct.dpaa2_fd*, %struct.dpaa2_fd** %6, align 8
  %16 = call i32 @dpaa2_fd_get_frc(%struct.dpaa2_fd* %15)
  store i32 %16, i32* %12, align 4
  %17 = load %struct.dpaa2_fd*, %struct.dpaa2_fd** %6, align 8
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* @DPAA2_FD_FRC_FAEADV, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @dpaa2_fd_set_frc(%struct.dpaa2_fd* %17, i32 %20)
  %22 = load %struct.dpaa2_fd*, %struct.dpaa2_fd** %6, align 8
  %23 = load i32, i32* @DPAA2_FD_CTRL_ASAL, align 4
  %24 = call i32 @dpaa2_fd_set_ctrl(%struct.dpaa2_fd* %22, i32 %23)
  %25 = load i32, i32* @DPAA2_FAEAD_A4V, align 4
  %26 = load i32, i32* @DPAA2_FAEAD_A2V, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @DPAA2_FAEAD_EBDDV, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %11, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = call %struct.dpaa2_faead* @dpaa2_get_faead(i8* %30, i32 0)
  store %struct.dpaa2_faead* %31, %struct.dpaa2_faead** %10, align 8
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @cpu_to_le32(i32 %32)
  %34 = load %struct.dpaa2_faead*, %struct.dpaa2_faead** %10, align 8
  %35 = getelementptr inbounds %struct.dpaa2_faead, %struct.dpaa2_faead* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load %struct.dpaa2_faead*, %struct.dpaa2_faead** %10, align 8
  %37 = getelementptr inbounds %struct.dpaa2_faead, %struct.dpaa2_faead* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %5, align 8
  %39 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %38, i32 0, i32 1
  %40 = load %struct.dpaa2_eth_fq.0*, %struct.dpaa2_eth_fq.0** %39, align 8
  %41 = load i64, i64* %8, align 8
  %42 = getelementptr inbounds %struct.dpaa2_eth_fq.0, %struct.dpaa2_eth_fq.0* %40, i64 %41
  store %struct.dpaa2_eth_fq.0* %42, %struct.dpaa2_eth_fq.0** %9, align 8
  store i32 0, i32* %13, align 4
  br label %43

43:                                               ; preds = %62, %4
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* @DPAA2_ETH_ENQUEUE_RETRIES, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %65

47:                                               ; preds = %43
  %48 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %5, align 8
  %49 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %48, i32 0, i32 0
  %50 = load i32 (%struct.dpaa2_eth_priv*, %struct.dpaa2_eth_fq*, %struct.dpaa2_fd*, i32)*, i32 (%struct.dpaa2_eth_priv*, %struct.dpaa2_eth_fq*, %struct.dpaa2_fd*, i32)** %49, align 8
  %51 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %5, align 8
  %52 = load %struct.dpaa2_eth_fq.0*, %struct.dpaa2_eth_fq.0** %9, align 8
  %53 = bitcast %struct.dpaa2_eth_fq.0* %52 to %struct.dpaa2_eth_fq*
  %54 = load %struct.dpaa2_fd*, %struct.dpaa2_fd** %6, align 8
  %55 = call i32 %50(%struct.dpaa2_eth_priv* %51, %struct.dpaa2_eth_fq* %53, %struct.dpaa2_fd* %54, i32 0)
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* @EBUSY, align 4
  %58 = sub nsw i32 0, %57
  %59 = icmp ne i32 %56, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %47
  br label %65

61:                                               ; preds = %47
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %13, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %13, align 4
  br label %43

65:                                               ; preds = %60, %43
  %66 = load i32, i32* %14, align 4
  ret i32 %66
}

declare dso_local i32 @dpaa2_fd_get_frc(%struct.dpaa2_fd*) #1

declare dso_local i32 @dpaa2_fd_set_frc(%struct.dpaa2_fd*, i32) #1

declare dso_local i32 @dpaa2_fd_set_ctrl(%struct.dpaa2_fd*, i32) #1

declare dso_local %struct.dpaa2_faead* @dpaa2_get_faead(i8*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
