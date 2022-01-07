; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_ports_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_ports_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddb = type { i32, %struct.ddb_port* }
%struct.ddb_port = type { %struct.TYPE_8__*, %struct.TYPE_6__** }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ddb_ports_release(%struct.ddb* %0) #0 {
  %2 = alloca %struct.ddb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ddb_port*, align 8
  store %struct.ddb* %0, %struct.ddb** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %90, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.ddb*, %struct.ddb** %2, align 8
  %8 = getelementptr inbounds %struct.ddb, %struct.ddb* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %93

11:                                               ; preds = %5
  %12 = load %struct.ddb*, %struct.ddb** %2, align 8
  %13 = getelementptr inbounds %struct.ddb, %struct.ddb* %12, i32 0, i32 1
  %14 = load %struct.ddb_port*, %struct.ddb_port** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %14, i64 %16
  store %struct.ddb_port* %17, %struct.ddb_port** %4, align 8
  %18 = load %struct.ddb_port*, %struct.ddb_port** %4, align 8
  %19 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %20, i64 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = icmp ne %struct.TYPE_6__* %22, null
  br i1 %23, label %24, label %43

24:                                               ; preds = %11
  %25 = load %struct.ddb_port*, %struct.ddb_port** %4, align 8
  %26 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %27, i64 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = icmp ne %struct.TYPE_5__* %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %24
  %34 = load %struct.ddb_port*, %struct.ddb_port** %4, align 8
  %35 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %36, i64 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = call i32 @cancel_work_sync(i32* %41)
  br label %43

43:                                               ; preds = %33, %24, %11
  %44 = load %struct.ddb_port*, %struct.ddb_port** %4, align 8
  %45 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %44, i32 0, i32 1
  %46 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %46, i64 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = icmp ne %struct.TYPE_6__* %48, null
  br i1 %49, label %50, label %69

50:                                               ; preds = %43
  %51 = load %struct.ddb_port*, %struct.ddb_port** %4, align 8
  %52 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %51, i32 0, i32 1
  %53 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %53, i64 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = icmp ne %struct.TYPE_5__* %57, null
  br i1 %58, label %59, label %69

59:                                               ; preds = %50
  %60 = load %struct.ddb_port*, %struct.ddb_port** %4, align 8
  %61 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %60, i32 0, i32 1
  %62 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %62, i64 1
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = call i32 @cancel_work_sync(i32* %67)
  br label %69

69:                                               ; preds = %59, %50, %43
  %70 = load %struct.ddb_port*, %struct.ddb_port** %4, align 8
  %71 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %70, i32 0, i32 0
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = icmp ne %struct.TYPE_8__* %72, null
  br i1 %73, label %74, label %89

74:                                               ; preds = %69
  %75 = load %struct.ddb_port*, %struct.ddb_port** %4, align 8
  %76 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %75, i32 0, i32 0
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = icmp ne %struct.TYPE_7__* %79, null
  br i1 %80, label %81, label %89

81:                                               ; preds = %74
  %82 = load %struct.ddb_port*, %struct.ddb_port** %4, align 8
  %83 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %82, i32 0, i32 0
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = call i32 @cancel_work_sync(i32* %87)
  br label %89

89:                                               ; preds = %81, %74, %69
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %3, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %3, align 4
  br label %5

93:                                               ; preds = %5
  ret void
}

declare dso_local i32 @cancel_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
