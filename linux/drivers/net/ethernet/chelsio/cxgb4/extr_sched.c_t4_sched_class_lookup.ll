; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sched.c_t4_sched_class_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sched.c_t4_sched_class_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_class = type { i64, %struct.ch_sched_params }
%struct.ch_sched_params = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8* }
%struct.port_info = type { %struct.sched_table* }
%struct.sched_table = type { i64, %struct.sched_class* }

@SCHED_STATE_UNUSED = common dso_local global i64 0, align 8
@SCHED_CLS_NONE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sched_class* (%struct.port_info*, %struct.ch_sched_params*)* @t4_sched_class_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sched_class* @t4_sched_class_lookup(%struct.port_info* %0, %struct.ch_sched_params* %1) #0 {
  %3 = alloca %struct.port_info*, align 8
  %4 = alloca %struct.ch_sched_params*, align 8
  %5 = alloca %struct.sched_table*, align 8
  %6 = alloca %struct.sched_class*, align 8
  %7 = alloca %struct.sched_class*, align 8
  %8 = alloca %struct.sched_class*, align 8
  %9 = alloca %struct.ch_sched_params, align 8
  %10 = alloca %struct.ch_sched_params, align 8
  store %struct.port_info* %0, %struct.port_info** %3, align 8
  store %struct.ch_sched_params* %1, %struct.ch_sched_params** %4, align 8
  %11 = load %struct.port_info*, %struct.port_info** %3, align 8
  %12 = getelementptr inbounds %struct.port_info, %struct.port_info* %11, i32 0, i32 0
  %13 = load %struct.sched_table*, %struct.sched_table** %12, align 8
  store %struct.sched_table* %13, %struct.sched_table** %5, align 8
  store %struct.sched_class* null, %struct.sched_class** %8, align 8
  %14 = load %struct.ch_sched_params*, %struct.ch_sched_params** %4, align 8
  %15 = icmp ne %struct.ch_sched_params* %14, null
  br i1 %15, label %45, label %16

16:                                               ; preds = %2
  %17 = load %struct.sched_table*, %struct.sched_table** %5, align 8
  %18 = getelementptr inbounds %struct.sched_table, %struct.sched_table* %17, i32 0, i32 1
  %19 = load %struct.sched_class*, %struct.sched_class** %18, align 8
  %20 = load %struct.sched_table*, %struct.sched_table** %5, align 8
  %21 = getelementptr inbounds %struct.sched_table, %struct.sched_table* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.sched_class, %struct.sched_class* %19, i64 %22
  store %struct.sched_class* %23, %struct.sched_class** %7, align 8
  %24 = load %struct.sched_table*, %struct.sched_table** %5, align 8
  %25 = getelementptr inbounds %struct.sched_table, %struct.sched_table* %24, i32 0, i32 1
  %26 = load %struct.sched_class*, %struct.sched_class** %25, align 8
  %27 = getelementptr inbounds %struct.sched_class, %struct.sched_class* %26, i64 0
  store %struct.sched_class* %27, %struct.sched_class** %6, align 8
  br label %28

28:                                               ; preds = %41, %16
  %29 = load %struct.sched_class*, %struct.sched_class** %6, align 8
  %30 = load %struct.sched_class*, %struct.sched_class** %7, align 8
  %31 = icmp ne %struct.sched_class* %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  %33 = load %struct.sched_class*, %struct.sched_class** %6, align 8
  %34 = getelementptr inbounds %struct.sched_class, %struct.sched_class* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SCHED_STATE_UNUSED, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load %struct.sched_class*, %struct.sched_class** %6, align 8
  store %struct.sched_class* %39, %struct.sched_class** %8, align 8
  br label %44

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.sched_class*, %struct.sched_class** %6, align 8
  %43 = getelementptr inbounds %struct.sched_class, %struct.sched_class* %42, i32 1
  store %struct.sched_class* %43, %struct.sched_class** %6, align 8
  br label %28

44:                                               ; preds = %38, %28
  br label %101

