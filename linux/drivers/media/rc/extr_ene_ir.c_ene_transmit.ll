; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_ene_ir.c_ene_transmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_ene_ir.c_ene_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { %struct.ene_device* }
%struct.ene_device = type { i32*, i32, i32, i32, i32, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [15 x i8] c"TX: %d samples\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"TX: timeout\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"TX: done\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, i32*, i32)* @ene_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ene_transmit(%struct.rc_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.rc_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ene_device*, align 8
  %8 = alloca i64, align 8
  store %struct.rc_dev* %0, %struct.rc_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %10 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %9, i32 0, i32 0
  %11 = load %struct.ene_device*, %struct.ene_device** %10, align 8
  store %struct.ene_device* %11, %struct.ene_device** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load %struct.ene_device*, %struct.ene_device** %7, align 8
  %14 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %13, i32 0, i32 0
  store i32* %12, i32** %14, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.ene_device*, %struct.ene_device** %7, align 8
  %17 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = load %struct.ene_device*, %struct.ene_device** %7, align 8
  %19 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %18, i32 0, i32 8
  store i64 0, i64* %19, align 8
  %20 = load %struct.ene_device*, %struct.ene_device** %7, align 8
  %21 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %20, i32 0, i32 7
  store i64 0, i64* %21, align 8
  %22 = load %struct.ene_device*, %struct.ene_device** %7, align 8
  %23 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %22, i32 0, i32 6
  store i64 0, i64* %23, align 8
  %24 = load %struct.ene_device*, %struct.ene_device** %7, align 8
  %25 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %24, i32 0, i32 5
  store i64 0, i64* %25, align 8
  %26 = load %struct.ene_device*, %struct.ene_device** %7, align 8
  %27 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %26, i32 0, i32 2
  store i32 0, i32* %27, align 4
  %28 = load %struct.ene_device*, %struct.ene_device** %7, align 8
  %29 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.ene_device*, %struct.ene_device** %7, align 8
  %33 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %32, i32 0, i32 3
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  %36 = load %struct.ene_device*, %struct.ene_device** %7, align 8
  %37 = call i32 @ene_tx_enable(%struct.ene_device* %36)
  %38 = load %struct.ene_device*, %struct.ene_device** %7, align 8
  %39 = call i32 @ene_tx_sample(%struct.ene_device* %38)
  %40 = load %struct.ene_device*, %struct.ene_device** %7, align 8
  %41 = call i32 @ene_tx_sample(%struct.ene_device* %40)
  %42 = load %struct.ene_device*, %struct.ene_device** %7, align 8
  %43 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %42, i32 0, i32 3
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  %46 = load %struct.ene_device*, %struct.ene_device** %7, align 8
  %47 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %46, i32 0, i32 4
  %48 = load i32, i32* @HZ, align 4
  %49 = mul nsw i32 2, %48
  %50 = call i64 @wait_for_completion_timeout(i32* %47, i32 %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %3
  %53 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.ene_device*, %struct.ene_device** %7, align 8
  %55 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %54, i32 0, i32 3
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @spin_lock_irqsave(i32* %55, i64 %56)
  %58 = load %struct.ene_device*, %struct.ene_device** %7, align 8
  %59 = call i32 @ene_tx_disable(%struct.ene_device* %58)
  %60 = load %struct.ene_device*, %struct.ene_device** %7, align 8
  %61 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %60, i32 0, i32 3
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  br label %66

64:                                               ; preds = %3
  %65 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %52
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local i32 @dbg(i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ene_tx_enable(%struct.ene_device*) #1

declare dso_local i32 @ene_tx_sample(%struct.ene_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @ene_tx_disable(%struct.ene_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
