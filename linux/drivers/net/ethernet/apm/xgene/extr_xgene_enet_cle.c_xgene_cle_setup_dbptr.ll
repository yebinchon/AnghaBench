; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_cle.c_xgene_cle_setup_dbptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_cle.c_xgene_cle_setup_dbptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_enet_pdata = type { i32 }
%struct.xgene_enet_cle = type { %struct.xgene_cle_ptree }
%struct.xgene_cle_ptree = type { i64, i64, i32* }

@CLE_DRAM_REGS = common dso_local global i32 0, align 4
@DB_RAM = common dso_local global i32 0, align 4
@CLE_CMD_WR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgene_enet_pdata*, %struct.xgene_enet_cle*)* @xgene_cle_setup_dbptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_cle_setup_dbptr(%struct.xgene_enet_pdata* %0, %struct.xgene_enet_cle* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xgene_enet_pdata*, align 8
  %5 = alloca %struct.xgene_enet_cle*, align 8
  %6 = alloca %struct.xgene_cle_ptree*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.xgene_enet_pdata* %0, %struct.xgene_enet_pdata** %4, align 8
  store %struct.xgene_enet_cle* %1, %struct.xgene_enet_cle** %5, align 8
  %12 = load %struct.xgene_enet_cle*, %struct.xgene_enet_cle** %5, align 8
  %13 = getelementptr inbounds %struct.xgene_enet_cle, %struct.xgene_enet_cle* %12, i32 0, i32 0
  store %struct.xgene_cle_ptree* %13, %struct.xgene_cle_ptree** %6, align 8
  %14 = load i32, i32* @CLE_DRAM_REGS, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i64, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = mul nuw i64 8, %15
  %19 = trunc i64 %18 to i32
  %20 = call i32 @memset(i64* %17, i32 0, i32 %19)
  store i64 0, i64* %9, align 8
  br label %21

21:                                               ; preds = %49, %2
  %22 = load i64, i64* %9, align 8
  %23 = load %struct.xgene_cle_ptree*, %struct.xgene_cle_ptree** %6, align 8
  %24 = getelementptr inbounds %struct.xgene_cle_ptree, %struct.xgene_cle_ptree* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ult i64 %22, %25
  br i1 %26, label %27, label %52

27:                                               ; preds = %21
  %28 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %4, align 8
  %29 = load %struct.xgene_cle_ptree*, %struct.xgene_cle_ptree** %6, align 8
  %30 = getelementptr inbounds %struct.xgene_cle_ptree, %struct.xgene_cle_ptree* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* %9, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = call i32 @xgene_cle_dbptr_to_hw(%struct.xgene_enet_pdata* %28, i32* %33, i64* %17)
  %35 = load %struct.xgene_enet_cle*, %struct.xgene_enet_cle** %5, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load %struct.xgene_cle_ptree*, %struct.xgene_cle_ptree** %6, align 8
  %38 = getelementptr inbounds %struct.xgene_cle_ptree, %struct.xgene_cle_ptree* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %36, %39
  %41 = load i32, i32* @DB_RAM, align 4
  %42 = load i32, i32* @CLE_CMD_WR, align 4
  %43 = call i32 @xgene_cle_dram_wr(%struct.xgene_enet_cle* %35, i64* %17, i32 6, i64 %40, i32 %41, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %27
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %53

48:                                               ; preds = %27
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %9, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %9, align 8
  br label %21

52:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %53

53:                                               ; preds = %52, %46
  %54 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %54)
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i64*, i32, i32) #2

declare dso_local i32 @xgene_cle_dbptr_to_hw(%struct.xgene_enet_pdata*, i32*, i64*) #2

declare dso_local i32 @xgene_cle_dram_wr(%struct.xgene_enet_cle*, i64*, i32, i64, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
