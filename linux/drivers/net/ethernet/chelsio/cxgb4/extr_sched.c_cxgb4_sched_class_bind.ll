; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sched.c_cxgb4_sched_class_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sched.c_cxgb4_sched_class_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.port_info = type { i32 }
%struct.ch_sched_queue = type { i64 }

@ENOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SCHED_CLS_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxgb4_sched_class_bind(%struct.net_device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.port_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ch_sched_queue*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.port_info* @netdev2pinfo(%struct.net_device* %11)
  store %struct.port_info* %12, %struct.port_info** %8, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call i32 @can_sched(%struct.net_device* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %56

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %56

25:                                               ; preds = %19
  %26 = load i32, i32* %7, align 4
  switch i32 %26, label %33 [
    i32 128, label %27
  ]

27:                                               ; preds = %25
  %28 = load i8*, i8** %6, align 8
  %29 = bitcast i8* %28 to %struct.ch_sched_queue*
  store %struct.ch_sched_queue* %29, %struct.ch_sched_queue** %10, align 8
  %30 = load %struct.ch_sched_queue*, %struct.ch_sched_queue** %10, align 8
  %31 = getelementptr inbounds %struct.ch_sched_queue, %struct.ch_sched_queue* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %9, align 8
  br label %36

33:                                               ; preds = %25
  %34 = load i32, i32* @ENOTSUPP, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %56

36:                                               ; preds = %27
  %37 = load %struct.net_device*, %struct.net_device** %5, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @valid_class_id(%struct.net_device* %37, i64 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %56

44:                                               ; preds = %36
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* @SCHED_CLS_NONE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* @ENOTSUPP, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %56

51:                                               ; preds = %44
  %52 = load %struct.port_info*, %struct.port_info** %8, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @t4_sched_class_bind_unbind_op(%struct.port_info* %52, i8* %53, i32 %54, i32 1)
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %51, %48, %41, %33, %22, %16
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.port_info* @netdev2pinfo(%struct.net_device*) #1

declare dso_local i32 @can_sched(%struct.net_device*) #1

declare dso_local i32 @valid_class_id(%struct.net_device*, i64) #1

declare dso_local i32 @t4_sched_class_bind_unbind_op(%struct.port_info*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
