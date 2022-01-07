; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sched.c_t4_sched_bind_unbind_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sched.c_t4_sched_bind_unbind_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_info = type { %struct.adapter* }
%struct.adapter = type { i32, i32 }
%struct.sched_queue_entry = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@FW_PARAMS_MNEM_DMAQ = common dso_local global i32 0, align 4
@FW_PARAMS_PARAM_DMAQ_EQ_SCHEDCLASS_ETH = common dso_local global i32 0, align 4
@FW_SCHED_CLS_NONE = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.port_info*, i8*, i32, i32)* @t4_sched_bind_unbind_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t4_sched_bind_unbind_op(%struct.port_info* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.port_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.sched_queue_entry*, align 8
  store %struct.port_info* %0, %struct.port_info** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load %struct.port_info*, %struct.port_info** %5, align 8
  %18 = getelementptr inbounds %struct.port_info, %struct.port_info* %17, i32 0, i32 0
  %19 = load %struct.adapter*, %struct.adapter** %18, align 8
  store %struct.adapter* %19, %struct.adapter** %9, align 8
  %20 = load %struct.adapter*, %struct.adapter** %9, align 8
  %21 = getelementptr inbounds %struct.adapter, %struct.adapter* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %23 = load i32, i32* %7, align 4
  switch i32 %23, label %52 [
    i32 128, label %24
  ]

24:                                               ; preds = %4
  %25 = load i8*, i8** %6, align 8
  %26 = bitcast i8* %25 to %struct.sched_queue_entry*
  store %struct.sched_queue_entry* %26, %struct.sched_queue_entry** %16, align 8
  %27 = load i32, i32* @FW_PARAMS_MNEM_DMAQ, align 4
  %28 = call i32 @FW_PARAMS_MNEM_V(i32 %27)
  %29 = load i32, i32* @FW_PARAMS_PARAM_DMAQ_EQ_SCHEDCLASS_ETH, align 4
  %30 = call i32 @FW_PARAMS_PARAM_X_V(i32 %29)
  %31 = or i32 %28, %30
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %24
  %35 = load %struct.sched_queue_entry*, %struct.sched_queue_entry** %16, align 8
  %36 = getelementptr inbounds %struct.sched_queue_entry, %struct.sched_queue_entry* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  br label %41

39:                                               ; preds = %24
  %40 = load i32, i32* @FW_SCHED_CLS_NONE, align 4
  br label %41

41:                                               ; preds = %39, %34
  %42 = phi i32 [ %38, %34 ], [ %40, %39 ]
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.sched_queue_entry*, %struct.sched_queue_entry** %16, align 8
  %45 = getelementptr inbounds %struct.sched_queue_entry, %struct.sched_queue_entry* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @FW_PARAMS_PARAM_YZ_V(i32 %46)
  %48 = or i32 %43, %47
  store i32 %48, i32* %12, align 4
  %49 = load %struct.adapter*, %struct.adapter** %9, align 8
  %50 = getelementptr inbounds %struct.adapter, %struct.adapter* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %55

52:                                               ; preds = %4
  %53 = load i32, i32* @ENOTSUPP, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %15, align 4
  br label %63

55:                                               ; preds = %41
  %56 = load %struct.adapter*, %struct.adapter** %9, align 8
  %57 = load %struct.adapter*, %struct.adapter** %9, align 8
  %58 = getelementptr inbounds %struct.adapter, %struct.adapter* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %14, align 4
  %62 = call i32 @t4_set_params(%struct.adapter* %56, i32 %59, i32 %60, i32 %61, i32 1, i32* %12, i32* %11)
  store i32 %62, i32* %15, align 4
  br label %63

63:                                               ; preds = %55, %52
  %64 = load i32, i32* %15, align 4
  ret i32 %64
}

declare dso_local i32 @FW_PARAMS_MNEM_V(i32) #1

declare dso_local i32 @FW_PARAMS_PARAM_X_V(i32) #1

declare dso_local i32 @FW_PARAMS_PARAM_YZ_V(i32) #1

declare dso_local i32 @t4_set_params(%struct.adapter*, i32, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
