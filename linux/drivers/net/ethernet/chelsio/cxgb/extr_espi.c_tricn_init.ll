; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_espi.c_tricn_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_espi.c_tricn_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@A_ESPI_RX_RESET = common dso_local global i64 0, align 8
@F_RX_CLK_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"%s: ESPI clock not ready\0A\00", align 1
@F_ESPI_RX_CORE_RST = common dso_local global i32 0, align 4
@TRICN_CNFG = common dso_local global i32 0, align 4
@F_ESPI_RX_LNK_RST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @tricn_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tricn_init(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 1, i32* %5, align 4
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @A_ESPI_RX_RESET, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readl(i64 %10)
  %12 = load i32, i32* @F_RX_CLK_STATUS, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32 -1, i32* %2, align 4
  br label %101

20:                                               ; preds = %1
  %21 = load i32, i32* @F_ESPI_RX_CORE_RST, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @A_ESPI_RX_RESET, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel(i32 %21, i64 %26)
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %20
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %32 = load i32, i32* @TRICN_CNFG, align 4
  %33 = call i32 @tricn_write(%struct.TYPE_4__* %31, i32 0, i32 0, i32 0, i32 %32, i32 129)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %35 = load i32, i32* @TRICN_CNFG, align 4
  %36 = call i32 @tricn_write(%struct.TYPE_4__* %34, i32 0, i32 1, i32 0, i32 %35, i32 129)
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %38 = load i32, i32* @TRICN_CNFG, align 4
  %39 = call i32 @tricn_write(%struct.TYPE_4__* %37, i32 0, i32 2, i32 0, i32 %38, i32 129)
  br label %40

40:                                               ; preds = %30, %20
  store i32 1, i32* %4, align 4
  br label %41

41:                                               ; preds = %49, %40
  %42 = load i32, i32* %4, align 4
  %43 = icmp sle i32 %42, 8
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @TRICN_CNFG, align 4
  %48 = call i32 @tricn_write(%struct.TYPE_4__* %45, i32 0, i32 0, i32 %46, i32 %47, i32 241)
  br label %49

49:                                               ; preds = %44
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %41

52:                                               ; preds = %41
  store i32 1, i32* %4, align 4
  br label %53

53:                                               ; preds = %61, %52
  %54 = load i32, i32* %4, align 4
  %55 = icmp sle i32 %54, 2
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @TRICN_CNFG, align 4
  %60 = call i32 @tricn_write(%struct.TYPE_4__* %57, i32 0, i32 1, i32 %58, i32 %59, i32 241)
  br label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %53

64:                                               ; preds = %53
  store i32 1, i32* %4, align 4
  br label %65

65:                                               ; preds = %73, %64
  %66 = load i32, i32* %4, align 4
  %67 = icmp sle i32 %66, 3
  br i1 %67, label %68, label %76

68:                                               ; preds = %65
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @TRICN_CNFG, align 4
  %72 = call i32 @tricn_write(%struct.TYPE_4__* %69, i32 0, i32 2, i32 %70, i32 %71, i32 225)
  br label %73

73:                                               ; preds = %68
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %4, align 4
  br label %65

76:                                               ; preds = %65
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %78 = load i32, i32* @TRICN_CNFG, align 4
  %79 = call i32 @tricn_write(%struct.TYPE_4__* %77, i32 0, i32 2, i32 4, i32 %78, i32 241)
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %81 = load i32, i32* @TRICN_CNFG, align 4
  %82 = call i32 @tricn_write(%struct.TYPE_4__* %80, i32 0, i32 2, i32 5, i32 %81, i32 225)
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %84 = load i32, i32* @TRICN_CNFG, align 4
  %85 = call i32 @tricn_write(%struct.TYPE_4__* %83, i32 0, i32 2, i32 6, i32 %84, i32 241)
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %87 = load i32, i32* @TRICN_CNFG, align 4
  %88 = call i32 @tricn_write(%struct.TYPE_4__* %86, i32 0, i32 2, i32 7, i32 %87, i32 128)
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %90 = load i32, i32* @TRICN_CNFG, align 4
  %91 = call i32 @tricn_write(%struct.TYPE_4__* %89, i32 0, i32 2, i32 8, i32 %90, i32 241)
  %92 = load i32, i32* @F_ESPI_RX_CORE_RST, align 4
  %93 = load i32, i32* @F_ESPI_RX_LNK_RST, align 4
  %94 = or i32 %92, %93
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @A_ESPI_RX_RESET, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @writel(i32 %94, i64 %99)
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %76, %15
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @tricn_write(%struct.TYPE_4__*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
