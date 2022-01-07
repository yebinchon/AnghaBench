; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_create_all_io_rx_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_create_all_io_rx_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i32, %struct.TYPE_4__*, %struct.ena_com_dev* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ena_com_dev = type { i32 }

@ena_dim_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_adapter*)* @ena_create_all_io_rx_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_create_all_io_rx_queues(%struct.ena_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ena_adapter*, align 8
  %4 = alloca %struct.ena_com_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ena_adapter* %0, %struct.ena_adapter** %3, align 8
  %7 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %7, i32 0, i32 2
  %9 = load %struct.ena_com_dev*, %struct.ena_com_dev** %8, align 8
  store %struct.ena_com_dev* %9, %struct.ena_com_dev** %4, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %34, %1
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %10
  %17 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @ena_create_io_rx_queue(%struct.ena_adapter* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %38

23:                                               ; preds = %16
  %24 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* @ena_dim_work, align 4
  %33 = call i32 @INIT_WORK(i32* %31, i32 %32)
  br label %34

34:                                               ; preds = %23
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %10

37:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %59

38:                                               ; preds = %22
  br label %39

39:                                               ; preds = %43, %38
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %6, align 4
  %42 = icmp ne i32 %40, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %39
  %44 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %45 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = call i32 @cancel_work_sync(i32* %51)
  %53 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @ENA_IO_RXQ_IDX(i32 %54)
  %56 = call i32 @ena_com_destroy_io_queue(%struct.ena_com_dev* %53, i32 %55)
  br label %39

57:                                               ; preds = %39
  %58 = load i32, i32* %5, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %57, %37
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @ena_create_io_rx_queue(%struct.ena_adapter*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @ena_com_destroy_io_queue(%struct.ena_com_dev*, i32) #1

declare dso_local i32 @ENA_IO_RXQ_IDX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
