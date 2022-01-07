; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/softing/extr_softing_main.c_softing_irq_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/softing/extr_softing_main.c_softing_irq_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.softing = type { %struct.TYPE_7__*, %struct.net_device**, %struct.TYPE_6__, i32, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.net_device = type { i32 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.softing_priv = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@TXMAX = common dso_local global i64 0, align 8
@TX_ECHO_SKB_MAX = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @softing_irq_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @softing_irq_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.softing*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.softing_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.softing*
  store %struct.softing* %12, %struct.softing** %5, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.softing*, %struct.softing** %5, align 8
  %14 = getelementptr inbounds %struct.softing, %struct.softing* %13, i32 0, i32 3
  %15 = call i32 @spin_lock_bh(i32* %14)
  br label %16

16:                                               ; preds = %20, %2
  %17 = load %struct.softing*, %struct.softing** %5, align 8
  %18 = call i64 @softing_handle_1(%struct.softing* %17)
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  %21 = load %struct.softing*, %struct.softing** %5, align 8
  %22 = getelementptr inbounds %struct.softing, %struct.softing* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* %10, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %10, align 4
  br label %16

28:                                               ; preds = %16
  %29 = load %struct.softing*, %struct.softing** %5, align 8
  %30 = getelementptr inbounds %struct.softing, %struct.softing* %29, i32 0, i32 3
  %31 = call i32 @spin_unlock_bh(i32* %30)
  %32 = load %struct.softing*, %struct.softing** %5, align 8
  %33 = getelementptr inbounds %struct.softing, %struct.softing* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %91, %28
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.softing*, %struct.softing** %5, align 8
  %39 = getelementptr inbounds %struct.softing, %struct.softing* %38, i32 0, i32 1
  %40 = load %struct.net_device**, %struct.net_device*** %39, align 8
  %41 = call i32 @ARRAY_SIZE(%struct.net_device** %40)
  %42 = icmp slt i32 %37, %41
  br i1 %42, label %43, label %94

43:                                               ; preds = %36
  %44 = load %struct.softing*, %struct.softing** %5, align 8
  %45 = getelementptr inbounds %struct.softing, %struct.softing* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @TXMAX, align 8
  %49 = icmp sge i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %94

51:                                               ; preds = %43
  %52 = load %struct.softing*, %struct.softing** %5, align 8
  %53 = getelementptr inbounds %struct.softing, %struct.softing* %52, i32 0, i32 1
  %54 = load %struct.net_device**, %struct.net_device*** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %55, %56
  %58 = add nsw i32 %57, 1
  %59 = load %struct.softing*, %struct.softing** %5, align 8
  %60 = getelementptr inbounds %struct.softing, %struct.softing* %59, i32 0, i32 0
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = srem i32 %58, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.net_device*, %struct.net_device** %54, i64 %65
  %67 = load %struct.net_device*, %struct.net_device** %66, align 8
  store %struct.net_device* %67, %struct.net_device** %6, align 8
  %68 = load %struct.net_device*, %struct.net_device** %6, align 8
  %69 = icmp ne %struct.net_device* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %51
  br label %91

71:                                               ; preds = %51
  %72 = load %struct.net_device*, %struct.net_device** %6, align 8
  %73 = call %struct.softing_priv* @netdev_priv(%struct.net_device* %72)
  store %struct.softing_priv* %73, %struct.softing_priv** %7, align 8
  %74 = load %struct.net_device*, %struct.net_device** %6, align 8
  %75 = call i32 @canif_is_active(%struct.net_device* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %71
  br label %91

78:                                               ; preds = %71
  %79 = load %struct.softing_priv*, %struct.softing_priv** %7, align 8
  %80 = getelementptr inbounds %struct.softing_priv, %struct.softing_priv* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @TX_ECHO_SKB_MAX, align 8
  %84 = icmp sge i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  br label %91

86:                                               ; preds = %78
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %10, align 4
  %89 = load %struct.net_device*, %struct.net_device** %6, align 8
  %90 = call i32 @netif_wake_queue(%struct.net_device* %89)
  br label %91

91:                                               ; preds = %86, %85, %77, %70
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %8, align 4
  br label %36

94:                                               ; preds = %50, %36
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = load i32, i32* @IRQ_HANDLED, align 4
  br label %101

99:                                               ; preds = %94
  %100 = load i32, i32* @IRQ_NONE, align 4
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi i32 [ %98, %97 ], [ %100, %99 ]
  ret i32 %102
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @softing_handle_1(%struct.softing*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.net_device**) #1

declare dso_local %struct.softing_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @canif_is_active(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
