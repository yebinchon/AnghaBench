; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/extr_qla3xxx.c_ql_free_small_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/extr_qla3xxx.c_ql_free_small_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql3_adapter = type { i32*, i32, i32, i32, i32, i32 }

@QL_ALLOC_SMALL_BUF_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Already done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ql3_adapter*)* @ql_free_small_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_free_small_buffers(%struct.ql3_adapter* %0) #0 {
  %2 = alloca %struct.ql3_adapter*, align 8
  store %struct.ql3_adapter* %0, %struct.ql3_adapter** %2, align 8
  %3 = load i32, i32* @QL_ALLOC_SMALL_BUF_DONE, align 4
  %4 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %4, i32 0, i32 5
  %6 = call i32 @test_bit(i32 %3, i32* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @netdev_info(i32 %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %34

13:                                               ; preds = %1
  %14 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %34

18:                                               ; preds = %13
  %19 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %26 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %29 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @pci_free_consistent(i32 %21, i32 %24, i32* %27, i32 %30)
  %32 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %33 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %32, i32 0, i32 0
  store i32* null, i32** %33, align 8
  br label %34

34:                                               ; preds = %8, %18, %13
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @netdev_info(i32, i8*) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
