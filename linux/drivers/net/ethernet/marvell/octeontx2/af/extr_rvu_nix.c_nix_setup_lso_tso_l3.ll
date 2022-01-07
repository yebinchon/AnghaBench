; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_nix_setup_lso_tso_l3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_nix_setup_lso_tso_l3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32 }
%struct.nix_lso_format = type { i32, i32, i32, i8*, i32 }

@NIX_TXLAYER_OL3 = common dso_local global i8* null, align 8
@NIX_LSOALG_ADD_PAYLEN = common dso_local global i32 0, align 4
@NIX_LSOALG_ADD_SEGNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvu*, i32, i32, i32, i32*)* @nix_setup_lso_tso_l3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nix_setup_lso_tso_l3(%struct.rvu* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.rvu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.nix_lso_format, align 8
  store %struct.rvu* %0, %struct.rvu** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %12 = bitcast %struct.nix_lso_format* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 32, i1 false)
  %13 = load i8*, i8** @NIX_TXLAYER_OL3, align 8
  %14 = getelementptr inbounds %struct.nix_lso_format, %struct.nix_lso_format* %11, i32 0, i32 3
  store i8* %13, i8** %14, align 8
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 2, i32 4
  %19 = getelementptr inbounds %struct.nix_lso_format, %struct.nix_lso_format* %11, i32 0, i32 0
  store i32 %18, i32* %19, align 8
  %20 = getelementptr inbounds %struct.nix_lso_format, %struct.nix_lso_format* %11, i32 0, i32 1
  store i32 1, i32* %20, align 4
  %21 = load i32, i32* @NIX_LSOALG_ADD_PAYLEN, align 4
  %22 = getelementptr inbounds %struct.nix_lso_format, %struct.nix_lso_format* %11, i32 0, i32 2
  store i32 %21, i32* %22, align 8
  %23 = load %struct.rvu*, %struct.rvu** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32*, i32** %10, align 8
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = call i32 @NIX_AF_LSO_FORMATX_FIELDX(i32 %25, i32 %27)
  %30 = bitcast %struct.nix_lso_format* %11 to i32*
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @rvu_write64(%struct.rvu* %23, i32 %24, i32 %29, i32 %31)
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %5
  br label %53

36:                                               ; preds = %5
  %37 = load i8*, i8** @NIX_TXLAYER_OL3, align 8
  %38 = getelementptr inbounds %struct.nix_lso_format, %struct.nix_lso_format* %11, i32 0, i32 3
  store i8* %37, i8** %38, align 8
  %39 = getelementptr inbounds %struct.nix_lso_format, %struct.nix_lso_format* %11, i32 0, i32 0
  store i32 4, i32* %39, align 8
  %40 = getelementptr inbounds %struct.nix_lso_format, %struct.nix_lso_format* %11, i32 0, i32 1
  store i32 1, i32* %40, align 4
  %41 = load i32, i32* @NIX_LSOALG_ADD_SEGNUM, align 4
  %42 = getelementptr inbounds %struct.nix_lso_format, %struct.nix_lso_format* %11, i32 0, i32 2
  store i32 %41, i32* %42, align 8
  %43 = load %struct.rvu*, %struct.rvu** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32*, i32** %10, align 8
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = call i32 @NIX_AF_LSO_FORMATX_FIELDX(i32 %45, i32 %47)
  %50 = bitcast %struct.nix_lso_format* %11 to i32*
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @rvu_write64(%struct.rvu* %43, i32 %44, i32 %49, i32 %51)
  br label %53

53:                                               ; preds = %36, %35
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @rvu_write64(%struct.rvu*, i32, i32, i32) #2

declare dso_local i32 @NIX_AF_LSO_FORMATX_FIELDX(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
