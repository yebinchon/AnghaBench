; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-regs.c_gsc_hw_set_global_alpha.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-regs.c_gsc_hw_set_global_alpha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsc_ctx = type { %struct.TYPE_5__, %struct.gsc_frame, %struct.gsc_dev* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.gsc_frame = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.gsc_dev = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"Not a RGB format\00", align 1
@GSC_OUT_CON = common dso_local global i64 0, align 8
@GSC_OUT_GLOBAL_ALPHA_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gsc_hw_set_global_alpha(%struct.gsc_ctx* %0) #0 {
  %2 = alloca %struct.gsc_ctx*, align 8
  %3 = alloca %struct.gsc_dev*, align 8
  %4 = alloca %struct.gsc_frame*, align 8
  %5 = alloca i32, align 4
  store %struct.gsc_ctx* %0, %struct.gsc_ctx** %2, align 8
  %6 = load %struct.gsc_ctx*, %struct.gsc_ctx** %2, align 8
  %7 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %6, i32 0, i32 2
  %8 = load %struct.gsc_dev*, %struct.gsc_dev** %7, align 8
  store %struct.gsc_dev* %8, %struct.gsc_dev** %3, align 8
  %9 = load %struct.gsc_ctx*, %struct.gsc_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %9, i32 0, i32 1
  store %struct.gsc_frame* %10, %struct.gsc_frame** %4, align 8
  %11 = load %struct.gsc_frame*, %struct.gsc_frame** %4, align 8
  %12 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @is_rgb(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %1
  %19 = call i32 @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %47

20:                                               ; preds = %1
  %21 = load %struct.gsc_dev*, %struct.gsc_dev** %3, align 8
  %22 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @GSC_OUT_CON, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @readl(i64 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @GSC_OUT_GLOBAL_ALPHA_MASK, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load %struct.gsc_ctx*, %struct.gsc_ctx** %2, align 8
  %32 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @GSC_OUT_GLOBAL_ALPHA(i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.gsc_dev*, %struct.gsc_dev** %3, align 8
  %42 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @GSC_OUT_CON, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writel(i32 %40, i64 %45)
  br label %47

47:                                               ; preds = %20, %18
  ret void
}

declare dso_local i32 @is_rgb(i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @GSC_OUT_GLOBAL_ALPHA(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
