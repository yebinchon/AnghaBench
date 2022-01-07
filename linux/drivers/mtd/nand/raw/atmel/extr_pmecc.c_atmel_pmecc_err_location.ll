; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_pmecc.c_atmel_pmecc_err_location.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_pmecc.c_atmel_pmecc_err_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_pmecc_user = type { i32*, i32*, %struct.atmel_pmecc* }
%struct.atmel_pmecc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@PMERRLOC_DISABLE = common dso_local global i32 0, align 4
@ATMEL_PMERRLOC_ELDIS = common dso_local global i64 0, align 8
@ATMEL_PMERRLOC_ELCFG = common dso_local global i64 0, align 8
@ATMEL_PMERRLOC_ELEN = common dso_local global i64 0, align 8
@ATMEL_PMERRLOC_ELISR = common dso_local global i64 0, align 8
@PMERRLOC_CALC_DONE = common dso_local global i32 0, align 4
@PMECC_MAX_TIMEOUT_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"PMECC: Timeout to calculate error location.\0A\00", align 1
@PMERRLOC_ERR_NUM_MASK = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_pmecc_user*)* @atmel_pmecc_err_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_pmecc_err_location(%struct.atmel_pmecc_user* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atmel_pmecc_user*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.atmel_pmecc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.atmel_pmecc_user* %0, %struct.atmel_pmecc_user** %3, align 8
  %15 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %3, align 8
  %16 = call i32 @get_sectorsize(%struct.atmel_pmecc_user* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, 512
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 13, i32 14
  store i32 %20, i32* %5, align 4
  %21 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %3, align 8
  %22 = getelementptr inbounds %struct.atmel_pmecc_user, %struct.atmel_pmecc_user* %21, i32 0, i32 2
  %23 = load %struct.atmel_pmecc*, %struct.atmel_pmecc** %22, align 8
  store %struct.atmel_pmecc* %23, %struct.atmel_pmecc** %6, align 8
  %24 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %3, align 8
  %25 = call i32 @get_strength(%struct.atmel_pmecc_user* %24)
  store i32 %25, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %26 = load i32, i32* %7, align 4
  %27 = mul nsw i32 2, %26
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %12, align 4
  %29 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %3, align 8
  %30 = getelementptr inbounds %struct.atmel_pmecc_user, %struct.atmel_pmecc_user* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %13, align 8
  %32 = load i32, i32* @PMERRLOC_DISABLE, align 4
  %33 = load %struct.atmel_pmecc*, %struct.atmel_pmecc** %6, align 8
  %34 = getelementptr inbounds %struct.atmel_pmecc, %struct.atmel_pmecc* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ATMEL_PMERRLOC_ELDIS, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel(i32 %32, i64 %38)
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %73, %1
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %3, align 8
  %43 = getelementptr inbounds %struct.atmel_pmecc_user, %struct.atmel_pmecc_user* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = ashr i32 %49, 1
  %51 = icmp sle i32 %41, %50
  br i1 %51, label %52, label %76

52:                                               ; preds = %40
  %53 = load i32*, i32** %13, align 8
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  %56 = load i32, i32* %12, align 4
  %57 = mul nsw i32 %55, %56
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %53, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.atmel_pmecc*, %struct.atmel_pmecc** %6, align 8
  %64 = getelementptr inbounds %struct.atmel_pmecc, %struct.atmel_pmecc* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = call i64 @ATMEL_PMERRLOC_SIGMA(i32 %67)
  %69 = add nsw i64 %66, %68
  %70 = call i32 @writel_relaxed(i32 %62, i64 %69)
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %11, align 4
  br label %73

73:                                               ; preds = %52
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %10, align 4
  br label %40

76:                                               ; preds = %40
  %77 = load i32, i32* %11, align 4
  %78 = sub nsw i32 %77, 1
  %79 = shl i32 %78, 16
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp eq i32 %80, 1024
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load i32, i32* %14, align 4
  %84 = or i32 %83, 1
  store i32 %84, i32* %14, align 4
  br label %85

85:                                               ; preds = %82, %76
  %86 = load i32, i32* %14, align 4
  %87 = load %struct.atmel_pmecc*, %struct.atmel_pmecc** %6, align 8
  %88 = getelementptr inbounds %struct.atmel_pmecc, %struct.atmel_pmecc* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @ATMEL_PMERRLOC_ELCFG, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @writel(i32 %86, i64 %92)
  %94 = load i32, i32* %4, align 4
  %95 = mul nsw i32 %94, 8
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* %7, align 4
  %98 = mul nsw i32 %96, %97
  %99 = add nsw i32 %95, %98
  %100 = load %struct.atmel_pmecc*, %struct.atmel_pmecc** %6, align 8
  %101 = getelementptr inbounds %struct.atmel_pmecc, %struct.atmel_pmecc* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @ATMEL_PMERRLOC_ELEN, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @writel(i32 %99, i64 %105)
  %107 = load %struct.atmel_pmecc*, %struct.atmel_pmecc** %6, align 8
  %108 = getelementptr inbounds %struct.atmel_pmecc, %struct.atmel_pmecc* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @ATMEL_PMERRLOC_ELISR, align 8
  %112 = add nsw i64 %110, %111
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* @PMERRLOC_CALC_DONE, align 4
  %116 = and i32 %114, %115
  %117 = load i32, i32* @PMECC_MAX_TIMEOUT_MS, align 4
  %118 = mul nsw i32 %117, 1000
  %119 = call i32 @readl_relaxed_poll_timeout(i64 %112, i32 %113, i32 %116, i32 0, i32 %118)
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %8, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %85
  %123 = load %struct.atmel_pmecc*, %struct.atmel_pmecc** %6, align 8
  %124 = getelementptr inbounds %struct.atmel_pmecc, %struct.atmel_pmecc* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @dev_err(i32 %125, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %127 = load i32, i32* %8, align 4
  store i32 %127, i32* %2, align 4
  br label %150

128:                                              ; preds = %85
  %129 = load i32, i32* %14, align 4
  %130 = load i32, i32* @PMERRLOC_ERR_NUM_MASK, align 4
  %131 = and i32 %129, %130
  %132 = ashr i32 %131, 8
  store i32 %132, i32* %9, align 4
  %133 = load i32, i32* %9, align 4
  %134 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %3, align 8
  %135 = getelementptr inbounds %struct.atmel_pmecc_user, %struct.atmel_pmecc_user* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %7, align 4
  %138 = add nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = ashr i32 %141, 1
  %143 = icmp eq i32 %133, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %128
  %145 = load i32, i32* %11, align 4
  %146 = sub nsw i32 %145, 1
  store i32 %146, i32* %2, align 4
  br label %150

147:                                              ; preds = %128
  %148 = load i32, i32* @EBADMSG, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %2, align 4
  br label %150

150:                                              ; preds = %147, %144, %122
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local i32 @get_sectorsize(%struct.atmel_pmecc_user*) #1

declare dso_local i32 @get_strength(%struct.atmel_pmecc_user*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i64 @ATMEL_PMERRLOC_SIGMA(i32) #1

declare dso_local i32 @readl_relaxed_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
