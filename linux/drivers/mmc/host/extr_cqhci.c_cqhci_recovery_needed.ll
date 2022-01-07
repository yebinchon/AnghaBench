; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cqhci.c_cqhci_recovery_needed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cqhci.c_cqhci_recovery_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { %struct.cqhci_host* }
%struct.cqhci_host = type { i32, i32 }
%struct.mmc_request = type { i32 (%struct.mmc_request*)* }

@.str = private unnamed_addr constant [28 x i8] c"%s: cqhci: recovery needed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_request*, i32)* @cqhci_recovery_needed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cqhci_recovery_needed(%struct.mmc_host* %0, %struct.mmc_request* %1, i32 %2) #0 {
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca %struct.mmc_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cqhci_host*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %4, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %9 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %8, i32 0, i32 0
  %10 = load %struct.cqhci_host*, %struct.cqhci_host** %9, align 8
  store %struct.cqhci_host* %10, %struct.cqhci_host** %7, align 8
  %11 = load %struct.cqhci_host*, %struct.cqhci_host** %7, align 8
  %12 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %38, label %15

15:                                               ; preds = %3
  %16 = load %struct.cqhci_host*, %struct.cqhci_host** %7, align 8
  %17 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %16, i32 0, i32 0
  store i32 1, i32* %17, align 4
  %18 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %19 = call i32 @mmc_hostname(%struct.mmc_host* %18)
  %20 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.cqhci_host*, %struct.cqhci_host** %7, align 8
  %22 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %21, i32 0, i32 1
  %23 = call i32 @wake_up(i32* %22)
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %15
  %27 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %28 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %27, i32 0, i32 0
  %29 = load i32 (%struct.mmc_request*)*, i32 (%struct.mmc_request*)** %28, align 8
  %30 = icmp ne i32 (%struct.mmc_request*)* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %33 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %32, i32 0, i32 0
  %34 = load i32 (%struct.mmc_request*)*, i32 (%struct.mmc_request*)** %33, align 8
  %35 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %36 = call i32 %34(%struct.mmc_request* %35)
  br label %37

37:                                               ; preds = %31, %26, %15
  br label %38

38:                                               ; preds = %37, %3
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
