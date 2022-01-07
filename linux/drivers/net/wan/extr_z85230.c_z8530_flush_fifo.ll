; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_z85230.c_z8530_flush_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_z85230.c_z8530_flush_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z8530_channel = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@R1 = common dso_local global i32 0, align 4
@Z85230 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.z8530_channel*)* @z8530_flush_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @z8530_flush_fifo(%struct.z8530_channel* %0) #0 {
  %2 = alloca %struct.z8530_channel*, align 8
  store %struct.z8530_channel* %0, %struct.z8530_channel** %2, align 8
  %3 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %4 = load i32, i32* @R1, align 4
  %5 = call i32 @read_zsreg(%struct.z8530_channel* %3, i32 %4)
  %6 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %7 = load i32, i32* @R1, align 4
  %8 = call i32 @read_zsreg(%struct.z8530_channel* %6, i32 %7)
  %9 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %10 = load i32, i32* @R1, align 4
  %11 = call i32 @read_zsreg(%struct.z8530_channel* %9, i32 %10)
  %12 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %13 = load i32, i32* @R1, align 4
  %14 = call i32 @read_zsreg(%struct.z8530_channel* %12, i32 %13)
  %15 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %16 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @Z85230, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %1
  %23 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %24 = load i32, i32* @R1, align 4
  %25 = call i32 @read_zsreg(%struct.z8530_channel* %23, i32 %24)
  %26 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %27 = load i32, i32* @R1, align 4
  %28 = call i32 @read_zsreg(%struct.z8530_channel* %26, i32 %27)
  %29 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %30 = load i32, i32* @R1, align 4
  %31 = call i32 @read_zsreg(%struct.z8530_channel* %29, i32 %30)
  %32 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %33 = load i32, i32* @R1, align 4
  %34 = call i32 @read_zsreg(%struct.z8530_channel* %32, i32 %33)
  br label %35

35:                                               ; preds = %22, %1
  ret void
}

declare dso_local i32 @read_zsreg(%struct.z8530_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
