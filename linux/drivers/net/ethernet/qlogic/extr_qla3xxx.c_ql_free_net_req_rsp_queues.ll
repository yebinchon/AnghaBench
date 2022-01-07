; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/extr_qla3xxx.c_ql_free_net_req_rsp_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/extr_qla3xxx.c_ql_free_net_req_rsp_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql3_adapter = type { i32, i32*, i32, i32, i32, i32*, i32, i32, i32 }

@QL_ALLOC_REQ_RSP_Q_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Already done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ql3_adapter*)* @ql_free_net_req_rsp_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_free_net_req_rsp_queues(%struct.ql3_adapter* %0) #0 {
  %2 = alloca %struct.ql3_adapter*, align 8
  store %struct.ql3_adapter* %0, %struct.ql3_adapter** %2, align 8
  %3 = load i32, i32* @QL_ALLOC_REQ_RSP_Q_DONE, align 4
  %4 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %4, i32 0, i32 0
  %6 = call i32 @test_bit(i32 %3, i32* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %9, i32 0, i32 8
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @netdev_info(i32 %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %48

13:                                               ; preds = %1
  %14 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %21 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %20, i32 0, i32 5
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %24 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @pci_free_consistent(i32 %16, i32 %19, i32* %22, i32 %25)
  %27 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %28 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %27, i32 0, i32 5
  store i32* null, i32** %28, align 8
  %29 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %30 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %33 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %36 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %39 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @pci_free_consistent(i32 %31, i32 %34, i32* %37, i32 %40)
  %42 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %43 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %42, i32 0, i32 1
  store i32* null, i32** %43, align 8
  %44 = load i32, i32* @QL_ALLOC_REQ_RSP_Q_DONE, align 4
  %45 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %46 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %45, i32 0, i32 0
  %47 = call i32 @clear_bit(i32 %44, i32* %46)
  br label %48

48:                                               ; preds = %13, %8
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @netdev_info(i32, i8*) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i32*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
