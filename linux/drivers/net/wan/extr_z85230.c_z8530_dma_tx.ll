; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_z85230.c_z8530_dma_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_z85230.c_z8530_dma_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z8530_channel = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Hey who turned the DMA off?\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"DMA tx - bogus event!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.z8530_channel*)* @z8530_dma_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @z8530_dma_tx(%struct.z8530_channel* %0) #0 {
  %2 = alloca %struct.z8530_channel*, align 8
  store %struct.z8530_channel* %0, %struct.z8530_channel** %2, align 8
  %3 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %4 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = call i32 @pr_warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %10 = call i32 @z8530_tx(%struct.z8530_channel* %9)
  br label %15

11:                                               ; preds = %1
  %12 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %13 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %14 = call i32 @z8530_tx(%struct.z8530_channel* %13)
  br label %15

15:                                               ; preds = %11, %7
  ret void
}

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @z8530_tx(%struct.z8530_channel*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
