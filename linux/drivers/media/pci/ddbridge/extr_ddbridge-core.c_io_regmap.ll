; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_io_regmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_io_regmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddb_regmap = type { i32 }
%struct.ddb_io = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ddb_info* }
%struct.ddb_info = type { %struct.ddb_regmap* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ddb_regmap* (%struct.ddb_io*, i32)* @io_regmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ddb_regmap* @io_regmap(%struct.ddb_io* %0, i32 %1) #0 {
  %3 = alloca %struct.ddb_regmap*, align 8
  %4 = alloca %struct.ddb_io*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ddb_info*, align 8
  store %struct.ddb_io* %0, %struct.ddb_io** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %2
  %10 = load %struct.ddb_io*, %struct.ddb_io** %4, align 8
  %11 = getelementptr inbounds %struct.ddb_io, %struct.ddb_io* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = load %struct.ddb_io*, %struct.ddb_io** %4, align 8
  %18 = getelementptr inbounds %struct.ddb_io, %struct.ddb_io* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.ddb_info*, %struct.ddb_info** %23, align 8
  store %struct.ddb_info* %24, %struct.ddb_info** %6, align 8
  br label %36

25:                                               ; preds = %2
  %26 = load %struct.ddb_io*, %struct.ddb_io** %4, align 8
  %27 = getelementptr inbounds %struct.ddb_io, %struct.ddb_io* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.ddb_info*, %struct.ddb_info** %34, align 8
  store %struct.ddb_info* %35, %struct.ddb_info** %6, align 8
  br label %36

36:                                               ; preds = %25, %9
  %37 = load %struct.ddb_info*, %struct.ddb_info** %6, align 8
  %38 = icmp ne %struct.ddb_info* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  store %struct.ddb_regmap* null, %struct.ddb_regmap** %3, align 8
  br label %44

40:                                               ; preds = %36
  %41 = load %struct.ddb_info*, %struct.ddb_info** %6, align 8
  %42 = getelementptr inbounds %struct.ddb_info, %struct.ddb_info* %41, i32 0, i32 0
  %43 = load %struct.ddb_regmap*, %struct.ddb_regmap** %42, align 8
  store %struct.ddb_regmap* %43, %struct.ddb_regmap** %3, align 8
  br label %44

44:                                               ; preds = %40, %39
  %45 = load %struct.ddb_regmap*, %struct.ddb_regmap** %3, align 8
  ret %struct.ddb_regmap* %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
