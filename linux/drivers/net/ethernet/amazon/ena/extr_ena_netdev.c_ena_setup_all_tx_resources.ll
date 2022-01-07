; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_setup_all_tx_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_setup_all_tx_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i32, i32 }

@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Tx queue %d: allocation failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_adapter*)* @ena_setup_all_tx_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_setup_all_tx_resources(%struct.ena_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ena_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ena_adapter* %0, %struct.ena_adapter** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %20, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %6
  %13 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @ena_setup_tx_resources(%struct.ena_adapter* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %24

19:                                               ; preds = %12
  br label %20

20:                                               ; preds = %19
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %4, align 4
  br label %6

23:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %42

24:                                               ; preds = %18
  %25 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %26 = load i32, i32* @ifup, align 4
  %27 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %28 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @netif_err(%struct.ena_adapter* %25, i32 %26, i32 %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %36, %24
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %4, align 4
  %35 = icmp ne i32 %33, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @ena_free_tx_resources(%struct.ena_adapter* %37, i32 %38)
  br label %32

40:                                               ; preds = %32
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %23
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @ena_setup_tx_resources(%struct.ena_adapter*, i32) #1

declare dso_local i32 @netif_err(%struct.ena_adapter*, i32, i32, i8*, i32) #1

declare dso_local i32 @ena_free_tx_resources(%struct.ena_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
