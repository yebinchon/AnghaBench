; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_isif.c_isif_config_linearization.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_isif.c_isif_config_linearization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isif_linearize = type { i32, i32*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@LINCFG0 = common dso_local global i32 0, align 4
@ISIF_LIN_CORRSFT_SHIFT = common dso_local global i32 0, align 4
@ISIF_LIN_SCALE_FACT_INTEG_SHIFT = common dso_local global i32 0, align 4
@LINCFG1 = common dso_local global i32 0, align 4
@ISIF_LINEAR_TAB_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isif_linearize*)* @isif_config_linearization to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isif_config_linearization(%struct.isif_linearize* %0) #0 {
  %2 = alloca %struct.isif_linearize*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.isif_linearize* %0, %struct.isif_linearize** %2, align 8
  %5 = load %struct.isif_linearize*, %struct.isif_linearize** %2, align 8
  %6 = getelementptr inbounds %struct.isif_linearize, %struct.isif_linearize* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @LINCFG0, align 4
  %11 = call i32 @regw(i32 0, i32 %10)
  br label %76

12:                                               ; preds = %1
  %13 = load %struct.isif_linearize*, %struct.isif_linearize** %2, align 8
  %14 = getelementptr inbounds %struct.isif_linearize, %struct.isif_linearize* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @ISIF_LIN_CORRSFT_SHIFT, align 4
  %17 = shl i32 %15, %16
  %18 = or i32 %17, 1
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @LINCFG0, align 4
  %21 = call i32 @regw(i32 %19, i32 %20)
  %22 = load %struct.isif_linearize*, %struct.isif_linearize** %2, align 8
  %23 = getelementptr inbounds %struct.isif_linearize, %struct.isif_linearize* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* @ISIF_LIN_SCALE_FACT_INTEG_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = load %struct.isif_linearize*, %struct.isif_linearize** %2, align 8
  %33 = getelementptr inbounds %struct.isif_linearize, %struct.isif_linearize* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %31, %35
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @LINCFG1, align 4
  %39 = call i32 @regw(i32 %37, i32 %38)
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %73, %12
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @ISIF_LINEAR_TAB_SIZE, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %76

44:                                               ; preds = %40
  %45 = load i32, i32* %4, align 4
  %46 = srem i32 %45, 2
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %44
  %49 = load %struct.isif_linearize*, %struct.isif_linearize** %2, align 8
  %50 = getelementptr inbounds %struct.isif_linearize, %struct.isif_linearize* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %4, align 4
  %57 = ashr i32 %56, 1
  %58 = shl i32 %57, 2
  %59 = call i32 @regw_lin_tbl(i32 %55, i32 %58, i32 1)
  br label %72

60:                                               ; preds = %44
  %61 = load %struct.isif_linearize*, %struct.isif_linearize** %2, align 8
  %62 = getelementptr inbounds %struct.isif_linearize, %struct.isif_linearize* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %4, align 4
  %69 = ashr i32 %68, 1
  %70 = shl i32 %69, 2
  %71 = call i32 @regw_lin_tbl(i32 %67, i32 %70, i32 0)
  br label %72

72:                                               ; preds = %60, %48
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %4, align 4
  br label %40

76:                                               ; preds = %9, %40
  ret void
}

declare dso_local i32 @regw(i32, i32) #1

declare dso_local i32 @regw_lin_tbl(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
