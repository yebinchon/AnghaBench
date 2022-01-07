; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/extr_qla3xxx.c_ql_free_buffer_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/extr_qla3xxx.c_ql_free_buffer_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql3_adapter = type { i32, i32*, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32 }

@QL_ALLOC_BUFQS_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Already done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ql3_adapter*)* @ql_free_buffer_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_free_buffer_queues(%struct.ql3_adapter* %0) #0 {
  %2 = alloca %struct.ql3_adapter*, align 8
  store %struct.ql3_adapter* %0, %struct.ql3_adapter** %2, align 8
  %3 = load i32, i32* @QL_ALLOC_BUFQS_DONE, align 4
  %4 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %4, i32 0, i32 0
  %6 = call i32 @test_bit(i32 %3, i32* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %9, i32 0, i32 11
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @netdev_info(i32 %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %52

13:                                               ; preds = %1
  %14 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %14, i32 0, i32 10
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @kfree(i32 %16)
  %18 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %22 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %21, i32 0, i32 9
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %25 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %28 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @pci_free_consistent(i32 %20, i32 %23, i32 %26, i32 %29)
  %31 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %32 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %31, i32 0, i32 6
  store i32* null, i32** %32, align 8
  %33 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %34 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %37 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %40 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %43 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @pci_free_consistent(i32 %35, i32 %38, i32 %41, i32 %44)
  %46 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %47 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %46, i32 0, i32 1
  store i32* null, i32** %47, align 8
  %48 = load i32, i32* @QL_ALLOC_BUFQS_DONE, align 4
  %49 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %50 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %49, i32 0, i32 0
  %51 = call i32 @clear_bit(i32 %48, i32* %50)
  br label %52

52:                                               ; preds = %13, %8
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @netdev_info(i32, i8*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
