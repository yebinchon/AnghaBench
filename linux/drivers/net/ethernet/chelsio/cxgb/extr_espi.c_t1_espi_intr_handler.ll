; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_espi.c_t1_espi_intr_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_espi.c_t1_espi_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peespi = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@A_ESPI_INTR_STATUS = common dso_local global i64 0, align 8
@F_DIP4ERR = common dso_local global i32 0, align 4
@F_RXDROP = common dso_local global i32 0, align 4
@F_TXDROP = common dso_local global i32 0, align 4
@F_RXOVERFLOW = common dso_local global i32 0, align 4
@F_RAMPARITYERR = common dso_local global i32 0, align 4
@F_DIP2PARITYERR = common dso_local global i32 0, align 4
@A_ESPI_DIP2_ERR_COUNT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t1_espi_intr_handler(%struct.peespi* %0) #0 {
  %2 = alloca %struct.peespi*, align 8
  %3 = alloca i32, align 4
  store %struct.peespi* %0, %struct.peespi** %2, align 8
  %4 = load %struct.peespi*, %struct.peespi** %2, align 8
  %5 = getelementptr inbounds %struct.peespi, %struct.peespi* %4, i32 0, i32 0
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @A_ESPI_INTR_STATUS, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readl(i64 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @F_DIP4ERR, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.peespi*, %struct.peespi** %2, align 8
  %18 = getelementptr inbounds %struct.peespi, %struct.peespi* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  br label %22

22:                                               ; preds = %16, %1
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @F_RXDROP, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.peespi*, %struct.peespi** %2, align 8
  %29 = getelementptr inbounds %struct.peespi, %struct.peespi* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 8
  br label %33

33:                                               ; preds = %27, %22
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @F_TXDROP, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.peespi*, %struct.peespi** %2, align 8
  %40 = getelementptr inbounds %struct.peespi, %struct.peespi* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %38, %33
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @F_RXOVERFLOW, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load %struct.peespi*, %struct.peespi** %2, align 8
  %51 = getelementptr inbounds %struct.peespi, %struct.peespi* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %49, %44
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @F_RAMPARITYERR, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.peespi*, %struct.peespi** %2, align 8
  %62 = getelementptr inbounds %struct.peespi, %struct.peespi* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %60, %55
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @F_DIP2PARITYERR, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %66
  %72 = load %struct.peespi*, %struct.peespi** %2, align 8
  %73 = getelementptr inbounds %struct.peespi, %struct.peespi* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 8
  %77 = load %struct.peespi*, %struct.peespi** %2, align 8
  %78 = getelementptr inbounds %struct.peespi, %struct.peespi* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @A_ESPI_DIP2_ERR_COUNT, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @readl(i64 %83)
  br label %85

85:                                               ; preds = %71, %66
  %86 = load i32, i32* %3, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %85
  %89 = load %struct.peespi*, %struct.peespi** %2, align 8
  %90 = getelementptr inbounds %struct.peespi, %struct.peespi* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = call i64 @t1_is_T1B(%struct.TYPE_4__* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  store i32 1, i32* %3, align 4
  br label %95

95:                                               ; preds = %94, %88, %85
  %96 = load i32, i32* %3, align 4
  %97 = load %struct.peespi*, %struct.peespi** %2, align 8
  %98 = getelementptr inbounds %struct.peespi, %struct.peespi* %97, i32 0, i32 0
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @A_ESPI_INTR_STATUS, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @writel(i32 %96, i64 %103)
  ret i32 0
}

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @t1_is_T1B(%struct.TYPE_4__*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
