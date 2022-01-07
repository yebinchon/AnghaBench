; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_dln2.c_find_free_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_dln2.c_find_free_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dln2_dev = type { %struct.dln2_mod_rx_slots*, i64 }
%struct.dln2_mod_rx_slots = type { i32, i32, %struct.dln2_rx_context* }
%struct.dln2_rx_context = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@DLN2_MAX_RX_SLOTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dln2_dev*, i64, i32*)* @find_free_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_free_slot(%struct.dln2_dev* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dln2_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.dln2_mod_rx_slots*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.dln2_rx_context*, align 8
  store %struct.dln2_dev* %0, %struct.dln2_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.dln2_dev*, %struct.dln2_dev** %5, align 8
  %12 = getelementptr inbounds %struct.dln2_dev, %struct.dln2_dev* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  %18 = load i32*, i32** %7, align 8
  store i32 %17, i32* %18, align 4
  store i32 1, i32* %4, align 4
  br label %65

19:                                               ; preds = %3
  %20 = load %struct.dln2_dev*, %struct.dln2_dev** %5, align 8
  %21 = getelementptr inbounds %struct.dln2_dev, %struct.dln2_dev* %20, i32 0, i32 0
  %22 = load %struct.dln2_mod_rx_slots*, %struct.dln2_mod_rx_slots** %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = getelementptr inbounds %struct.dln2_mod_rx_slots, %struct.dln2_mod_rx_slots* %22, i64 %23
  store %struct.dln2_mod_rx_slots* %24, %struct.dln2_mod_rx_slots** %8, align 8
  %25 = load %struct.dln2_mod_rx_slots*, %struct.dln2_mod_rx_slots** %8, align 8
  %26 = getelementptr inbounds %struct.dln2_mod_rx_slots, %struct.dln2_mod_rx_slots* %25, i32 0, i32 0
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.dln2_mod_rx_slots*, %struct.dln2_mod_rx_slots** %8, align 8
  %30 = getelementptr inbounds %struct.dln2_mod_rx_slots, %struct.dln2_mod_rx_slots* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @DLN2_MAX_RX_SLOTS, align 4
  %33 = call i32 @find_first_zero_bit(i32 %31, i32 %32)
  %34 = load i32*, i32** %7, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @DLN2_MAX_RX_SLOTS, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %19
  %40 = load %struct.dln2_mod_rx_slots*, %struct.dln2_mod_rx_slots** %8, align 8
  %41 = getelementptr inbounds %struct.dln2_mod_rx_slots, %struct.dln2_mod_rx_slots* %40, i32 0, i32 2
  %42 = load %struct.dln2_rx_context*, %struct.dln2_rx_context** %41, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.dln2_rx_context, %struct.dln2_rx_context* %42, i64 %45
  store %struct.dln2_rx_context* %46, %struct.dln2_rx_context** %10, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.dln2_mod_rx_slots*, %struct.dln2_mod_rx_slots** %8, align 8
  %50 = getelementptr inbounds %struct.dln2_mod_rx_slots, %struct.dln2_mod_rx_slots* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @set_bit(i32 %48, i32 %51)
  %53 = load %struct.dln2_rx_context*, %struct.dln2_rx_context** %10, align 8
  %54 = getelementptr inbounds %struct.dln2_rx_context, %struct.dln2_rx_context* %53, i32 0, i32 0
  store i32 1, i32* %54, align 4
  br label %55

55:                                               ; preds = %39, %19
  %56 = load %struct.dln2_mod_rx_slots*, %struct.dln2_mod_rx_slots** %8, align 8
  %57 = getelementptr inbounds %struct.dln2_mod_rx_slots, %struct.dln2_mod_rx_slots* %56, i32 0, i32 0
  %58 = load i64, i64* %9, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @DLN2_MAX_RX_SLOTS, align 4
  %63 = icmp slt i32 %61, %62
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %55, %15
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
