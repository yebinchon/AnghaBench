; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_dcb.c___qlcnic_dcb_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_dcb.c___qlcnic_dcb_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_dcb = type { %struct.qlcnic_dcb*, %struct.qlcnic_dcb*, i32*, i32, i32, %struct.qlcnic_adapter* }
%struct.qlcnic_adapter = type { i32* }

@QLCNIC_DCB_AEN_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlcnic_dcb*)* @__qlcnic_dcb_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__qlcnic_dcb_free(%struct.qlcnic_dcb* %0) #0 {
  %2 = alloca %struct.qlcnic_dcb*, align 8
  %3 = alloca %struct.qlcnic_adapter*, align 8
  store %struct.qlcnic_dcb* %0, %struct.qlcnic_dcb** %2, align 8
  %4 = load %struct.qlcnic_dcb*, %struct.qlcnic_dcb** %2, align 8
  %5 = icmp ne %struct.qlcnic_dcb* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %51

7:                                                ; preds = %1
  %8 = load %struct.qlcnic_dcb*, %struct.qlcnic_dcb** %2, align 8
  %9 = getelementptr inbounds %struct.qlcnic_dcb, %struct.qlcnic_dcb* %8, i32 0, i32 5
  %10 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %9, align 8
  store %struct.qlcnic_adapter* %10, %struct.qlcnic_adapter** %3, align 8
  br label %11

11:                                               ; preds = %17, %7
  %12 = load i32, i32* @QLCNIC_DCB_AEN_MODE, align 4
  %13 = load %struct.qlcnic_dcb*, %struct.qlcnic_dcb** %2, align 8
  %14 = getelementptr inbounds %struct.qlcnic_dcb, %struct.qlcnic_dcb* %13, i32 0, i32 4
  %15 = call i64 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = call i32 @usleep_range(i32 10000, i32 11000)
  br label %11

19:                                               ; preds = %11
  %20 = load %struct.qlcnic_dcb*, %struct.qlcnic_dcb** %2, align 8
  %21 = getelementptr inbounds %struct.qlcnic_dcb, %struct.qlcnic_dcb* %20, i32 0, i32 3
  %22 = call i32 @cancel_delayed_work_sync(i32* %21)
  %23 = load %struct.qlcnic_dcb*, %struct.qlcnic_dcb** %2, align 8
  %24 = getelementptr inbounds %struct.qlcnic_dcb, %struct.qlcnic_dcb* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %19
  %28 = load %struct.qlcnic_dcb*, %struct.qlcnic_dcb** %2, align 8
  %29 = getelementptr inbounds %struct.qlcnic_dcb, %struct.qlcnic_dcb* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @destroy_workqueue(i32* %30)
  %32 = load %struct.qlcnic_dcb*, %struct.qlcnic_dcb** %2, align 8
  %33 = getelementptr inbounds %struct.qlcnic_dcb, %struct.qlcnic_dcb* %32, i32 0, i32 2
  store i32* null, i32** %33, align 8
  br label %34

34:                                               ; preds = %27, %19
  %35 = load %struct.qlcnic_dcb*, %struct.qlcnic_dcb** %2, align 8
  %36 = getelementptr inbounds %struct.qlcnic_dcb, %struct.qlcnic_dcb* %35, i32 0, i32 1
  %37 = load %struct.qlcnic_dcb*, %struct.qlcnic_dcb** %36, align 8
  %38 = call i32 @kfree(%struct.qlcnic_dcb* %37)
  %39 = load %struct.qlcnic_dcb*, %struct.qlcnic_dcb** %2, align 8
  %40 = getelementptr inbounds %struct.qlcnic_dcb, %struct.qlcnic_dcb* %39, i32 0, i32 1
  store %struct.qlcnic_dcb* null, %struct.qlcnic_dcb** %40, align 8
  %41 = load %struct.qlcnic_dcb*, %struct.qlcnic_dcb** %2, align 8
  %42 = getelementptr inbounds %struct.qlcnic_dcb, %struct.qlcnic_dcb* %41, i32 0, i32 0
  %43 = load %struct.qlcnic_dcb*, %struct.qlcnic_dcb** %42, align 8
  %44 = call i32 @kfree(%struct.qlcnic_dcb* %43)
  %45 = load %struct.qlcnic_dcb*, %struct.qlcnic_dcb** %2, align 8
  %46 = getelementptr inbounds %struct.qlcnic_dcb, %struct.qlcnic_dcb* %45, i32 0, i32 0
  store %struct.qlcnic_dcb* null, %struct.qlcnic_dcb** %46, align 8
  %47 = load %struct.qlcnic_dcb*, %struct.qlcnic_dcb** %2, align 8
  %48 = call i32 @kfree(%struct.qlcnic_dcb* %47)
  %49 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %50 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %49, i32 0, i32 0
  store i32* null, i32** %50, align 8
  br label %51

51:                                               ; preds = %34, %6
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

declare dso_local i32 @kfree(%struct.qlcnic_dcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
