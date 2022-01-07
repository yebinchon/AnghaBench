; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-txe.c_mei_txe_pending_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-txe.c_mei_txe_pending_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i32 }
%struct.mei_txe_hw = type { i32 }

@TXE_INTR_READINESS = common dso_local global i32 0, align 4
@TXE_INTR_ALIVENESS = common dso_local global i32 0, align 4
@TXE_INTR_IN_READY = common dso_local global i32 0, align 4
@TXE_INTR_OUT_DB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"Pending Interrupts InReady=%01d Readiness=%01d, Aliveness=%01d, OutDoor=%01d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mei_device*)* @mei_txe_pending_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_txe_pending_interrupts(%struct.mei_device* %0) #0 {
  %2 = alloca %struct.mei_device*, align 8
  %3 = alloca %struct.mei_txe_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.mei_device* %0, %struct.mei_device** %2, align 8
  %5 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %6 = call %struct.mei_txe_hw* @to_txe_hw(%struct.mei_device* %5)
  store %struct.mei_txe_hw* %6, %struct.mei_txe_hw** %3, align 8
  %7 = load %struct.mei_txe_hw*, %struct.mei_txe_hw** %3, align 8
  %8 = getelementptr inbounds %struct.mei_txe_hw, %struct.mei_txe_hw* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @TXE_INTR_READINESS, align 4
  %11 = load i32, i32* @TXE_INTR_ALIVENESS, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @TXE_INTR_IN_READY, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @TXE_INTR_OUT_DB, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %9, %16
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %61

20:                                               ; preds = %1
  %21 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %22 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mei_txe_hw*, %struct.mei_txe_hw** %3, align 8
  %25 = getelementptr inbounds %struct.mei_txe_hw, %struct.mei_txe_hw* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @TXE_INTR_IN_READY, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = load %struct.mei_txe_hw*, %struct.mei_txe_hw** %3, align 8
  %34 = getelementptr inbounds %struct.mei_txe_hw, %struct.mei_txe_hw* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @TXE_INTR_READINESS, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = load %struct.mei_txe_hw*, %struct.mei_txe_hw** %3, align 8
  %43 = getelementptr inbounds %struct.mei_txe_hw, %struct.mei_txe_hw* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @TXE_INTR_ALIVENESS, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = load %struct.mei_txe_hw*, %struct.mei_txe_hw** %3, align 8
  %52 = getelementptr inbounds %struct.mei_txe_hw, %struct.mei_txe_hw* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @TXE_INTR_OUT_DB, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i32 @dev_dbg(i32 %23, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %41, i32 %50, i32 %59)
  br label %61

61:                                               ; preds = %20, %1
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.mei_txe_hw* @to_txe_hw(%struct.mei_device*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
