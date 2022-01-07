; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_subr.c___t1_tpi_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_subr.c___t1_tpi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@A_TPI_ADDR = common dso_local global i64 0, align 8
@A_TPI_CSR = common dso_local global i64 0, align 8
@F_TPIRDY = common dso_local global i32 0, align 4
@TPI_ATTEMPTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s: TPI read from 0x%x failed\0A\00", align 1
@A_TPI_RD_DATA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__t1_tpi_read(%struct.TYPE_4__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @A_TPI_ADDR, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @writel(i32 %8, i64 %13)
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @A_TPI_CSR, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @writel(i32 0, i64 %19)
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = load i64, i64* @A_TPI_CSR, align 8
  %23 = load i32, i32* @F_TPIRDY, align 4
  %24 = load i32, i32* @TPI_ATTEMPTS, align 4
  %25 = call i32 @t1_wait_op_done(%struct.TYPE_4__* %21, i64 %22, i32 %23, i32 1, i32 %24, i32 3)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %3
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @pr_alert(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  br label %42

34:                                               ; preds = %3
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @A_TPI_RD_DATA, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @readl(i64 %39)
  %41 = load i32*, i32** %6, align 8
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %34, %28
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @t1_wait_op_done(%struct.TYPE_4__*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @pr_alert(i8*, i32, i32) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
