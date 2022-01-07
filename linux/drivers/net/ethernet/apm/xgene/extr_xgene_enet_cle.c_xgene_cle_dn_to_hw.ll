; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_cle.c_xgene_cle_dn_to_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_cle.c_xgene_cle_dn_to_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_cle_ptree_ewdn = type { i64, i64, i64, i64, i64, i64, i64, i64, %struct.xgene_cle_ptree_branch* }
%struct.xgene_cle_ptree_branch = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@CLE_DN_TYPE = common dso_local global i32 0, align 4
@CLE_DN_LASTN = common dso_local global i32 0, align 4
@CLE_DN_HLS = common dso_local global i32 0, align 4
@CLE_DN_EXT = common dso_local global i32 0, align 4
@CLE_DN_BSTOR = common dso_local global i32 0, align 4
@CLE_DN_SBSTOR = common dso_local global i32 0, align 4
@CLE_DN_RPTR = common dso_local global i32 0, align 4
@JMP_ABS = common dso_local global i64 0, align 8
@CLE_PKTRAM_SIZE = common dso_local global i64 0, align 8
@CLE_BR_VALID = common dso_local global i32 0, align 4
@CLE_BR_NPPTR = common dso_local global i32 0, align 4
@CLE_BR_JB = common dso_local global i32 0, align 4
@CLE_BR_JR = common dso_local global i32 0, align 4
@CLE_BR_OP = common dso_local global i32 0, align 4
@CLE_BR_NNODE = common dso_local global i32 0, align 4
@CLE_BR_NBR = common dso_local global i32 0, align 4
@CLE_BR_DATA = common dso_local global i32 0, align 4
@CLE_BR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgene_cle_ptree_ewdn*, i64*, i64)* @xgene_cle_dn_to_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_cle_dn_to_hw(%struct.xgene_cle_ptree_ewdn* %0, i64* %1, i64 %2) #0 {
  %4 = alloca %struct.xgene_cle_ptree_ewdn*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.xgene_cle_ptree_branch*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.xgene_cle_ptree_ewdn* %0, %struct.xgene_cle_ptree_ewdn** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %9, align 8
  %11 = load i32, i32* @CLE_DN_TYPE, align 4
  %12 = load %struct.xgene_cle_ptree_ewdn*, %struct.xgene_cle_ptree_ewdn** %4, align 8
  %13 = getelementptr inbounds %struct.xgene_cle_ptree_ewdn, %struct.xgene_cle_ptree_ewdn* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i64 @SET_VAL(i32 %11, i64 %14)
  %16 = load i32, i32* @CLE_DN_LASTN, align 4
  %17 = load %struct.xgene_cle_ptree_ewdn*, %struct.xgene_cle_ptree_ewdn** %4, align 8
  %18 = getelementptr inbounds %struct.xgene_cle_ptree_ewdn, %struct.xgene_cle_ptree_ewdn* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @SET_VAL(i32 %16, i64 %19)
  %21 = or i64 %15, %20
  %22 = load i32, i32* @CLE_DN_HLS, align 4
  %23 = load %struct.xgene_cle_ptree_ewdn*, %struct.xgene_cle_ptree_ewdn** %4, align 8
  %24 = getelementptr inbounds %struct.xgene_cle_ptree_ewdn, %struct.xgene_cle_ptree_ewdn* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @SET_VAL(i32 %22, i64 %25)
  %27 = or i64 %21, %26
  %28 = load i32, i32* @CLE_DN_EXT, align 4
  %29 = load %struct.xgene_cle_ptree_ewdn*, %struct.xgene_cle_ptree_ewdn** %4, align 8
  %30 = getelementptr inbounds %struct.xgene_cle_ptree_ewdn, %struct.xgene_cle_ptree_ewdn* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @SET_VAL(i32 %28, i64 %31)
  %33 = or i64 %27, %32
  %34 = load i32, i32* @CLE_DN_BSTOR, align 4
  %35 = load %struct.xgene_cle_ptree_ewdn*, %struct.xgene_cle_ptree_ewdn** %4, align 8
  %36 = getelementptr inbounds %struct.xgene_cle_ptree_ewdn, %struct.xgene_cle_ptree_ewdn* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @SET_VAL(i32 %34, i64 %37)
  %39 = or i64 %33, %38
  %40 = load i32, i32* @CLE_DN_SBSTOR, align 4
  %41 = load %struct.xgene_cle_ptree_ewdn*, %struct.xgene_cle_ptree_ewdn** %4, align 8
  %42 = getelementptr inbounds %struct.xgene_cle_ptree_ewdn, %struct.xgene_cle_ptree_ewdn* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @SET_VAL(i32 %40, i64 %43)
  %45 = or i64 %39, %44
  %46 = load i32, i32* @CLE_DN_RPTR, align 4
  %47 = load %struct.xgene_cle_ptree_ewdn*, %struct.xgene_cle_ptree_ewdn** %4, align 8
  %48 = getelementptr inbounds %struct.xgene_cle_ptree_ewdn, %struct.xgene_cle_ptree_ewdn* %47, i32 0, i32 6
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @SET_VAL(i32 %46, i64 %49)
  %51 = or i64 %45, %50
  %52 = load i64*, i64** %5, align 8
  %53 = load i64, i64* %9, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %9, align 8
  %55 = getelementptr inbounds i64, i64* %52, i64 %53
  store i64 %51, i64* %55, align 8
  store i64 0, i64* %8, align 8
  br label %56

