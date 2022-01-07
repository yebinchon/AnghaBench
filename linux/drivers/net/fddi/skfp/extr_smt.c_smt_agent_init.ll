; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_smt.c_smt_agent_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_smt.c_smt_agent_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i64, i64, i64*, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_8__, i32* }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_12__, i64* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_7__ = type { i32 }

@MAC0 = common dso_local global i64 0, align 8
@DA_NONE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SMT_MAX_TEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smt_agent_init(%struct.s_smc* %0) #0 {
  %2 = alloca %struct.s_smc*, align 8
  %3 = alloca i32, align 4
  store %struct.s_smc* %0, %struct.s_smc** %2, align 8
  %4 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %5 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %9 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %12 = load i64, i64* @MAC0, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 2
  store i32 %7, i32* %14, align 4
  %15 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %16 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  store i64 0, i64* %20, align 8
  %21 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %22 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %28 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %29 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = call i32 @driver_get_bia(%struct.s_smc* %27, %struct.TYPE_12__* %31)
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %57, %1
  %34 = load i32, i32* %3, align 4
  %35 = icmp slt i32 %34, 6
  br i1 %35, label %36, label %60

36:                                               ; preds = %33
  %37 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %38 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @bitrev8(i32 %46)
  %48 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %49 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %47, i32* %56, align 4
  br label %57

57:                                               ; preds = %36
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %33

60:                                               ; preds = %33
  %61 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %62 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %70 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  store i32 %68, i32* %73, align 4
  %74 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %75 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %83 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  store i32 %81, i32* %86, align 4
  %87 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %88 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %96 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 2
  store i32 %94, i32* %99, align 4
  %100 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %101 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 3
  store i64 0, i64* %102, align 8
  %103 = load i32, i32* @DA_NONE, align 4
  %104 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %105 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %106, align 8
  %108 = load i64, i64* @MAC0, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  store i32 %103, i32* %110, align 4
  %111 = load i32, i32* @FALSE, align 4
  %112 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %113 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %114, align 8
  %116 = load i64, i64* @MAC0, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  store i32 %111, i32* %118, align 4
  %119 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %120 = call i32 @smt_clear_una_dna(%struct.s_smc* %119)
  %121 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %122 = call i32 @smt_clear_old_una_dna(%struct.s_smc* %121)
  store i32 0, i32* %3, align 4
  br label %123

123:                                              ; preds = %135, %60
  %124 = load i32, i32* %3, align 4
  %125 = load i32, i32* @SMT_MAX_TEST, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %138

127:                                              ; preds = %123
  %128 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %129 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 2
  %131 = load i64*, i64** %130, align 8
  %132 = load i32, i32* %3, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i64, i64* %131, i64 %133
  store i64 0, i64* %134, align 8
  br label %135

135:                                              ; preds = %127
  %136 = load i32, i32* %3, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %3, align 4
  br label %123

138:                                              ; preds = %123
  %139 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %140 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 1
  store i64 0, i64* %141, align 8
  %142 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %143 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 0
  store i64 0, i64* %144, align 8
  ret void
}

declare dso_local i32 @driver_get_bia(%struct.s_smc*, %struct.TYPE_12__*) #1

declare dso_local i32 @bitrev8(i32) #1

declare dso_local i32 @smt_clear_una_dna(%struct.s_smc*) #1

declare dso_local i32 @smt_clear_old_una_dna(%struct.s_smc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
