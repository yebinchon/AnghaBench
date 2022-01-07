; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_nix_setup_mcast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_nix_setup_mcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32, %struct.rvu_hwinfo* }
%struct.rvu_hwinfo = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.nix_hw = type { %struct.nix_mcast }
%struct.nix_mcast = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@NIX_AF_CONST3 = common dso_local global i32 0, align 4
@MC_TBL_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@NIX_AF_RX_MCAST_BASE = common dso_local global i32 0, align 4
@NIX_AF_RX_MCAST_CFG = common dso_local global i32 0, align 4
@NIX_AF_MC_MIRROR_CONST = common dso_local global i32 0, align 4
@MC_BUF_CNT = common dso_local global i64 0, align 8
@NIX_AF_RX_MCAST_BUF_BASE = common dso_local global i32 0, align 4
@NIX_AF_RX_MCAST_BUF_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvu*, %struct.nix_hw*, i32)* @nix_setup_mcast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nix_setup_mcast(%struct.rvu* %0, %struct.nix_hw* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rvu*, align 8
  %6 = alloca %struct.nix_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nix_mcast*, align 8
  %9 = alloca %struct.rvu_hwinfo*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %5, align 8
  store %struct.nix_hw* %1, %struct.nix_hw** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.nix_hw*, %struct.nix_hw** %6, align 8
  %13 = getelementptr inbounds %struct.nix_hw, %struct.nix_hw* %12, i32 0, i32 0
  store %struct.nix_mcast* %13, %struct.nix_mcast** %8, align 8
  %14 = load %struct.rvu*, %struct.rvu** %5, align 8
  %15 = getelementptr inbounds %struct.rvu, %struct.rvu* %14, i32 0, i32 1
  %16 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %15, align 8
  store %struct.rvu_hwinfo* %16, %struct.rvu_hwinfo** %9, align 8
  %17 = load %struct.rvu*, %struct.rvu** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @NIX_AF_CONST3, align 4
  %20 = call i32 @rvu_read64(%struct.rvu* %17, i32 %18, i32 %19)
  %21 = ashr i32 %20, 16
  %22 = and i32 %21, 15
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = zext i32 %23 to i64
  %25 = shl i64 1, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %11, align 4
  %27 = load %struct.rvu*, %struct.rvu** %5, align 8
  %28 = getelementptr inbounds %struct.rvu, %struct.rvu* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.nix_mcast*, %struct.nix_mcast** %8, align 8
  %31 = getelementptr inbounds %struct.nix_mcast, %struct.nix_mcast* %30, i32 0, i32 3
  %32 = load i64, i64* @MC_TBL_SIZE, align 8
  %33 = shl i64 256, %32
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @qmem_alloc(i32 %29, %struct.TYPE_4__** %31, i64 %33, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %3
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %124

41:                                               ; preds = %3
  %42 = load %struct.rvu*, %struct.rvu** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @NIX_AF_RX_MCAST_BASE, align 4
  %45 = load %struct.nix_mcast*, %struct.nix_mcast** %8, align 8
  %46 = getelementptr inbounds %struct.nix_mcast, %struct.nix_mcast* %45, i32 0, i32 3
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 @rvu_write64(%struct.rvu* %42, i32 %43, i32 %44, i32 %50)
  %52 = load %struct.rvu*, %struct.rvu** %5, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @NIX_AF_RX_MCAST_CFG, align 4
  %55 = call i32 @BIT_ULL(i32 36)
  %56 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %9, align 8
  %57 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = shl i32 %58, 4
  %60 = or i32 %55, %59
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* @MC_TBL_SIZE, align 8
  %63 = or i64 %61, %62
  %64 = trunc i64 %63 to i32
  %65 = call i32 @rvu_write64(%struct.rvu* %52, i32 %53, i32 %54, i32 %64)
  %66 = load %struct.rvu*, %struct.rvu** %5, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @NIX_AF_MC_MIRROR_CONST, align 4
  %69 = call i32 @rvu_read64(%struct.rvu* %66, i32 %67, i32 %68)
  %70 = and i32 %69, 65535
  store i32 %70, i32* %11, align 4
  %71 = load %struct.rvu*, %struct.rvu** %5, align 8
  %72 = getelementptr inbounds %struct.rvu, %struct.rvu* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.nix_mcast*, %struct.nix_mcast** %8, align 8
  %75 = getelementptr inbounds %struct.nix_mcast, %struct.nix_mcast* %74, i32 0, i32 2
  %76 = load i64, i64* @MC_BUF_CNT, align 8
  %77 = shl i64 8, %76
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @qmem_alloc(i32 %73, %struct.TYPE_4__** %75, i64 %77, i32 %78)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %41
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %124

85:                                               ; preds = %41
  %86 = load %struct.rvu*, %struct.rvu** %5, align 8
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @NIX_AF_RX_MCAST_BUF_BASE, align 4
  %89 = load %struct.nix_mcast*, %struct.nix_mcast** %8, align 8
  %90 = getelementptr inbounds %struct.nix_mcast, %struct.nix_mcast* %89, i32 0, i32 2
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = trunc i64 %93 to i32
  %95 = call i32 @rvu_write64(%struct.rvu* %86, i32 %87, i32 %88, i32 %94)
  %96 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %9, align 8
  %97 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = call i32 @rvu_alloc_rsrc(i32* %98)
  %100 = load %struct.nix_mcast*, %struct.nix_mcast** %8, align 8
  %101 = getelementptr inbounds %struct.nix_mcast, %struct.nix_mcast* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load %struct.rvu*, %struct.rvu** %5, align 8
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @NIX_AF_RX_MCAST_BUF_CFG, align 4
  %105 = call i32 @BIT_ULL(i32 63)
  %106 = load %struct.nix_mcast*, %struct.nix_mcast** %8, align 8
  %107 = getelementptr inbounds %struct.nix_mcast, %struct.nix_mcast* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = shl i32 %108, 24
  %110 = or i32 %105, %109
  %111 = call i32 @BIT_ULL(i32 20)
  %112 = or i32 %110, %111
  %113 = sext i32 %112 to i64
  %114 = load i64, i64* @MC_BUF_CNT, align 8
  %115 = or i64 %113, %114
  %116 = trunc i64 %115 to i32
  %117 = call i32 @rvu_write64(%struct.rvu* %102, i32 %103, i32 %104, i32 %116)
  %118 = load %struct.nix_mcast*, %struct.nix_mcast** %8, align 8
  %119 = getelementptr inbounds %struct.nix_mcast, %struct.nix_mcast* %118, i32 0, i32 1
  %120 = call i32 @mutex_init(i32* %119)
  %121 = load %struct.rvu*, %struct.rvu** %5, align 8
  %122 = load %struct.nix_hw*, %struct.nix_hw** %6, align 8
  %123 = call i32 @nix_setup_bcast_tables(%struct.rvu* %121, %struct.nix_hw* %122)
  store i32 %123, i32* %4, align 4
  br label %124

124:                                              ; preds = %85, %82, %38
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i32 @rvu_read64(%struct.rvu*, i32, i32) #1

declare dso_local i32 @qmem_alloc(i32, %struct.TYPE_4__**, i64, i32) #1

declare dso_local i32 @rvu_write64(%struct.rvu*, i32, i32, i32) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @rvu_alloc_rsrc(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @nix_setup_bcast_tables(%struct.rvu*, %struct.nix_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
