; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_spi.c_sja1105_status_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_spi.c_sja1105_status_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1105_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sja1105_regs* }
%struct.sja1105_regs = type { i32 }
%struct.sja1105_status = type { i32 }

@SPI_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sja1105_private*, %struct.sja1105_status*)* @sja1105_status_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sja1105_status_get(%struct.sja1105_private* %0, %struct.sja1105_status* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sja1105_private*, align 8
  %5 = alloca %struct.sja1105_status*, align 8
  %6 = alloca %struct.sja1105_regs*, align 8
  %7 = alloca [4 x i32], align 16
  %8 = alloca i32, align 4
  store %struct.sja1105_private* %0, %struct.sja1105_private** %4, align 8
  store %struct.sja1105_status* %1, %struct.sja1105_status** %5, align 8
  %9 = load %struct.sja1105_private*, %struct.sja1105_private** %4, align 8
  %10 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.sja1105_regs*, %struct.sja1105_regs** %12, align 8
  store %struct.sja1105_regs* %13, %struct.sja1105_regs** %6, align 8
  %14 = load %struct.sja1105_private*, %struct.sja1105_private** %4, align 8
  %15 = load i32, i32* @SPI_READ, align 4
  %16 = load %struct.sja1105_regs*, %struct.sja1105_regs** %6, align 8
  %17 = getelementptr inbounds %struct.sja1105_regs, %struct.sja1105_regs* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %20 = call i32 @sja1105_spi_send_packed_buf(%struct.sja1105_private* %14, i32 %15, i32 %18, i32* %19, i32 4)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %3, align 4
  br label %29

25:                                               ; preds = %2
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %27 = load %struct.sja1105_status*, %struct.sja1105_status** %5, align 8
  %28 = call i32 @sja1105_status_unpack(i32* %26, %struct.sja1105_status* %27)
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %25, %23
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @sja1105_spi_send_packed_buf(%struct.sja1105_private*, i32, i32, i32*, i32) #1

declare dso_local i32 @sja1105_status_unpack(i32*, %struct.sja1105_status*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
