; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_output_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_output_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddb_output = type { %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32, i32, i32, i64, i64, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__**, %struct.ddb* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.ddb = type { i32 }

@DDB_PORT_LOOP = common dso_local global i64 0, align 8
@DMA_BASE_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ddb_output*)* @ddb_output_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ddb_output_start(%struct.ddb_output* %0) #0 {
  %2 = alloca %struct.ddb_output*, align 8
  %3 = alloca %struct.ddb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ddb_output* %0, %struct.ddb_output** %2, align 8
  %6 = load %struct.ddb_output*, %struct.ddb_output** %2, align 8
  %7 = getelementptr inbounds %struct.ddb_output, %struct.ddb_output* %6, i32 0, i32 1
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %10 = load %struct.ddb*, %struct.ddb** %9, align 8
  store %struct.ddb* %10, %struct.ddb** %3, align 8
  store i32 284, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %11 = load %struct.ddb_output*, %struct.ddb_output** %2, align 8
  %12 = getelementptr inbounds %struct.ddb_output, %struct.ddb_output* %11, i32 0, i32 0
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 2
  %15 = call i32 @spin_lock_irq(i32* %14)
  %16 = load %struct.ddb_output*, %struct.ddb_output** %2, align 8
  %17 = getelementptr inbounds %struct.ddb_output, %struct.ddb_output* %16, i32 0, i32 0
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 5
  store i64 0, i64* %19, align 8
  %20 = load %struct.ddb_output*, %struct.ddb_output** %2, align 8
  %21 = getelementptr inbounds %struct.ddb_output, %struct.ddb_output* %20, i32 0, i32 0
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 4
  store i64 0, i64* %23, align 8
  %24 = load %struct.ddb_output*, %struct.ddb_output** %2, align 8
  %25 = getelementptr inbounds %struct.ddb_output, %struct.ddb_output* %24, i32 0, i32 0
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 3
  store i64 0, i64* %27, align 8
  %28 = load %struct.ddb*, %struct.ddb** %3, align 8
  %29 = load %struct.ddb_output*, %struct.ddb_output** %2, align 8
  %30 = getelementptr inbounds %struct.ddb_output, %struct.ddb_output* %29, i32 0, i32 0
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = call i32 @DMA_BUFFER_CONTROL(%struct.TYPE_10__* %31)
  %33 = call i32 @ddbwritel(%struct.ddb* %28, i32 0, i32 %32)
  %34 = load %struct.ddb_output*, %struct.ddb_output** %2, align 8
  %35 = getelementptr inbounds %struct.ddb_output, %struct.ddb_output* %34, i32 0, i32 1
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %38, i64 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @DDB_PORT_LOOP, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %1
  store i32 8212, i32* %4, align 4
  br label %51

48:                                               ; preds = %1
  %49 = load %struct.ddb_output*, %struct.ddb_output** %2, align 8
  %50 = call i32 @calc_con(%struct.ddb_output* %49, i32* %4, i32* %5, i32 0)
  br label %51

