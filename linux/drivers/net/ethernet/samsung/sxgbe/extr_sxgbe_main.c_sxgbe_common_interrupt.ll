; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/samsung/sxgbe/extr_sxgbe_main.c_sxgbe_common_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/samsung/sxgbe/extr_sxgbe_main.c_sxgbe_common_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sxgbe_priv_data = type { i32, %struct.TYPE_6__, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32, %struct.TYPE_6__*)* }

@TX_ENTRY_LPI_MODE = common dso_local global i32 0, align 4
@TX_EXIT_LPI_MODE = common dso_local global i32 0, align 4
@RX_ENTRY_LPI_MODE = common dso_local global i32 0, align 4
@RX_EXIT_LPI_MODE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sxgbe_common_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sxgbe_common_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sxgbe_priv_data*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.net_device*
  store %struct.net_device* %9, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.sxgbe_priv_data* @netdev_priv(%struct.net_device* %10)
  store %struct.sxgbe_priv_data* %11, %struct.sxgbe_priv_data** %6, align 8
  %12 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %6, align 8
  %13 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %12, i32 0, i32 3
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32 (i32, %struct.TYPE_6__*)*, i32 (i32, %struct.TYPE_6__*)** %17, align 8
  %19 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %6, align 8
  %20 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %6, align 8
  %23 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %22, i32 0, i32 1
  %24 = call i32 %18(i32 %21, %struct.TYPE_6__* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @TX_ENTRY_LPI_MODE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %2
  %30 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %6, align 8
  %31 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  %35 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %6, align 8
  %36 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  br label %37

37:                                               ; preds = %29, %2
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @TX_EXIT_LPI_MODE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %6, align 8
  %44 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %6, align 8
  %49 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  br label %50

50:                                               ; preds = %42, %37
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @RX_ENTRY_LPI_MODE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %6, align 8
  %57 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %55, %50
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @RX_EXIT_LPI_MODE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %6, align 8
  %68 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %66, %61
  %73 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %73
}

declare dso_local %struct.sxgbe_priv_data* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
