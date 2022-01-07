; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_imx-vdoa.c_vdoa_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_imx-vdoa.c_vdoa_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdoa_data = type { i32, i64, %struct.vdoa_ctx* }
%struct.vdoa_ctx = type { i32, i32 }

@VDOAIE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"Instance released before the end of transaction\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@VDOAIST = common dso_local global i64 0, align 8
@VDOAIST_TERR = common dso_local global i32 0, align 4
@VDOASR = common dso_local global i64 0, align 8
@VDOASR_ERRW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"AXI %s error\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@VDOAIST_EOT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"Spurious interrupt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @vdoa_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdoa_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.vdoa_data*, align 8
  %7 = alloca %struct.vdoa_ctx*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.vdoa_data*
  store %struct.vdoa_data* %10, %struct.vdoa_data** %6, align 8
  %11 = load %struct.vdoa_data*, %struct.vdoa_data** %6, align 8
  %12 = getelementptr inbounds %struct.vdoa_data, %struct.vdoa_data* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @VDOAIE, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @writel(i32 0, i64 %15)
  %17 = load %struct.vdoa_data*, %struct.vdoa_data** %6, align 8
  %18 = getelementptr inbounds %struct.vdoa_data, %struct.vdoa_data* %17, i32 0, i32 2
  %19 = load %struct.vdoa_ctx*, %struct.vdoa_ctx** %18, align 8
  store %struct.vdoa_ctx* %19, %struct.vdoa_ctx** %7, align 8
  %20 = load %struct.vdoa_ctx*, %struct.vdoa_ctx** %7, align 8
  %21 = icmp ne %struct.vdoa_ctx* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %2
  %23 = load %struct.vdoa_data*, %struct.vdoa_data** %6, align 8
  %24 = getelementptr inbounds %struct.vdoa_data, %struct.vdoa_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dev_warn(i32 %25, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %27, i32* %3, align 4
  br label %83

28:                                               ; preds = %2
  %29 = load %struct.vdoa_data*, %struct.vdoa_data** %6, align 8
  %30 = getelementptr inbounds %struct.vdoa_data, %struct.vdoa_data* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @VDOAIST, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @readl(i64 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.vdoa_data*, %struct.vdoa_data** %6, align 8
  %37 = getelementptr inbounds %struct.vdoa_data, %struct.vdoa_data* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @VDOAIST, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i32 %35, i64 %40)
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @VDOAIST_TERR, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %63

46:                                               ; preds = %28
  %47 = load %struct.vdoa_data*, %struct.vdoa_data** %6, align 8
  %48 = getelementptr inbounds %struct.vdoa_data, %struct.vdoa_data* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @VDOASR, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @readl(i64 %51)
  %53 = load i32, i32* @VDOASR_ERRW, align 4
  %54 = and i32 %52, %53
  store i32 %54, i32* %8, align 4
  %55 = load %struct.vdoa_data*, %struct.vdoa_data** %6, align 8
  %56 = getelementptr inbounds %struct.vdoa_data, %struct.vdoa_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %62 = call i32 @dev_err(i32 %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %61)
  br label %74

63:                                               ; preds = %28
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @VDOAIST_EOT, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %63
  %69 = load %struct.vdoa_data*, %struct.vdoa_data** %6, align 8
  %70 = getelementptr inbounds %struct.vdoa_data, %struct.vdoa_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @dev_warn(i32 %71, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %73

73:                                               ; preds = %68, %63
  br label %74

74:                                               ; preds = %73, %46
  %75 = load %struct.vdoa_ctx*, %struct.vdoa_ctx** %7, align 8
  %76 = getelementptr inbounds %struct.vdoa_ctx, %struct.vdoa_ctx* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  %79 = load %struct.vdoa_ctx*, %struct.vdoa_ctx** %7, align 8
  %80 = getelementptr inbounds %struct.vdoa_ctx, %struct.vdoa_ctx* %79, i32 0, i32 0
  %81 = call i32 @complete(i32* %80)
  %82 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %74, %22
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_err(i32, i8*, i8*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
