; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_wbsd.c_wbsd_request_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_wbsd.c_wbsd_request_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wbsd_host = type { i32, i32, i32, i32, i32, i32 }

@wbsd_tasklet_card = common dso_local global i32 0, align 4
@wbsd_tasklet_fifo = common dso_local global i32 0, align 4
@wbsd_tasklet_crc = common dso_local global i32 0, align 4
@wbsd_tasklet_timeout = common dso_local global i32 0, align 4
@wbsd_tasklet_finish = common dso_local global i32 0, align 4
@wbsd_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wbsd_host*, i32)* @wbsd_request_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wbsd_request_irq(%struct.wbsd_host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wbsd_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wbsd_host* %0, %struct.wbsd_host** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.wbsd_host*, %struct.wbsd_host** %4, align 8
  %8 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %7, i32 0, i32 5
  %9 = load i32, i32* @wbsd_tasklet_card, align 4
  %10 = load %struct.wbsd_host*, %struct.wbsd_host** %4, align 8
  %11 = ptrtoint %struct.wbsd_host* %10 to i64
  %12 = call i32 @tasklet_init(i32* %8, i32 %9, i64 %11)
  %13 = load %struct.wbsd_host*, %struct.wbsd_host** %4, align 8
  %14 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %13, i32 0, i32 4
  %15 = load i32, i32* @wbsd_tasklet_fifo, align 4
  %16 = load %struct.wbsd_host*, %struct.wbsd_host** %4, align 8
  %17 = ptrtoint %struct.wbsd_host* %16 to i64
  %18 = call i32 @tasklet_init(i32* %14, i32 %15, i64 %17)
  %19 = load %struct.wbsd_host*, %struct.wbsd_host** %4, align 8
  %20 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %19, i32 0, i32 3
  %21 = load i32, i32* @wbsd_tasklet_crc, align 4
  %22 = load %struct.wbsd_host*, %struct.wbsd_host** %4, align 8
  %23 = ptrtoint %struct.wbsd_host* %22 to i64
  %24 = call i32 @tasklet_init(i32* %20, i32 %21, i64 %23)
  %25 = load %struct.wbsd_host*, %struct.wbsd_host** %4, align 8
  %26 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %25, i32 0, i32 2
  %27 = load i32, i32* @wbsd_tasklet_timeout, align 4
  %28 = load %struct.wbsd_host*, %struct.wbsd_host** %4, align 8
  %29 = ptrtoint %struct.wbsd_host* %28 to i64
  %30 = call i32 @tasklet_init(i32* %26, i32 %27, i64 %29)
  %31 = load %struct.wbsd_host*, %struct.wbsd_host** %4, align 8
  %32 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %31, i32 0, i32 1
  %33 = load i32, i32* @wbsd_tasklet_finish, align 4
  %34 = load %struct.wbsd_host*, %struct.wbsd_host** %4, align 8
  %35 = ptrtoint %struct.wbsd_host* %34 to i64
  %36 = call i32 @tasklet_init(i32* %32, i32 %33, i64 %35)
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @wbsd_irq, align 4
  %39 = load i32, i32* @IRQF_SHARED, align 4
  %40 = load i32, i32* @DRIVER_NAME, align 4
  %41 = load %struct.wbsd_host*, %struct.wbsd_host** %4, align 8
  %42 = call i32 @request_irq(i32 %37, i32 %38, i32 %39, i32 %40, %struct.wbsd_host* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %2
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %51

47:                                               ; preds = %2
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.wbsd_host*, %struct.wbsd_host** %4, align 8
  %50 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %47, %45
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.wbsd_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
