; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_buffers_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_buffers_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddb = type { i32, i32, %struct.ddb_port* }
%struct.ddb_port = type { %struct.TYPE_4__*, %struct.TYPE_3__** }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ddb_buffers_free(%struct.ddb* %0) #0 {
  %2 = alloca %struct.ddb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ddb_port*, align 8
  store %struct.ddb* %0, %struct.ddb** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %96, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.ddb*, %struct.ddb** %2, align 8
  %8 = getelementptr inbounds %struct.ddb, %struct.ddb* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %99

11:                                               ; preds = %5
  %12 = load %struct.ddb*, %struct.ddb** %2, align 8
  %13 = getelementptr inbounds %struct.ddb, %struct.ddb* %12, i32 0, i32 2
  %14 = load %struct.ddb_port*, %struct.ddb_port** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %14, i64 %16
  store %struct.ddb_port* %17, %struct.ddb_port** %4, align 8
  %18 = load %struct.ddb_port*, %struct.ddb_port** %4, align 8
  %19 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %20, i64 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = icmp ne %struct.TYPE_3__* %22, null
  br i1 %23, label %24, label %45

24:                                               ; preds = %11
  %25 = load %struct.ddb_port*, %struct.ddb_port** %4, align 8
  %26 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %27, i64 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %24
  %34 = load %struct.ddb*, %struct.ddb** %2, align 8
  %35 = getelementptr inbounds %struct.ddb, %struct.ddb* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ddb_port*, %struct.ddb_port** %4, align 8
  %38 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %39, i64 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @dma_free(i32 %36, i64 %43, i32 0)
  br label %45

45:                                               ; preds = %33, %24, %11
  %46 = load %struct.ddb_port*, %struct.ddb_port** %4, align 8
  %47 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %48, i64 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = icmp ne %struct.TYPE_3__* %50, null
  br i1 %51, label %52, label %73

52:                                               ; preds = %45
  %53 = load %struct.ddb_port*, %struct.ddb_port** %4, align 8
  %54 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %55, i64 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %52
  %62 = load %struct.ddb*, %struct.ddb** %2, align 8
  %63 = getelementptr inbounds %struct.ddb, %struct.ddb* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ddb_port*, %struct.ddb_port** %4, align 8
  %66 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %65, i32 0, i32 1
  %67 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %67, i64 1
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @dma_free(i32 %64, i64 %71, i32 0)
  br label %73

73:                                               ; preds = %61, %52, %45
  %74 = load %struct.ddb_port*, %struct.ddb_port** %4, align 8
  %75 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = icmp ne %struct.TYPE_4__* %76, null
  br i1 %77, label %78, label %95

78:                                               ; preds = %73
  %79 = load %struct.ddb_port*, %struct.ddb_port** %4, align 8
  %80 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %78
  %86 = load %struct.ddb*, %struct.ddb** %2, align 8
  %87 = getelementptr inbounds %struct.ddb, %struct.ddb* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.ddb_port*, %struct.ddb_port** %4, align 8
  %90 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @dma_free(i32 %88, i64 %93, i32 1)
  br label %95

95:                                               ; preds = %85, %78, %73
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %3, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %3, align 4
  br label %5

99:                                               ; preds = %5
  ret void
}

declare dso_local i32 @dma_free(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
