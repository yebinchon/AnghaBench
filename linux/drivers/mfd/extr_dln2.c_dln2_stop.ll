; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_dln2.c_dln2_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_dln2.c_dln2_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dln2_dev = type { i32, i32, i32, %struct.dln2_mod_rx_slots*, i32 }
%struct.dln2_mod_rx_slots = type { i32, %struct.dln2_rx_context* }
%struct.dln2_rx_context = type { i32, i64 }

@DLN2_HANDLES = common dso_local global i32 0, align 4
@DLN2_MAX_RX_SLOTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dln2_dev*)* @dln2_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dln2_stop(%struct.dln2_dev* %0) #0 {
  %2 = alloca %struct.dln2_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.dln2_mod_rx_slots*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.dln2_rx_context*, align 8
  store %struct.dln2_dev* %0, %struct.dln2_dev** %2, align 8
  %8 = load %struct.dln2_dev*, %struct.dln2_dev** %2, align 8
  %9 = getelementptr inbounds %struct.dln2_dev, %struct.dln2_dev* %8, i32 0, i32 4
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.dln2_dev*, %struct.dln2_dev** %2, align 8
  %12 = getelementptr inbounds %struct.dln2_dev, %struct.dln2_dev* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load %struct.dln2_dev*, %struct.dln2_dev** %2, align 8
  %14 = getelementptr inbounds %struct.dln2_dev, %struct.dln2_dev* %13, i32 0, i32 4
  %15 = call i32 @spin_unlock(i32* %14)
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %59, %1
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @DLN2_HANDLES, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %62

20:                                               ; preds = %16
  %21 = load %struct.dln2_dev*, %struct.dln2_dev** %2, align 8
  %22 = getelementptr inbounds %struct.dln2_dev, %struct.dln2_dev* %21, i32 0, i32 3
  %23 = load %struct.dln2_mod_rx_slots*, %struct.dln2_mod_rx_slots** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.dln2_mod_rx_slots, %struct.dln2_mod_rx_slots* %23, i64 %25
  store %struct.dln2_mod_rx_slots* %26, %struct.dln2_mod_rx_slots** %5, align 8
  %27 = load %struct.dln2_mod_rx_slots*, %struct.dln2_mod_rx_slots** %5, align 8
  %28 = getelementptr inbounds %struct.dln2_mod_rx_slots, %struct.dln2_mod_rx_slots* %27, i32 0, i32 0
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %51, %20
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @DLN2_MAX_RX_SLOTS, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %54

35:                                               ; preds = %31
  %36 = load %struct.dln2_mod_rx_slots*, %struct.dln2_mod_rx_slots** %5, align 8
  %37 = getelementptr inbounds %struct.dln2_mod_rx_slots, %struct.dln2_mod_rx_slots* %36, i32 0, i32 1
  %38 = load %struct.dln2_rx_context*, %struct.dln2_rx_context** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.dln2_rx_context, %struct.dln2_rx_context* %38, i64 %40
  store %struct.dln2_rx_context* %41, %struct.dln2_rx_context** %7, align 8
  %42 = load %struct.dln2_rx_context*, %struct.dln2_rx_context** %7, align 8
  %43 = getelementptr inbounds %struct.dln2_rx_context, %struct.dln2_rx_context* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %35
  %47 = load %struct.dln2_rx_context*, %struct.dln2_rx_context** %7, align 8
  %48 = getelementptr inbounds %struct.dln2_rx_context, %struct.dln2_rx_context* %47, i32 0, i32 0
  %49 = call i32 @complete(i32* %48)
  br label %50

50:                                               ; preds = %46, %35
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  br label %31

54:                                               ; preds = %31
  %55 = load %struct.dln2_mod_rx_slots*, %struct.dln2_mod_rx_slots** %5, align 8
  %56 = getelementptr inbounds %struct.dln2_mod_rx_slots, %struct.dln2_mod_rx_slots* %55, i32 0, i32 0
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  br label %59

59:                                               ; preds = %54
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %3, align 4
  br label %16

62:                                               ; preds = %16
  %63 = load %struct.dln2_dev*, %struct.dln2_dev** %2, align 8
  %64 = getelementptr inbounds %struct.dln2_dev, %struct.dln2_dev* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.dln2_dev*, %struct.dln2_dev** %2, align 8
  %67 = getelementptr inbounds %struct.dln2_dev, %struct.dln2_dev* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i32 @wait_event(i32 %65, i32 %71)
  %73 = load %struct.dln2_dev*, %struct.dln2_dev** %2, align 8
  %74 = call i32 @dln2_stop_rx_urbs(%struct.dln2_dev* %73)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @dln2_stop_rx_urbs(%struct.dln2_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
