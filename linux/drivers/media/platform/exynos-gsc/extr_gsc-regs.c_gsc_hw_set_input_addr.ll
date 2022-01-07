; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-regs.c_gsc_hw_set_input_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-regs.c_gsc_hw_set_input_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsc_dev = type { i64 }
%struct.gsc_addr = type { i32, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"src_buf[%d]: %pad, cb: %pad, cr: %pad\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gsc_hw_set_input_addr(%struct.gsc_dev* %0, %struct.gsc_addr* %1, i32 %2) #0 {
  %4 = alloca %struct.gsc_dev*, align 8
  %5 = alloca %struct.gsc_addr*, align 8
  %6 = alloca i32, align 4
  store %struct.gsc_dev* %0, %struct.gsc_dev** %4, align 8
  store %struct.gsc_addr* %1, %struct.gsc_addr** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.gsc_addr*, %struct.gsc_addr** %5, align 8
  %9 = getelementptr inbounds %struct.gsc_addr, %struct.gsc_addr* %8, i32 0, i32 2
  %10 = load %struct.gsc_addr*, %struct.gsc_addr** %5, align 8
  %11 = getelementptr inbounds %struct.gsc_addr, %struct.gsc_addr* %10, i32 0, i32 1
  %12 = load %struct.gsc_addr*, %struct.gsc_addr** %5, align 8
  %13 = getelementptr inbounds %struct.gsc_addr, %struct.gsc_addr* %12, i32 0, i32 0
  %14 = call i32 @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %7, i32* %9, i32* %11, i32* %13)
  %15 = load %struct.gsc_addr*, %struct.gsc_addr** %5, align 8
  %16 = getelementptr inbounds %struct.gsc_addr, %struct.gsc_addr* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %19 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @GSC_IN_BASE_ADDR_Y(i32 %21)
  %23 = add nsw i64 %20, %22
  %24 = call i32 @writel(i32 %17, i64 %23)
  %25 = load %struct.gsc_addr*, %struct.gsc_addr** %5, align 8
  %26 = getelementptr inbounds %struct.gsc_addr, %struct.gsc_addr* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %29 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i64 @GSC_IN_BASE_ADDR_CB(i32 %31)
  %33 = add nsw i64 %30, %32
  %34 = call i32 @writel(i32 %27, i64 %33)
  %35 = load %struct.gsc_addr*, %struct.gsc_addr** %5, align 8
  %36 = getelementptr inbounds %struct.gsc_addr, %struct.gsc_addr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %39 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i64 @GSC_IN_BASE_ADDR_CR(i32 %41)
  %43 = add nsw i64 %40, %42
  %44 = call i32 @writel(i32 %37, i64 %43)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @GSC_IN_BASE_ADDR_Y(i32) #1

declare dso_local i64 @GSC_IN_BASE_ADDR_CB(i32) #1

declare dso_local i64 @GSC_IN_BASE_ADDR_CR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
