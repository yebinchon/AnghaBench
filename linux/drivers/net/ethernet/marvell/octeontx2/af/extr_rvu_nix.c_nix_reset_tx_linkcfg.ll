; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_nix_reset_tx_linkcfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_nix_reset_tx_linkcfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { %struct.rvu_hwinfo* }
%struct.rvu_hwinfo = type { i32, i32 }

@NIX_TXSCH_LVL_TL4 = common dso_local global i32 0, align 4
@NIX_TXSCH_LVL_TL2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvu*, i32, i32, i32)* @nix_reset_tx_linkcfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nix_reset_tx_linkcfg(%struct.rvu* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rvu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rvu_hwinfo*, align 8
  %10 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.rvu*, %struct.rvu** %5, align 8
  %12 = getelementptr inbounds %struct.rvu, %struct.rvu* %11, i32 0, i32 0
  %13 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %12, align 8
  store %struct.rvu_hwinfo* %13, %struct.rvu_hwinfo** %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @NIX_TXSCH_LVL_TL4, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load %struct.rvu*, %struct.rvu** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @NIX_AF_TL4X_SDP_LINK_CFG(i32 %20)
  %22 = call i32 @rvu_write64(%struct.rvu* %18, i32 %19, i32 %21, i32 0)
  br label %23

23:                                               ; preds = %17, %4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @NIX_TXSCH_LVL_TL2, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %49

28:                                               ; preds = %23
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %46, %28
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %9, align 8
  %32 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %9, align 8
  %35 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %33, %36
  %38 = icmp slt i32 %30, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %29
  %40 = load %struct.rvu*, %struct.rvu** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @NIX_AF_TL3_TL2X_LINKX_CFG(i32 %42, i32 %43)
  %45 = call i32 @rvu_write64(%struct.rvu* %40, i32 %41, i32 %44, i32 0)
  br label %46

46:                                               ; preds = %39
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  br label %29

49:                                               ; preds = %27, %29
  ret void
}

declare dso_local i32 @rvu_write64(%struct.rvu*, i32, i32, i32) #1

declare dso_local i32 @NIX_AF_TL4X_SDP_LINK_CFG(i32) #1

declare dso_local i32 @NIX_AF_TL3_TL2X_LINKX_CFG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
