; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_max2165.c_max2165_set_rf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_max2165.c_max2165_set_rf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max2165_priv = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@REG_NDIV_INT = common dso_local global i32 0, align 4
@REG_NDIV_FRAC2 = common dso_local global i32 0, align 4
@REG_NDIV_FRAC1 = common dso_local global i32 0, align 4
@REG_NDIV_FRAC0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"tf = %X\0A\00", align 1
@REG_TRACK_FILTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max2165_priv*, i32)* @max2165_set_rf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max2165_set_rf(%struct.max2165_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.max2165_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.max2165_priv* %0, %struct.max2165_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = sdiv i32 %12, 1000
  %14 = load %struct.max2165_priv*, %struct.max2165_priv** %4, align 8
  %15 = getelementptr inbounds %struct.max2165_priv, %struct.max2165_priv* %14, i32 0, i32 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %18, 1000
  %20 = call i32 @fixpt_div32(i32 %13, i32 %19, i32* %9, i32* %10)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %3, align 4
  br label %86

25:                                               ; preds = %2
  %26 = load i32, i32* %10, align 4
  %27 = ashr i32 %26, 12
  store i32 %27, i32* %10, align 4
  %28 = load %struct.max2165_priv*, %struct.max2165_priv** %4, align 8
  %29 = load i32, i32* @REG_NDIV_INT, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @max2165_write_reg(%struct.max2165_priv* %28, i32 %29, i32 %30)
  %32 = load %struct.max2165_priv*, %struct.max2165_priv** %4, align 8
  %33 = load i32, i32* @REG_NDIV_FRAC2, align 4
  %34 = load i32, i32* %10, align 4
  %35 = ashr i32 %34, 16
  %36 = call i32 @max2165_mask_write_reg(%struct.max2165_priv* %32, i32 %33, i32 15, i32 %35)
  %37 = load %struct.max2165_priv*, %struct.max2165_priv** %4, align 8
  %38 = load i32, i32* @REG_NDIV_FRAC1, align 4
  %39 = load i32, i32* %10, align 4
  %40 = ashr i32 %39, 8
  %41 = call i32 @max2165_write_reg(%struct.max2165_priv* %37, i32 %38, i32 %40)
  %42 = load %struct.max2165_priv*, %struct.max2165_priv** %4, align 8
  %43 = load i32, i32* @REG_NDIV_FRAC0, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @max2165_write_reg(%struct.max2165_priv* %42, i32 %43, i32 %44)
  %46 = load i32, i32* %5, align 4
  %47 = icmp slt i32 %46, 725000000
  br i1 %47, label %48, label %52

48:                                               ; preds = %25
  %49 = load %struct.max2165_priv*, %struct.max2165_priv** %4, align 8
  %50 = getelementptr inbounds %struct.max2165_priv, %struct.max2165_priv* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  br label %56

52:                                               ; preds = %25
  %53 = load %struct.max2165_priv*, %struct.max2165_priv** %4, align 8
  %54 = getelementptr inbounds %struct.max2165_priv, %struct.max2165_priv* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  br label %56

56:                                               ; preds = %52, %48
  %57 = phi i32 [ %51, %48 ], [ %55, %52 ]
  store i32 %57, i32* %7, align 4
  %58 = load %struct.max2165_priv*, %struct.max2165_priv** %4, align 8
  %59 = getelementptr inbounds %struct.max2165_priv, %struct.max2165_priv* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %8, align 4
  %61 = load %struct.max2165_priv*, %struct.max2165_priv** %4, align 8
  %62 = getelementptr inbounds %struct.max2165_priv, %struct.max2165_priv* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.max2165_priv*, %struct.max2165_priv** %4, align 8
  %65 = getelementptr inbounds %struct.max2165_priv, %struct.max2165_priv* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = sub nsw i32 %63, %66
  %68 = load i32, i32* %5, align 4
  %69 = sdiv i32 %68, 1000
  %70 = sub nsw i32 %69, 470000
  %71 = mul nsw i32 %67, %70
  %72 = sdiv i32 %71, 310000
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @dprintk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %7, align 4
  %79 = shl i32 %78, 4
  %80 = load i32, i32* %6, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %6, align 4
  %82 = load %struct.max2165_priv*, %struct.max2165_priv** %4, align 8
  %83 = load i32, i32* @REG_TRACK_FILTER, align 4
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @max2165_write_reg(%struct.max2165_priv* %82, i32 %83, i32 %84)
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %56, %23
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @fixpt_div32(i32, i32, i32*, i32*) #1

declare dso_local i32 @max2165_write_reg(%struct.max2165_priv*, i32, i32) #1

declare dso_local i32 @max2165_mask_write_reg(%struct.max2165_priv*, i32, i32, i32) #1

declare dso_local i32 @dprintk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
