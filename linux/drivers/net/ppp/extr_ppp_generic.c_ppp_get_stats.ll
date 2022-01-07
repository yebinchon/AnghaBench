; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ppp/extr_ppp_generic.c_ppp_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ppp/extr_ppp_generic.c_ppp_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppp = type { %struct.TYPE_9__, %struct.TYPE_7__*, %struct.slcompress* }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.slcompress = type { i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.ppp_stats = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ppp*, %struct.ppp_stats*)* @ppp_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppp_get_stats(%struct.ppp* %0, %struct.ppp_stats* %1) #0 {
  %3 = alloca %struct.ppp*, align 8
  %4 = alloca %struct.ppp_stats*, align 8
  %5 = alloca %struct.slcompress*, align 8
  store %struct.ppp* %0, %struct.ppp** %3, align 8
  store %struct.ppp_stats* %1, %struct.ppp_stats** %4, align 8
  %6 = load %struct.ppp*, %struct.ppp** %3, align 8
  %7 = getelementptr inbounds %struct.ppp, %struct.ppp* %6, i32 0, i32 2
  %8 = load %struct.slcompress*, %struct.slcompress** %7, align 8
  store %struct.slcompress* %8, %struct.slcompress** %5, align 8
  %9 = load %struct.ppp_stats*, %struct.ppp_stats** %4, align 8
  %10 = call i32 @memset(%struct.ppp_stats* %9, i32 0, i32 64)
  %11 = load %struct.ppp*, %struct.ppp** %3, align 8
  %12 = getelementptr inbounds %struct.ppp, %struct.ppp* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ppp_stats*, %struct.ppp_stats** %4, align 8
  %16 = getelementptr inbounds %struct.ppp_stats, %struct.ppp_stats* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 5
  store i32 %14, i32* %17, align 4
  %18 = load %struct.ppp*, %struct.ppp** %3, align 8
  %19 = getelementptr inbounds %struct.ppp, %struct.ppp* %18, i32 0, i32 1
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ppp_stats*, %struct.ppp_stats** %4, align 8
  %25 = getelementptr inbounds %struct.ppp_stats, %struct.ppp_stats* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 4
  store i32 %23, i32* %26, align 8
  %27 = load %struct.ppp*, %struct.ppp** %3, align 8
  %28 = getelementptr inbounds %struct.ppp, %struct.ppp* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.ppp_stats*, %struct.ppp_stats** %4, align 8
  %32 = getelementptr inbounds %struct.ppp_stats, %struct.ppp_stats* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 3
  store i32 %30, i32* %33, align 4
  %34 = load %struct.ppp*, %struct.ppp** %3, align 8
  %35 = getelementptr inbounds %struct.ppp, %struct.ppp* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ppp_stats*, %struct.ppp_stats** %4, align 8
  %39 = getelementptr inbounds %struct.ppp_stats, %struct.ppp_stats* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  store i32 %37, i32* %40, align 8
  %41 = load %struct.ppp*, %struct.ppp** %3, align 8
  %42 = getelementptr inbounds %struct.ppp, %struct.ppp* %41, i32 0, i32 1
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ppp_stats*, %struct.ppp_stats** %4, align 8
  %48 = getelementptr inbounds %struct.ppp_stats, %struct.ppp_stats* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 4
  %50 = load %struct.ppp*, %struct.ppp** %3, align 8
  %51 = getelementptr inbounds %struct.ppp, %struct.ppp* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.ppp_stats*, %struct.ppp_stats** %4, align 8
  %55 = getelementptr inbounds %struct.ppp_stats, %struct.ppp_stats* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 8
  %57 = load %struct.slcompress*, %struct.slcompress** %5, align 8
  %58 = icmp ne %struct.slcompress* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %2
  br label %113

60:                                               ; preds = %2
  %61 = load %struct.slcompress*, %struct.slcompress** %5, align 8
  %62 = getelementptr inbounds %struct.slcompress, %struct.slcompress* %61, i32 0, i32 6
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.slcompress*, %struct.slcompress** %5, align 8
  %65 = getelementptr inbounds %struct.slcompress, %struct.slcompress* %64, i32 0, i32 7
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %63, %66
  %68 = load %struct.ppp_stats*, %struct.ppp_stats** %4, align 8
  %69 = getelementptr inbounds %struct.ppp_stats, %struct.ppp_stats* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 7
  store i64 %67, i64* %70, align 8
  %71 = load %struct.slcompress*, %struct.slcompress** %5, align 8
  %72 = getelementptr inbounds %struct.slcompress, %struct.slcompress* %71, i32 0, i32 6
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.ppp_stats*, %struct.ppp_stats** %4, align 8
  %75 = getelementptr inbounds %struct.ppp_stats, %struct.ppp_stats* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 6
  store i64 %73, i64* %76, align 8
  %77 = load %struct.slcompress*, %struct.slcompress** %5, align 8
  %78 = getelementptr inbounds %struct.slcompress, %struct.slcompress* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ppp_stats*, %struct.ppp_stats** %4, align 8
  %81 = getelementptr inbounds %struct.ppp_stats, %struct.ppp_stats* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 5
  store i32 %79, i32* %82, align 4
  %83 = load %struct.slcompress*, %struct.slcompress** %5, align 8
  %84 = getelementptr inbounds %struct.slcompress, %struct.slcompress* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.ppp_stats*, %struct.ppp_stats** %4, align 8
  %87 = getelementptr inbounds %struct.ppp_stats, %struct.ppp_stats* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 4
  store i32 %85, i32* %88, align 8
  %89 = load %struct.slcompress*, %struct.slcompress** %5, align 8
  %90 = getelementptr inbounds %struct.slcompress, %struct.slcompress* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.ppp_stats*, %struct.ppp_stats** %4, align 8
  %93 = getelementptr inbounds %struct.ppp_stats, %struct.ppp_stats* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 3
  store i32 %91, i32* %94, align 4
  %95 = load %struct.slcompress*, %struct.slcompress** %5, align 8
  %96 = getelementptr inbounds %struct.slcompress, %struct.slcompress* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.ppp_stats*, %struct.ppp_stats** %4, align 8
  %99 = getelementptr inbounds %struct.ppp_stats, %struct.ppp_stats* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 2
  store i32 %97, i32* %100, align 8
  %101 = load %struct.slcompress*, %struct.slcompress** %5, align 8
  %102 = getelementptr inbounds %struct.slcompress, %struct.slcompress* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.ppp_stats*, %struct.ppp_stats** %4, align 8
  %105 = getelementptr inbounds %struct.ppp_stats, %struct.ppp_stats* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  store i32 %103, i32* %106, align 4
  %107 = load %struct.slcompress*, %struct.slcompress** %5, align 8
  %108 = getelementptr inbounds %struct.slcompress, %struct.slcompress* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.ppp_stats*, %struct.ppp_stats** %4, align 8
  %111 = getelementptr inbounds %struct.ppp_stats, %struct.ppp_stats* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  store i32 %109, i32* %112, align 8
  br label %113

113:                                              ; preds = %60, %59
  ret void
}

declare dso_local i32 @memset(%struct.ppp_stats*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
