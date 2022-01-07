; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_cle.c_xgene_cle_kn_to_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_cle.c_xgene_cle_kn_to_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_cle_ptree_kn = type { i64, %struct.xgene_cle_ptree_key*, i32 }
%struct.xgene_cle_ptree_key = type { i32, i32 }

@CLE_TYPE = common dso_local global i32 0, align 4
@CLE_KN_PRIO = common dso_local global i32 0, align 4
@CLE_KN_RPTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgene_cle_ptree_kn*, i64*)* @xgene_cle_kn_to_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_cle_kn_to_hw(%struct.xgene_cle_ptree_kn* %0, i64* %1) #0 {
  %3 = alloca %struct.xgene_cle_ptree_kn*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.xgene_cle_ptree_key*, align 8
  store %struct.xgene_cle_ptree_kn* %0, %struct.xgene_cle_ptree_kn** %3, align 8
  store i64* %1, i64** %4, align 8
  store i64 0, i64* %6, align 8
  %9 = load i32, i32* @CLE_TYPE, align 4
  %10 = load %struct.xgene_cle_ptree_kn*, %struct.xgene_cle_ptree_kn** %3, align 8
  %11 = getelementptr inbounds %struct.xgene_cle_ptree_kn, %struct.xgene_cle_ptree_kn* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @SET_VAL(i32 %9, i32 %12)
  %14 = load i64*, i64** %4, align 8
  %15 = load i64, i64* %6, align 8
  %16 = add i64 %15, 1
  store i64 %16, i64* %6, align 8
  %17 = getelementptr inbounds i64, i64* %14, i64 %15
  store i64 %13, i64* %17, align 8
  store i64 0, i64* %5, align 8
  br label %18

18:                                               ; preds = %69, %2
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.xgene_cle_ptree_kn*, %struct.xgene_cle_ptree_kn** %3, align 8
  %21 = getelementptr inbounds %struct.xgene_cle_ptree_kn, %struct.xgene_cle_ptree_kn* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ult i64 %19, %22
  br i1 %23, label %24, label %72

24:                                               ; preds = %18
  %25 = load %struct.xgene_cle_ptree_kn*, %struct.xgene_cle_ptree_kn** %3, align 8
  %26 = getelementptr inbounds %struct.xgene_cle_ptree_kn, %struct.xgene_cle_ptree_kn* %25, i32 0, i32 1
  %27 = load %struct.xgene_cle_ptree_key*, %struct.xgene_cle_ptree_key** %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds %struct.xgene_cle_ptree_key, %struct.xgene_cle_ptree_key* %27, i64 %28
  store %struct.xgene_cle_ptree_key* %29, %struct.xgene_cle_ptree_key** %8, align 8
  %30 = load i64, i64* %5, align 8
  %31 = urem i64 %30, 2
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %48, label %33

33:                                               ; preds = %24
  %34 = load i32, i32* @CLE_KN_PRIO, align 4
  %35 = load %struct.xgene_cle_ptree_key*, %struct.xgene_cle_ptree_key** %8, align 8
  %36 = getelementptr inbounds %struct.xgene_cle_ptree_key, %struct.xgene_cle_ptree_key* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @SET_VAL(i32 %34, i32 %37)
  %39 = load i32, i32* @CLE_KN_RPTR, align 4
  %40 = load %struct.xgene_cle_ptree_key*, %struct.xgene_cle_ptree_key** %8, align 8
  %41 = getelementptr inbounds %struct.xgene_cle_ptree_key, %struct.xgene_cle_ptree_key* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @SET_VAL(i32 %39, i32 %42)
  %44 = or i64 %38, %43
  %45 = load i64*, i64** %4, align 8
  %46 = load i64, i64* %6, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  store i64 %44, i64* %47, align 8
  br label %68

48:                                               ; preds = %24
  %49 = load i32, i32* @CLE_KN_PRIO, align 4
  %50 = load %struct.xgene_cle_ptree_key*, %struct.xgene_cle_ptree_key** %8, align 8
  %51 = getelementptr inbounds %struct.xgene_cle_ptree_key, %struct.xgene_cle_ptree_key* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @SET_VAL(i32 %49, i32 %52)
  %54 = load i32, i32* @CLE_KN_RPTR, align 4
  %55 = load %struct.xgene_cle_ptree_key*, %struct.xgene_cle_ptree_key** %8, align 8
  %56 = getelementptr inbounds %struct.xgene_cle_ptree_key, %struct.xgene_cle_ptree_key* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @SET_VAL(i32 %54, i32 %57)
  %59 = or i64 %53, %58
  store i64 %59, i64* %7, align 8
  %60 = load i64, i64* %7, align 8
  %61 = shl i64 %60, 16
  %62 = load i64*, i64** %4, align 8
  %63 = load i64, i64* %6, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %6, align 8
  %65 = getelementptr inbounds i64, i64* %62, i64 %63
  %66 = load i64, i64* %65, align 8
  %67 = or i64 %66, %61
  store i64 %67, i64* %65, align 8
  br label %68

68:                                               ; preds = %48, %33
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %5, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %5, align 8
  br label %18

72:                                               ; preds = %18
  ret void
}

declare dso_local i64 @SET_VAL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
