; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c589_cs.c_pop_tx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c589_cs.c_pop_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@TX_STATUS = common dso_local global i64 0, align 8
@TxReset = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"transmit error: status 0x%02x\0A\00", align 1
@TxEnable = common dso_local global i32 0, align 4
@EL3_CMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @pop_tx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pop_tx_status(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  store i32 32, i32* %4, align 4
  br label %9

9:                                                ; preds = %55, %1
  %10 = load i32, i32* %4, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %58

12:                                               ; preds = %9
  %13 = load i32, i32* %3, align 4
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* @TX_STATUS, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @inb(i64 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, 132
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %12
  br label %58

22:                                               ; preds = %12
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, 48
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = load i32, i32* @TxReset, align 4
  %29 = call i32 @tc589_wait_for_completion(%struct.net_device* %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %22
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, 56
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %30
  %35 = load %struct.net_device*, %struct.net_device** %2, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @netdev_dbg(%struct.net_device* %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @TxEnable, align 4
  %39 = load i32, i32* %3, align 4
  %40 = zext i32 %39 to i64
  %41 = load i64, i64* @EL3_CMD, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @outw(i32 %38, i64 %42)
  %44 = load %struct.net_device*, %struct.net_device** %2, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %34, %30
  %50 = load i32, i32* %3, align 4
  %51 = zext i32 %50 to i64
  %52 = load i64, i64* @TX_STATUS, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @outb(i32 0, i64 %53)
  br label %55

55:                                               ; preds = %49
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %4, align 4
  br label %9

58:                                               ; preds = %21, %9
  ret void
}

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @tc589_wait_for_completion(%struct.net_device*, i32) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
