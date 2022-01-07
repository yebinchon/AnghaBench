; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_buffers_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_buffers_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddb = type { i32, i32, %struct.ddb_port* }
%struct.ddb_port = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__** }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ddb_buffers_alloc(%struct.ddb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ddb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ddb_port*, align 8
  store %struct.ddb* %0, %struct.ddb** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %118, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.ddb*, %struct.ddb** %3, align 8
  %9 = getelementptr inbounds %struct.ddb, %struct.ddb* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %121

12:                                               ; preds = %6
  %13 = load %struct.ddb*, %struct.ddb** %3, align 8
  %14 = getelementptr inbounds %struct.ddb, %struct.ddb* %13, i32 0, i32 2
  %15 = load %struct.ddb_port*, %struct.ddb_port** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %15, i64 %17
  store %struct.ddb_port* %18, %struct.ddb_port** %5, align 8
  %19 = load %struct.ddb_port*, %struct.ddb_port** %5, align 8
  %20 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %116 [
    i32 128, label %22
    i32 130, label %71
    i32 129, label %71
  ]

22:                                               ; preds = %12
  %23 = load %struct.ddb_port*, %struct.ddb_port** %5, align 8
  %24 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %23, i32 0, i32 2
  %25 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %25, i64 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %22
  %32 = load %struct.ddb*, %struct.ddb** %3, align 8
  %33 = getelementptr inbounds %struct.ddb, %struct.ddb* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ddb_port*, %struct.ddb_port** %5, align 8
  %36 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %35, i32 0, i32 2
  %37 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %37, i64 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dma_alloc(i32 %34, i32 %41, i32 0)
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %31
  store i32 -1, i32* %2, align 4
  br label %124

45:                                               ; preds = %31
  br label %46

46:                                               ; preds = %45, %22
  %47 = load %struct.ddb_port*, %struct.ddb_port** %5, align 8
  %48 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %47, i32 0, i32 2
  %49 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %49, i64 1
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %46
  %56 = load %struct.ddb*, %struct.ddb** %3, align 8
  %57 = getelementptr inbounds %struct.ddb, %struct.ddb* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ddb_port*, %struct.ddb_port** %5, align 8
  %60 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %59, i32 0, i32 2
  %61 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %61, i64 1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @dma_alloc(i32 %58, i32 %65, i32 0)
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %55
  store i32 -1, i32* %2, align 4
  br label %124

69:                                               ; preds = %55
  br label %70

70:                                               ; preds = %69, %46
  br label %117

71:                                               ; preds = %12, %12
  %72 = load %struct.ddb_port*, %struct.ddb_port** %5, align 8
  %73 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %72, i32 0, i32 2
  %74 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %74, i64 0
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %95

80:                                               ; preds = %71
  %81 = load %struct.ddb*, %struct.ddb** %3, align 8
  %82 = getelementptr inbounds %struct.ddb, %struct.ddb* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.ddb_port*, %struct.ddb_port** %5, align 8
  %85 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %84, i32 0, i32 2
  %86 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %86, i64 0
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @dma_alloc(i32 %83, i32 %90, i32 0)
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %80
  store i32 -1, i32* %2, align 4
  br label %124

94:                                               ; preds = %80
  br label %95

95:                                               ; preds = %94, %71
  %96 = load %struct.ddb_port*, %struct.ddb_port** %5, align 8
  %97 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %96, i32 0, i32 1
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %115

102:                                              ; preds = %95
  %103 = load %struct.ddb*, %struct.ddb** %3, align 8
  %104 = getelementptr inbounds %struct.ddb, %struct.ddb* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.ddb_port*, %struct.ddb_port** %5, align 8
  %107 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %106, i32 0, i32 1
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @dma_alloc(i32 %105, i32 %110, i32 1)
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %102
  store i32 -1, i32* %2, align 4
  br label %124

114:                                              ; preds = %102
  br label %115

115:                                              ; preds = %114, %95
  br label %117

116:                                              ; preds = %12
  br label %117

117:                                              ; preds = %116, %115, %70
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %4, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %4, align 4
  br label %6

121:                                              ; preds = %6
  %122 = load %struct.ddb*, %struct.ddb** %3, align 8
  %123 = call i32 @ddb_set_dma_tables(%struct.ddb* %122)
  store i32 0, i32* %2, align 4
  br label %124

124:                                              ; preds = %121, %113, %93, %68, %44
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local i32 @dma_alloc(i32, i32, i32) #1

declare dso_local i32 @ddb_set_dma_tables(%struct.ddb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
