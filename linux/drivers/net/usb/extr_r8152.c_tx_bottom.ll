; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_tx_bottom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_tx_bottom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8152 = type { i32, i32, %struct.net_device*, i32 }
%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32 }
%struct.tx_agg = type { i32, i64 }

@ENODEV = common dso_local global i32 0, align 4
@tx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"failed tx_urb %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8152*)* @tx_bottom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tx_bottom(%struct.r8152* %0) #0 {
  %2 = alloca %struct.r8152*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tx_agg*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.net_device_stats*, align 8
  %7 = alloca i64, align 8
  store %struct.r8152* %0, %struct.r8152** %2, align 8
  br label %8

8:                                                ; preds = %71, %1
  %9 = load %struct.r8152*, %struct.r8152** %2, align 8
  %10 = getelementptr inbounds %struct.r8152, %struct.r8152* %9, i32 0, i32 3
  %11 = call i64 @skb_queue_empty(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  br label %74

14:                                               ; preds = %8
  %15 = load %struct.r8152*, %struct.r8152** %2, align 8
  %16 = call %struct.tx_agg* @r8152_get_tx_agg(%struct.r8152* %15)
  store %struct.tx_agg* %16, %struct.tx_agg** %4, align 8
  %17 = load %struct.tx_agg*, %struct.tx_agg** %4, align 8
  %18 = icmp ne %struct.tx_agg* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  br label %74

20:                                               ; preds = %14
  %21 = load %struct.r8152*, %struct.r8152** %2, align 8
  %22 = load %struct.tx_agg*, %struct.tx_agg** %4, align 8
  %23 = call i32 @r8152_tx_agg_fill(%struct.r8152* %21, %struct.tx_agg* %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %70

26:                                               ; preds = %20
  %27 = load %struct.r8152*, %struct.r8152** %2, align 8
  %28 = getelementptr inbounds %struct.r8152, %struct.r8152* %27, i32 0, i32 2
  %29 = load %struct.net_device*, %struct.net_device** %28, align 8
  store %struct.net_device* %29, %struct.net_device** %5, align 8
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = load %struct.r8152*, %struct.r8152** %2, align 8
  %36 = call i32 @rtl_set_unplug(%struct.r8152* %35)
  %37 = load %struct.net_device*, %struct.net_device** %5, align 8
  %38 = call i32 @netif_device_detach(%struct.net_device* %37)
  br label %69

39:                                               ; preds = %26
  %40 = load %struct.net_device*, %struct.net_device** %5, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 0
  store %struct.net_device_stats* %41, %struct.net_device_stats** %6, align 8
  %42 = load %struct.r8152*, %struct.r8152** %2, align 8
  %43 = load i32, i32* @tx_err, align 4
  %44 = load %struct.net_device*, %struct.net_device** %5, align 8
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @netif_warn(%struct.r8152* %42, i32 %43, %struct.net_device* %44, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load %struct.tx_agg*, %struct.tx_agg** %4, align 8
  %48 = getelementptr inbounds %struct.tx_agg, %struct.tx_agg* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %51 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %49
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %51, align 4
  %56 = load %struct.r8152*, %struct.r8152** %2, align 8
  %57 = getelementptr inbounds %struct.r8152, %struct.r8152* %56, i32 0, i32 0
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @spin_lock_irqsave(i32* %57, i64 %58)
  %60 = load %struct.tx_agg*, %struct.tx_agg** %4, align 8
  %61 = getelementptr inbounds %struct.tx_agg, %struct.tx_agg* %60, i32 0, i32 0
  %62 = load %struct.r8152*, %struct.r8152** %2, align 8
  %63 = getelementptr inbounds %struct.r8152, %struct.r8152* %62, i32 0, i32 1
  %64 = call i32 @list_add_tail(i32* %61, i32* %63)
  %65 = load %struct.r8152*, %struct.r8152** %2, align 8
  %66 = getelementptr inbounds %struct.r8152, %struct.r8152* %65, i32 0, i32 0
  %67 = load i64, i64* %7, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  br label %69

69:                                               ; preds = %39, %34
  br label %70

70:                                               ; preds = %69, %20
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %3, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %8, label %74

74:                                               ; preds = %71, %19, %13
  ret void
}

declare dso_local i64 @skb_queue_empty(i32*) #1

declare dso_local %struct.tx_agg* @r8152_get_tx_agg(%struct.r8152*) #1

declare dso_local i32 @r8152_tx_agg_fill(%struct.r8152*, %struct.tx_agg*) #1

declare dso_local i32 @rtl_set_unplug(%struct.r8152*) #1

declare dso_local i32 @netif_device_detach(%struct.net_device*) #1

declare dso_local i32 @netif_warn(%struct.r8152*, i32, %struct.net_device*, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
