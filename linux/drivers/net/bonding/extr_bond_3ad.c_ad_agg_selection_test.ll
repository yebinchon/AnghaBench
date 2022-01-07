; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_3ad.c_ad_agg_selection_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_3ad.c_ad_agg_selection_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aggregator = type { i32, %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"%s: (slave %s): Impossible agg select mode %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.aggregator* (%struct.aggregator*, %struct.aggregator*)* @ad_agg_selection_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.aggregator* @ad_agg_selection_test(%struct.aggregator* %0, %struct.aggregator* %1) #0 {
  %3 = alloca %struct.aggregator*, align 8
  %4 = alloca %struct.aggregator*, align 8
  %5 = alloca %struct.aggregator*, align 8
  store %struct.aggregator* %0, %struct.aggregator** %4, align 8
  store %struct.aggregator* %1, %struct.aggregator** %5, align 8
  %6 = load %struct.aggregator*, %struct.aggregator** %4, align 8
  %7 = icmp ne %struct.aggregator* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load %struct.aggregator*, %struct.aggregator** %5, align 8
  store %struct.aggregator* %9, %struct.aggregator** %3, align 8
  br label %109

10:                                               ; preds = %2
  %11 = load %struct.aggregator*, %struct.aggregator** %5, align 8
  %12 = getelementptr inbounds %struct.aggregator, %struct.aggregator* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %10
  %16 = load %struct.aggregator*, %struct.aggregator** %4, align 8
  %17 = getelementptr inbounds %struct.aggregator, %struct.aggregator* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load %struct.aggregator*, %struct.aggregator** %5, align 8
  store %struct.aggregator* %21, %struct.aggregator** %3, align 8
  br label %109

22:                                               ; preds = %15, %10
  %23 = load %struct.aggregator*, %struct.aggregator** %5, align 8
  %24 = getelementptr inbounds %struct.aggregator, %struct.aggregator* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load %struct.aggregator*, %struct.aggregator** %4, align 8
  %29 = getelementptr inbounds %struct.aggregator, %struct.aggregator* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = load %struct.aggregator*, %struct.aggregator** %4, align 8
  store %struct.aggregator* %33, %struct.aggregator** %3, align 8
  br label %109

34:                                               ; preds = %27, %22
  %35 = load %struct.aggregator*, %struct.aggregator** %5, align 8
  %36 = call i64 @__agg_has_partner(%struct.aggregator* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load %struct.aggregator*, %struct.aggregator** %4, align 8
  %40 = call i64 @__agg_has_partner(%struct.aggregator* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = load %struct.aggregator*, %struct.aggregator** %5, align 8
  store %struct.aggregator* %43, %struct.aggregator** %3, align 8
  br label %109

44:                                               ; preds = %38, %34
  %45 = load %struct.aggregator*, %struct.aggregator** %5, align 8
  %46 = call i64 @__agg_has_partner(%struct.aggregator* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %44
  %49 = load %struct.aggregator*, %struct.aggregator** %4, align 8
  %50 = call i64 @__agg_has_partner(%struct.aggregator* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load %struct.aggregator*, %struct.aggregator** %4, align 8
  store %struct.aggregator* %53, %struct.aggregator** %3, align 8
  br label %109

54:                                               ; preds = %48, %44
  %55 = load %struct.aggregator*, %struct.aggregator** %5, align 8
  %56 = getelementptr inbounds %struct.aggregator, %struct.aggregator* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @__get_agg_selection_mode(i32 %57)
  switch i32 %58, label %85 [
    i32 129, label %59
    i32 128, label %76
    i32 130, label %76
  ]

59:                                               ; preds = %54
  %60 = load %struct.aggregator*, %struct.aggregator** %5, align 8
  %61 = call i32 @__agg_active_ports(%struct.aggregator* %60)
  %62 = load %struct.aggregator*, %struct.aggregator** %4, align 8
  %63 = call i32 @__agg_active_ports(%struct.aggregator* %62)
  %64 = icmp sgt i32 %61, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load %struct.aggregator*, %struct.aggregator** %5, align 8
  store %struct.aggregator* %66, %struct.aggregator** %3, align 8
  br label %109

67:                                               ; preds = %59
  %68 = load %struct.aggregator*, %struct.aggregator** %5, align 8
  %69 = call i32 @__agg_active_ports(%struct.aggregator* %68)
  %70 = load %struct.aggregator*, %struct.aggregator** %4, align 8
  %71 = call i32 @__agg_active_ports(%struct.aggregator* %70)
  %72 = icmp slt i32 %69, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load %struct.aggregator*, %struct.aggregator** %4, align 8
  store %struct.aggregator* %74, %struct.aggregator** %3, align 8
  br label %109

75:                                               ; preds = %67
  br label %76

76:                                               ; preds = %54, %54, %75
  %77 = load %struct.aggregator*, %struct.aggregator** %5, align 8
  %78 = call i32 @__get_agg_bandwidth(%struct.aggregator* %77)
  %79 = load %struct.aggregator*, %struct.aggregator** %4, align 8
  %80 = call i32 @__get_agg_bandwidth(%struct.aggregator* %79)
  %81 = icmp sgt i32 %78, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = load %struct.aggregator*, %struct.aggregator** %5, align 8
  store %struct.aggregator* %83, %struct.aggregator** %3, align 8
  br label %109

84:                                               ; preds = %76
  br label %107

85:                                               ; preds = %54
  %86 = load %struct.aggregator*, %struct.aggregator** %5, align 8
  %87 = getelementptr inbounds %struct.aggregator, %struct.aggregator* %86, i32 0, i32 1
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.aggregator*, %struct.aggregator** %5, align 8
  %96 = getelementptr inbounds %struct.aggregator, %struct.aggregator* %95, i32 0, i32 1
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.aggregator*, %struct.aggregator** %5, align 8
  %103 = getelementptr inbounds %struct.aggregator, %struct.aggregator* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @__get_agg_selection_mode(i32 %104)
  %106 = call i32 @net_warn_ratelimited(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %94, i32 %101, i32 %105)
  br label %107

107:                                              ; preds = %85, %84
  %108 = load %struct.aggregator*, %struct.aggregator** %4, align 8
  store %struct.aggregator* %108, %struct.aggregator** %3, align 8
  br label %109

109:                                              ; preds = %107, %82, %73, %65, %52, %42, %32, %20, %8
  %110 = load %struct.aggregator*, %struct.aggregator** %3, align 8
  ret %struct.aggregator* %110
}

declare dso_local i64 @__agg_has_partner(%struct.aggregator*) #1

declare dso_local i32 @__get_agg_selection_mode(i32) #1

declare dso_local i32 @__agg_active_ports(%struct.aggregator*) #1

declare dso_local i32 @__get_agg_bandwidth(%struct.aggregator*) #1

declare dso_local i32 @net_warn_ratelimited(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
