; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_cle.c_xgene_cle_dbptr_to_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_cle.c_xgene_cle_dbptr_to_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_enet_pdata = type { i32 }
%struct.xgene_cle_dbptr = type { i32, i32, i32, i32, i32 }

@CLE_DROP = common dso_local global i32 0, align 4
@CLE_FPSEL = common dso_local global i32 0, align 4
@CLE_NFPSEL = common dso_local global i32 0, align 4
@CLE_DSTQIDL = common dso_local global i32 0, align 4
@CLE_DSTQIDH = common dso_local global i32 0, align 4
@CLE_DSTQIDL_LEN = common dso_local global i32 0, align 4
@CLE_PRIORITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgene_enet_pdata*, %struct.xgene_cle_dbptr*, i32*)* @xgene_cle_dbptr_to_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_cle_dbptr_to_hw(%struct.xgene_enet_pdata* %0, %struct.xgene_cle_dbptr* %1, i32* %2) #0 {
  %4 = alloca %struct.xgene_enet_pdata*, align 8
  %5 = alloca %struct.xgene_cle_dbptr*, align 8
  %6 = alloca i32*, align 8
  store %struct.xgene_enet_pdata* %0, %struct.xgene_enet_pdata** %4, align 8
  store %struct.xgene_cle_dbptr* %1, %struct.xgene_cle_dbptr** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* @CLE_DROP, align 4
  %8 = load %struct.xgene_cle_dbptr*, %struct.xgene_cle_dbptr** %5, align 8
  %9 = getelementptr inbounds %struct.xgene_cle_dbptr, %struct.xgene_cle_dbptr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @SET_VAL(i32 %7, i32 %10)
  %12 = load i32*, i32** %6, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @CLE_FPSEL, align 4
  %15 = load %struct.xgene_cle_dbptr*, %struct.xgene_cle_dbptr** %5, align 8
  %16 = getelementptr inbounds %struct.xgene_cle_dbptr, %struct.xgene_cle_dbptr* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @SET_VAL(i32 %14, i32 %17)
  %19 = load i32, i32* @CLE_NFPSEL, align 4
  %20 = load %struct.xgene_cle_dbptr*, %struct.xgene_cle_dbptr** %5, align 8
  %21 = getelementptr inbounds %struct.xgene_cle_dbptr, %struct.xgene_cle_dbptr* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @SET_VAL(i32 %19, i32 %22)
  %24 = or i32 %18, %23
  %25 = load i32, i32* @CLE_DSTQIDL, align 4
  %26 = load %struct.xgene_cle_dbptr*, %struct.xgene_cle_dbptr** %5, align 8
  %27 = getelementptr inbounds %struct.xgene_cle_dbptr, %struct.xgene_cle_dbptr* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @SET_VAL(i32 %25, i32 %28)
  %30 = or i32 %24, %29
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 4
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @CLE_DSTQIDH, align 4
  %34 = load %struct.xgene_cle_dbptr*, %struct.xgene_cle_dbptr** %5, align 8
  %35 = getelementptr inbounds %struct.xgene_cle_dbptr, %struct.xgene_cle_dbptr* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @CLE_DSTQIDL_LEN, align 4
  %38 = ashr i32 %36, %37
  %39 = call i32 @SET_VAL(i32 %33, i32 %38)
  %40 = load i32, i32* @CLE_PRIORITY, align 4
  %41 = load %struct.xgene_cle_dbptr*, %struct.xgene_cle_dbptr** %5, align 8
  %42 = getelementptr inbounds %struct.xgene_cle_dbptr, %struct.xgene_cle_dbptr* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @SET_VAL(i32 %40, i32 %43)
  %45 = or i32 %39, %44
  %46 = load i32*, i32** %6, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 5
  store i32 %45, i32* %47, align 4
  ret void
}

declare dso_local i32 @SET_VAL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
