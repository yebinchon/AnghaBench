; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw_ale.c_cpsw_ale_control_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw_ale.c_cpsw_ale_control_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ale_control_info = type { i32, i32, i32, i32, i32 }
%struct.cpsw_ale = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@ale_controls = common dso_local global %struct.ale_control_info* null, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpsw_ale_control_set(%struct.cpsw_ale* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cpsw_ale*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ale_control_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.cpsw_ale* %0, %struct.cpsw_ale** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.ale_control_info*, %struct.ale_control_info** @ale_controls, align 8
  %20 = call i32 @ARRAY_SIZE(%struct.ale_control_info* %19)
  %21 = icmp sge i32 %18, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %17, %4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %112

25:                                               ; preds = %17
  %26 = load %struct.ale_control_info*, %struct.ale_control_info** @ale_controls, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ale_control_info, %struct.ale_control_info* %26, i64 %28
  store %struct.ale_control_info* %29, %struct.ale_control_info** %10, align 8
  %30 = load %struct.ale_control_info*, %struct.ale_control_info** %10, align 8
  %31 = getelementptr inbounds %struct.ale_control_info, %struct.ale_control_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %25
  %35 = load %struct.ale_control_info*, %struct.ale_control_info** %10, align 8
  %36 = getelementptr inbounds %struct.ale_control_info, %struct.ale_control_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %39, %34, %25
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.cpsw_ale*, %struct.cpsw_ale** %6, align 8
  %46 = getelementptr inbounds %struct.cpsw_ale, %struct.cpsw_ale* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sge i32 %44, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %43, %40
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %112

53:                                               ; preds = %43
  %54 = load %struct.ale_control_info*, %struct.ale_control_info** %10, align 8
  %55 = getelementptr inbounds %struct.ale_control_info, %struct.ale_control_info* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @BITMASK(i32 %56)
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %14, align 4
  %60 = xor i32 %59, -1
  %61 = and i32 %58, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %53
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %5, align 4
  br label %112

66:                                               ; preds = %53
  %67 = load %struct.ale_control_info*, %struct.ale_control_info** %10, align 8
  %68 = getelementptr inbounds %struct.ale_control_info, %struct.ale_control_info* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.ale_control_info*, %struct.ale_control_info** %10, align 8
  %72 = getelementptr inbounds %struct.ale_control_info, %struct.ale_control_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = mul nsw i32 %70, %73
  %75 = add nsw i32 %69, %74
  store i32 %75, i32* %11, align 4
  %76 = load %struct.ale_control_info*, %struct.ale_control_info** %10, align 8
  %77 = getelementptr inbounds %struct.ale_control_info, %struct.ale_control_info* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.ale_control_info*, %struct.ale_control_info** %10, align 8
  %81 = getelementptr inbounds %struct.ale_control_info, %struct.ale_control_info* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = mul nsw i32 %79, %82
  %84 = add nsw i32 %78, %83
  store i32 %84, i32* %12, align 4
  %85 = load %struct.cpsw_ale*, %struct.cpsw_ale** %6, align 8
  %86 = getelementptr inbounds %struct.cpsw_ale, %struct.cpsw_ale* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %88, %90
  %92 = call i32 @readl_relaxed(i64 %91)
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* %12, align 4
  %96 = shl i32 %94, %95
  %97 = xor i32 %96, -1
  %98 = and i32 %93, %97
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %12, align 4
  %101 = shl i32 %99, %100
  %102 = or i32 %98, %101
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %13, align 4
  %104 = load %struct.cpsw_ale*, %struct.cpsw_ale** %6, align 8
  %105 = getelementptr inbounds %struct.cpsw_ale, %struct.cpsw_ale* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %107, %109
  %111 = call i32 @writel_relaxed(i32 %103, i64 %110)
  store i32 0, i32* %5, align 4
  br label %112

112:                                              ; preds = %66, %63, %50, %22
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i32 @ARRAY_SIZE(%struct.ale_control_info*) #1

declare dso_local i32 @BITMASK(i32) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