56:                                               ; preds = %143, %3
  %57 = load i64, i64* %8, align 8
  %58 = load %struct.xgene_cle_ptree_ewdn*, %struct.xgene_cle_ptree_ewdn** %4, align 8
  %59 = getelementptr inbounds %struct.xgene_cle_ptree_ewdn, %struct.xgene_cle_ptree_ewdn* %58, i32 0, i32 7
  %60 = load i64, i64* %59, align 8
  %61 = icmp ult i64 %57, %60
  br i1 %61, label %62, label %146

62:                                               ; preds = %56
  %63 = load %struct.xgene_cle_ptree_ewdn*, %struct.xgene_cle_ptree_ewdn** %4, align 8
  %64 = getelementptr inbounds %struct.xgene_cle_ptree_ewdn, %struct.xgene_cle_ptree_ewdn* %63, i32 0, i32 8
  %65 = load %struct.xgene_cle_ptree_branch*, %struct.xgene_cle_ptree_branch** %64, align 8
  %66 = load i64, i64* %8, align 8
  %67 = getelementptr inbounds %struct.xgene_cle_ptree_branch, %struct.xgene_cle_ptree_branch* %65, i64 %66
  store %struct.xgene_cle_ptree_branch* %67, %struct.xgene_cle_ptree_branch** %7, align 8
  %68 = load %struct.xgene_cle_ptree_branch*, %struct.xgene_cle_ptree_branch** %7, align 8
  %69 = getelementptr inbounds %struct.xgene_cle_ptree_branch, %struct.xgene_cle_ptree_branch* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %10, align 8
  %71 = load %struct.xgene_cle_ptree_branch*, %struct.xgene_cle_ptree_branch** %7, align 8
  %72 = getelementptr inbounds %struct.xgene_cle_ptree_branch, %struct.xgene_cle_ptree_branch* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @JMP_ABS, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %62
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* @CLE_PKTRAM_SIZE, align 8
  %79 = icmp ult i64 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i64, i64* %6, align 8
  %82 = load i64, i64* %10, align 8
  %83 = add i64 %82, %81
  store i64 %83, i64* %10, align 8
  br label %84

