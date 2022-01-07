; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-regs.c_gsc_hw_set_prescaler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-regs.c_gsc_hw_set_prescaler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsc_ctx = type { %struct.gsc_scaler, %struct.gsc_dev* }
%struct.gsc_scaler = type { i32, i32, i32 }
%struct.gsc_dev = type { i64 }

@GSC_PRE_SCALE_RATIO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gsc_hw_set_prescaler(%struct.gsc_ctx* %0) #0 {
  %2 = alloca %struct.gsc_ctx*, align 8
  %3 = alloca %struct.gsc_dev*, align 8
  %4 = alloca %struct.gsc_scaler*, align 8
  %5 = alloca i32, align 4
  store %struct.gsc_ctx* %0, %struct.gsc_ctx** %2, align 8
  %6 = load %struct.gsc_ctx*, %struct.gsc_ctx** %2, align 8
  %7 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %6, i32 0, i32 1
  %8 = load %struct.gsc_dev*, %struct.gsc_dev** %7, align 8
  store %struct.gsc_dev* %8, %struct.gsc_dev** %3, align 8
  %9 = load %struct.gsc_ctx*, %struct.gsc_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %9, i32 0, i32 0
  store %struct.gsc_scaler* %10, %struct.gsc_scaler** %4, align 8
  %11 = load %struct.gsc_scaler*, %struct.gsc_scaler** %4, align 8
  %12 = getelementptr inbounds %struct.gsc_scaler, %struct.gsc_scaler* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @GSC_PRESC_SHFACTOR(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.gsc_scaler*, %struct.gsc_scaler** %4, align 8
  %16 = getelementptr inbounds %struct.gsc_scaler, %struct.gsc_scaler* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @GSC_PRESC_H_RATIO(i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load %struct.gsc_scaler*, %struct.gsc_scaler** %4, align 8
  %22 = getelementptr inbounds %struct.gsc_scaler, %struct.gsc_scaler* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @GSC_PRESC_V_RATIO(i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.gsc_dev*, %struct.gsc_dev** %3, align 8
  %29 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @GSC_PRE_SCALE_RATIO, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @writel(i32 %27, i64 %32)
  ret void
}

declare dso_local i32 @GSC_PRESC_SHFACTOR(i32) #1

declare dso_local i32 @GSC_PRESC_H_RATIO(i32) #1

declare dso_local i32 @GSC_PRESC_V_RATIO(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
