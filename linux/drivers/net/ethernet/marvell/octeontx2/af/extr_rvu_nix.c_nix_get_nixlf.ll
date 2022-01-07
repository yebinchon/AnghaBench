; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_nix_get_nixlf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_nix_get_nixlf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { %struct.rvu_hwinfo* }
%struct.rvu_hwinfo = type { i32* }
%struct.rvu_pfvf = type { i32 }

@BLKTYPE_NIX = common dso_local global i32 0, align 4
@NIX_AF_ERR_AF_LF_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvu*, i32, i32*)* @nix_get_nixlf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nix_get_nixlf(%struct.rvu* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rvu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.rvu_pfvf*, align 8
  %9 = alloca %struct.rvu_hwinfo*, align 8
  %10 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load %struct.rvu*, %struct.rvu** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.rvu_pfvf* @rvu_get_pfvf(%struct.rvu* %11, i32 %12)
  store %struct.rvu_pfvf* %13, %struct.rvu_pfvf** %8, align 8
  %14 = load %struct.rvu*, %struct.rvu** %5, align 8
  %15 = getelementptr inbounds %struct.rvu, %struct.rvu* %14, i32 0, i32 0
  %16 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %15, align 8
  store %struct.rvu_hwinfo* %16, %struct.rvu_hwinfo** %9, align 8
  %17 = load %struct.rvu*, %struct.rvu** %5, align 8
  %18 = load i32, i32* @BLKTYPE_NIX, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @rvu_get_blkaddr(%struct.rvu* %17, i32 %18, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %8, align 8
  %22 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25, %3
  %29 = load i32, i32* @NIX_AF_ERR_AF_LF_INVALID, align 4
  store i32 %29, i32* %4, align 4
  br label %47

30:                                               ; preds = %25
  %31 = load %struct.rvu*, %struct.rvu** %5, align 8
  %32 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %9, align 8
  %33 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @rvu_get_lf(%struct.rvu* %31, i32* %37, i32 %38, i32 0)
  %40 = load i32*, i32** %7, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %30
  %45 = load i32, i32* @NIX_AF_ERR_AF_LF_INVALID, align 4
  store i32 %45, i32* %4, align 4
  br label %47

46:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %44, %28
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.rvu_pfvf* @rvu_get_pfvf(%struct.rvu*, i32) #1

declare dso_local i32 @rvu_get_blkaddr(%struct.rvu*, i32, i32) #1

declare dso_local i32 @rvu_get_lf(%struct.rvu*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
