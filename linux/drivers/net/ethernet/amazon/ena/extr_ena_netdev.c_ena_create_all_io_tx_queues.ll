; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_create_all_io_tx_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_create_all_io_tx_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i32, %struct.ena_com_dev* }
%struct.ena_com_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_adapter*)* @ena_create_all_io_tx_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_create_all_io_tx_queues(%struct.ena_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ena_adapter*, align 8
  %4 = alloca %struct.ena_com_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ena_adapter* %0, %struct.ena_adapter** %3, align 8
  %7 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %7, i32 0, i32 1
  %9 = load %struct.ena_com_dev*, %struct.ena_com_dev** %8, align 8
  store %struct.ena_com_dev* %9, %struct.ena_com_dev** %4, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %24, %1
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %10
  %17 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @ena_create_io_tx_queue(%struct.ena_adapter* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %28

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %6, align 4
  br label %10

27:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %40

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %33, %28
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %6, align 4
  %32 = icmp ne i32 %30, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @ENA_IO_TXQ_IDX(i32 %35)
  %37 = call i32 @ena_com_destroy_io_queue(%struct.ena_com_dev* %34, i32 %36)
  br label %29

38:                                               ; preds = %29
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %38, %27
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @ena_create_io_tx_queue(%struct.ena_adapter*, i32) #1

declare dso_local i32 @ena_com_destroy_io_queue(%struct.ena_com_dev*, i32) #1

declare dso_local i32 @ENA_IO_TXQ_IDX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
