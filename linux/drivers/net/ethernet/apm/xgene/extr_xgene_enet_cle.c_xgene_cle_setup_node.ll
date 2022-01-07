; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_cle.c_xgene_cle_setup_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_cle.c_xgene_cle_setup_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_cle_ptree_ewdn = type { i32 }
%struct.xgene_enet_pdata = type { i32 }
%struct.xgene_enet_cle = type { i32, %struct.xgene_cle_ptree }
%struct.xgene_cle_ptree = type { i32, i64, %struct.xgene_cle_ptree_kn* }
%struct.xgene_cle_ptree_kn = type { i32 }

@xgene_init_ptree_dn = common dso_local global %struct.xgene_cle_ptree_ewdn* null, align 8
@CLE_DRAM_REGS = common dso_local global i32 0, align 4
@PTREE_RAM = common dso_local global i32 0, align 4
@CLE_CMD_WR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgene_enet_pdata*, %struct.xgene_enet_cle*)* @xgene_cle_setup_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_cle_setup_node(%struct.xgene_enet_pdata* %0, %struct.xgene_enet_cle* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xgene_enet_pdata*, align 8
  %5 = alloca %struct.xgene_enet_cle*, align 8
  %6 = alloca %struct.xgene_cle_ptree*, align 8
  %7 = alloca %struct.xgene_cle_ptree_ewdn*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.xgene_cle_ptree_kn*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.xgene_enet_pdata* %0, %struct.xgene_enet_pdata** %4, align 8
  store %struct.xgene_enet_cle* %1, %struct.xgene_enet_cle** %5, align 8
  %16 = load %struct.xgene_enet_cle*, %struct.xgene_enet_cle** %5, align 8
  %17 = getelementptr inbounds %struct.xgene_enet_cle, %struct.xgene_enet_cle* %16, i32 0, i32 1
  store %struct.xgene_cle_ptree* %17, %struct.xgene_cle_ptree** %6, align 8
  %18 = load %struct.xgene_cle_ptree_ewdn*, %struct.xgene_cle_ptree_ewdn** @xgene_init_ptree_dn, align 8
  store %struct.xgene_cle_ptree_ewdn* %18, %struct.xgene_cle_ptree_ewdn** %7, align 8
  %19 = load %struct.xgene_cle_ptree_ewdn*, %struct.xgene_cle_ptree_ewdn** @xgene_init_ptree_dn, align 8
  %20 = call i32 @ARRAY_SIZE(%struct.xgene_cle_ptree_ewdn* %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.xgene_cle_ptree*, %struct.xgene_cle_ptree** %6, align 8
  %22 = getelementptr inbounds %struct.xgene_cle_ptree, %struct.xgene_cle_ptree* %21, i32 0, i32 2
  %23 = load %struct.xgene_cle_ptree_kn*, %struct.xgene_cle_ptree_kn** %22, align 8
  store %struct.xgene_cle_ptree_kn* %23, %struct.xgene_cle_ptree_kn** %9, align 8
  %24 = load i32, i32* @CLE_DRAM_REGS, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %10, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %11, align 8
  %28 = mul nuw i64 4, %25
  %29 = trunc i64 %28 to i32
  %30 = call i32 @memset(i32* %27, i32 0, i32 %29)
  store i32 0, i32* %12, align 4
  br label %31

31:                                               ; preds = %59, %2
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %62

35:                                               ; preds = %31
  %36 = load %struct.xgene_cle_ptree_ewdn*, %struct.xgene_cle_ptree_ewdn** %7, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.xgene_cle_ptree_ewdn, %struct.xgene_cle_ptree_ewdn* %36, i64 %38
  %40 = load %struct.xgene_enet_cle*, %struct.xgene_enet_cle** %5, align 8
  %41 = getelementptr inbounds %struct.xgene_enet_cle, %struct.xgene_enet_cle* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @xgene_cle_dn_to_hw(%struct.xgene_cle_ptree_ewdn* %39, i32* %27, i32 %42)
  %44 = load %struct.xgene_enet_cle*, %struct.xgene_enet_cle** %5, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = load %struct.xgene_cle_ptree*, %struct.xgene_cle_ptree** %6, align 8
  %48 = getelementptr inbounds %struct.xgene_cle_ptree, %struct.xgene_cle_ptree* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  %51 = load i32, i32* @PTREE_RAM, align 4
  %52 = load i32, i32* @CLE_CMD_WR, align 4
  %53 = call i32 @xgene_cle_dram_wr(%struct.xgene_enet_cle* %44, i32* %27, i32 17, i64 %50, i32 %51, i32 %52)
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %35
  %57 = load i32, i32* %14, align 4
  store i32 %57, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %102

58:                                               ; preds = %35
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %12, align 4
  br label %31

62:                                               ; preds = %31
  %63 = mul nuw i64 4, %25
  %64 = trunc i64 %63 to i32
  %65 = call i32 @memset(i32* %27, i32 0, i32 %64)
  %66 = load i32, i32* %12, align 4
  store i32 %66, i32* %13, align 4
  br label %67

67:                                               ; preds = %98, %62
  %68 = load i32, i32* %13, align 4
  %69 = load %struct.xgene_cle_ptree*, %struct.xgene_cle_ptree** %6, align 8
  %70 = getelementptr inbounds %struct.xgene_cle_ptree, %struct.xgene_cle_ptree* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %71, %72
  %74 = icmp slt i32 %68, %73
  br i1 %74, label %75, label %101

75:                                               ; preds = %67
  %76 = load %struct.xgene_cle_ptree_kn*, %struct.xgene_cle_ptree_kn** %9, align 8
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %8, align 4
  %79 = sub nsw i32 %77, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.xgene_cle_ptree_kn, %struct.xgene_cle_ptree_kn* %76, i64 %80
  %82 = call i32 @xgene_cle_kn_to_hw(%struct.xgene_cle_ptree_kn* %81, i32* %27)
  %83 = load %struct.xgene_enet_cle*, %struct.xgene_enet_cle** %5, align 8
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = load %struct.xgene_cle_ptree*, %struct.xgene_cle_ptree** %6, align 8
  %87 = getelementptr inbounds %struct.xgene_cle_ptree, %struct.xgene_cle_ptree* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %85, %88
  %90 = load i32, i32* @PTREE_RAM, align 4
  %91 = load i32, i32* @CLE_CMD_WR, align 4
  %92 = call i32 @xgene_cle_dram_wr(%struct.xgene_enet_cle* %83, i32* %27, i32 17, i64 %89, i32 %90, i32 %91)
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %14, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %75
  %96 = load i32, i32* %14, align 4
  store i32 %96, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %102

97:                                               ; preds = %75
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %13, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %13, align 4
  br label %67

101:                                              ; preds = %67
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %102

102:                                              ; preds = %101, %95, %56
  %103 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %103)
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @ARRAY_SIZE(%struct.xgene_cle_ptree_ewdn*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @xgene_cle_dn_to_hw(%struct.xgene_cle_ptree_ewdn*, i32*, i32) #1

declare dso_local i32 @xgene_cle_dram_wr(%struct.xgene_enet_cle*, i32*, i32, i64, i32, i32) #1

declare dso_local i32 @xgene_cle_kn_to_hw(%struct.xgene_cle_ptree_kn*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
