; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sunxi-mmc.c_sunxi_mmc_handle_manual_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sunxi-mmc.c_sunxi_mmc_handle_manual_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunxi_mmc_host = type { i32, i32, %struct.mmc_request* }
%struct.mmc_request = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"no request for manual stop\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"data error, sending stop command\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sunxi_mmc_handle_manual_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_mmc_handle_manual_stop(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sunxi_mmc_host*, align 8
  %7 = alloca %struct.mmc_request*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.sunxi_mmc_host*
  store %struct.sunxi_mmc_host* %10, %struct.sunxi_mmc_host** %6, align 8
  %11 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %6, align 8
  %12 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %11, i32 0, i32 1
  %13 = load i64, i64* %8, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %6, align 8
  %16 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %15, i32 0, i32 2
  %17 = load %struct.mmc_request*, %struct.mmc_request** %16, align 8
  store %struct.mmc_request* %17, %struct.mmc_request** %7, align 8
  %18 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %6, align 8
  %19 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %18, i32 0, i32 1
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32* %19, i64 %20)
  %22 = load %struct.mmc_request*, %struct.mmc_request** %7, align 8
  %23 = icmp ne %struct.mmc_request* %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %2
  %25 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %6, align 8
  %26 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @mmc_dev(i32 %27)
  %29 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %30, i32* %3, align 4
  br label %56

31:                                               ; preds = %2
  %32 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %6, align 8
  %33 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @mmc_dev(i32 %34)
  %36 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %6, align 8
  %38 = load %struct.mmc_request*, %struct.mmc_request** %7, align 8
  %39 = call i32 @sunxi_mmc_send_manual_stop(%struct.sunxi_mmc_host* %37, %struct.mmc_request* %38)
  %40 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %6, align 8
  %41 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %40, i32 0, i32 1
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @spin_lock_irqsave(i32* %41, i64 %42)
  %44 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %6, align 8
  %45 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %44, i32 0, i32 2
  store %struct.mmc_request* null, %struct.mmc_request** %45, align 8
  %46 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %6, align 8
  %47 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %46, i32 0, i32 1
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  %50 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %6, align 8
  %51 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.mmc_request*, %struct.mmc_request** %7, align 8
  %54 = call i32 @mmc_request_done(i32 %52, %struct.mmc_request* %53)
  %55 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %31, %24
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @sunxi_mmc_send_manual_stop(%struct.sunxi_mmc_host*, %struct.mmc_request*) #1

declare dso_local i32 @mmc_request_done(i32, %struct.mmc_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
