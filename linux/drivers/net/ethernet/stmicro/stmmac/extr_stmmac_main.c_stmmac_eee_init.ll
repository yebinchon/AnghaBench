; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_eee_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_eee_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_priv = type { i32, i32, i32, %struct.TYPE_4__*, i32, i64, i64, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@STMMAC_PCS_RGMII = common dso_local global i64 0, align 8
@STMMAC_PCS_TBI = common dso_local global i64 0, align 8
@STMMAC_PCS_RTBI = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"disable EEE\0A\00", align 1
@stmmac_eee_ctrl_timer = common dso_local global i32 0, align 4
@eee_timer = common dso_local global i32 0, align 4
@STMMAC_DEFAULT_LIT_LS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Energy-Efficient Ethernet initialized\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stmmac_eee_init(%struct.stmmac_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stmmac_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %3, align 8
  %5 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %6 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %4, align 4
  %8 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %9 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %8, i32 0, i32 3
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @STMMAC_PCS_RGMII, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %31, label %15

15:                                               ; preds = %1
  %16 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %17 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %16, i32 0, i32 3
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @STMMAC_PCS_TBI, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %31, label %23

23:                                               ; preds = %15
  %24 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %25 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %24, i32 0, i32 3
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @STMMAC_PCS_RTBI, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23, %15, %1
  store i32 0, i32* %2, align 4
  br label %105

32:                                               ; preds = %23
  %33 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %34 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %33, i32 0, i32 7
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %105

39:                                               ; preds = %32
  %40 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %41 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %40, i32 0, i32 2
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %44 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %43, i32 0, i32 6
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %70, label %47

47:                                               ; preds = %39
  %48 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %49 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %48, i32 0, i32 5
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %47
  %53 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %54 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @netdev_dbg(i32 %55, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %57 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %58 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %57, i32 0, i32 4
  %59 = call i32 @del_timer_sync(i32* %58)
  %60 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %61 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %62 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %61, i32 0, i32 3
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @stmmac_set_eee_timer(%struct.stmmac_priv* %60, %struct.TYPE_4__* %63, i32 0, i32 %64)
  br label %66

66:                                               ; preds = %52, %47
  %67 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %68 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %67, i32 0, i32 2
  %69 = call i32 @mutex_unlock(i32* %68)
  store i32 0, i32* %2, align 4
  br label %105

70:                                               ; preds = %39
  %71 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %72 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %71, i32 0, i32 6
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %97

75:                                               ; preds = %70
  %76 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %77 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %76, i32 0, i32 5
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %97, label %80

80:                                               ; preds = %75
  %81 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %82 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %81, i32 0, i32 4
  %83 = load i32, i32* @stmmac_eee_ctrl_timer, align 4
  %84 = call i32 @timer_setup(i32* %82, i32 %83, i32 0)
  %85 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %86 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %85, i32 0, i32 4
  %87 = load i32, i32* @eee_timer, align 4
  %88 = call i32 @STMMAC_LPI_T(i32 %87)
  %89 = call i32 @mod_timer(i32* %86, i32 %88)
  %90 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %91 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %92 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %91, i32 0, i32 3
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = load i32, i32* @STMMAC_DEFAULT_LIT_LS, align 4
  %95 = load i32, i32* %4, align 4
  %96 = call i32 @stmmac_set_eee_timer(%struct.stmmac_priv* %90, %struct.TYPE_4__* %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %80, %75, %70
  %98 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %99 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %98, i32 0, i32 2
  %100 = call i32 @mutex_unlock(i32* %99)
  %101 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %102 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @netdev_dbg(i32 %103, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %105

105:                                              ; preds = %97, %66, %38, %31
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @netdev_dbg(i32, i8*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @stmmac_set_eee_timer(%struct.stmmac_priv*, %struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @STMMAC_LPI_T(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
