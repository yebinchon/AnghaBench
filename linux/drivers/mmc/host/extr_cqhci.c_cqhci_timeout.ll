; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cqhci.c_cqhci_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cqhci.c_cqhci_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { %struct.cqhci_host* }
%struct.cqhci_host = type { i32, i32, %struct.cqhci_slot* }
%struct.cqhci_slot = type { i32, %struct.mmc_request* }
%struct.mmc_request = type { i32 }

@CQHCI_EXTERNAL_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s: cqhci: timeout for tag %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*, %struct.mmc_request*, i32*)* @cqhci_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cqhci_timeout(%struct.mmc_host* %0, %struct.mmc_request* %1, i32* %2) #0 {
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca %struct.mmc_request*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.cqhci_host*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cqhci_slot*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %4, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %13 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %12, i32 0, i32 0
  %14 = load %struct.cqhci_host*, %struct.cqhci_host** %13, align 8
  store %struct.cqhci_host* %14, %struct.cqhci_host** %7, align 8
  %15 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %16 = call i32 @cqhci_tag(%struct.mmc_request* %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.cqhci_host*, %struct.cqhci_host** %7, align 8
  %18 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %17, i32 0, i32 2
  %19 = load %struct.cqhci_slot*, %struct.cqhci_slot** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.cqhci_slot, %struct.cqhci_slot* %19, i64 %21
  store %struct.cqhci_slot* %22, %struct.cqhci_slot** %9, align 8
  %23 = load %struct.cqhci_host*, %struct.cqhci_host** %7, align 8
  %24 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %23, i32 0, i32 1
  %25 = load i64, i64* %10, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.cqhci_slot*, %struct.cqhci_slot** %9, align 8
  %28 = getelementptr inbounds %struct.cqhci_slot, %struct.cqhci_slot* %27, i32 0, i32 1
  %29 = load %struct.mmc_request*, %struct.mmc_request** %28, align 8
  %30 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %31 = icmp eq %struct.mmc_request* %29, %30
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %3
  %36 = load i32, i32* @CQHCI_EXTERNAL_TIMEOUT, align 4
  %37 = load %struct.cqhci_slot*, %struct.cqhci_slot** %9, align 8
  %38 = getelementptr inbounds %struct.cqhci_slot, %struct.cqhci_slot* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %42 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %43 = call i32 @cqhci_recovery_needed(%struct.mmc_host* %41, %struct.mmc_request* %42, i32 0)
  %44 = load %struct.cqhci_host*, %struct.cqhci_host** %7, align 8
  %45 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32*, i32** %6, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %35, %3
  %49 = load %struct.cqhci_host*, %struct.cqhci_host** %7, align 8
  %50 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %49, i32 0, i32 1
  %51 = load i64, i64* %10, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %48
  %56 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %57 = call i32 @mmc_hostname(%struct.mmc_host* %56)
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %58)
  %60 = load %struct.cqhci_host*, %struct.cqhci_host** %7, align 8
  %61 = call i32 @cqhci_dumpregs(%struct.cqhci_host* %60)
  br label %62

62:                                               ; preds = %55, %48
  %63 = load i32, i32* %11, align 4
  ret i32 %63
}

declare dso_local i32 @cqhci_tag(%struct.mmc_request*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @cqhci_recovery_needed(%struct.mmc_host*, %struct.mmc_request*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #1

declare dso_local i32 @cqhci_dumpregs(%struct.cqhci_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
