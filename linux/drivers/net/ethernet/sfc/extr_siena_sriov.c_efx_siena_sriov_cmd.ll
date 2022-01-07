; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_siena_sriov.c_efx_siena_sriov_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_siena_sriov.c_efx_siena_sriov_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }

@inbuf = common dso_local global i32 0, align 4
@MC_CMD_SRIOV_IN_LEN = common dso_local global i64 0, align 8
@outbuf = common dso_local global i32 0, align 4
@MC_CMD_SRIOV_OUT_LEN = common dso_local global i64 0, align 8
@SRIOV_IN_ENABLE = common dso_local global i32 0, align 4
@SRIOV_IN_VI_BASE = common dso_local global i32 0, align 4
@EFX_VI_BASE = common dso_local global i32 0, align 4
@SRIOV_IN_VF_COUNT = common dso_local global i32 0, align 4
@MC_CMD_SRIOV = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@SRIOV_OUT_VF_TOTAL = common dso_local global i32 0, align 4
@SRIOV_OUT_VI_SCALE = common dso_local global i32 0, align 4
@EFX_VI_SCALE_MAX = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*, i32, i32*, i32*)* @efx_siena_sriov_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_siena_sriov_cmd(%struct.efx_nic* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.efx_nic*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i32, i32* @inbuf, align 4
  %15 = load i64, i64* @MC_CMD_SRIOV_IN_LEN, align 8
  %16 = call i32 @MCDI_DECLARE_BUF(i32 %14, i64 %15)
  %17 = load i32, i32* @outbuf, align 4
  %18 = load i64, i64* @MC_CMD_SRIOV_OUT_LEN, align 8
  %19 = call i32 @MCDI_DECLARE_BUF(i32 %17, i64 %18)
  %20 = load i32, i32* @inbuf, align 4
  %21 = load i32, i32* @SRIOV_IN_ENABLE, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 1, i32 0
  %26 = call i32 @MCDI_SET_DWORD(i32 %20, i32 %21, i32 %25)
  %27 = load i32, i32* @inbuf, align 4
  %28 = load i32, i32* @SRIOV_IN_VI_BASE, align 4
  %29 = load i32, i32* @EFX_VI_BASE, align 4
  %30 = call i32 @MCDI_SET_DWORD(i32 %27, i32 %28, i32 %29)
  %31 = load i32, i32* @inbuf, align 4
  %32 = load i32, i32* @SRIOV_IN_VF_COUNT, align 4
  %33 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %34 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @MCDI_SET_DWORD(i32 %31, i32 %32, i32 %35)
  %37 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %38 = load i32, i32* @MC_CMD_SRIOV, align 4
  %39 = load i32, i32* @inbuf, align 4
  %40 = load i64, i64* @MC_CMD_SRIOV_IN_LEN, align 8
  %41 = load i32, i32* @outbuf, align 4
  %42 = load i64, i64* @MC_CMD_SRIOV_OUT_LEN, align 8
  %43 = call i32 @efx_mcdi_rpc_quiet(%struct.efx_nic* %37, i32 %38, i32 %39, i64 %40, i32 %41, i64 %42, i64* %12)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %4
  %47 = load i32, i32* %13, align 4
  store i32 %47, i32* %5, align 4
  br label %81

48:                                               ; preds = %4
  %49 = load i64, i64* %12, align 8
  %50 = load i64, i64* @MC_CMD_SRIOV_OUT_LEN, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %81

55:                                               ; preds = %48
  %56 = load i32, i32* @outbuf, align 4
  %57 = load i32, i32* @SRIOV_OUT_VF_TOTAL, align 4
  %58 = call i32 @MCDI_DWORD(i32 %56, i32 %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* @outbuf, align 4
  %60 = load i32, i32* @SRIOV_OUT_VI_SCALE, align 4
  %61 = call i32 @MCDI_DWORD(i32 %59, i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @EFX_VI_SCALE_MAX, align 4
  %64 = icmp ugt i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %55
  %66 = load i32, i32* @EOPNOTSUPP, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %81

68:                                               ; preds = %55
  %69 = load i32*, i32** %8, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, i32* %10, align 4
  %73 = load i32*, i32** %8, align 8
  store i32 %72, i32* %73, align 4
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i32*, i32** %9, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32, i32* %11, align 4
  %79 = load i32*, i32** %9, align 8
  store i32 %78, i32* %79, align 4
  br label %80

80:                                               ; preds = %77, %74
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %80, %65, %52, %46
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i32 @MCDI_DECLARE_BUF(i32, i64) #1

declare dso_local i32 @MCDI_SET_DWORD(i32, i32, i32) #1

declare dso_local i32 @efx_mcdi_rpc_quiet(%struct.efx_nic*, i32, i32, i64, i32, i64, i64*) #1

declare dso_local i32 @MCDI_DWORD(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
