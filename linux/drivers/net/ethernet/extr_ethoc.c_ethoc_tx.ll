; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_ethoc.c_ethoc_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_ethoc.c_ethoc_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethoc = type { i32, i32, i32 }
%struct.ethoc_bd = type { i32 }

@TX_BD_READY = common dso_local global i32 0, align 4
@INT_MASK_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @ethoc_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ethoc_tx(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ethoc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ethoc_bd, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.ethoc* @netdev_priv(%struct.net_device* %9)
  store %struct.ethoc* %10, %struct.ethoc** %5, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %69, %2
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %72

15:                                               ; preds = %11
  %16 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %17 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %20 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %21, 1
  %23 = and i32 %18, %22
  store i32 %23, i32* %8, align 4
  %24 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @ethoc_read_bd(%struct.ethoc* %24, i32 %25, %struct.ethoc_bd* %7)
  %27 = getelementptr inbounds %struct.ethoc_bd, %struct.ethoc_bd* %7, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @TX_BD_READY, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %15
  %33 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %34 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %37 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %35, %38
  br i1 %39, label %40, label %62

40:                                               ; preds = %32, %15
  %41 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %42 = load i32, i32* @INT_MASK_TX, align 4
  %43 = call i32 @ethoc_ack_irq(%struct.ethoc* %41, i32 %42)
  %44 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @ethoc_read_bd(%struct.ethoc* %44, i32 %45, %struct.ethoc_bd* %7)
  %47 = getelementptr inbounds %struct.ethoc_bd, %struct.ethoc_bd* %7, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @TX_BD_READY, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %40
  %53 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %54 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %57 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %55, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %52, %40
  br label %72

61:                                               ; preds = %52
  br label %62

62:                                               ; preds = %61, %32
  %63 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %64 = call i32 @ethoc_update_tx_stats(%struct.ethoc* %63, %struct.ethoc_bd* %7)
  %65 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %66 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %62
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %11

72:                                               ; preds = %60, %11
  %73 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %74 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %77 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 %75, %78
  %80 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %81 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = sdiv i32 %82, 2
  %84 = icmp sle i32 %79, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %72
  %86 = load %struct.net_device*, %struct.net_device** %3, align 8
  %87 = call i32 @netif_wake_queue(%struct.net_device* %86)
  br label %88

88:                                               ; preds = %85, %72
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local %struct.ethoc* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ethoc_read_bd(%struct.ethoc*, i32, %struct.ethoc_bd*) #1

declare dso_local i32 @ethoc_ack_irq(%struct.ethoc*, i32) #1

declare dso_local i32 @ethoc_update_tx_stats(%struct.ethoc*, %struct.ethoc_bd*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
