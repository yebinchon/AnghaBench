; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_z85230.c_z8530_sync_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_z85230.c_z8530_sync_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.z8530_channel = type { i32, i32*, i64, i64, i32* }

@z8530_nop = common dso_local global i32 0, align 4
@R0 = common dso_local global i32 0, align 4
@R3 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @z8530_sync_close(%struct.net_device* %0, %struct.z8530_channel* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.z8530_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.z8530_channel* %1, %struct.z8530_channel** %4, align 8
  %7 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %8 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @spin_lock_irqsave(i32 %9, i64 %10)
  %12 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %13 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %12, i32 0, i32 4
  store i32* @z8530_nop, i32** %13, align 8
  %14 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %15 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %14, i32 0, i32 3
  store i64 0, i64* %15, align 8
  %16 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %17 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %16, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %19 = load i32, i32* @R0, align 4
  %20 = call i32 @read_zsreg(%struct.z8530_channel* %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %22 = load i64, i64* @R3, align 8
  %23 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %24 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @R3, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @write_zsreg(%struct.z8530_channel* %21, i64 %22, i32 %28)
  %30 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %31 = call i32 @z8530_rtsdtr(%struct.z8530_channel* %30, i32 0)
  %32 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %33 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32 %34, i64 %35)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @read_zsreg(%struct.z8530_channel*, i32) #1

declare dso_local i32 @write_zsreg(%struct.z8530_channel*, i64, i32) #1

declare dso_local i32 @z8530_rtsdtr(%struct.z8530_channel*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
