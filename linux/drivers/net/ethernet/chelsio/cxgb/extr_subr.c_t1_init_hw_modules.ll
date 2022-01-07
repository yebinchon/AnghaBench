; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_subr.c_t1_init_hw_modules.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_subr.c_t1_init_hw_modules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, i32, i64, i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.board_info = type { i32, i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@A_MC4_CFG = common dso_local global i64 0, align 8
@F_READY = common dso_local global i32 0, align 4
@F_MC4_SLOW = common dso_local global i32 0, align 4
@F_M_BUS_ENABLE = common dso_local global i32 0, align 4
@F_TCAM_RESET = common dso_local global i32 0, align 4
@A_MC5_CONFIG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t1_init_hw_modules(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.board_info*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %6 = load i32, i32* @EIO, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %3, align 4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %9 = call %struct.board_info* @board_info(%struct.TYPE_6__* %8)
  store %struct.board_info* %9, %struct.board_info** %4, align 8
  %10 = load %struct.board_info*, %struct.board_info** %4, align 8
  %11 = getelementptr inbounds %struct.board_info, %struct.board_info* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %41, label %14

14:                                               ; preds = %1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @A_MC4_CFG, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl(i64 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @F_READY, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @F_MC4_SLOW, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @A_MC4_CFG, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel(i32 %25, i64 %30)
  %32 = load i32, i32* @F_M_BUS_ENABLE, align 4
  %33 = load i32, i32* @F_TCAM_RESET, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @A_MC5_CONFIG, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writel(i32 %34, i64 %39)
  br label %41

41:                                               ; preds = %14, %1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %41
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.board_info*, %struct.board_info** %4, align 8
  %51 = getelementptr inbounds %struct.board_info, %struct.board_info* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.board_info*, %struct.board_info** %4, align 8
  %54 = getelementptr inbounds %struct.board_info, %struct.board_info* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @t1_espi_init(i64 %49, i32 %52, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %46
  br label %84

59:                                               ; preds = %46, %41
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load %struct.board_info*, %struct.board_info** %4, align 8
  %67 = getelementptr inbounds %struct.board_info, %struct.board_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @t1_tp_reset(i32 %62, i32* %65, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %59
  br label %84

72:                                               ; preds = %59
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = call i32 @t1_sge_configure(i32 %75, i32* %78)
  store i32 %79, i32* %3, align 4
  %80 = load i32, i32* %3, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %72
  br label %84

83:                                               ; preds = %72
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %82, %71, %58
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.board_info* @board_info(%struct.TYPE_6__*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @t1_espi_init(i64, i32, i32) #1

declare dso_local i64 @t1_tp_reset(i32, i32*, i32) #1

declare dso_local i32 @t1_sge_configure(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
