; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_epic100.c_epic_tx_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_epic100.c_epic_tx_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32, i32, i32 }
%struct.epic_private = type { i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Transmit error, Tx status %8.8x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.epic_private*, i32)* @epic_tx_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @epic_tx_error(%struct.net_device* %0, %struct.epic_private* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.epic_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device_stats*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.epic_private* %1, %struct.epic_private** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  store %struct.net_device_stats* %9, %struct.net_device_stats** %7, align 8
  %10 = load i32, i32* @debug, align 4
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @netdev_dbg(%struct.net_device* %13, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %12, %3
  %17 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %18 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, 4176
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %16
  %25 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %26 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %24, %16
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %35 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %33, %29
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %39, 64
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %44 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %42, %38
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %48, 16
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %53 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %51, %47
  ret void
}

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
