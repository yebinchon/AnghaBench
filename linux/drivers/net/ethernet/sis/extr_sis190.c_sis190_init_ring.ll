; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sis/extr_sis190.c_sis190_init_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sis/extr_sis190.c_sis190_init_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sis190_private = type { i64, i32, i32 }

@NUM_TX_DESC = common dso_local global i32 0, align 4
@NUM_RX_DESC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @sis190_init_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sis190_init_ring(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.sis190_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = load %struct.net_device*, %struct.net_device** %3, align 8
  %6 = call %struct.sis190_private* @netdev_priv(%struct.net_device* %5)
  store %struct.sis190_private* %6, %struct.sis190_private** %4, align 8
  %7 = load %struct.sis190_private*, %struct.sis190_private** %4, align 8
  %8 = call i32 @sis190_init_ring_indexes(%struct.sis190_private* %7)
  %9 = load %struct.sis190_private*, %struct.sis190_private** %4, align 8
  %10 = getelementptr inbounds %struct.sis190_private, %struct.sis190_private* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @NUM_TX_DESC, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 8
  %15 = trunc i64 %14 to i32
  %16 = call i32 @memset(i32 %11, i32 0, i32 %15)
  %17 = load %struct.sis190_private*, %struct.sis190_private** %4, align 8
  %18 = getelementptr inbounds %struct.sis190_private, %struct.sis190_private* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @NUM_RX_DESC, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 8
  %23 = trunc i64 %22 to i32
  %24 = call i32 @memset(i32 %19, i32 0, i32 %23)
  %25 = load %struct.sis190_private*, %struct.sis190_private** %4, align 8
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = load i32, i32* @NUM_RX_DESC, align 4
  %28 = call i32 @sis190_rx_fill(%struct.sis190_private* %25, %struct.net_device* %26, i32 0, i32 %27)
  %29 = load i32, i32* @NUM_RX_DESC, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %1
  br label %41

32:                                               ; preds = %1
  %33 = load %struct.sis190_private*, %struct.sis190_private** %4, align 8
  %34 = getelementptr inbounds %struct.sis190_private, %struct.sis190_private* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @NUM_RX_DESC, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %35, %37
  %39 = sub nsw i64 %38, 1
  %40 = call i32 @sis190_mark_as_last_descriptor(i64 %39)
  store i32 0, i32* %2, align 4
  br label %46

41:                                               ; preds = %31
  %42 = load %struct.sis190_private*, %struct.sis190_private** %4, align 8
  %43 = call i32 @sis190_rx_clear(%struct.sis190_private* %42)
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %41, %32
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.sis190_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @sis190_init_ring_indexes(%struct.sis190_private*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @sis190_rx_fill(%struct.sis190_private*, %struct.net_device*, i32, i32) #1

declare dso_local i32 @sis190_mark_as_last_descriptor(i64) #1

declare dso_local i32 @sis190_rx_clear(%struct.sis190_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