45:                                               ; preds = %2
  %46 = load %struct.ch_sched_params*, %struct.ch_sched_params** %4, align 8
  %47 = call i32 @memcpy(%struct.ch_sched_params* %10, %struct.ch_sched_params* %46, i32 16)
  %48 = load i8*, i8** @SCHED_CLS_NONE, align 8
  %49 = getelementptr inbounds %struct.ch_sched_params, %struct.ch_sched_params* %10, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i8* %48, i8** %51, align 8
  %52 = load %struct.sched_table*, %struct.sched_table** %5, align 8
  %53 = getelementptr inbounds %struct.sched_table, %struct.sched_table* %52, i32 0, i32 1
  %54 = load %struct.sched_class*, %struct.sched_class** %53, align 8
  %55 = load %struct.sched_table*, %struct.sched_table** %5, align 8
  %56 = getelementptr inbounds %struct.sched_table, %struct.sched_table* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.sched_class, %struct.sched_class* %54, i64 %57
  store %struct.sched_class* %58, %struct.sched_class** %7, align 8
  %59 = load %struct.sched_table*, %struct.sched_table** %5, align 8
  %60 = getelementptr inbounds %struct.sched_table, %struct.sched_table* %59, i32 0, i32 1
  %61 = load %struct.sched_class*, %struct.sched_class** %60, align 8
  %62 = getelementptr inbounds %struct.sched_class, %struct.sched_class* %61, i64 0
  store %struct.sched_class* %62, %struct.sched_class** %6, align 8
  br label %63

63:                                               ; preds = %97, %45
  %64 = load %struct.sched_class*, %struct.sched_class** %6, align 8
  %65 = load %struct.sched_class*, %struct.sched_class** %7, align 8
  %66 = icmp ne %struct.sched_class* %64, %65
  br i1 %66, label %67, label %100

67:                                               ; preds = %63
  %68 = load %struct.sched_class*, %struct.sched_class** %6, align 8
  %69 = getelementptr inbounds %struct.sched_class, %struct.sched_class* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @SCHED_STATE_UNUSED, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %97

74:                                               ; preds = %67
  %75 = load %struct.sched_class*, %struct.sched_class** %6, align 8
  %76 = getelementptr inbounds %struct.sched_class, %struct.sched_class* %75, i32 0, i32 1
  %77 = call i32 @memcpy(%struct.ch_sched_params* %9, %struct.ch_sched_params* %76, i32 16)
  %78 = load i8*, i8** @SCHED_CLS_NONE, align 8
  %79 = getelementptr inbounds %struct.ch_sched_params, %struct.ch_sched_params* %9, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  store i8* %78, i8** %81, align 8
  %82 = getelementptr inbounds %struct.ch_sched_params, %struct.ch_sched_params* %9, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.ch_sched_params, %struct.ch_sched_params* %10, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %83, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %74
  %88 = getelementptr inbounds %struct.ch_sched_params, %struct.ch_sched_params* %9, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.ch_sched_params, %struct.ch_sched_params* %10, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = call i32 @memcmp(%struct.TYPE_5__* %89, %struct.TYPE_5__* %91, i32 8)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %87
  %95 = load %struct.sched_class*, %struct.sched_class** %6, align 8
  store %struct.sched_class* %95, %struct.sched_class** %8, align 8
  br label %100

96:                                               ; preds = %87, %74
  br label %97

97:                                               ; preds = %96, %73
  %98 = load %struct.sched_class*, %struct.sched_class** %6, align 8
  %99 = getelementptr inbounds %struct.sched_class, %struct.sched_class* %98, i32 1
  store %struct.sched_class* %99, %struct.sched_class** %6, align 8
  br label %63

100:                                              ; preds = %94, %63
  br label %101

101:                                              ; preds = %100, %44
  %102 = load %struct.sched_class*, %struct.sched_class** %8, align 8
  ret %struct.sched_class* %102
}

declare dso_local i32 @memcpy(%struct.ch_sched_params*, %struct.ch_sched_params*, i32) #1

declare dso_local i32 @memcmp(%struct.TYPE_5__*, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
