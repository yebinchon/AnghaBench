; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_hw.c_xgene_enet_ring_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_hw.c_xgene_enet_ring_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_enet_desc_ring = type { i32*, i32, i32 }

@SELTHRSH_POS = common dso_local global i32 0, align 4
@SELTHRSH_LEN = common dso_local global i32 0, align 4
@ACCEPTLERR = common dso_local global i32 0, align 4
@QCOHERENT = common dso_local global i32 0, align 4
@RINGADDRL_POS = common dso_local global i32 0, align 4
@RINGADDRL_LEN = common dso_local global i32 0, align 4
@RINGADDRH_POS = common dso_local global i32 0, align 4
@RINGADDRH_LEN = common dso_local global i32 0, align 4
@RINGSIZE_POS = common dso_local global i32 0, align 4
@RINGSIZE_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgene_enet_desc_ring*)* @xgene_enet_ring_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_enet_ring_init(%struct.xgene_enet_desc_ring* %0) #0 {
  %2 = alloca %struct.xgene_enet_desc_ring*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.xgene_enet_desc_ring* %0, %struct.xgene_enet_desc_ring** %2, align 8
  %6 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %2, align 8
  %7 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  store i32* %8, i32** %3, align 8
  %9 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %2, align 8
  %10 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  %12 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %2, align 8
  %13 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @SELTHRSH_POS, align 4
  %16 = shl i32 1, %15
  %17 = load i32, i32* @SELTHRSH_POS, align 4
  %18 = load i32, i32* @SELTHRSH_LEN, align 4
  %19 = call i32 @CREATE_MASK(i32 %17, i32 %18)
  %20 = and i32 %16, %19
  %21 = load i32*, i32** %3, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 4
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* @ACCEPTLERR, align 4
  %26 = load i32*, i32** %3, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 3
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* @QCOHERENT, align 4
  %31 = load i32*, i32** %3, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* %4, align 4
  %36 = ashr i32 %35, 8
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @RINGADDRL_POS, align 4
  %39 = shl i32 %37, %38
  %40 = load i32, i32* @RINGADDRL_POS, align 4
  %41 = load i32, i32* @RINGADDRL_LEN, align 4
  %42 = call i32 @CREATE_MASK_ULL(i32 %40, i32 %41)
  %43 = and i32 %39, %42
  %44 = load i32*, i32** %3, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load i32, i32* @RINGADDRL_LEN, align 4
  %49 = load i32, i32* %4, align 4
  %50 = ashr i32 %49, %48
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @RINGADDRH_POS, align 4
  %53 = load i32, i32* @RINGADDRH_LEN, align 4
  %54 = call i32 @CREATE_MASK_ULL(i32 %52, i32 %53)
  %55 = and i32 %51, %54
  %56 = load i32*, i32** %3, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 3
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @RINGSIZE_POS, align 4
  %62 = shl i32 %60, %61
  %63 = load i32, i32* @RINGSIZE_POS, align 4
  %64 = load i32, i32* @RINGSIZE_LEN, align 4
  %65 = call i32 @CREATE_MASK(i32 %63, i32 %64)
  %66 = and i32 %62, %65
  %67 = load i32*, i32** %3, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 3
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  ret void
}

declare dso_local i32 @CREATE_MASK(i32, i32) #1

declare dso_local i32 @CREATE_MASK_ULL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
