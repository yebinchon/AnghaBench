; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11n_rxreorder.c_mwifiex_coex_ampdu_rxwinsize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11n_rxreorder.c_mwifiex_coex_ampdu_rxwinsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i64, %struct.mwifiex_private** }
%struct.mwifiex_private = type { i64, i64 }

@MWIFIEX_BSS_ROLE_STA = common dso_local global i64 0, align 8
@MWIFIEX_BSS_ROLE_UAP = common dso_local global i64 0, align 8
@MWIFIEX_BSS_COEX_COUNT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mwifiex_coex_ampdu_rxwinsize(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca %struct.mwifiex_adapter*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca i64, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %2, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %3, align 8
  br label %6

6:                                                ; preds = %61, %1
  %7 = load i64, i64* %3, align 8
  %8 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ult i64 %7, %10
  br i1 %11, label %12, label %64

12:                                               ; preds = %6
  %13 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %13, i32 0, i32 1
  %15 = load %struct.mwifiex_private**, %struct.mwifiex_private*** %14, align 8
  %16 = load i64, i64* %3, align 8
  %17 = getelementptr inbounds %struct.mwifiex_private*, %struct.mwifiex_private** %15, i64 %16
  %18 = load %struct.mwifiex_private*, %struct.mwifiex_private** %17, align 8
  %19 = icmp ne %struct.mwifiex_private* %18, null
  br i1 %19, label %20, label %55

20:                                               ; preds = %12
  %21 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %22 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %21, i32 0, i32 1
  %23 = load %struct.mwifiex_private**, %struct.mwifiex_private*** %22, align 8
  %24 = load i64, i64* %3, align 8
  %25 = getelementptr inbounds %struct.mwifiex_private*, %struct.mwifiex_private** %23, i64 %24
  %26 = load %struct.mwifiex_private*, %struct.mwifiex_private** %25, align 8
  store %struct.mwifiex_private* %26, %struct.mwifiex_private** %4, align 8
  %27 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %28 = call i64 @GET_BSS_ROLE(%struct.mwifiex_private* %27)
  %29 = load i64, i64* @MWIFIEX_BSS_ROLE_STA, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %20
  %32 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %33 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i64, i64* %5, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %5, align 8
  br label %39

39:                                               ; preds = %36, %31
  br label %40

40:                                               ; preds = %39, %20
  %41 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %42 = call i64 @GET_BSS_ROLE(%struct.mwifiex_private* %41)
  %43 = load i64, i64* @MWIFIEX_BSS_ROLE_UAP, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %40
  %46 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %47 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i64, i64* %5, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %5, align 8
  br label %53

53:                                               ; preds = %50, %45
  br label %54

54:                                               ; preds = %53, %40
  br label %55

55:                                               ; preds = %54, %12
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* @MWIFIEX_BSS_COEX_COUNT, align 8
  %58 = icmp uge i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %64

60:                                               ; preds = %55
  br label %61

61:                                               ; preds = %60
  %62 = load i64, i64* %3, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %3, align 8
  br label %6

64:                                               ; preds = %59, %6
  %65 = load i64, i64* %5, align 8
  %66 = load i64, i64* @MWIFIEX_BSS_COEX_COUNT, align 8
  %67 = icmp uge i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %70 = call i32 @mwifiex_update_ampdu_rxwinsize(%struct.mwifiex_adapter* %69, i32 1)
  br label %74

71:                                               ; preds = %64
  %72 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %73 = call i32 @mwifiex_update_ampdu_rxwinsize(%struct.mwifiex_adapter* %72, i32 0)
  br label %74

74:                                               ; preds = %71, %68
  ret void
}

declare dso_local i64 @GET_BSS_ROLE(%struct.mwifiex_private*) #1

declare dso_local i32 @mwifiex_update_ampdu_rxwinsize(%struct.mwifiex_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
