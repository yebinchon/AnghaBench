; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_net_driver.h_ef4_link_state_equal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_net_driver.h_ef4_link_state_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_link_state = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ef4_link_state*, %struct.ef4_link_state*)* @ef4_link_state_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ef4_link_state_equal(%struct.ef4_link_state* %0, %struct.ef4_link_state* %1) #0 {
  %3 = alloca %struct.ef4_link_state*, align 8
  %4 = alloca %struct.ef4_link_state*, align 8
  store %struct.ef4_link_state* %0, %struct.ef4_link_state** %3, align 8
  store %struct.ef4_link_state* %1, %struct.ef4_link_state** %4, align 8
  %5 = load %struct.ef4_link_state*, %struct.ef4_link_state** %3, align 8
  %6 = getelementptr inbounds %struct.ef4_link_state, %struct.ef4_link_state* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.ef4_link_state*, %struct.ef4_link_state** %4, align 8
  %9 = getelementptr inbounds %struct.ef4_link_state, %struct.ef4_link_state* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %7, %10
  br i1 %11, label %12, label %36

12:                                               ; preds = %2
  %13 = load %struct.ef4_link_state*, %struct.ef4_link_state** %3, align 8
  %14 = getelementptr inbounds %struct.ef4_link_state, %struct.ef4_link_state* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.ef4_link_state*, %struct.ef4_link_state** %4, align 8
  %17 = getelementptr inbounds %struct.ef4_link_state, %struct.ef4_link_state* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %12
  %21 = load %struct.ef4_link_state*, %struct.ef4_link_state** %3, align 8
  %22 = getelementptr inbounds %struct.ef4_link_state, %struct.ef4_link_state* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.ef4_link_state*, %struct.ef4_link_state** %4, align 8
  %25 = getelementptr inbounds %struct.ef4_link_state, %struct.ef4_link_state* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %20
  %29 = load %struct.ef4_link_state*, %struct.ef4_link_state** %3, align 8
  %30 = getelementptr inbounds %struct.ef4_link_state, %struct.ef4_link_state* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.ef4_link_state*, %struct.ef4_link_state** %4, align 8
  %33 = getelementptr inbounds %struct.ef4_link_state, %struct.ef4_link_state* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br label %36

36:                                               ; preds = %28, %20, %12, %2
  %37 = phi i1 [ false, %20 ], [ false, %12 ], [ false, %2 ], [ %35, %28 ]
  %38 = zext i1 %37 to i32
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
