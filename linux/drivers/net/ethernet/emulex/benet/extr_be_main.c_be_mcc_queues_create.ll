; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_mcc_queues_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_mcc_queues_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.be_queue_info, %struct.be_queue_info }
%struct.be_queue_info = type { i32 }
%struct.TYPE_4__ = type { i32 }

@MCC_CQ_LEN = common dso_local global i32 0, align 4
@MCC_Q_LEN = common dso_local global i32 0, align 4
@QTYPE_CQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.be_adapter*)* @be_mcc_queues_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_mcc_queues_create(%struct.be_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca %struct.be_queue_info*, align 8
  %5 = alloca %struct.be_queue_info*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  %6 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  store %struct.be_queue_info* %8, %struct.be_queue_info** %5, align 8
  %9 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %10 = load %struct.be_queue_info*, %struct.be_queue_info** %5, align 8
  %11 = load i32, i32* @MCC_CQ_LEN, align 4
  %12 = call i64 @be_queue_alloc(%struct.be_adapter* %9, %struct.be_queue_info* %10, i32 %11, i32 4)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %55

15:                                               ; preds = %1
  %16 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %17 = load %struct.be_queue_info*, %struct.be_queue_info** %5, align 8
  %18 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %19 = call %struct.TYPE_4__* @mcc_eqo(%struct.be_adapter* %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = call i64 @be_cmd_cq_create(%struct.be_adapter* %16, %struct.be_queue_info* %17, i32* %20, i32 1, i32 0)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %51

24:                                               ; preds = %15
  %25 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store %struct.be_queue_info* %27, %struct.be_queue_info** %4, align 8
  %28 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %29 = load %struct.be_queue_info*, %struct.be_queue_info** %4, align 8
  %30 = load i32, i32* @MCC_Q_LEN, align 4
  %31 = call i64 @be_queue_alloc(%struct.be_adapter* %28, %struct.be_queue_info* %29, i32 %30, i32 4)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %46

34:                                               ; preds = %24
  %35 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %36 = load %struct.be_queue_info*, %struct.be_queue_info** %4, align 8
  %37 = load %struct.be_queue_info*, %struct.be_queue_info** %5, align 8
  %38 = call i64 @be_cmd_mccq_create(%struct.be_adapter* %35, %struct.be_queue_info* %36, %struct.be_queue_info* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %42

41:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %56

42:                                               ; preds = %40
  %43 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %44 = load %struct.be_queue_info*, %struct.be_queue_info** %4, align 8
  %45 = call i32 @be_queue_free(%struct.be_adapter* %43, %struct.be_queue_info* %44)
  br label %46

46:                                               ; preds = %42, %33
  %47 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %48 = load %struct.be_queue_info*, %struct.be_queue_info** %5, align 8
  %49 = load i32, i32* @QTYPE_CQ, align 4
  %50 = call i32 @be_cmd_q_destroy(%struct.be_adapter* %47, %struct.be_queue_info* %48, i32 %49)
  br label %51

51:                                               ; preds = %46, %23
  %52 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %53 = load %struct.be_queue_info*, %struct.be_queue_info** %5, align 8
  %54 = call i32 @be_queue_free(%struct.be_adapter* %52, %struct.be_queue_info* %53)
  br label %55

55:                                               ; preds = %51, %14
  store i32 -1, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %41
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i64 @be_queue_alloc(%struct.be_adapter*, %struct.be_queue_info*, i32, i32) #1

declare dso_local i64 @be_cmd_cq_create(%struct.be_adapter*, %struct.be_queue_info*, i32*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @mcc_eqo(%struct.be_adapter*) #1

declare dso_local i64 @be_cmd_mccq_create(%struct.be_adapter*, %struct.be_queue_info*, %struct.be_queue_info*) #1

declare dso_local i32 @be_queue_free(%struct.be_adapter*, %struct.be_queue_info*) #1

declare dso_local i32 @be_cmd_q_destroy(%struct.be_adapter*, %struct.be_queue_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
