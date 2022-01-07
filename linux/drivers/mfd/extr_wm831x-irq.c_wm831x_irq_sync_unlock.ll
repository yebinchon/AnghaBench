; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_wm831x-irq.c_wm831x_irq_sync_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_wm831x-irq.c_wm831x_irq_sync_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.wm831x = type { i64*, i64*, i64*, i32, i32 }

@WM831X_GPIO1_CONTROL = common dso_local global i64 0, align 8
@WM831X_GPN_INT_MODE = common dso_local global i32 0, align 4
@WM831X_GPN_POL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"IRQ mask sync: %x = %x\0A\00", align 1
@WM831X_INTERRUPT_STATUS_1_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @wm831x_irq_sync_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm831x_irq_sync_unlock(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.wm831x*, align 8
  %4 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %5 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %6 = call %struct.wm831x* @irq_data_get_irq_chip_data(%struct.irq_data* %5)
  store %struct.wm831x* %6, %struct.wm831x** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %47, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.wm831x*, %struct.wm831x** %3, align 8
  %10 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = call i32 @ARRAY_SIZE(i64* %11)
  %13 = icmp slt i32 %8, %12
  br i1 %13, label %14, label %50

14:                                               ; preds = %7
  %15 = load %struct.wm831x*, %struct.wm831x** %3, align 8
  %16 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %46

23:                                               ; preds = %14
  %24 = load %struct.wm831x*, %struct.wm831x** %3, align 8
  %25 = load i64, i64* @WM831X_GPIO1_CONTROL, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %25, %27
  %29 = load i32, i32* @WM831X_GPN_INT_MODE, align 4
  %30 = load i32, i32* @WM831X_GPN_POL, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.wm831x*, %struct.wm831x** %3, align 8
  %33 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @wm831x_set_bits(%struct.wm831x* %24, i64 %28, i32 %31, i64 %38)
  %40 = load %struct.wm831x*, %struct.wm831x** %3, align 8
  %41 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %23, %14
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %7

50:                                               ; preds = %7
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %117, %50
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.wm831x*, %struct.wm831x** %3, align 8
  %54 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = call i32 @ARRAY_SIZE(i64* %55)
  %57 = icmp slt i32 %52, %56
  br i1 %57, label %58, label %120

58:                                               ; preds = %51
  %59 = load %struct.wm831x*, %struct.wm831x** %3, align 8
  %60 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %59, i32 0, i32 1
  %61 = load i64*, i64** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.wm831x*, %struct.wm831x** %3, align 8
  %67 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %66, i32 0, i32 2
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %65, %72
  br i1 %73, label %74, label %116

74:                                               ; preds = %58
  %75 = load %struct.wm831x*, %struct.wm831x** %3, align 8
  %76 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = load i64, i64* @WM831X_INTERRUPT_STATUS_1_MASK, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %78, %80
  %82 = load %struct.wm831x*, %struct.wm831x** %3, align 8
  %83 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %82, i32 0, i32 1
  %84 = load i64*, i64** %83, align 8
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @dev_dbg(i32 %77, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %81, i64 %88)
  %90 = load %struct.wm831x*, %struct.wm831x** %3, align 8
  %91 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %90, i32 0, i32 1
  %92 = load i64*, i64** %91, align 8
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.wm831x*, %struct.wm831x** %3, align 8
  %98 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %97, i32 0, i32 2
  %99 = load i64*, i64** %98, align 8
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  store i64 %96, i64* %102, align 8
  %103 = load %struct.wm831x*, %struct.wm831x** %3, align 8
  %104 = load i64, i64* @WM831X_INTERRUPT_STATUS_1_MASK, align 8
  %105 = load i32, i32* %4, align 4
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %104, %106
  %108 = load %struct.wm831x*, %struct.wm831x** %3, align 8
  %109 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %108, i32 0, i32 1
  %110 = load i64*, i64** %109, align 8
  %111 = load i32, i32* %4, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %110, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @wm831x_reg_write(%struct.wm831x* %103, i64 %107, i64 %114)
  br label %116

116:                                              ; preds = %74, %58
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %4, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %4, align 4
  br label %51

120:                                              ; preds = %51
  %121 = load %struct.wm831x*, %struct.wm831x** %3, align 8
  %122 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %121, i32 0, i32 3
  %123 = call i32 @mutex_unlock(i32* %122)
  ret void
}

declare dso_local %struct.wm831x* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @wm831x_set_bits(%struct.wm831x*, i64, i32, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i64) #1

declare dso_local i32 @wm831x_reg_write(%struct.wm831x*, i64, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
