; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_config_tc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_config_tc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i64, i32, i64*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32* }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"TC%u using TXq%u-%u\0A\00", align 1
@IEEE_8021QAZ_MAX_TCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*)* @xgbe_config_tc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_config_tc(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %7 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %8 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @netdev_reset_tc(i32 %9)
  %11 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %12 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %105

16:                                               ; preds = %1
  %17 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %18 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %21 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @netdev_set_num_tc(i32 %19, i64 %22)
  store i64 0, i64* %6, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %73, %16
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %27 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %25, %28
  br i1 %29, label %30, label %76

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %49, %30
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %34 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp ult i32 %32, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %31
  %38 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %39 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %38, i32 0, i32 2
  %40 = load i64*, i64** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %6, align 8
  %46 = icmp eq i64 %44, %45
  br label %47

47:                                               ; preds = %37, %31
  %48 = phi i1 [ false, %31 ], [ %46, %37 ]
  br i1 %48, label %49, label %52

49:                                               ; preds = %47
  %50 = load i32, i32* %4, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %31

52:                                               ; preds = %47
  %53 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %54 = load i32, i32* @drv, align 4
  %55 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %56 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* %4, align 4
  %61 = sub i32 %60, 1
  %62 = call i32 @netif_dbg(%struct.xgbe_prv_data* %53, i32 %54, i32 %57, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %58, i32 %59, i32 %61)
  %63 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %64 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load i64, i64* %6, align 8
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* %3, align 4
  %69 = sub i32 %67, %68
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @netdev_set_tc_queue(i32 %65, i64 %66, i32 %69, i32 %70)
  %72 = load i32, i32* %4, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %52
  %74 = load i64, i64* %6, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* %6, align 8
  br label %24

76:                                               ; preds = %24
  %77 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %78 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %77, i32 0, i32 3
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = icmp ne %struct.TYPE_2__* %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %76
  br label %105

82:                                               ; preds = %76
  store i32 0, i32* %5, align 4
  br label %83

83:                                               ; preds = %102, %82
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @IEEE_8021QAZ_MAX_TCS, align 4
  %86 = icmp ult i32 %84, %85
  br i1 %86, label %87, label %105

87:                                               ; preds = %83
  %88 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %89 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %5, align 4
  %92 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %93 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %92, i32 0, i32 3
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @netdev_set_prio_tc_map(i32 %90, i32 %91, i32 %100)
  br label %102

102:                                              ; preds = %87
  %103 = load i32, i32* %5, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %5, align 4
  br label %83

105:                                              ; preds = %15, %81, %83
  ret void
}

declare dso_local i32 @netdev_reset_tc(i32) #1

declare dso_local i32 @netdev_set_num_tc(i32, i64) #1

declare dso_local i32 @netif_dbg(%struct.xgbe_prv_data*, i32, i32, i8*, i64, i32, i32) #1

declare dso_local i32 @netdev_set_tc_queue(i32, i64, i32, i32) #1

declare dso_local i32 @netdev_set_prio_tc_map(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
