; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cavium.c_set_wdog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cavium.c_set_wdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cvm_mmc_slot = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@NSEC_PER_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cvm_mmc_slot*, i32)* @set_wdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_wdog(%struct.cvm_mmc_slot* %0, i32 %1) #0 {
  %3 = alloca %struct.cvm_mmc_slot*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cvm_mmc_slot* %0, %struct.cvm_mmc_slot** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.cvm_mmc_slot*, %struct.cvm_mmc_slot** %3, align 8
  %7 = getelementptr inbounds %struct.cvm_mmc_slot, %struct.cvm_mmc_slot* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %43

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = load %struct.cvm_mmc_slot*, %struct.cvm_mmc_slot** %3, align 8
  %16 = getelementptr inbounds %struct.cvm_mmc_slot, %struct.cvm_mmc_slot* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = mul i32 %17, %18
  %20 = load i32, i32* @NSEC_PER_SEC, align 4
  %21 = udiv i32 %19, %20
  store i32 %21, i32* %5, align 4
  br label %30

22:                                               ; preds = %11
  %23 = load %struct.cvm_mmc_slot*, %struct.cvm_mmc_slot** %3, align 8
  %24 = getelementptr inbounds %struct.cvm_mmc_slot, %struct.cvm_mmc_slot* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = zext i32 %25 to i64
  %27 = mul i64 %26, 850
  %28 = udiv i64 %27, 1000
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %22, %14
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.cvm_mmc_slot*, %struct.cvm_mmc_slot** %3, align 8
  %33 = getelementptr inbounds %struct.cvm_mmc_slot, %struct.cvm_mmc_slot* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.cvm_mmc_slot*, %struct.cvm_mmc_slot** %3, align 8
  %38 = getelementptr inbounds %struct.cvm_mmc_slot, %struct.cvm_mmc_slot* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = call i64 @MIO_EMM_WDOG(%struct.TYPE_2__* %39)
  %41 = add nsw i64 %36, %40
  %42 = call i32 @writeq(i32 %31, i64 %41)
  br label %43

43:                                               ; preds = %30, %10
  ret void
}

declare dso_local i32 @writeq(i32, i64) #1

declare dso_local i64 @MIO_EMM_WDOG(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
