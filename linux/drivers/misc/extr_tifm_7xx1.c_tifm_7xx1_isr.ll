; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_tifm_7xx1.c_tifm_7xx1_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_tifm_7xx1.c_tifm_7xx1_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tifm_adapter = type { i32, i32, i32, i32, i64, i64, %struct.tifm_dev** }
%struct.tifm_dev = type { i32 (%struct.tifm_dev*)*, i32 (%struct.tifm_dev*)* }

@FM_INTERRUPT_STATUS = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@TIFM_IRQ_ENABLE = common dso_local global i32 0, align 4
@FM_CLEAR_INTERRUPT_ENABLE = common dso_local global i64 0, align 8
@FM_SET_INTERRUPT_ENABLE = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @tifm_7xx1_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tifm_7xx1_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tifm_adapter*, align 8
  %7 = alloca %struct.tifm_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.tifm_adapter*
  store %struct.tifm_adapter* %11, %struct.tifm_adapter** %6, align 8
  %12 = load %struct.tifm_adapter*, %struct.tifm_adapter** %6, align 8
  %13 = getelementptr inbounds %struct.tifm_adapter, %struct.tifm_adapter* %12, i32 0, i32 2
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.tifm_adapter*, %struct.tifm_adapter** %6, align 8
  %16 = getelementptr inbounds %struct.tifm_adapter, %struct.tifm_adapter* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @FM_INTERRUPT_STATUS, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl(i64 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %31

26:                                               ; preds = %23, %2
  %27 = load %struct.tifm_adapter*, %struct.tifm_adapter** %6, align 8
  %28 = getelementptr inbounds %struct.tifm_adapter, %struct.tifm_adapter* %27, i32 0, i32 2
  %29 = call i32 @spin_unlock(i32* %28)
  %30 = load i32, i32* @IRQ_NONE, align 4
  store i32 %30, i32* %3, align 4
  br label %143

31:                                               ; preds = %23
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @TIFM_IRQ_ENABLE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %103

36:                                               ; preds = %31
  %37 = load i32, i32* @TIFM_IRQ_ENABLE, align 4
  %38 = load %struct.tifm_adapter*, %struct.tifm_adapter** %6, align 8
  %39 = getelementptr inbounds %struct.tifm_adapter, %struct.tifm_adapter* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @FM_CLEAR_INTERRUPT_ENABLE, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel(i32 %37, i64 %42)
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %88, %36
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.tifm_adapter*, %struct.tifm_adapter** %6, align 8
  %47 = getelementptr inbounds %struct.tifm_adapter, %struct.tifm_adapter* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ult i32 %45, %48
  br i1 %49, label %50, label %91

50:                                               ; preds = %44
  %51 = load %struct.tifm_adapter*, %struct.tifm_adapter** %6, align 8
  %52 = getelementptr inbounds %struct.tifm_adapter, %struct.tifm_adapter* %51, i32 0, i32 6
  %53 = load %struct.tifm_dev**, %struct.tifm_dev*** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.tifm_dev*, %struct.tifm_dev** %53, i64 %55
  %57 = load %struct.tifm_dev*, %struct.tifm_dev** %56, align 8
  store %struct.tifm_dev* %57, %struct.tifm_dev** %7, align 8
  %58 = load %struct.tifm_dev*, %struct.tifm_dev** %7, align 8
  %59 = icmp ne %struct.tifm_dev* %58, null
  br i1 %59, label %60, label %87

60:                                               ; preds = %50
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = lshr i32 %61, %62
  %64 = call i32 @TIFM_IRQ_FIFOMASK(i32 1)
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = load %struct.tifm_dev*, %struct.tifm_dev** %7, align 8
  %69 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %68, i32 0, i32 1
  %70 = load i32 (%struct.tifm_dev*)*, i32 (%struct.tifm_dev*)** %69, align 8
  %71 = load %struct.tifm_dev*, %struct.tifm_dev** %7, align 8
  %72 = call i32 %70(%struct.tifm_dev* %71)
  br label %73

73:                                               ; preds = %67, %60
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %9, align 4
  %76 = lshr i32 %74, %75
  %77 = call i32 @TIFM_IRQ_CARDMASK(i32 1)
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %73
  %81 = load %struct.tifm_dev*, %struct.tifm_dev** %7, align 8
  %82 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %81, i32 0, i32 0
  %83 = load i32 (%struct.tifm_dev*)*, i32 (%struct.tifm_dev*)** %82, align 8
  %84 = load %struct.tifm_dev*, %struct.tifm_dev** %7, align 8
  %85 = call i32 %83(%struct.tifm_dev* %84)
  br label %86

86:                                               ; preds = %80, %73
  br label %87

87:                                               ; preds = %86, %50
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %9, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %9, align 4
  br label %44

91:                                               ; preds = %44
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.tifm_adapter*, %struct.tifm_adapter** %6, align 8
  %94 = getelementptr inbounds %struct.tifm_adapter, %struct.tifm_adapter* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = shl i32 1, %95
  %97 = sub nsw i32 %96, 1
  %98 = and i32 %92, %97
  %99 = load %struct.tifm_adapter*, %struct.tifm_adapter** %6, align 8
  %100 = getelementptr inbounds %struct.tifm_adapter, %struct.tifm_adapter* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %91, %31
  %104 = load i32, i32* %8, align 4
  %105 = load %struct.tifm_adapter*, %struct.tifm_adapter** %6, align 8
  %106 = getelementptr inbounds %struct.tifm_adapter, %struct.tifm_adapter* %105, i32 0, i32 4
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @FM_INTERRUPT_STATUS, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @writel(i32 %104, i64 %109)
  %111 = load %struct.tifm_adapter*, %struct.tifm_adapter** %6, align 8
  %112 = getelementptr inbounds %struct.tifm_adapter, %struct.tifm_adapter* %111, i32 0, i32 5
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %103
  %116 = load %struct.tifm_adapter*, %struct.tifm_adapter** %6, align 8
  %117 = getelementptr inbounds %struct.tifm_adapter, %struct.tifm_adapter* %116, i32 0, i32 5
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @complete_all(i64 %118)
  br label %138

120:                                              ; preds = %103
  %121 = load %struct.tifm_adapter*, %struct.tifm_adapter** %6, align 8
  %122 = getelementptr inbounds %struct.tifm_adapter, %struct.tifm_adapter* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %133, label %125

125:                                              ; preds = %120
  %126 = load i32, i32* @TIFM_IRQ_ENABLE, align 4
  %127 = load %struct.tifm_adapter*, %struct.tifm_adapter** %6, align 8
  %128 = getelementptr inbounds %struct.tifm_adapter, %struct.tifm_adapter* %127, i32 0, i32 4
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @FM_SET_INTERRUPT_ENABLE, align 8
  %131 = add nsw i64 %129, %130
  %132 = call i32 @writel(i32 %126, i64 %131)
  br label %137

133:                                              ; preds = %120
  %134 = load %struct.tifm_adapter*, %struct.tifm_adapter** %6, align 8
  %135 = getelementptr inbounds %struct.tifm_adapter, %struct.tifm_adapter* %134, i32 0, i32 3
  %136 = call i32 @tifm_queue_work(i32* %135)
  br label %137

137:                                              ; preds = %133, %125
  br label %138

138:                                              ; preds = %137, %115
  %139 = load %struct.tifm_adapter*, %struct.tifm_adapter** %6, align 8
  %140 = getelementptr inbounds %struct.tifm_adapter, %struct.tifm_adapter* %139, i32 0, i32 2
  %141 = call i32 @spin_unlock(i32* %140)
  %142 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %142, i32* %3, align 4
  br label %143

143:                                              ; preds = %138, %26
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @TIFM_IRQ_FIFOMASK(i32) #1

declare dso_local i32 @TIFM_IRQ_CARDMASK(i32) #1

declare dso_local i32 @complete_all(i64) #1

declare dso_local i32 @tifm_queue_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
