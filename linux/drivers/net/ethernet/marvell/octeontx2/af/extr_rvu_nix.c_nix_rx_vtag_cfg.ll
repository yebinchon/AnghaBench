; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_nix_rx_vtag_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_nix_rx_vtag_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32 }
%struct.nix_vtag_config = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64 }

@VTAGSIZE_T8 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvu*, i32, i32, %struct.nix_vtag_config*)* @nix_rx_vtag_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nix_rx_vtag_cfg(%struct.rvu* %0, i32 %1, i32 %2, %struct.nix_vtag_config* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rvu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nix_vtag_config*, align 8
  %10 = alloca i64, align 8
  store %struct.rvu* %0, %struct.rvu** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.nix_vtag_config* %3, %struct.nix_vtag_config** %9, align 8
  %11 = load %struct.nix_vtag_config*, %struct.nix_vtag_config** %9, align 8
  %12 = getelementptr inbounds %struct.nix_vtag_config, %struct.nix_vtag_config* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %10, align 8
  %14 = load %struct.nix_vtag_config*, %struct.nix_vtag_config** %9, align 8
  %15 = getelementptr inbounds %struct.nix_vtag_config, %struct.nix_vtag_config* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sgt i32 %17, 7
  br i1 %18, label %25, label %19

19:                                               ; preds = %4
  %20 = load %struct.nix_vtag_config*, %struct.nix_vtag_config** %9, align 8
  %21 = getelementptr inbounds %struct.nix_vtag_config, %struct.nix_vtag_config* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @VTAGSIZE_T8, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19, %4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %59

28:                                               ; preds = %19
  %29 = load %struct.nix_vtag_config*, %struct.nix_vtag_config** %9, align 8
  %30 = getelementptr inbounds %struct.nix_vtag_config, %struct.nix_vtag_config* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = call i64 @BIT_ULL(i32 5)
  %36 = load i64, i64* %10, align 8
  %37 = or i64 %36, %35
  store i64 %37, i64* %10, align 8
  br label %38

38:                                               ; preds = %34, %28
  %39 = load %struct.nix_vtag_config*, %struct.nix_vtag_config** %9, align 8
  %40 = getelementptr inbounds %struct.nix_vtag_config, %struct.nix_vtag_config* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = call i64 @BIT_ULL(i32 4)
  %46 = load i64, i64* %10, align 8
  %47 = or i64 %46, %45
  store i64 %47, i64* %10, align 8
  br label %48

48:                                               ; preds = %44, %38
  %49 = load %struct.rvu*, %struct.rvu** %6, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.nix_vtag_config*, %struct.nix_vtag_config** %9, align 8
  %53 = getelementptr inbounds %struct.nix_vtag_config, %struct.nix_vtag_config* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @NIX_AF_LFX_RX_VTAG_TYPEX(i32 %51, i32 %55)
  %57 = load i64, i64* %10, align 8
  %58 = call i32 @rvu_write64(%struct.rvu* %49, i32 %50, i32 %56, i64 %57)
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %48, %25
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i64 @BIT_ULL(i32) #1

declare dso_local i32 @rvu_write64(%struct.rvu*, i32, i32, i64) #1

declare dso_local i32 @NIX_AF_LFX_RX_VTAG_TYPEX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
