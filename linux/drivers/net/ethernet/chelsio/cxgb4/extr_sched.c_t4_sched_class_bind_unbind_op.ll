; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sched.c_t4_sched_class_bind_unbind_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sched.c_t4_sched_class_bind_unbind_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_info = type { i32 }
%struct.ch_sched_queue = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.port_info*, i8*, i32, i32)* @t4_sched_class_bind_unbind_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t4_sched_class_bind_unbind_op(%struct.port_info* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.port_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ch_sched_queue*, align 8
  store %struct.port_info* %0, %struct.port_info** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %38

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  switch i32 %18, label %33 [
    i32 128, label %19
  ]

19:                                               ; preds = %17
  %20 = load i8*, i8** %7, align 8
  %21 = bitcast i8* %20 to %struct.ch_sched_queue*
  store %struct.ch_sched_queue* %21, %struct.ch_sched_queue** %11, align 8
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.port_info*, %struct.port_info** %6, align 8
  %26 = load %struct.ch_sched_queue*, %struct.ch_sched_queue** %11, align 8
  %27 = call i32 @t4_sched_queue_bind(%struct.port_info* %25, %struct.ch_sched_queue* %26)
  store i32 %27, i32* %10, align 4
  br label %32

28:                                               ; preds = %19
  %29 = load %struct.port_info*, %struct.port_info** %6, align 8
  %30 = load %struct.ch_sched_queue*, %struct.ch_sched_queue** %11, align 8
  %31 = call i32 @t4_sched_queue_unbind(%struct.port_info* %29, %struct.ch_sched_queue* %30)
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %28, %24
  br label %36

33:                                               ; preds = %17
  %34 = load i32, i32* @ENOTSUPP, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %10, align 4
  br label %36

36:                                               ; preds = %33, %32
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %36, %14
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @t4_sched_queue_bind(%struct.port_info*, %struct.ch_sched_queue*) #1

declare dso_local i32 @t4_sched_queue_unbind(%struct.port_info*, %struct.ch_sched_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
