; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_ring2.c_xgene_enet_ring_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_ring2.c_xgene_enet_ring_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_enet_desc_ring = type { i32*, i32, i32, i32 }

@RING_OWNER_CPU = common dso_local global i64 0, align 8
@X2_INTLINE = common dso_local global i32 0, align 4
@RING_BUFNUM_MASK = common dso_local global i32 0, align 4
@X2_DEQINTEN = common dso_local global i32 0, align 4
@X2_CFGCRID = common dso_local global i32 0, align 4
@QCOHERENT = common dso_local global i32 0, align 4
@RINGADDRL = common dso_local global i32 0, align 4
@RINGSIZE = common dso_local global i32 0, align 4
@ACCEPTLERR = common dso_local global i32 0, align 4
@RINGADDRH = common dso_local global i32 0, align 4
@X2_SELTHRSH = common dso_local global i32 0, align 4
@X2_QBASE_AM = common dso_local global i32 0, align 4
@X2_MSG_AM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgene_enet_desc_ring*)* @xgene_enet_ring_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_enet_ring_init(%struct.xgene_enet_desc_ring* %0) #0 {
  %2 = alloca %struct.xgene_enet_desc_ring*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store %struct.xgene_enet_desc_ring* %0, %struct.xgene_enet_desc_ring** %2, align 8
  %5 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %2, align 8
  %6 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  store i32* %7, i32** %3, align 8
  %8 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %2, align 8
  %9 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %2, align 8
  %12 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @xgene_enet_ring_owner(i32 %13)
  %15 = load i64, i64* @RING_OWNER_CPU, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %1
  %18 = load i32, i32* @X2_INTLINE, align 4
  %19 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %2, align 8
  %20 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @RING_BUFNUM_MASK, align 4
  %23 = and i32 %21, %22
  %24 = call i32 @SET_VAL(i32 %18, i32 %23)
  %25 = load i32*, i32** %3, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* @X2_DEQINTEN, align 4
  %30 = call i32 @SET_BIT(i32 %29)
  %31 = load i32*, i32** %3, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 3
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %17, %1
  %36 = load i32, i32* @X2_CFGCRID, align 4
  %37 = call i32 @SET_VAL(i32 %36, i32 2)
  %38 = load i32*, i32** %3, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* %4, align 4
  %43 = ashr i32 %42, 8
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* @QCOHERENT, align 4
  %45 = load i32, i32* @RINGADDRL, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @SET_VAL(i32 %45, i32 %46)
  %48 = or i32 %44, %47
  %49 = load i32*, i32** %3, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load i32, i32* %4, align 4
  %54 = ashr i32 %53, 27
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* @RINGSIZE, align 4
  %56 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %2, align 8
  %57 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @SET_VAL(i32 %55, i32 %58)
  %60 = load i32, i32* @ACCEPTLERR, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @RINGADDRH, align 4
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @SET_VAL(i32 %62, i32 %63)
  %65 = or i32 %61, %64
  %66 = load i32*, i32** %3, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 3
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* @X2_SELTHRSH, align 4
  %71 = call i32 @SET_VAL(i32 %70, i32 1)
  %72 = load i32*, i32** %3, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 4
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load i32, i32* @X2_QBASE_AM, align 4
  %77 = call i32 @SET_BIT(i32 %76)
  %78 = load i32, i32* @X2_MSG_AM, align 4
  %79 = call i32 @SET_BIT(i32 %78)
  %80 = or i32 %77, %79
  %81 = load i32*, i32** %3, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 5
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  ret void
}

declare dso_local i64 @xgene_enet_ring_owner(i32) #1

declare dso_local i32 @SET_VAL(i32, i32) #1

declare dso_local i32 @SET_BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
