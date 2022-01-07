; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_ethtool.c_nicvf_get_qset_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_ethtool.c_nicvf_get_qset_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.nicvf = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ethtool_stats = type { i32 }

@nicvf_n_queue_stats = common dso_local global i32 0, align 4
@nicvf_queue_stats = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nicvf*, %struct.ethtool_stats*, i8***)* @nicvf_get_qset_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nicvf_get_qset_stats(%struct.nicvf* %0, %struct.ethtool_stats* %1, i8*** %2) #0 {
  %4 = alloca %struct.nicvf*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i8***, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nicvf* %0, %struct.nicvf** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i8*** %2, i8**** %6, align 8
  %9 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %10 = icmp ne %struct.nicvf* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  br label %104

12:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %55, %12
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %16 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %14, %19
  br i1 %20, label %21, label %58

21:                                               ; preds = %13
  %22 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @nicvf_update_rq_stats(%struct.nicvf* %22, i32 %23)
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %51, %21
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @nicvf_n_queue_stats, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %54

29:                                               ; preds = %25
  %30 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %31 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %30, i32 0, i32 0
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = bitcast i32* %38 to i8**
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** @nicvf_queue_stats, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i8*, i8** %39, i64 %45
  %47 = load i8*, i8** %46, align 4
  %48 = load i8***, i8**** %6, align 8
  %49 = load i8**, i8*** %48, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i32 1
  store i8** %50, i8*** %48, align 8
  store i8* %47, i8** %49, align 8
  br label %51

51:                                               ; preds = %29
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %25

54:                                               ; preds = %25
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %13

58:                                               ; preds = %13
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %101, %58
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %62 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %61, i32 0, i32 0
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %60, %65
  br i1 %66, label %67, label %104

67:                                               ; preds = %59
  %68 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @nicvf_update_sq_stats(%struct.nicvf* %68, i32 %69)
  store i32 0, i32* %7, align 4
  br label %71

71:                                               ; preds = %97, %67
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @nicvf_n_queue_stats, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %100

75:                                               ; preds = %71
  %76 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %77 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %76, i32 0, i32 0
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = bitcast i32* %84 to i8**
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** @nicvf_queue_stats, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds i8*, i8** %85, i64 %91
  %93 = load i8*, i8** %92, align 4
  %94 = load i8***, i8**** %6, align 8
  %95 = load i8**, i8*** %94, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i32 1
  store i8** %96, i8*** %94, align 8
  store i8* %93, i8** %95, align 8
  br label %97

97:                                               ; preds = %75
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %7, align 4
  br label %71

100:                                              ; preds = %71
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %8, align 4
  br label %59

104:                                              ; preds = %11, %59
  ret void
}

declare dso_local i32 @nicvf_update_rq_stats(%struct.nicvf*, i32) #1

declare dso_local i32 @nicvf_update_sq_stats(%struct.nicvf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
