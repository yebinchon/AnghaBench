; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_ushc.c_int_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_ushc.c_int_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i64, %struct.ushc_data* }
%struct.ushc_data = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IGNORE_NEXT_INT = common dso_local global i32 0, align 4
@INT_EN = common dso_local global i32 0, align 4
@USHC_INT_STATUS_SDIO_INT = common dso_local global i32 0, align 4
@USHC_INT_STATUS_CARD_PRESENT = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @int_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @int_callback(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.ushc_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %6 = load %struct.urb*, %struct.urb** %2, align 8
  %7 = getelementptr inbounds %struct.urb, %struct.urb* %6, i32 0, i32 1
  %8 = load %struct.ushc_data*, %struct.ushc_data** %7, align 8
  store %struct.ushc_data* %8, %struct.ushc_data** %3, align 8
  %9 = load %struct.urb*, %struct.urb** %2, align 8
  %10 = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %77

14:                                               ; preds = %1
  %15 = load %struct.ushc_data*, %struct.ushc_data** %3, align 8
  %16 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %15, i32 0, i32 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %4, align 4
  %20 = load %struct.ushc_data*, %struct.ushc_data** %3, align 8
  %21 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.ushc_data*, %struct.ushc_data** %3, align 8
  %25 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* @IGNORE_NEXT_INT, align 4
  %27 = load %struct.ushc_data*, %struct.ushc_data** %3, align 8
  %28 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %27, i32 0, i32 2
  %29 = call i32 @test_and_clear_bit(i32 %26, i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %47, label %31

31:                                               ; preds = %14
  %32 = load i32, i32* @INT_EN, align 4
  %33 = load %struct.ushc_data*, %struct.ushc_data** %3, align 8
  %34 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %33, i32 0, i32 2
  %35 = call i64 @test_bit(i32 %32, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %31
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @USHC_INT_STATUS_SDIO_INT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.ushc_data*, %struct.ushc_data** %3, align 8
  %44 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @mmc_signal_sdio_irq(i32 %45)
  br label %47

47:                                               ; preds = %42, %37, %31, %14
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %5, align 4
  %50 = xor i32 %48, %49
  %51 = load i32, i32* @USHC_INT_STATUS_CARD_PRESENT, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = load %struct.ushc_data*, %struct.ushc_data** %3, align 8
  %56 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @msecs_to_jiffies(i32 100)
  %59 = call i32 @mmc_detect_change(i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %54, %47
  %61 = load i32, i32* @INT_EN, align 4
  %62 = load %struct.ushc_data*, %struct.ushc_data** %3, align 8
  %63 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %62, i32 0, i32 2
  %64 = call i64 @test_bit(i32 %61, i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %60
  %67 = load i32, i32* @IGNORE_NEXT_INT, align 4
  %68 = load %struct.ushc_data*, %struct.ushc_data** %3, align 8
  %69 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %68, i32 0, i32 2
  %70 = call i32 @set_bit(i32 %67, i32* %69)
  br label %71

71:                                               ; preds = %66, %60
  %72 = load %struct.ushc_data*, %struct.ushc_data** %3, align 8
  %73 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @GFP_ATOMIC, align 4
  %76 = call i32 @usb_submit_urb(i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %71, %13
  ret void
}

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mmc_signal_sdio_irq(i32) #1

declare dso_local i32 @mmc_detect_change(i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
