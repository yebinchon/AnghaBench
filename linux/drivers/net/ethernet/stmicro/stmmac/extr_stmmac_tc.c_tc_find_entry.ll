; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_tc.c_tc_find_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_tc.c_tc_find_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_tc_entry = type { i32, i64, i32, i32 }
%struct.stmmac_priv = type { i32, %struct.stmmac_tc_entry* }
%struct.tc_cls_u32_offload = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.stmmac_tc_entry* (%struct.stmmac_priv*, %struct.tc_cls_u32_offload*, i32)* @tc_find_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.stmmac_tc_entry* @tc_find_entry(%struct.stmmac_priv* %0, %struct.tc_cls_u32_offload* %1, i32 %2) #0 {
  %4 = alloca %struct.stmmac_tc_entry*, align 8
  %5 = alloca %struct.stmmac_priv*, align 8
  %6 = alloca %struct.tc_cls_u32_offload*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.stmmac_tc_entry*, align 8
  %9 = alloca %struct.stmmac_tc_entry*, align 8
  %10 = alloca %struct.stmmac_tc_entry*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %5, align 8
  store %struct.tc_cls_u32_offload* %1, %struct.tc_cls_u32_offload** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.stmmac_tc_entry* null, %struct.stmmac_tc_entry** %9, align 8
  store %struct.stmmac_tc_entry* null, %struct.stmmac_tc_entry** %10, align 8
  %13 = load %struct.tc_cls_u32_offload*, %struct.tc_cls_u32_offload** %6, align 8
  %14 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %11, align 8
  store i32 0, i32* %12, align 4
  br label %17

17:                                               ; preds = %59, %3
  %18 = load i32, i32* %12, align 4
  %19 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %20 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %62

23:                                               ; preds = %17
  %24 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %25 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %24, i32 0, i32 1
  %26 = load %struct.stmmac_tc_entry*, %struct.stmmac_tc_entry** %25, align 8
  %27 = load i32, i32* %12, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.stmmac_tc_entry, %struct.stmmac_tc_entry* %26, i64 %28
  store %struct.stmmac_tc_entry* %29, %struct.stmmac_tc_entry** %8, align 8
  %30 = load %struct.stmmac_tc_entry*, %struct.stmmac_tc_entry** %8, align 8
  %31 = getelementptr inbounds %struct.stmmac_tc_entry, %struct.stmmac_tc_entry* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %23
  %35 = load %struct.stmmac_tc_entry*, %struct.stmmac_tc_entry** %9, align 8
  %36 = icmp ne %struct.stmmac_tc_entry* %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load %struct.stmmac_tc_entry*, %struct.stmmac_tc_entry** %8, align 8
  store %struct.stmmac_tc_entry* %41, %struct.stmmac_tc_entry** %9, align 8
  br label %42

42:                                               ; preds = %40, %37, %34, %23
  %43 = load %struct.stmmac_tc_entry*, %struct.stmmac_tc_entry** %8, align 8
  %44 = getelementptr inbounds %struct.stmmac_tc_entry, %struct.stmmac_tc_entry* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %11, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %42
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %48
  %52 = load %struct.stmmac_tc_entry*, %struct.stmmac_tc_entry** %8, align 8
  %53 = getelementptr inbounds %struct.stmmac_tc_entry, %struct.stmmac_tc_entry* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %51
  %57 = load %struct.stmmac_tc_entry*, %struct.stmmac_tc_entry** %8, align 8
  store %struct.stmmac_tc_entry* %57, %struct.stmmac_tc_entry** %10, align 8
  br label %58

58:                                               ; preds = %56, %51, %48, %42
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %12, align 4
  br label %17

62:                                               ; preds = %17
  %63 = load %struct.stmmac_tc_entry*, %struct.stmmac_tc_entry** %10, align 8
  %64 = icmp ne %struct.stmmac_tc_entry* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load %struct.stmmac_tc_entry*, %struct.stmmac_tc_entry** %10, align 8
  store %struct.stmmac_tc_entry* %66, %struct.stmmac_tc_entry** %4, align 8
  br label %81

67:                                               ; preds = %62
  %68 = load %struct.stmmac_tc_entry*, %struct.stmmac_tc_entry** %9, align 8
  %69 = icmp ne %struct.stmmac_tc_entry* %68, null
  br i1 %69, label %70, label %79

70:                                               ; preds = %67
  %71 = load i64, i64* %11, align 8
  %72 = load %struct.stmmac_tc_entry*, %struct.stmmac_tc_entry** %9, align 8
  %73 = getelementptr inbounds %struct.stmmac_tc_entry, %struct.stmmac_tc_entry* %72, i32 0, i32 1
  store i64 %71, i64* %73, align 8
  %74 = load %struct.stmmac_tc_entry*, %struct.stmmac_tc_entry** %9, align 8
  %75 = getelementptr inbounds %struct.stmmac_tc_entry, %struct.stmmac_tc_entry* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  %76 = load %struct.stmmac_tc_entry*, %struct.stmmac_tc_entry** %9, align 8
  %77 = getelementptr inbounds %struct.stmmac_tc_entry, %struct.stmmac_tc_entry* %76, i32 0, i32 2
  %78 = call i32 @memset(i32* %77, i32 0, i32 4)
  br label %79

79:                                               ; preds = %70, %67
  %80 = load %struct.stmmac_tc_entry*, %struct.stmmac_tc_entry** %9, align 8
  store %struct.stmmac_tc_entry* %80, %struct.stmmac_tc_entry** %4, align 8
  br label %81

81:                                               ; preds = %79, %65
  %82 = load %struct.stmmac_tc_entry*, %struct.stmmac_tc_entry** %4, align 8
  ret %struct.stmmac_tc_entry* %82
}

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
