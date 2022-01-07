; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_unredirect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_unredirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddb_port = type { %struct.TYPE_12__*, %struct.ddb_input** }
%struct.TYPE_12__ = type { %struct.ddb_input*, %struct.TYPE_7__* }
%struct.ddb_input = type { %struct.ddb_output*, %struct.ddb_input*, i32, %struct.TYPE_11__* }
%struct.ddb_output = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__**, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { %struct.ddb_input* }
%struct.TYPE_8__ = type { %struct.ddb_input* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_7__ = type { i64 }

@redirect_lock = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ddb_port*)* @ddb_unredirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ddb_unredirect(%struct.ddb_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ddb_port*, align 8
  %4 = alloca %struct.ddb_input*, align 8
  %5 = alloca %struct.ddb_input*, align 8
  %6 = alloca %struct.ddb_output*, align 8
  store %struct.ddb_port* %0, %struct.ddb_port** %3, align 8
  store %struct.ddb_input* null, %struct.ddb_input** %5, align 8
  store %struct.ddb_output* null, %struct.ddb_output** %6, align 8
  %7 = call i32 @mutex_lock(i32* @redirect_lock)
  %8 = load %struct.ddb_port*, %struct.ddb_port** %3, align 8
  %9 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %8, i32 0, i32 0
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = call i32 @mutex_unlock(i32* @redirect_lock)
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %125

20:                                               ; preds = %1
  %21 = load %struct.ddb_port*, %struct.ddb_port** %3, align 8
  %22 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %21, i32 0, i32 0
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load %struct.ddb_input*, %struct.ddb_input** %24, align 8
  store %struct.ddb_input* %25, %struct.ddb_input** %4, align 8
  %26 = load %struct.ddb_input*, %struct.ddb_input** %4, align 8
  %27 = icmp ne %struct.ddb_input* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  br label %123

29:                                               ; preds = %20
  %30 = load %struct.ddb_port*, %struct.ddb_port** %3, align 8
  %31 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %30, i32 0, i32 1
  %32 = load %struct.ddb_input**, %struct.ddb_input*** %31, align 8
  %33 = getelementptr inbounds %struct.ddb_input*, %struct.ddb_input** %32, i64 0
  %34 = load %struct.ddb_input*, %struct.ddb_input** %33, align 8
  %35 = icmp ne %struct.ddb_input* %34, null
  br i1 %35, label %36, label %114

36:                                               ; preds = %29
  %37 = load %struct.ddb_port*, %struct.ddb_port** %3, align 8
  %38 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %37, i32 0, i32 1
  %39 = load %struct.ddb_input**, %struct.ddb_input*** %38, align 8
  %40 = getelementptr inbounds %struct.ddb_input*, %struct.ddb_input** %39, i64 0
  %41 = load %struct.ddb_input*, %struct.ddb_input** %40, align 8
  %42 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %41, i32 0, i32 1
  %43 = load %struct.ddb_input*, %struct.ddb_input** %42, align 8
  store %struct.ddb_input* %43, %struct.ddb_input** %5, align 8
  %44 = load %struct.ddb_port*, %struct.ddb_port** %3, align 8
  %45 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %44, i32 0, i32 1
  %46 = load %struct.ddb_input**, %struct.ddb_input*** %45, align 8
  %47 = getelementptr inbounds %struct.ddb_input*, %struct.ddb_input** %46, i64 0
  %48 = load %struct.ddb_input*, %struct.ddb_input** %47, align 8
  %49 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %48, i32 0, i32 0
  %50 = load %struct.ddb_output*, %struct.ddb_output** %49, align 8
  store %struct.ddb_output* %50, %struct.ddb_output** %6, align 8
  %51 = load %struct.ddb_output*, %struct.ddb_output** %6, align 8
  %52 = icmp ne %struct.ddb_output* %51, null
  br i1 %52, label %53, label %104

53:                                               ; preds = %36
  %54 = load %struct.ddb_input*, %struct.ddb_input** %4, align 8
  %55 = load %struct.ddb_output*, %struct.ddb_output** %6, align 8
  %56 = getelementptr inbounds %struct.ddb_output, %struct.ddb_output* %55, i32 0, i32 1
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store %struct.ddb_input* %54, %struct.ddb_input** %60, align 8
  %61 = load %struct.ddb_output*, %struct.ddb_output** %6, align 8
  %62 = getelementptr inbounds %struct.ddb_output, %struct.ddb_output* %61, i32 0, i32 1
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %65, i64 0
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = icmp ne %struct.TYPE_9__* %67, null
  br i1 %68, label %69, label %91

69:                                               ; preds = %53
  %70 = load %struct.ddb_input*, %struct.ddb_input** %5, align 8
  %71 = load %struct.ddb_output*, %struct.ddb_output** %6, align 8
  %72 = getelementptr inbounds %struct.ddb_output, %struct.ddb_output* %71, i32 0, i32 1
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %75, i64 0
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  store %struct.ddb_input* %70, %struct.ddb_input** %78, align 8
  %79 = load %struct.ddb_input*, %struct.ddb_input** %4, align 8
  %80 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %79, i32 0, i32 3
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.ddb_input*, %struct.ddb_input** %4, align 8
  %85 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.ddb_output*, %struct.ddb_output** %6, align 8
  %88 = getelementptr inbounds %struct.ddb_output, %struct.ddb_output* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @ddb_redirect_dma(i32 %83, i32 %86, i32 %89)
  br label %91

91:                                               ; preds = %69, %53
  %92 = load %struct.ddb_port*, %struct.ddb_port** %3, align 8
  %93 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %92, i32 0, i32 1
  %94 = load %struct.ddb_input**, %struct.ddb_input*** %93, align 8
  %95 = getelementptr inbounds %struct.ddb_input*, %struct.ddb_input** %94, i64 0
  %96 = load %struct.ddb_input*, %struct.ddb_input** %95, align 8
  %97 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %96, i32 0, i32 0
  store %struct.ddb_output* null, %struct.ddb_output** %97, align 8
  %98 = load %struct.ddb_port*, %struct.ddb_port** %3, align 8
  %99 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %98, i32 0, i32 1
  %100 = load %struct.ddb_input**, %struct.ddb_input*** %99, align 8
  %101 = getelementptr inbounds %struct.ddb_input*, %struct.ddb_input** %100, i64 0
  %102 = load %struct.ddb_input*, %struct.ddb_input** %101, align 8
  %103 = call i32 @ddb_set_dma_table(%struct.ddb_input* %102)
  br label %104

104:                                              ; preds = %91, %36
  %105 = load %struct.ddb_input*, %struct.ddb_input** %5, align 8
  %106 = load %struct.ddb_input*, %struct.ddb_input** %4, align 8
  %107 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %106, i32 0, i32 1
  store %struct.ddb_input* %105, %struct.ddb_input** %107, align 8
  %108 = load %struct.ddb_port*, %struct.ddb_port** %3, align 8
  %109 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %108, i32 0, i32 1
  %110 = load %struct.ddb_input**, %struct.ddb_input*** %109, align 8
  %111 = getelementptr inbounds %struct.ddb_input*, %struct.ddb_input** %110, i64 0
  %112 = load %struct.ddb_input*, %struct.ddb_input** %111, align 8
  %113 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %112, i32 0, i32 1
  store %struct.ddb_input* null, %struct.ddb_input** %113, align 8
  br label %114

114:                                              ; preds = %104, %29
  %115 = load %struct.ddb_input*, %struct.ddb_input** %4, align 8
  %116 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %115, i32 0, i32 0
  store %struct.ddb_output* null, %struct.ddb_output** %116, align 8
  %117 = load %struct.ddb_port*, %struct.ddb_port** %3, align 8
  %118 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %117, i32 0, i32 0
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  store %struct.ddb_input* null, %struct.ddb_input** %120, align 8
  %121 = load %struct.ddb_input*, %struct.ddb_input** %4, align 8
  %122 = call i32 @ddb_set_dma_table(%struct.ddb_input* %121)
  br label %123

123:                                              ; preds = %114, %28
  %124 = call i32 @mutex_unlock(i32* @redirect_lock)
  store i32 0, i32* %2, align 4
  br label %125

125:                                              ; preds = %123, %16
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ddb_redirect_dma(i32, i32, i32) #1

declare dso_local i32 @ddb_set_dma_table(%struct.ddb_input*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
