; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_cgx.c_cgx_lmac_promisc_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_cgx.c_cgx_lmac_promisc_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgx = type { i32 }

@CGXX_CMRX_RX_DMAC_CTL0 = common dso_local global i64 0, align 8
@CGX_DMAC_CAM_ACCEPT = common dso_local global i32 0, align 4
@CGX_DMAC_MCAST_MODE = common dso_local global i32 0, align 4
@CGX_DMAC_BCAST_MODE = common dso_local global i32 0, align 4
@CGXX_CMRX_RX_DMAC_CAM0 = common dso_local global i64 0, align 8
@CGX_DMAC_CAM_ADDR_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cgx_lmac_promisc_config(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cgx*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.cgx* @cgx_get_pdata(i32 %9)
  store %struct.cgx* %10, %struct.cgx** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.cgx*, %struct.cgx** %7, align 8
  %12 = icmp ne %struct.cgx* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %88

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %55

17:                                               ; preds = %14
  %18 = load %struct.cgx*, %struct.cgx** %7, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i64, i64* @CGXX_CMRX_RX_DMAC_CTL0, align 8
  %21 = call i32 @cgx_read(%struct.cgx* %18, i32 %19, i64 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* @CGX_DMAC_CAM_ACCEPT, align 4
  %23 = load i32, i32* @CGX_DMAC_MCAST_MODE, align 4
  %24 = or i32 %22, %23
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %8, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* @CGX_DMAC_BCAST_MODE, align 4
  %29 = load i32, i32* %8, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %8, align 4
  %31 = load %struct.cgx*, %struct.cgx** %7, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i64, i64* @CGXX_CMRX_RX_DMAC_CTL0, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @cgx_write(%struct.cgx* %31, i32 %32, i64 %33, i32 %34)
  %36 = load %struct.cgx*, %struct.cgx** %7, align 8
  %37 = load i64, i64* @CGXX_CMRX_RX_DMAC_CAM0, align 8
  %38 = load i32, i32* %5, align 4
  %39 = mul nsw i32 %38, 8
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %37, %40
  %42 = call i32 @cgx_read(%struct.cgx* %36, i32 0, i64 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* @CGX_DMAC_CAM_ADDR_ENABLE, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %8, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %8, align 4
  %47 = load %struct.cgx*, %struct.cgx** %7, align 8
  %48 = load i64, i64* @CGXX_CMRX_RX_DMAC_CAM0, align 8
  %49 = load i32, i32* %5, align 4
  %50 = mul nsw i32 %49, 8
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %48, %51
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @cgx_write(%struct.cgx* %47, i32 0, i64 %52, i32 %53)
  br label %88

55:                                               ; preds = %14
  %56 = load %struct.cgx*, %struct.cgx** %7, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load i64, i64* @CGXX_CMRX_RX_DMAC_CTL0, align 8
  %59 = call i32 @cgx_read(%struct.cgx* %56, i32 %57, i64 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* @CGX_DMAC_CAM_ACCEPT, align 4
  %61 = load i32, i32* @CGX_DMAC_MCAST_MODE, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* %8, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %8, align 4
  %65 = load %struct.cgx*, %struct.cgx** %7, align 8
  %66 = load i32, i32* %5, align 4
  %67 = load i64, i64* @CGXX_CMRX_RX_DMAC_CTL0, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @cgx_write(%struct.cgx* %65, i32 %66, i64 %67, i32 %68)
  %70 = load %struct.cgx*, %struct.cgx** %7, align 8
  %71 = load i64, i64* @CGXX_CMRX_RX_DMAC_CAM0, align 8
  %72 = load i32, i32* %5, align 4
  %73 = mul nsw i32 %72, 8
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %71, %74
  %76 = call i32 @cgx_read(%struct.cgx* %70, i32 0, i64 %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* @CGX_DMAC_CAM_ADDR_ENABLE, align 4
  %78 = load i32, i32* %8, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %8, align 4
  %80 = load %struct.cgx*, %struct.cgx** %7, align 8
  %81 = load i64, i64* @CGXX_CMRX_RX_DMAC_CAM0, align 8
  %82 = load i32, i32* %5, align 4
  %83 = mul nsw i32 %82, 8
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %81, %84
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @cgx_write(%struct.cgx* %80, i32 0, i64 %85, i32 %86)
  br label %88

88:                                               ; preds = %13, %55, %17
  ret void
}

declare dso_local %struct.cgx* @cgx_get_pdata(i32) #1

declare dso_local i32 @cgx_read(%struct.cgx*, i32, i64) #1

declare dso_local i32 @cgx_write(%struct.cgx*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
