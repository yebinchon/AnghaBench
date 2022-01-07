; ModuleID = '/home/carl/AnghaBench/linux/drivers/message/fusion/extr_mptbase.c_mpt_read_ioc_pg_4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/message/fusion/extr_mptbase.c_mpt_read_ioc_pg_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, i32*, i8* }
%struct.TYPE_13__ = type { i32, i32, i64, i64, i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32, i64 }

@MPI_CONFIG_PAGETYPE_IOC = common dso_local global i32 0, align 4
@MPI_CONFIG_ACTION_PAGE_HEADER = common dso_local global i32 0, align 4
@MPI_CONFIG_ACTION_PAGE_READ_CURRENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @mpt_read_ioc_pg_4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpt_read_ioc_pg_4(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_13__, align 8
  %5 = alloca %struct.TYPE_12__, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 3
  store i64 0, i64* %8, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  store i32 0, i32* %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  store i32 4, i32* %10, align 4
  %11 = load i32, i32* @MPI_CONFIG_PAGETYPE_IOC, align 4
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 2
  store i32 %11, i32* %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 5
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  store %struct.TYPE_12__* %5, %struct.TYPE_12__** %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  store i32 -1, i32* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 4
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* @MPI_CONFIG_ACTION_PAGE_HEADER, align 4
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 3
  store i64 0, i64* %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 2
  store i64 0, i64* %20, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %22 = call i64 @mpt_config(%struct.TYPE_11__* %21, %struct.TYPE_13__* %4)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %102

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %102

30:                                               ; preds = %25
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %3, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %55

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 4
  %40 = mul nsw i32 %39, 4
  store i32 %40, i32* %7, align 4
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32* @pci_alloc_consistent(i32 %43, i32 %44, i8** %6)
  store i32* %45, i32** %3, align 8
  %46 = load i32*, i32** %3, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %36
  br label %102

49:                                               ; preds = %36
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %64

55:                                               ; preds = %30
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %6, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %55, %49
  %65 = load i8*, i8** %6, align 8
  %66 = ptrtoint i8* %65 to i32
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  store i32 %66, i32* %67, align 8
  %68 = load i32, i32* @MPI_CONFIG_ACTION_PAGE_READ_CURRENT, align 4
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 1
  store i32 %68, i32* %69, align 4
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %71 = call i64 @mpt_config(%struct.TYPE_11__* %70, %struct.TYPE_13__* %4)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %64
  %74 = load i32*, i32** %3, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  store i32* %74, i32** %77, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 2
  store i8* %78, i8** %81, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 8
  br label %102

86:                                               ; preds = %64
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = load i32*, i32** %3, align 8
  %92 = load i8*, i8** %6, align 8
  %93 = call i32 @pci_free_consistent(i32 %89, i32 %90, i32* %91, i8* %92)
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  store i32* null, i32** %96, align 8
  %97 = load i32, i32* %7, align 4
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sub nsw i32 %100, %97
  store i32 %101, i32* %99, align 8
  br label %102

102:                                              ; preds = %24, %29, %48, %86, %73
  ret void
}

declare dso_local i64 @mpt_config(%struct.TYPE_11__*, %struct.TYPE_13__*) #1

declare dso_local i32* @pci_alloc_consistent(i32, i32, i8**) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
