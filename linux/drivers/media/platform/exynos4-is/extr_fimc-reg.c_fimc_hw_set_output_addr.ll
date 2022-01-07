; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-reg.c_fimc_hw_set_output_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-reg.c_fimc_hw_set_output_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_dev = type { i64 }
%struct.fimc_addr = type { i32, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"dst_buf[%d]: 0x%X, cb: 0x%X, cr: 0x%X\00", align 1
@FIMC_MAX_OUT_BUFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fimc_hw_set_output_addr(%struct.fimc_dev* %0, %struct.fimc_addr* %1, i32 %2) #0 {
  %4 = alloca %struct.fimc_dev*, align 8
  %5 = alloca %struct.fimc_addr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fimc_dev* %0, %struct.fimc_dev** %4, align 8
  store %struct.fimc_addr* %1, %struct.fimc_addr** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %13

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  br label %13

13:                                               ; preds = %11, %10
  %14 = phi i32 [ 0, %10 ], [ %12, %11 ]
  store i32 %14, i32* %7, align 4
  br label %15

15:                                               ; preds = %65, %13
  %16 = load %struct.fimc_addr*, %struct.fimc_addr** %5, align 8
  %17 = getelementptr inbounds %struct.fimc_addr, %struct.fimc_addr* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %20 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @FIMC_REG_CIOYSA(i32 %22)
  %24 = add nsw i64 %21, %23
  %25 = call i32 @writel(i32 %18, i64 %24)
  %26 = load %struct.fimc_addr*, %struct.fimc_addr** %5, align 8
  %27 = getelementptr inbounds %struct.fimc_addr, %struct.fimc_addr* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %30 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i64 @FIMC_REG_CIOCBSA(i32 %32)
  %34 = add nsw i64 %31, %33
  %35 = call i32 @writel(i32 %28, i64 %34)
  %36 = load %struct.fimc_addr*, %struct.fimc_addr** %5, align 8
  %37 = getelementptr inbounds %struct.fimc_addr, %struct.fimc_addr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %40 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i64 @FIMC_REG_CIOCRSA(i32 %42)
  %44 = add nsw i64 %41, %43
  %45 = call i32 @writel(i32 %38, i64 %44)
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.fimc_addr*, %struct.fimc_addr** %5, align 8
  %48 = getelementptr inbounds %struct.fimc_addr, %struct.fimc_addr* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.fimc_addr*, %struct.fimc_addr** %5, align 8
  %51 = getelementptr inbounds %struct.fimc_addr, %struct.fimc_addr* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.fimc_addr*, %struct.fimc_addr** %5, align 8
  %54 = getelementptr inbounds %struct.fimc_addr, %struct.fimc_addr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dbg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %49, i32 %52, i32 %55)
  br label %57

57:                                               ; preds = %15
  %58 = load i32, i32* %6, align 4
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* @FIMC_MAX_OUT_BUFS, align 4
  %64 = icmp slt i32 %62, %63
  br label %65

65:                                               ; preds = %60, %57
  %66 = phi i1 [ false, %57 ], [ %64, %60 ]
  br i1 %66, label %15, label %67

67:                                               ; preds = %65
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @FIMC_REG_CIOYSA(i32) #1

declare dso_local i64 @FIMC_REG_CIOCBSA(i32) #1

declare dso_local i64 @FIMC_REG_CIOCRSA(i32) #1

declare dso_local i32 @dbg(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
