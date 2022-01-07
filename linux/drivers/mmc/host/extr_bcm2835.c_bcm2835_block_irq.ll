; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_bcm2835.c_bcm2835_block_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_bcm2835.c_bcm2835_block_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_host = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm2835_host*)* @bcm2835_block_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm2835_block_irq(%struct.bcm2835_host* %0) #0 {
  %2 = alloca %struct.bcm2835_host*, align 8
  store %struct.bcm2835_host* %0, %struct.bcm2835_host** %2, align 8
  %3 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %4 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %3, i32 0, i32 1
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = icmp ne %struct.TYPE_2__* %5, null
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i64 @WARN_ON(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %13 = call i32 @bcm2835_dumpregs(%struct.bcm2835_host* %12)
  br label %59

14:                                               ; preds = %1
  %15 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %16 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %46, label %19

19:                                               ; preds = %14
  %20 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %21 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @WARN_ON(i32 %25)
  %27 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %28 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %19
  %34 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %35 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, -1
  store i64 %37, i64* %35, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33, %19
  %40 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %41 = call i32 @bcm2835_finish_data(%struct.bcm2835_host* %40)
  br label %45

42:                                               ; preds = %33
  %43 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %44 = call i32 @bcm2835_transfer_pio(%struct.bcm2835_host* %43)
  br label %45

45:                                               ; preds = %42, %39
  br label %59

46:                                               ; preds = %14
  %47 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %48 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @MMC_DATA_WRITE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %57 = call i32 @bcm2835_finish_data(%struct.bcm2835_host* %56)
  br label %58

58:                                               ; preds = %55, %46
  br label %59

59:                                               ; preds = %11, %58, %45
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @bcm2835_dumpregs(%struct.bcm2835_host*) #1

declare dso_local i32 @bcm2835_finish_data(%struct.bcm2835_host*) #1

declare dso_local i32 @bcm2835_transfer_pio(%struct.bcm2835_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
