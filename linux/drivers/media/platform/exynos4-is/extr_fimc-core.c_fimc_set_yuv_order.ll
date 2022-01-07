; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-core.c_fimc_set_yuv_order.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-core.c_fimc_set_yuv_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_ctx = type { i32, %struct.TYPE_8__, i32, %struct.TYPE_6__, i8*, i8* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@FIMC_REG_CIOCTRL_ORDER422_2P_LSB_CRCB = common dso_local global i8* null, align 8
@FIMC_REG_MSCTRL_ORDER422_YCRYCB = common dso_local global i32 0, align 4
@FIMC_REG_MSCTRL_ORDER422_CBYCRY = common dso_local global i32 0, align 4
@FIMC_REG_MSCTRL_ORDER422_CRYCBY = common dso_local global i32 0, align 4
@FIMC_REG_MSCTRL_ORDER422_YCBYCR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"ctx->in_order_1p= %d\00", align 1
@FIMC_REG_CIOCTRL_ORDER422_YCRYCB = common dso_local global i32 0, align 4
@FIMC_REG_CIOCTRL_ORDER422_CBYCRY = common dso_local global i32 0, align 4
@FIMC_REG_CIOCTRL_ORDER422_CRYCBY = common dso_local global i32 0, align 4
@FIMC_REG_CIOCTRL_ORDER422_YCBYCR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"ctx->out_order_1p= %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fimc_set_yuv_order(%struct.fimc_ctx* %0) #0 {
  %2 = alloca %struct.fimc_ctx*, align 8
  store %struct.fimc_ctx* %0, %struct.fimc_ctx** %2, align 8
  %3 = load i8*, i8** @FIMC_REG_CIOCTRL_ORDER422_2P_LSB_CRCB, align 8
  %4 = load %struct.fimc_ctx*, %struct.fimc_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %4, i32 0, i32 5
  store i8* %3, i8** %5, align 8
  %6 = load i8*, i8** @FIMC_REG_CIOCTRL_ORDER422_2P_LSB_CRCB, align 8
  %7 = load %struct.fimc_ctx*, %struct.fimc_ctx** %2, align 8
  %8 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %7, i32 0, i32 4
  store i8* %6, i8** %8, align 8
  %9 = load %struct.fimc_ctx*, %struct.fimc_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %28 [
    i32 128, label %15
    i32 131, label %19
    i32 130, label %23
    i32 129, label %27
  ]

15:                                               ; preds = %1
  %16 = load i32, i32* @FIMC_REG_MSCTRL_ORDER422_YCRYCB, align 4
  %17 = load %struct.fimc_ctx*, %struct.fimc_ctx** %2, align 8
  %18 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 8
  br label %32

19:                                               ; preds = %1
  %20 = load i32, i32* @FIMC_REG_MSCTRL_ORDER422_CBYCRY, align 4
  %21 = load %struct.fimc_ctx*, %struct.fimc_ctx** %2, align 8
  %22 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  br label %32

23:                                               ; preds = %1
  %24 = load i32, i32* @FIMC_REG_MSCTRL_ORDER422_CRYCBY, align 4
  %25 = load %struct.fimc_ctx*, %struct.fimc_ctx** %2, align 8
  %26 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  br label %32

27:                                               ; preds = %1
  br label %28

28:                                               ; preds = %1, %27
  %29 = load i32, i32* @FIMC_REG_MSCTRL_ORDER422_YCBYCR, align 4
  %30 = load %struct.fimc_ctx*, %struct.fimc_ctx** %2, align 8
  %31 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  br label %32

32:                                               ; preds = %28, %23, %19, %15
  %33 = load %struct.fimc_ctx*, %struct.fimc_ctx** %2, align 8
  %34 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @dbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.fimc_ctx*, %struct.fimc_ctx** %2, align 8
  %38 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %56 [
    i32 128, label %43
    i32 131, label %47
    i32 130, label %51
    i32 129, label %55
  ]

43:                                               ; preds = %32
  %44 = load i32, i32* @FIMC_REG_CIOCTRL_ORDER422_YCRYCB, align 4
  %45 = load %struct.fimc_ctx*, %struct.fimc_ctx** %2, align 8
  %46 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  br label %60

47:                                               ; preds = %32
  %48 = load i32, i32* @FIMC_REG_CIOCTRL_ORDER422_CBYCRY, align 4
  %49 = load %struct.fimc_ctx*, %struct.fimc_ctx** %2, align 8
  %50 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  br label %60

51:                                               ; preds = %32
  %52 = load i32, i32* @FIMC_REG_CIOCTRL_ORDER422_CRYCBY, align 4
  %53 = load %struct.fimc_ctx*, %struct.fimc_ctx** %2, align 8
  %54 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  br label %60

55:                                               ; preds = %32
  br label %56

56:                                               ; preds = %32, %55
  %57 = load i32, i32* @FIMC_REG_CIOCTRL_ORDER422_YCBYCR, align 4
  %58 = load %struct.fimc_ctx*, %struct.fimc_ctx** %2, align 8
  %59 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  br label %60

60:                                               ; preds = %56, %51, %47, %43
  %61 = load %struct.fimc_ctx*, %struct.fimc_ctx** %2, align 8
  %62 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  ret void
}

declare dso_local i32 @dbg(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
