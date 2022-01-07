; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw_ale.c_cpsw_ale_control_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw_ale.c_cpsw_ale_control_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ale_control_info = type { i32, i32, i32, i32, i32 }
%struct.cpsw_ale = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@ale_controls = common dso_local global %struct.ale_control_info* null, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpsw_ale_control_get(%struct.cpsw_ale* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpsw_ale*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ale_control_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cpsw_ale* %0, %struct.cpsw_ale** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.ale_control_info*, %struct.ale_control_info** @ale_controls, align 8
  %17 = call i32 @ARRAY_SIZE(%struct.ale_control_info* %16)
  %18 = icmp sge i32 %15, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %14, %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %85

22:                                               ; preds = %14
  %23 = load %struct.ale_control_info*, %struct.ale_control_info** @ale_controls, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ale_control_info, %struct.ale_control_info* %23, i64 %25
  store %struct.ale_control_info* %26, %struct.ale_control_info** %8, align 8
  %27 = load %struct.ale_control_info*, %struct.ale_control_info** %8, align 8
  %28 = getelementptr inbounds %struct.ale_control_info, %struct.ale_control_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %22
  %32 = load %struct.ale_control_info*, %struct.ale_control_info** %8, align 8
  %33 = getelementptr inbounds %struct.ale_control_info, %struct.ale_control_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %36, %31, %22
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.cpsw_ale*, %struct.cpsw_ale** %5, align 8
  %43 = getelementptr inbounds %struct.cpsw_ale, %struct.cpsw_ale* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp sge i32 %41, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %40, %37
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %85

50:                                               ; preds = %40
  %51 = load %struct.ale_control_info*, %struct.ale_control_info** %8, align 8
  %52 = getelementptr inbounds %struct.ale_control_info, %struct.ale_control_info* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.ale_control_info*, %struct.ale_control_info** %8, align 8
  %56 = getelementptr inbounds %struct.ale_control_info, %struct.ale_control_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %54, %57
  %59 = add nsw i32 %53, %58
  store i32 %59, i32* %9, align 4
  %60 = load %struct.ale_control_info*, %struct.ale_control_info** %8, align 8
  %61 = getelementptr inbounds %struct.ale_control_info, %struct.ale_control_info* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.ale_control_info*, %struct.ale_control_info** %8, align 8
  %65 = getelementptr inbounds %struct.ale_control_info, %struct.ale_control_info* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %63, %66
  %68 = add nsw i32 %62, %67
  store i32 %68, i32* %10, align 4
  %69 = load %struct.cpsw_ale*, %struct.cpsw_ale** %5, align 8
  %70 = getelementptr inbounds %struct.cpsw_ale, %struct.cpsw_ale* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %72, %74
  %76 = call i32 @readl_relaxed(i64 %75)
  %77 = load i32, i32* %10, align 4
  %78 = ashr i32 %76, %77
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load %struct.ale_control_info*, %struct.ale_control_info** %8, align 8
  %81 = getelementptr inbounds %struct.ale_control_info, %struct.ale_control_info* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @BITMASK(i32 %82)
  %84 = and i32 %79, %83
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %50, %47, %19
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @ARRAY_SIZE(%struct.ale_control_info*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @BITMASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
