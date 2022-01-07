; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_dln2.c_free_rx_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_dln2.c_free_rx_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dln2_dev = type { %struct.TYPE_2__*, %struct.dln2_mod_rx_slots* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.dln2_mod_rx_slots = type { i32, i32, %struct.dln2_rx_context*, i32 }
%struct.dln2_rx_context = type { i32, i32, %struct.urb* }
%struct.urb = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to resubmit RX URB: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dln2_dev*, i64, i32)* @free_rx_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_rx_slot(%struct.dln2_dev* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.dln2_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dln2_mod_rx_slots*, align 8
  %8 = alloca %struct.urb*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.dln2_rx_context*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.device*, align 8
  store %struct.dln2_dev* %0, %struct.dln2_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.urb* null, %struct.urb** %8, align 8
  %13 = load %struct.dln2_dev*, %struct.dln2_dev** %4, align 8
  %14 = getelementptr inbounds %struct.dln2_dev, %struct.dln2_dev* %13, i32 0, i32 1
  %15 = load %struct.dln2_mod_rx_slots*, %struct.dln2_mod_rx_slots** %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds %struct.dln2_mod_rx_slots, %struct.dln2_mod_rx_slots* %15, i64 %16
  store %struct.dln2_mod_rx_slots* %17, %struct.dln2_mod_rx_slots** %7, align 8
  %18 = load %struct.dln2_mod_rx_slots*, %struct.dln2_mod_rx_slots** %7, align 8
  %19 = getelementptr inbounds %struct.dln2_mod_rx_slots, %struct.dln2_mod_rx_slots* %18, i32 0, i32 1
  %20 = load i64, i64* %9, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.dln2_mod_rx_slots*, %struct.dln2_mod_rx_slots** %7, align 8
  %24 = getelementptr inbounds %struct.dln2_mod_rx_slots, %struct.dln2_mod_rx_slots* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @clear_bit(i32 %22, i32 %25)
  %27 = load %struct.dln2_mod_rx_slots*, %struct.dln2_mod_rx_slots** %7, align 8
  %28 = getelementptr inbounds %struct.dln2_mod_rx_slots, %struct.dln2_mod_rx_slots* %27, i32 0, i32 2
  %29 = load %struct.dln2_rx_context*, %struct.dln2_rx_context** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.dln2_rx_context, %struct.dln2_rx_context* %29, i64 %31
  store %struct.dln2_rx_context* %32, %struct.dln2_rx_context** %10, align 8
  %33 = load %struct.dln2_rx_context*, %struct.dln2_rx_context** %10, align 8
  %34 = getelementptr inbounds %struct.dln2_rx_context, %struct.dln2_rx_context* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  %35 = load %struct.dln2_rx_context*, %struct.dln2_rx_context** %10, align 8
  %36 = getelementptr inbounds %struct.dln2_rx_context, %struct.dln2_rx_context* %35, i32 0, i32 2
  %37 = load %struct.urb*, %struct.urb** %36, align 8
  store %struct.urb* %37, %struct.urb** %8, align 8
  %38 = load %struct.dln2_rx_context*, %struct.dln2_rx_context** %10, align 8
  %39 = getelementptr inbounds %struct.dln2_rx_context, %struct.dln2_rx_context* %38, i32 0, i32 2
  store %struct.urb* null, %struct.urb** %39, align 8
  %40 = load %struct.dln2_rx_context*, %struct.dln2_rx_context** %10, align 8
  %41 = getelementptr inbounds %struct.dln2_rx_context, %struct.dln2_rx_context* %40, i32 0, i32 1
  %42 = call i32 @reinit_completion(i32* %41)
  %43 = load %struct.dln2_mod_rx_slots*, %struct.dln2_mod_rx_slots** %7, align 8
  %44 = getelementptr inbounds %struct.dln2_mod_rx_slots, %struct.dln2_mod_rx_slots* %43, i32 0, i32 1
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  %47 = load %struct.urb*, %struct.urb** %8, align 8
  %48 = icmp ne %struct.urb* %47, null
  br i1 %48, label %49, label %64

49:                                               ; preds = %3
  %50 = load %struct.dln2_dev*, %struct.dln2_dev** %4, align 8
  %51 = getelementptr inbounds %struct.dln2_dev, %struct.dln2_dev* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store %struct.device* %53, %struct.device** %12, align 8
  %54 = load %struct.urb*, %struct.urb** %8, align 8
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call i32 @usb_submit_urb(%struct.urb* %54, i32 %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %49
  %60 = load %struct.device*, %struct.device** %12, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @dev_err(%struct.device* %60, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %59, %49
  br label %64

64:                                               ; preds = %63, %3
  %65 = load %struct.dln2_mod_rx_slots*, %struct.dln2_mod_rx_slots** %7, align 8
  %66 = getelementptr inbounds %struct.dln2_mod_rx_slots, %struct.dln2_mod_rx_slots* %65, i32 0, i32 0
  %67 = call i32 @wake_up_interruptible(i32* %66)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
