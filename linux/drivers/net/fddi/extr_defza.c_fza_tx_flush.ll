; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/extr_defza.c_fza_tx_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/extr_defza.c_fza_tx_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fza_private = type { i32, i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@FZA_RING_OWN_FZA = common dso_local global i32 0, align 4
@FZA_RING_OWN_MASK = common dso_local global i32 0, align 4
@FZA_RING_TX_OWN_RMC = common dso_local global i32 0, align 4
@FZA_RING_TX_DTP = common dso_local global i32 0, align 4
@FZA_CONTROL_A_FLUSH_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @fza_tx_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fza_tx_flush(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.fza_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.fza_private* @netdev_priv(%struct.net_device* %7)
  store %struct.fza_private* %8, %struct.fza_private** %3, align 8
  %9 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %10 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  br label %12

12:                                               ; preds = %32, %1
  %13 = load i32, i32* @FZA_RING_OWN_FZA, align 4
  %14 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %15 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %14, i32 0, i32 6
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = call i32 @writel_o(i32 %13, i32* %20)
  %22 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %23 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 1
  %26 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %27 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = srem i32 %25, %28
  %30 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %31 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  br label %32

32:                                               ; preds = %12
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %35 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %33, %36
  br i1 %37, label %12, label %38

38:                                               ; preds = %32
  %39 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %40 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %87, %38
  %43 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %44 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %43, i32 0, i32 5
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = call i32 @readl_o(i32* %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @FZA_RING_OWN_MASK, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* @FZA_RING_TX_OWN_RMC, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %76

56:                                               ; preds = %42
  %57 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %58 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %57, i32 0, i32 5
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = call i32 @readl_u(i32* %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @FZA_RING_TX_DTP, align 4
  %67 = or i32 %65, %66
  %68 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %69 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %68, i32 0, i32 5
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = call i32 @writel_u(i32 %67, i32* %74)
  br label %76

76:                                               ; preds = %56, %42
  %77 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %78 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 1
  %81 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %82 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = srem i32 %80, %83
  %85 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %86 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  br label %87

87:                                               ; preds = %76
  %88 = load i32, i32* %5, align 4
  %89 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %90 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %88, %91
  br i1 %92, label %42, label %93

93:                                               ; preds = %87
  %94 = load i32, i32* @FZA_CONTROL_A_FLUSH_DONE, align 4
  %95 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %96 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %95, i32 0, i32 4
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = call i32 @writew_o(i32 %94, i32* %98)
  ret void
}

declare dso_local %struct.fza_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @writel_o(i32, i32*) #1

declare dso_local i32 @readl_o(i32*) #1

declare dso_local i32 @readl_u(i32*) #1

declare dso_local i32 @writel_u(i32, i32*) #1

declare dso_local i32 @writew_o(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
