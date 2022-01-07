; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_rx_cq_clean.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_rx_cq_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_rx_obj = type { %struct.be_adapter*, %struct.be_queue_info }
%struct.be_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.be_queue_info = type { i32 }
%struct.be_rx_compl_info = type { i64 }

@BE_ERROR_HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"did not receive flush compl\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.be_rx_obj*)* @be_rx_cq_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_rx_cq_clean(%struct.be_rx_obj* %0) #0 {
  %2 = alloca %struct.be_rx_obj*, align 8
  %3 = alloca %struct.be_queue_info*, align 8
  %4 = alloca %struct.be_rx_compl_info*, align 8
  %5 = alloca %struct.be_adapter*, align 8
  %6 = alloca i32, align 4
  store %struct.be_rx_obj* %0, %struct.be_rx_obj** %2, align 8
  %7 = load %struct.be_rx_obj*, %struct.be_rx_obj** %2, align 8
  %8 = getelementptr inbounds %struct.be_rx_obj, %struct.be_rx_obj* %7, i32 0, i32 1
  store %struct.be_queue_info* %8, %struct.be_queue_info** %3, align 8
  %9 = load %struct.be_rx_obj*, %struct.be_rx_obj** %2, align 8
  %10 = getelementptr inbounds %struct.be_rx_obj, %struct.be_rx_obj* %9, i32 0, i32 0
  %11 = load %struct.be_adapter*, %struct.be_adapter** %10, align 8
  store %struct.be_adapter* %11, %struct.be_adapter** %5, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %59, %1
  %13 = load %struct.be_rx_obj*, %struct.be_rx_obj** %2, align 8
  %14 = call %struct.be_rx_compl_info* @be_rx_compl_get(%struct.be_rx_obj* %13)
  store %struct.be_rx_compl_info* %14, %struct.be_rx_compl_info** %4, align 8
  %15 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %4, align 8
  %16 = icmp ne %struct.be_rx_compl_info* %15, null
  br i1 %16, label %44, label %17

17:                                               ; preds = %12
  %18 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %19 = call i64 @lancer_chip(%struct.be_adapter* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %60

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %6, align 4
  %25 = icmp sgt i32 %23, 50
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %28 = load i32, i32* @BE_ERROR_HW, align 4
  %29 = call i64 @be_check_error(%struct.be_adapter* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26, %22
  %32 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %33 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i32 @dev_warn(i32* %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %60

37:                                               ; preds = %26
  %38 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %39 = load %struct.be_queue_info*, %struct.be_queue_info** %3, align 8
  %40 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @be_cq_notify(%struct.be_adapter* %38, i32 %41, i32 1, i32 0)
  %43 = call i32 @mdelay(i32 1)
  br label %59

44:                                               ; preds = %12
  %45 = load %struct.be_rx_obj*, %struct.be_rx_obj** %2, align 8
  %46 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %4, align 8
  %47 = call i32 @be_rx_compl_discard(%struct.be_rx_obj* %45, %struct.be_rx_compl_info* %46)
  %48 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %49 = load %struct.be_queue_info*, %struct.be_queue_info** %3, align 8
  %50 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @be_cq_notify(%struct.be_adapter* %48, i32 %51, i32 0, i32 1)
  %53 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %4, align 8
  %54 = getelementptr inbounds %struct.be_rx_compl_info, %struct.be_rx_compl_info* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %44
  br label %60

58:                                               ; preds = %44
  br label %59

59:                                               ; preds = %58, %37
  br label %12

60:                                               ; preds = %57, %31, %21
  %61 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %62 = load %struct.be_queue_info*, %struct.be_queue_info** %3, align 8
  %63 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @be_cq_notify(%struct.be_adapter* %61, i32 %64, i32 0, i32 0)
  ret void
}

declare dso_local %struct.be_rx_compl_info* @be_rx_compl_get(%struct.be_rx_obj*) #1

declare dso_local i64 @lancer_chip(%struct.be_adapter*) #1

declare dso_local i64 @be_check_error(%struct.be_adapter*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @be_cq_notify(%struct.be_adapter*, i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @be_rx_compl_discard(%struct.be_rx_obj*, %struct.be_rx_compl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