84:                                               ; preds = %80, %76, %62
  %85 = load i32, i32* @CLE_BR_VALID, align 4
  %86 = load %struct.xgene_cle_ptree_branch*, %struct.xgene_cle_ptree_branch** %7, align 8
  %87 = getelementptr inbounds %struct.xgene_cle_ptree_branch, %struct.xgene_cle_ptree_branch* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = call i64 @SET_VAL(i32 %85, i64 %88)
  %90 = load i32, i32* @CLE_BR_NPPTR, align 4
  %91 = load i64, i64* %10, align 8
  %92 = call i64 @SET_VAL(i32 %90, i64 %91)
  %93 = or i64 %89, %92
  %94 = load i32, i32* @CLE_BR_JB, align 4
  %95 = load %struct.xgene_cle_ptree_branch*, %struct.xgene_cle_ptree_branch** %7, align 8
  %96 = getelementptr inbounds %struct.xgene_cle_ptree_branch, %struct.xgene_cle_ptree_branch* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = call i64 @SET_VAL(i32 %94, i64 %97)
  %99 = or i64 %93, %98
  %100 = load i32, i32* @CLE_BR_JR, align 4
  %101 = load %struct.xgene_cle_ptree_branch*, %struct.xgene_cle_ptree_branch** %7, align 8
  %102 = getelementptr inbounds %struct.xgene_cle_ptree_branch, %struct.xgene_cle_ptree_branch* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = call i64 @SET_VAL(i32 %100, i64 %103)
  %105 = or i64 %99, %104
  %106 = load i32, i32* @CLE_BR_OP, align 4
  %107 = load %struct.xgene_cle_ptree_branch*, %struct.xgene_cle_ptree_branch** %7, align 8
  %108 = getelementptr inbounds %struct.xgene_cle_ptree_branch, %struct.xgene_cle_ptree_branch* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = call i64 @SET_VAL(i32 %106, i64 %109)
  %111 = or i64 %105, %110
  %112 = load i32, i32* @CLE_BR_NNODE, align 4
  %113 = load %struct.xgene_cle_ptree_branch*, %struct.xgene_cle_ptree_branch** %7, align 8
  %114 = getelementptr inbounds %struct.xgene_cle_ptree_branch, %struct.xgene_cle_ptree_branch* %113, i32 0, i32 5
  %115 = load i64, i64* %114, align 8
  %116 = call i64 @SET_VAL(i32 %112, i64 %115)
  %117 = or i64 %111, %116
  %118 = load i32, i32* @CLE_BR_NBR, align 4
  %119 = load %struct.xgene_cle_ptree_branch*, %struct.xgene_cle_ptree_branch** %7, align 8
  %120 = getelementptr inbounds %struct.xgene_cle_ptree_branch, %struct.xgene_cle_ptree_branch* %119, i32 0, i32 6
  %121 = load i64, i64* %120, align 8
  %122 = call i64 @SET_VAL(i32 %118, i64 %121)
  %123 = or i64 %117, %122
  %124 = load i64*, i64** %5, align 8
  %125 = load i64, i64* %9, align 8
  %126 = add i64 %125, 1
  store i64 %126, i64* %9, align 8
  %127 = getelementptr inbounds i64, i64* %124, i64 %125
  store i64 %123, i64* %127, align 8
  %128 = load i32, i32* @CLE_BR_DATA, align 4
  %129 = load %struct.xgene_cle_ptree_branch*, %struct.xgene_cle_ptree_branch** %7, align 8
  %130 = getelementptr inbounds %struct.xgene_cle_ptree_branch, %struct.xgene_cle_ptree_branch* %129, i32 0, i32 7
  %131 = load i64, i64* %130, align 8
  %132 = call i64 @SET_VAL(i32 %128, i64 %131)
  %133 = load i32, i32* @CLE_BR_MASK, align 4
  %134 = load %struct.xgene_cle_ptree_branch*, %struct.xgene_cle_ptree_branch** %7, align 8
  %135 = getelementptr inbounds %struct.xgene_cle_ptree_branch, %struct.xgene_cle_ptree_branch* %134, i32 0, i32 8
  %136 = load i64, i64* %135, align 8
  %137 = call i64 @SET_VAL(i32 %133, i64 %136)
  %138 = or i64 %132, %137
  %139 = load i64*, i64** %5, align 8
  %140 = load i64, i64* %9, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %9, align 8
  %142 = getelementptr inbounds i64, i64* %139, i64 %140
  store i64 %138, i64* %142, align 8
  br label %143

143:                                              ; preds = %84
  %144 = load i64, i64* %8, align 8
  %145 = add i64 %144, 1
  store i64 %145, i64* %8, align 8
  br label %56

146:                                              ; preds = %56
  ret void
}

declare dso_local i64 @SET_VAL(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
