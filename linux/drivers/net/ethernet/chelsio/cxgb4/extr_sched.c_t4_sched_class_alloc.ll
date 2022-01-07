; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sched.c_t4_sched_class_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sched.c_t4_sched_class_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_class = type { i64, i32, i32, %struct.ch_sched_params }
%struct.ch_sched_params = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.port_info = type { i32 }

@SCHED_CLS_NONE = common dso_local global i64 0, align 8
@SCHED_FW_OP_ADD = common dso_local global i32 0, align 4
@SCHED_STATE_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sched_class* (%struct.port_info*, %struct.ch_sched_params*)* @t4_sched_class_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sched_class* @t4_sched_class_alloc(%struct.port_info* %0, %struct.ch_sched_params* %1) #0 {
  %3 = alloca %struct.sched_class*, align 8
  %4 = alloca %struct.port_info*, align 8
  %5 = alloca %struct.ch_sched_params*, align 8
  %6 = alloca %struct.sched_class*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ch_sched_params, align 8
  store %struct.port_info* %0, %struct.port_info** %4, align 8
  store %struct.ch_sched_params* %1, %struct.ch_sched_params** %5, align 8
  %10 = load %struct.ch_sched_params*, %struct.ch_sched_params** %5, align 8
  %11 = icmp ne %struct.ch_sched_params* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.sched_class* null, %struct.sched_class** %3, align 8
  br label %62

13:                                               ; preds = %2
  %14 = load %struct.ch_sched_params*, %struct.ch_sched_params** %5, align 8
  %15 = getelementptr inbounds %struct.ch_sched_params, %struct.ch_sched_params* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @SCHED_CLS_NONE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  store %struct.sched_class* null, %struct.sched_class** %3, align 8
  br label %62

23:                                               ; preds = %13
  %24 = load %struct.port_info*, %struct.port_info** %4, align 8
  %25 = load %struct.ch_sched_params*, %struct.ch_sched_params** %5, align 8
  %26 = call %struct.sched_class* @t4_sched_class_lookup(%struct.port_info* %24, %struct.ch_sched_params* %25)
  store %struct.sched_class* %26, %struct.sched_class** %6, align 8
  %27 = load %struct.sched_class*, %struct.sched_class** %6, align 8
  %28 = icmp ne %struct.sched_class* %27, null
  br i1 %28, label %60, label %29

29:                                               ; preds = %23
  %30 = load %struct.port_info*, %struct.port_info** %4, align 8
  %31 = call %struct.sched_class* @t4_sched_class_lookup(%struct.port_info* %30, %struct.ch_sched_params* null)
  store %struct.sched_class* %31, %struct.sched_class** %6, align 8
  %32 = load %struct.sched_class*, %struct.sched_class** %6, align 8
  %33 = icmp ne %struct.sched_class* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  store %struct.sched_class* null, %struct.sched_class** %3, align 8
  br label %62

35:                                               ; preds = %29
  %36 = load %struct.ch_sched_params*, %struct.ch_sched_params** %5, align 8
  %37 = call i32 @memcpy(%struct.ch_sched_params* %9, %struct.ch_sched_params* %36, i32 8)
  %38 = load %struct.sched_class*, %struct.sched_class** %6, align 8
  %39 = getelementptr inbounds %struct.sched_class, %struct.sched_class* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.ch_sched_params, %struct.ch_sched_params* %9, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i64 %40, i64* %43, align 8
  %44 = load %struct.port_info*, %struct.port_info** %4, align 8
  %45 = load i32, i32* @SCHED_FW_OP_ADD, align 4
  %46 = call i32 @t4_sched_class_fw_cmd(%struct.port_info* %44, %struct.ch_sched_params* %9, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %35
  store %struct.sched_class* null, %struct.sched_class** %3, align 8
  br label %62

50:                                               ; preds = %35
  %51 = load %struct.sched_class*, %struct.sched_class** %6, align 8
  %52 = getelementptr inbounds %struct.sched_class, %struct.sched_class* %51, i32 0, i32 3
  %53 = call i32 @memcpy(%struct.ch_sched_params* %52, %struct.ch_sched_params* %9, i32 8)
  %54 = load %struct.sched_class*, %struct.sched_class** %6, align 8
  %55 = getelementptr inbounds %struct.sched_class, %struct.sched_class* %54, i32 0, i32 2
  %56 = call i32 @atomic_set(i32* %55, i32 0)
  %57 = load i32, i32* @SCHED_STATE_ACTIVE, align 4
  %58 = load %struct.sched_class*, %struct.sched_class** %6, align 8
  %59 = getelementptr inbounds %struct.sched_class, %struct.sched_class* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  br label %60

60:                                               ; preds = %50, %23
  %61 = load %struct.sched_class*, %struct.sched_class** %6, align 8
  store %struct.sched_class* %61, %struct.sched_class** %3, align 8
  br label %62

62:                                               ; preds = %60, %49, %34, %22, %12
  %63 = load %struct.sched_class*, %struct.sched_class** %3, align 8
  ret %struct.sched_class* %63
}

declare dso_local %struct.sched_class* @t4_sched_class_lookup(%struct.port_info*, %struct.ch_sched_params*) #1

declare dso_local i32 @memcpy(%struct.ch_sched_params*, %struct.ch_sched_params*, i32) #1

declare dso_local i32 @t4_sched_class_fw_cmd(%struct.port_info*, %struct.ch_sched_params*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
