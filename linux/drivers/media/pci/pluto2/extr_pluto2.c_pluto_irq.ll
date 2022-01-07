; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/pluto2/extr_pluto2.c_pluto_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/pluto2/extr_pluto2.c_pluto_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pluto = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@REG_TSCR = common dso_local global i32 0, align 4
@TSCR_DE = common dso_local global i32 0, align 4
@TSCR_OVR = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"card has hung or been ejected.\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@TSCR_NBPACKETS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"overflow irq (%d)\0A\00", align 1
@TSCR_IACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pluto_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pluto_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pluto*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.pluto*
  store %struct.pluto* %9, %struct.pluto** %6, align 8
  %10 = load %struct.pluto*, %struct.pluto** %6, align 8
  %11 = load i32, i32* @REG_TSCR, align 4
  %12 = call i32 @pluto_readreg(%struct.pluto* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @TSCR_DE, align 4
  %15 = load i32, i32* @TSCR_OVR, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %13, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @IRQ_NONE, align 4
  store i32 %20, i32* %3, align 4
  br label %97

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %39

24:                                               ; preds = %21
  %25 = load %struct.pluto*, %struct.pluto** %6, align 8
  %26 = getelementptr inbounds %struct.pluto, %struct.pluto* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.pluto*, %struct.pluto** %6, align 8
  %31 = getelementptr inbounds %struct.pluto, %struct.pluto* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 (i32*, i8*, ...) @dev_err(i32* %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %29, %24
  %36 = load %struct.pluto*, %struct.pluto** %6, align 8
  %37 = getelementptr inbounds %struct.pluto, %struct.pluto* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %38, i32* %3, align 4
  br label %97

39:                                               ; preds = %21
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @TSCR_DE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %79

44:                                               ; preds = %39
  %45 = load %struct.pluto*, %struct.pluto** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @TSCR_NBPACKETS, align 4
  %48 = and i32 %46, %47
  %49 = ashr i32 %48, 24
  %50 = call i32 @pluto_dma_end(%struct.pluto* %45, i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @TSCR_OVR, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %44
  %56 = load %struct.pluto*, %struct.pluto** %6, align 8
  %57 = getelementptr inbounds %struct.pluto, %struct.pluto* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %57, align 8
  br label %60

60:                                               ; preds = %55, %44
  %61 = load %struct.pluto*, %struct.pluto** %6, align 8
  %62 = getelementptr inbounds %struct.pluto, %struct.pluto* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %60
  %66 = load %struct.pluto*, %struct.pluto** %6, align 8
  %67 = getelementptr inbounds %struct.pluto, %struct.pluto* %66, i32 0, i32 2
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load %struct.pluto*, %struct.pluto** %6, align 8
  %71 = getelementptr inbounds %struct.pluto, %struct.pluto* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = call i32 (i32*, i8*, ...) @dev_err(i32* %69, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %72)
  %74 = load %struct.pluto*, %struct.pluto** %6, align 8
  %75 = call i32 @pluto_reset_ts(%struct.pluto* %74, i32 1)
  %76 = load %struct.pluto*, %struct.pluto** %6, align 8
  %77 = getelementptr inbounds %struct.pluto, %struct.pluto* %76, i32 0, i32 1
  store i64 0, i64* %77, align 8
  br label %78

78:                                               ; preds = %65, %60
  br label %90

79:                                               ; preds = %39
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @TSCR_OVR, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load %struct.pluto*, %struct.pluto** %6, align 8
  %86 = getelementptr inbounds %struct.pluto, %struct.pluto* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %86, align 8
  br label %89

89:                                               ; preds = %84, %79
  br label %90

90:                                               ; preds = %89, %78
  %91 = load %struct.pluto*, %struct.pluto** %6, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @TSCR_IACK, align 4
  %94 = or i32 %92, %93
  %95 = call i32 @pluto_write_tscr(%struct.pluto* %91, i32 %94)
  %96 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %90, %35, %19
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @pluto_readreg(%struct.pluto*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @pluto_dma_end(%struct.pluto*, i32) #1

declare dso_local i32 @pluto_reset_ts(%struct.pluto*, i32) #1

declare dso_local i32 @pluto_write_tscr(%struct.pluto*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
