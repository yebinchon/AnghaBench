; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_input_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_input_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddb_input = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32, i64, i64, i64 }
%struct.TYPE_5__ = type { i64, %struct.ddb* }
%struct.ddb = type { i32 }

@DMA_BASE_WRITE = common dso_local global i32 0, align 4
@DDB_TUNER_DUMMY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ddb_input*)* @ddb_input_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ddb_input_start(%struct.ddb_input* %0) #0 {
  %2 = alloca %struct.ddb_input*, align 8
  %3 = alloca %struct.ddb*, align 8
  store %struct.ddb_input* %0, %struct.ddb_input** %2, align 8
  %4 = load %struct.ddb_input*, %struct.ddb_input** %2, align 8
  %5 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %4, i32 0, i32 1
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %8 = load %struct.ddb*, %struct.ddb** %7, align 8
  store %struct.ddb* %8, %struct.ddb** %3, align 8
  %9 = load %struct.ddb_input*, %struct.ddb_input** %2, align 8
  %10 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %13 = call i32 @spin_lock_irq(i32* %12)
  %14 = load %struct.ddb_input*, %struct.ddb_input** %2, align 8
  %15 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 5
  store i64 0, i64* %17, align 8
  %18 = load %struct.ddb_input*, %struct.ddb_input** %2, align 8
  %19 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 4
  store i64 0, i64* %21, align 8
  %22 = load %struct.ddb_input*, %struct.ddb_input** %2, align 8
  %23 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = load %struct.ddb*, %struct.ddb** %3, align 8
  %27 = load %struct.ddb_input*, %struct.ddb_input** %2, align 8
  %28 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = call i32 @DMA_BUFFER_CONTROL(%struct.TYPE_6__* %29)
  %31 = call i32 @ddbwritel(%struct.ddb* %26, i32 0, i32 %30)
  %32 = load %struct.ddb*, %struct.ddb** %3, align 8
  %33 = load %struct.ddb_input*, %struct.ddb_input** %2, align 8
  %34 = call i32 @TS_CONTROL(%struct.ddb_input* %33)
  %35 = call i32 @ddbwritel(%struct.ddb* %32, i32 0, i32 %34)
  %36 = load %struct.ddb*, %struct.ddb** %3, align 8
  %37 = load %struct.ddb_input*, %struct.ddb_input** %2, align 8
  %38 = call i32 @TS_CONTROL(%struct.ddb_input* %37)
  %39 = call i32 @ddbwritel(%struct.ddb* %36, i32 2, i32 %38)
  %40 = load %struct.ddb*, %struct.ddb** %3, align 8
  %41 = load %struct.ddb_input*, %struct.ddb_input** %2, align 8
  %42 = call i32 @TS_CONTROL(%struct.ddb_input* %41)
  %43 = call i32 @ddbwritel(%struct.ddb* %40, i32 0, i32 %42)
  %44 = load %struct.ddb*, %struct.ddb** %3, align 8
  %45 = load %struct.ddb_input*, %struct.ddb_input** %2, align 8
  %46 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.ddb_input*, %struct.ddb_input** %2, align 8
  %51 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = call i32 @DMA_BUFFER_SIZE(%struct.TYPE_6__* %52)
  %54 = call i32 @ddbwritel(%struct.ddb* %44, i32 %49, i32 %53)
  %55 = load %struct.ddb*, %struct.ddb** %3, align 8
  %56 = load %struct.ddb_input*, %struct.ddb_input** %2, align 8
  %57 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = call i32 @DMA_BUFFER_ACK(%struct.TYPE_6__* %58)
  %60 = call i32 @ddbwritel(%struct.ddb* %55, i32 0, i32 %59)
  %61 = load %struct.ddb*, %struct.ddb** %3, align 8
  %62 = load i32, i32* @DMA_BASE_WRITE, align 4
  %63 = call i32 @ddbwritel(%struct.ddb* %61, i32 1, i32 %62)
  %64 = load %struct.ddb*, %struct.ddb** %3, align 8
  %65 = load %struct.ddb_input*, %struct.ddb_input** %2, align 8
  %66 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = call i32 @DMA_BUFFER_CONTROL(%struct.TYPE_6__* %67)
  %69 = call i32 @ddbwritel(%struct.ddb* %64, i32 3, i32 %68)
  %70 = load %struct.ddb*, %struct.ddb** %3, align 8
  %71 = load %struct.ddb_input*, %struct.ddb_input** %2, align 8
  %72 = call i32 @TS_CONTROL(%struct.ddb_input* %71)
  %73 = call i32 @ddbwritel(%struct.ddb* %70, i32 9, i32 %72)
  %74 = load %struct.ddb_input*, %struct.ddb_input** %2, align 8
  %75 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %74, i32 0, i32 1
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @DDB_TUNER_DUMMY, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %1
  %82 = load %struct.ddb*, %struct.ddb** %3, align 8
  %83 = load %struct.ddb_input*, %struct.ddb_input** %2, align 8
  %84 = call i32 @TS_CONTROL2(%struct.ddb_input* %83)
  %85 = call i32 @ddbwritel(%struct.ddb* %82, i32 1048321, i32 %84)
  br label %86

86:                                               ; preds = %81, %1
  %87 = load %struct.ddb_input*, %struct.ddb_input** %2, align 8
  %88 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %87, i32 0, i32 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  store i32 1, i32* %90, align 4
  %91 = load %struct.ddb_input*, %struct.ddb_input** %2, align 8
  %92 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %91, i32 0, i32 0
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 2
  %95 = call i32 @spin_unlock_irq(i32* %94)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @ddbwritel(%struct.ddb*, i32, i32) #1

declare dso_local i32 @DMA_BUFFER_CONTROL(%struct.TYPE_6__*) #1

declare dso_local i32 @TS_CONTROL(%struct.ddb_input*) #1

declare dso_local i32 @DMA_BUFFER_SIZE(%struct.TYPE_6__*) #1

declare dso_local i32 @DMA_BUFFER_ACK(%struct.TYPE_6__*) #1

declare dso_local i32 @TS_CONTROL2(%struct.ddb_input*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
