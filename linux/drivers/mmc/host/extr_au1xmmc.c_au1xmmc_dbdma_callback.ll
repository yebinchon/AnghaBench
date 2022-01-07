; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_au1xmmc.c_au1xmmc_dbdma_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_au1xmmc.c_au1xmmc_dbdma_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au1xmmc_host = type { i32, i32, i32 }

@HOST_F_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @au1xmmc_dbdma_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au1xmmc_dbdma_callback(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.au1xmmc_host*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.au1xmmc_host*
  store %struct.au1xmmc_host* %7, %struct.au1xmmc_host** %5, align 8
  %8 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %5, align 8
  %9 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %27

13:                                               ; preds = %2
  %14 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %5, align 8
  %15 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @HOST_F_STOP, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %5, align 8
  %22 = call i32 @SEND_STOP(%struct.au1xmmc_host* %21)
  br label %23

23:                                               ; preds = %20, %13
  %24 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %5, align 8
  %25 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %24, i32 0, i32 1
  %26 = call i32 @tasklet_schedule(i32* %25)
  br label %27

27:                                               ; preds = %23, %12
  ret void
}

declare dso_local i32 @SEND_STOP(%struct.au1xmmc_host*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
