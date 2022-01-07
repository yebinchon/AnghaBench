; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_z85230.c_z8530_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_z85230.c_z8530_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z8530_dev = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32* }

@z8530_nop = common dso_local global i32 0, align 4
@R9 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @z8530_shutdown(%struct.z8530_dev* %0) #0 {
  %2 = alloca %struct.z8530_dev*, align 8
  %3 = alloca i64, align 8
  store %struct.z8530_dev* %0, %struct.z8530_dev** %2, align 8
  %4 = load %struct.z8530_dev*, %struct.z8530_dev** %2, align 8
  %5 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %4, i32 0, i32 0
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* %5, i64 %6)
  %8 = load %struct.z8530_dev*, %struct.z8530_dev** %2, align 8
  %9 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i32* @z8530_nop, i32** %10, align 8
  %11 = load %struct.z8530_dev*, %struct.z8530_dev** %2, align 8
  %12 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i32* @z8530_nop, i32** %13, align 8
  %14 = load %struct.z8530_dev*, %struct.z8530_dev** %2, align 8
  %15 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %14, i32 0, i32 1
  %16 = load i32, i32* @R9, align 4
  %17 = call i32 @write_zsreg(%struct.TYPE_4__* %15, i32 %16, i32 192)
  %18 = call i32 @udelay(i32 100)
  %19 = load %struct.z8530_dev*, %struct.z8530_dev** %2, align 8
  %20 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %19, i32 0, i32 0
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* %20, i64 %21)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @write_zsreg(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
