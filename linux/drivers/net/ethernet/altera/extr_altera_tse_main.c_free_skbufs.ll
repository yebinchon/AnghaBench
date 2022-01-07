; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/altera/extr_altera_tse_main.c_free_skbufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/altera/extr_altera_tse_main.c_free_skbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.altera_tse_private = type { i32, i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @free_skbufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_skbufs(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.altera_tse_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.altera_tse_private* @netdev_priv(%struct.net_device* %7)
  store %struct.altera_tse_private* %8, %struct.altera_tse_private** %3, align 8
  %9 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %10 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  %12 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %13 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %28, %1
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %21 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %22 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = call i32 @tse_free_rx_buffer(%struct.altera_tse_private* %20, i32* %26)
  br label %28

28:                                               ; preds = %19
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %15

31:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %45, %31
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %32
  %37 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %38 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %39 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = call i32 @tse_free_tx_buffer(%struct.altera_tse_private* %37, i32* %43)
  br label %45

45:                                               ; preds = %36
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %32

48:                                               ; preds = %32
  %49 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %50 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @kfree(i32* %51)
  ret void
}

declare dso_local %struct.altera_tse_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @tse_free_rx_buffer(%struct.altera_tse_private*, i32*) #1

declare dso_local i32 @tse_free_tx_buffer(%struct.altera_tse_private*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
