; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_ite-cir.c_ite_set_rx_carrier_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_ite-cir.c_ite_set_rx_carrier_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { %struct.ite_dev* }
%struct.ite_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, i8*, i8*)* @ite_set_rx_carrier_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ite_set_rx_carrier_range(%struct.rc_dev* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.rc_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ite_dev*, align 8
  store %struct.rc_dev* %0, %struct.rc_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %10 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %9, i32 0, i32 0
  %11 = load %struct.ite_dev*, %struct.ite_dev** %10, align 8
  store %struct.ite_dev* %11, %struct.ite_dev** %8, align 8
  %12 = load %struct.ite_dev*, %struct.ite_dev** %8, align 8
  %13 = getelementptr inbounds %struct.ite_dev, %struct.ite_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load i8*, i8** %5, align 8
  %17 = load %struct.ite_dev*, %struct.ite_dev** %8, align 8
  %18 = getelementptr inbounds %struct.ite_dev, %struct.ite_dev* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store i8* %16, i8** %19, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct.ite_dev*, %struct.ite_dev** %8, align 8
  %22 = getelementptr inbounds %struct.ite_dev, %struct.ite_dev* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i8* %20, i8** %23, align 8
  %24 = load %struct.ite_dev*, %struct.ite_dev** %8, align 8
  %25 = call i32 @ite_set_carrier_params(%struct.ite_dev* %24)
  %26 = load %struct.ite_dev*, %struct.ite_dev** %8, align 8
  %27 = getelementptr inbounds %struct.ite_dev, %struct.ite_dev* %26, i32 0, i32 0
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ite_set_carrier_params(%struct.ite_dev*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
