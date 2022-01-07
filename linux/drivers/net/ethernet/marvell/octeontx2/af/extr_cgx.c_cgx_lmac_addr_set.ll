; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_cgx.c_cgx_lmac_addr_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_cgx.c_cgx_lmac_addr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgx = type { i32 }

@CGXX_CMRX_RX_DMAC_CAM0 = common dso_local global i64 0, align 8
@CGX_DMAC_CAM_ADDR_ENABLE = common dso_local global i32 0, align 4
@CGXX_CMRX_RX_DMAC_CTL0 = common dso_local global i64 0, align 8
@CGX_DMAC_CTL0_CAM_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cgx_lmac_addr_set(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.cgx*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.cgx* @cgx_get_pdata(i32 %9)
  store %struct.cgx* %10, %struct.cgx** %7, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i32 @mac2u64(i32* %11)
  store i32 %12, i32* %8, align 4
  %13 = load %struct.cgx*, %struct.cgx** %7, align 8
  %14 = load i64, i64* @CGXX_CMRX_RX_DMAC_CAM0, align 8
  %15 = load i32, i32* %5, align 4
  %16 = mul nsw i32 %15, 8
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %14, %17
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @CGX_DMAC_CAM_ADDR_ENABLE, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* %5, align 4
  %23 = shl i32 %22, 49
  %24 = or i32 %21, %23
  %25 = call i32 @cgx_write(%struct.cgx* %13, i32 0, i64 %18, i32 %24)
  %26 = load %struct.cgx*, %struct.cgx** %7, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i64, i64* @CGXX_CMRX_RX_DMAC_CTL0, align 8
  %29 = call i32 @cgx_read(%struct.cgx* %26, i32 %27, i64 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* @CGX_DMAC_CTL0_CAM_ENABLE, align 4
  %31 = load i32, i32* %8, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %8, align 4
  %33 = load %struct.cgx*, %struct.cgx** %7, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i64, i64* @CGXX_CMRX_RX_DMAC_CTL0, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @cgx_write(%struct.cgx* %33, i32 %34, i64 %35, i32 %36)
  ret i32 0
}

declare dso_local %struct.cgx* @cgx_get_pdata(i32) #1

declare dso_local i32 @mac2u64(i32*) #1

declare dso_local i32 @cgx_write(%struct.cgx*, i32, i64, i32) #1

declare dso_local i32 @cgx_read(%struct.cgx*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
