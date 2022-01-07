; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac5.c_dwmac5_rxp_get_next_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac5.c_dwmac5_rxp_get_next_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_tc_entry = type { i64, i64, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.stmmac_tc_entry* (%struct.stmmac_tc_entry*, i32, i64)* @dwmac5_rxp_get_next_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.stmmac_tc_entry* @dwmac5_rxp_get_next_entry(%struct.stmmac_tc_entry* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.stmmac_tc_entry*, align 8
  %5 = alloca %struct.stmmac_tc_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.stmmac_tc_entry*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.stmmac_tc_entry* %0, %struct.stmmac_tc_entry** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 -1, i64* %9, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %6, align 4
  %14 = sub i32 %13, 1
  store i32 %14, i32* %10, align 4
  br label %15

15:                                               ; preds = %65, %3
  %16 = load i32, i32* %10, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %68

18:                                               ; preds = %15
  %19 = load %struct.stmmac_tc_entry*, %struct.stmmac_tc_entry** %5, align 8
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.stmmac_tc_entry, %struct.stmmac_tc_entry* %19, i64 %21
  store %struct.stmmac_tc_entry* %22, %struct.stmmac_tc_entry** %8, align 8
  %23 = load %struct.stmmac_tc_entry*, %struct.stmmac_tc_entry** %8, align 8
  %24 = getelementptr inbounds %struct.stmmac_tc_entry, %struct.stmmac_tc_entry* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %18
  br label %65

28:                                               ; preds = %18
  %29 = load %struct.stmmac_tc_entry*, %struct.stmmac_tc_entry** %8, align 8
  %30 = getelementptr inbounds %struct.stmmac_tc_entry, %struct.stmmac_tc_entry* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %65

34:                                               ; preds = %28
  %35 = load %struct.stmmac_tc_entry*, %struct.stmmac_tc_entry** %8, align 8
  %36 = getelementptr inbounds %struct.stmmac_tc_entry, %struct.stmmac_tc_entry* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %65

40:                                               ; preds = %34
  %41 = load %struct.stmmac_tc_entry*, %struct.stmmac_tc_entry** %8, align 8
  %42 = getelementptr inbounds %struct.stmmac_tc_entry, %struct.stmmac_tc_entry* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %65

46:                                               ; preds = %40
  %47 = load %struct.stmmac_tc_entry*, %struct.stmmac_tc_entry** %8, align 8
  %48 = getelementptr inbounds %struct.stmmac_tc_entry, %struct.stmmac_tc_entry* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %65

53:                                               ; preds = %46
  %54 = load %struct.stmmac_tc_entry*, %struct.stmmac_tc_entry** %8, align 8
  %55 = getelementptr inbounds %struct.stmmac_tc_entry, %struct.stmmac_tc_entry* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %9, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = load %struct.stmmac_tc_entry*, %struct.stmmac_tc_entry** %8, align 8
  %61 = getelementptr inbounds %struct.stmmac_tc_entry, %struct.stmmac_tc_entry* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %9, align 8
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %64

64:                                               ; preds = %59, %53
  br label %65

65:                                               ; preds = %64, %52, %45, %39, %33, %27
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %10, align 4
  br label %15

68:                                               ; preds = %15
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load %struct.stmmac_tc_entry*, %struct.stmmac_tc_entry** %5, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.stmmac_tc_entry, %struct.stmmac_tc_entry* %72, i64 %74
  store %struct.stmmac_tc_entry* %75, %struct.stmmac_tc_entry** %4, align 8
  br label %77

76:                                               ; preds = %68
  store %struct.stmmac_tc_entry* null, %struct.stmmac_tc_entry** %4, align 8
  br label %77

77:                                               ; preds = %76, %71
  %78 = load %struct.stmmac_tc_entry*, %struct.stmmac_tc_entry** %4, align 8
  ret %struct.stmmac_tc_entry* %78
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