51:                                               ; preds = %48, %47
  %52 = load %struct.ddb*, %struct.ddb** %3, align 8
  %53 = load %struct.ddb_output*, %struct.ddb_output** %2, align 8
  %54 = call i32 @TS_CONTROL(%struct.ddb_output* %53)
  %55 = call i32 @ddbwritel(%struct.ddb* %52, i32 0, i32 %54)
  %56 = load %struct.ddb*, %struct.ddb** %3, align 8
  %57 = load %struct.ddb_output*, %struct.ddb_output** %2, align 8
  %58 = call i32 @TS_CONTROL(%struct.ddb_output* %57)
  %59 = call i32 @ddbwritel(%struct.ddb* %56, i32 2, i32 %58)
  %60 = load %struct.ddb*, %struct.ddb** %3, align 8
  %61 = load %struct.ddb_output*, %struct.ddb_output** %2, align 8
  %62 = call i32 @TS_CONTROL(%struct.ddb_output* %61)
  %63 = call i32 @ddbwritel(%struct.ddb* %60, i32 0, i32 %62)
  %64 = load %struct.ddb*, %struct.ddb** %3, align 8
  %65 = load i32, i32* %4, align 4
  %66 = load %struct.ddb_output*, %struct.ddb_output** %2, align 8
  %67 = call i32 @TS_CONTROL(%struct.ddb_output* %66)
  %68 = call i32 @ddbwritel(%struct.ddb* %64, i32 %65, i32 %67)
  %69 = load %struct.ddb*, %struct.ddb** %3, align 8
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.ddb_output*, %struct.ddb_output** %2, align 8
  %72 = call i32 @TS_CONTROL2(%struct.ddb_output* %71)
  %73 = call i32 @ddbwritel(%struct.ddb* %69, i32 %70, i32 %72)
  %74 = load %struct.ddb*, %struct.ddb** %3, align 8
  %75 = load %struct.ddb_output*, %struct.ddb_output** %2, align 8
  %76 = getelementptr inbounds %struct.ddb_output, %struct.ddb_output* %75, i32 0, i32 0
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.ddb_output*, %struct.ddb_output** %2, align 8
  %81 = getelementptr inbounds %struct.ddb_output, %struct.ddb_output* %80, i32 0, i32 0
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = call i32 @DMA_BUFFER_SIZE(%struct.TYPE_10__* %82)
  %84 = call i32 @ddbwritel(%struct.ddb* %74, i32 %79, i32 %83)
  %85 = load %struct.ddb*, %struct.ddb** %3, align 8
  %86 = load %struct.ddb_output*, %struct.ddb_output** %2, align 8
  %87 = getelementptr inbounds %struct.ddb_output, %struct.ddb_output* %86, i32 0, i32 0
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = call i32 @DMA_BUFFER_ACK(%struct.TYPE_10__* %88)
  %90 = call i32 @ddbwritel(%struct.ddb* %85, i32 0, i32 %89)
  %91 = load %struct.ddb*, %struct.ddb** %3, align 8
  %92 = load i32, i32* @DMA_BASE_READ, align 4
  %93 = call i32 @ddbwritel(%struct.ddb* %91, i32 1, i32 %92)
  %94 = load %struct.ddb*, %struct.ddb** %3, align 8
  %95 = load %struct.ddb_output*, %struct.ddb_output** %2, align 8
  %96 = getelementptr inbounds %struct.ddb_output, %struct.ddb_output* %95, i32 0, i32 0
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = call i32 @DMA_BUFFER_CONTROL(%struct.TYPE_10__* %97)
  %99 = call i32 @ddbwritel(%struct.ddb* %94, i32 7, i32 %98)
  %100 = load %struct.ddb*, %struct.ddb** %3, align 8
  %101 = load i32, i32* %4, align 4
  %102 = or i32 %101, 1
  %103 = load %struct.ddb_output*, %struct.ddb_output** %2, align 8
  %104 = call i32 @TS_CONTROL(%struct.ddb_output* %103)
  %105 = call i32 @ddbwritel(%struct.ddb* %100, i32 %102, i32 %104)
  %106 = load %struct.ddb_output*, %struct.ddb_output** %2, align 8
  %107 = getelementptr inbounds %struct.ddb_output, %struct.ddb_output* %106, i32 0, i32 0
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 1
  store i32 1, i32* %109, align 4
  %110 = load %struct.ddb_output*, %struct.ddb_output** %2, align 8
  %111 = getelementptr inbounds %struct.ddb_output, %struct.ddb_output* %110, i32 0, i32 0
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 2
  %114 = call i32 @spin_unlock_irq(i32* %113)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @ddbwritel(%struct.ddb*, i32, i32) #1

declare dso_local i32 @DMA_BUFFER_CONTROL(%struct.TYPE_10__*) #1

declare dso_local i32 @calc_con(%struct.ddb_output*, i32*, i32*, i32) #1

declare dso_local i32 @TS_CONTROL(%struct.ddb_output*) #1

declare dso_local i32 @TS_CONTROL2(%struct.ddb_output*) #1

declare dso_local i32 @DMA_BUFFER_SIZE(%struct.TYPE_10__*) #1

declare dso_local i32 @DMA_BUFFER_ACK(%struct.TYPE_10__*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
