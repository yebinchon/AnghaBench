; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_at91_can.c_at91_poll_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_at91_can.c_at91_poll_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.at91_priv = type { i64 }

@AT91_SR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"order of incoming frames cannot be guaranteed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @at91_poll_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_poll_rx(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.at91_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.at91_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.at91_priv* %11, %struct.at91_priv** %5, align 8
  %12 = load %struct.at91_priv*, %struct.at91_priv** %5, align 8
  %13 = load i32, i32* @AT91_SR, align 4
  %14 = call i32 @at91_read(%struct.at91_priv* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = bitcast i32* %6 to i64*
  store i64* %15, i64** %7, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.at91_priv*, %struct.at91_priv** %5, align 8
  %17 = getelementptr inbounds %struct.at91_priv, %struct.at91_priv* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.at91_priv*, %struct.at91_priv** %5, align 8
  %20 = call i64 @get_mb_rx_low_last(%struct.at91_priv* %19)
  %21 = icmp sgt i64 %18, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %2
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.at91_priv*, %struct.at91_priv** %5, align 8
  %25 = call i32 @get_mb_rx_low_mask(%struct.at91_priv* %24)
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = call i32 @netdev_info(%struct.net_device* %29, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %22, %2
  br label %32

32:                                               ; preds = %109, %31
  %33 = load i64*, i64** %7, align 8
  %34 = load %struct.at91_priv*, %struct.at91_priv** %5, align 8
  %35 = call i32 @get_mb_tx_first(%struct.at91_priv* %34)
  %36 = load %struct.at91_priv*, %struct.at91_priv** %5, align 8
  %37 = getelementptr inbounds %struct.at91_priv, %struct.at91_priv* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @find_next_bit(i64* %33, i32 %35, i64 %38)
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %78, %32
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.at91_priv*, %struct.at91_priv** %5, align 8
  %43 = call i32 @get_mb_tx_first(%struct.at91_priv* %42)
  %44 = icmp ult i32 %41, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* %4, align 4
  %47 = icmp sgt i32 %46, 0
  br label %48

48:                                               ; preds = %45, %40
  %49 = phi i1 [ false, %40 ], [ %47, %45 ]
  br i1 %49, label %50, label %90

50:                                               ; preds = %48
  %51 = load %struct.net_device*, %struct.net_device** %3, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @at91_read_msg(%struct.net_device* %51, i32 %52)
  %54 = load i32, i32* %8, align 4
  %55 = zext i32 %54 to i64
  %56 = load %struct.at91_priv*, %struct.at91_priv** %5, align 8
  %57 = call i64 @get_mb_rx_low_last(%struct.at91_priv* %56)
  %58 = icmp eq i64 %55, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = load %struct.at91_priv*, %struct.at91_priv** %5, align 8
  %61 = call i32 @at91_activate_rx_low(%struct.at91_priv* %60)
  br label %73

62:                                               ; preds = %50
  %63 = load i32, i32* %8, align 4
  %64 = zext i32 %63 to i64
  %65 = load %struct.at91_priv*, %struct.at91_priv** %5, align 8
  %66 = call i64 @get_mb_rx_low_last(%struct.at91_priv* %65)
  %67 = icmp sgt i64 %64, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load %struct.at91_priv*, %struct.at91_priv** %5, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @at91_activate_rx_mb(%struct.at91_priv* %69, i32 %70)
  br label %72

72:                                               ; preds = %68, %62
  br label %73

73:                                               ; preds = %72, %59
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %73
  %79 = load %struct.at91_priv*, %struct.at91_priv** %5, align 8
  %80 = load i32, i32* @AT91_SR, align 4
  %81 = call i32 @at91_read(%struct.at91_priv* %79, i32 %80)
  store i32 %81, i32* %6, align 4
  %82 = load i64*, i64** %7, align 8
  %83 = load %struct.at91_priv*, %struct.at91_priv** %5, align 8
  %84 = call i32 @get_mb_tx_first(%struct.at91_priv* %83)
  %85 = load %struct.at91_priv*, %struct.at91_priv** %5, align 8
  %86 = getelementptr inbounds %struct.at91_priv, %struct.at91_priv* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %86, align 8
  %89 = call i32 @find_next_bit(i64* %82, i32 %84, i64 %88)
  store i32 %89, i32* %8, align 4
  br label %40

90:                                               ; preds = %48
  %91 = load %struct.at91_priv*, %struct.at91_priv** %5, align 8
  %92 = getelementptr inbounds %struct.at91_priv, %struct.at91_priv* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.at91_priv*, %struct.at91_priv** %5, align 8
  %95 = call i64 @get_mb_rx_low_last(%struct.at91_priv* %94)
  %96 = icmp sgt i64 %93, %95
  br i1 %96, label %97, label %111

97:                                               ; preds = %90
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.at91_priv*, %struct.at91_priv** %5, align 8
  %100 = call i32 @get_mb_rx_last(%struct.at91_priv* %99)
  %101 = icmp ugt i32 %98, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %97
  %103 = load %struct.at91_priv*, %struct.at91_priv** %5, align 8
  %104 = call i64 @get_mb_rx_first(%struct.at91_priv* %103)
  %105 = load %struct.at91_priv*, %struct.at91_priv** %5, align 8
  %106 = getelementptr inbounds %struct.at91_priv, %struct.at91_priv* %105, i32 0, i32 0
  store i64 %104, i64* %106, align 8
  %107 = load i32, i32* %4, align 4
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %102
  br label %32

110:                                              ; preds = %102
  br label %111

111:                                              ; preds = %110, %97, %90
  %112 = load i32, i32* %9, align 4
  ret i32 %112
}

declare dso_local %struct.at91_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @at91_read(%struct.at91_priv*, i32) #1

declare dso_local i64 @get_mb_rx_low_last(%struct.at91_priv*) #1

declare dso_local i32 @get_mb_rx_low_mask(%struct.at91_priv*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

declare dso_local i32 @find_next_bit(i64*, i32, i64) #1

declare dso_local i32 @get_mb_tx_first(%struct.at91_priv*) #1

declare dso_local i32 @at91_read_msg(%struct.net_device*, i32) #1

declare dso_local i32 @at91_activate_rx_low(%struct.at91_priv*) #1

declare dso_local i32 @at91_activate_rx_mb(%struct.at91_priv*, i32) #1

declare dso_local i32 @get_mb_rx_last(%struct.at91_priv*) #1

declare dso_local i64 @get_mb_rx_first(%struct.at91_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
