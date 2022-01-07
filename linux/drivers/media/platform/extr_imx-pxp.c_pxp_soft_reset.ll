; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_imx-pxp.c_pxp_soft_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_imx-pxp.c_pxp_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxp_dev = type { i64 }

@BM_PXP_CTRL_SFTRST = common dso_local global i32 0, align 4
@HW_PXP_CTRL_CLR = common dso_local global i64 0, align 8
@BM_PXP_CTRL_CLKGATE = common dso_local global i32 0, align 4
@HW_PXP_CTRL_SET = common dso_local global i64 0, align 8
@HW_PXP_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxp_dev*)* @pxp_soft_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxp_soft_reset(%struct.pxp_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pxp_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pxp_dev* %0, %struct.pxp_dev** %3, align 8
  %6 = load i32, i32* @BM_PXP_CTRL_SFTRST, align 4
  %7 = load %struct.pxp_dev*, %struct.pxp_dev** %3, align 8
  %8 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @HW_PXP_CTRL_CLR, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @writel(i32 %6, i64 %11)
  %13 = load i32, i32* @BM_PXP_CTRL_CLKGATE, align 4
  %14 = load %struct.pxp_dev*, %struct.pxp_dev** %3, align 8
  %15 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @HW_PXP_CTRL_CLR, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @writel(i32 %13, i64 %18)
  %20 = load i32, i32* @BM_PXP_CTRL_SFTRST, align 4
  %21 = load %struct.pxp_dev*, %struct.pxp_dev** %3, align 8
  %22 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @HW_PXP_CTRL_SET, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel(i32 %20, i64 %25)
  %27 = load %struct.pxp_dev*, %struct.pxp_dev** %3, align 8
  %28 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @HW_PXP_CTRL, align 8
  %31 = add nsw i64 %29, %30
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @BM_PXP_CTRL_CLKGATE, align 4
  %35 = and i32 %33, %34
  %36 = call i32 @readl_poll_timeout(i64 %31, i32 %32, i32 %35, i32 0, i32 100)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %1
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %56

41:                                               ; preds = %1
  %42 = load i32, i32* @BM_PXP_CTRL_SFTRST, align 4
  %43 = load %struct.pxp_dev*, %struct.pxp_dev** %3, align 8
  %44 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @HW_PXP_CTRL_CLR, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writel(i32 %42, i64 %47)
  %49 = load i32, i32* @BM_PXP_CTRL_CLKGATE, align 4
  %50 = load %struct.pxp_dev*, %struct.pxp_dev** %3, align 8
  %51 = getelementptr inbounds %struct.pxp_dev, %struct.pxp_dev* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @HW_PXP_CTRL_CLR, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writel(i32 %49, i64 %54)
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %41, %39
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
