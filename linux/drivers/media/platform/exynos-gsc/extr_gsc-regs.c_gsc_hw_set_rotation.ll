; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-regs.c_gsc_hw_set_rotation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-regs.c_gsc_hw_set_rotation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsc_ctx = type { %struct.TYPE_8__, %struct.gsc_dev* }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.gsc_dev = type { i64 }

@GSC_IN_CON = common dso_local global i64 0, align 8
@GSC_IN_ROT_MASK = common dso_local global i32 0, align 4
@GSC_IN_ROT_270 = common dso_local global i32 0, align 4
@GSC_IN_ROT_180 = common dso_local global i32 0, align 4
@GSC_IN_ROT_90_XFLIP = common dso_local global i32 0, align 4
@GSC_IN_ROT_90_YFLIP = common dso_local global i32 0, align 4
@GSC_IN_ROT_90 = common dso_local global i32 0, align 4
@GSC_IN_ROT_XFLIP = common dso_local global i32 0, align 4
@GSC_IN_ROT_YFLIP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gsc_hw_set_rotation(%struct.gsc_ctx* %0) #0 {
  %2 = alloca %struct.gsc_ctx*, align 8
  %3 = alloca %struct.gsc_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.gsc_ctx* %0, %struct.gsc_ctx** %2, align 8
  %5 = load %struct.gsc_ctx*, %struct.gsc_ctx** %2, align 8
  %6 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %5, i32 0, i32 1
  %7 = load %struct.gsc_dev*, %struct.gsc_dev** %6, align 8
  store %struct.gsc_dev* %7, %struct.gsc_dev** %3, align 8
  %8 = load %struct.gsc_dev*, %struct.gsc_dev** %3, align 8
  %9 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @GSC_IN_CON, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @readl(i64 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @GSC_IN_ROT_MASK, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %4, align 4
  %18 = load %struct.gsc_ctx*, %struct.gsc_ctx** %2, align 8
  %19 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %88 [
    i32 270, label %24
    i32 180, label %28
    i32 90, label %32
    i32 0, label %62
  ]

24:                                               ; preds = %1
  %25 = load i32, i32* @GSC_IN_ROT_270, align 4
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %4, align 4
  br label %88

28:                                               ; preds = %1
  %29 = load i32, i32* @GSC_IN_ROT_180, align 4
  %30 = load i32, i32* %4, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %4, align 4
  br label %88

32:                                               ; preds = %1
  %33 = load %struct.gsc_ctx*, %struct.gsc_ctx** %2, align 8
  %34 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = load i32, i32* @GSC_IN_ROT_90_XFLIP, align 4
  %42 = load i32, i32* %4, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %4, align 4
  br label %61

44:                                               ; preds = %32
  %45 = load %struct.gsc_ctx*, %struct.gsc_ctx** %2, align 8
  %46 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %44
  %53 = load i32, i32* @GSC_IN_ROT_90_YFLIP, align 4
  %54 = load i32, i32* %4, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %4, align 4
  br label %60

56:                                               ; preds = %44
  %57 = load i32, i32* @GSC_IN_ROT_90, align 4
  %58 = load i32, i32* %4, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %56, %52
  br label %61

61:                                               ; preds = %60, %40
  br label %88

62:                                               ; preds = %1
  %63 = load %struct.gsc_ctx*, %struct.gsc_ctx** %2, align 8
  %64 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %62
  %71 = load i32, i32* @GSC_IN_ROT_XFLIP, align 4
  %72 = load i32, i32* %4, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %4, align 4
  br label %87

74:                                               ; preds = %62
  %75 = load %struct.gsc_ctx*, %struct.gsc_ctx** %2, align 8
  %76 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %74
  %83 = load i32, i32* @GSC_IN_ROT_YFLIP, align 4
  %84 = load i32, i32* %4, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %82, %74
  br label %87

87:                                               ; preds = %86, %70
  br label %88

88:                                               ; preds = %87, %1, %61, %28, %24
  %89 = load i32, i32* %4, align 4
  %90 = load %struct.gsc_dev*, %struct.gsc_dev** %3, align 8
  %91 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @GSC_IN_CON, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @writel(i32 %89, i64 %94)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
