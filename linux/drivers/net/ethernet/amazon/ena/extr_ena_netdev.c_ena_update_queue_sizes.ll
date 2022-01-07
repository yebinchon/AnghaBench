; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_update_queue_sizes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_update_queue_sizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i8*, i8*, i32, i32 }

@ENA_FLAG_DEV_UP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ena_update_queue_sizes(%struct.ena_adapter* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.ena_adapter*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.ena_adapter* %0, %struct.ena_adapter** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i32, i32* @ENA_FLAG_DEV_UP, align 4
  %9 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %9, i32 0, i32 3
  %11 = call i32 @test_bit(i32 %8, i32* %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @ena_close(i32 %14)
  %16 = load i8*, i8** %5, align 8
  %17 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %18 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %17, i32 0, i32 1
  store i8* %16, i8** %18, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %21 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %23 = call i32 @ena_init_io_rings(%struct.ena_adapter* %22)
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %28 = call i32 @ena_up(%struct.ena_adapter* %27)
  br label %30

29:                                               ; preds = %3
  br label %30

30:                                               ; preds = %29, %26
  %31 = phi i32 [ %28, %26 ], [ 0, %29 ]
  ret i32 %31
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @ena_close(i32) #1

declare dso_local i32 @ena_init_io_rings(%struct.ena_adapter*) #1

declare dso_local i32 @ena_up(%struct.ena_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
