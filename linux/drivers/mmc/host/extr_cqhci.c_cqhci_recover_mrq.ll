; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cqhci.c_cqhci_recover_mrq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cqhci.c_cqhci_recover_mrq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cqhci_host = type { i32, i32, %struct.cqhci_slot* }
%struct.cqhci_slot = type { i32, %struct.mmc_request* }
%struct.mmc_request = type { %struct.TYPE_2__*, %struct.mmc_data* }
%struct.TYPE_2__ = type { i8* }
%struct.mmc_data = type { i8*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cqhci_host*, i32)* @cqhci_recover_mrq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cqhci_recover_mrq(%struct.cqhci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.cqhci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cqhci_slot*, align 8
  %6 = alloca %struct.mmc_request*, align 8
  %7 = alloca %struct.mmc_data*, align 8
  store %struct.cqhci_host* %0, %struct.cqhci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %9 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %8, i32 0, i32 2
  %10 = load %struct.cqhci_slot*, %struct.cqhci_slot** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.cqhci_slot, %struct.cqhci_slot* %10, i64 %12
  store %struct.cqhci_slot* %13, %struct.cqhci_slot** %5, align 8
  %14 = load %struct.cqhci_slot*, %struct.cqhci_slot** %5, align 8
  %15 = getelementptr inbounds %struct.cqhci_slot, %struct.cqhci_slot* %14, i32 0, i32 1
  %16 = load %struct.mmc_request*, %struct.mmc_request** %15, align 8
  store %struct.mmc_request* %16, %struct.mmc_request** %6, align 8
  %17 = load %struct.mmc_request*, %struct.mmc_request** %6, align 8
  %18 = icmp ne %struct.mmc_request* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %56

20:                                               ; preds = %2
  %21 = load %struct.cqhci_slot*, %struct.cqhci_slot** %5, align 8
  %22 = getelementptr inbounds %struct.cqhci_slot, %struct.cqhci_slot* %21, i32 0, i32 1
  store %struct.mmc_request* null, %struct.mmc_request** %22, align 8
  %23 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %24 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %24, align 8
  %27 = load %struct.mmc_request*, %struct.mmc_request** %6, align 8
  %28 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %27, i32 0, i32 1
  %29 = load %struct.mmc_data*, %struct.mmc_data** %28, align 8
  store %struct.mmc_data* %29, %struct.mmc_data** %7, align 8
  %30 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %31 = icmp ne %struct.mmc_data* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %20
  %33 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %34 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load %struct.cqhci_slot*, %struct.cqhci_slot** %5, align 8
  %36 = getelementptr inbounds %struct.cqhci_slot, %struct.cqhci_slot* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i8* @cqhci_error_from_flags(i32 %37)
  %39 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %40 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  br label %50

41:                                               ; preds = %20
  %42 = load %struct.cqhci_slot*, %struct.cqhci_slot** %5, align 8
  %43 = getelementptr inbounds %struct.cqhci_slot, %struct.cqhci_slot* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i8* @cqhci_error_from_flags(i32 %44)
  %46 = load %struct.mmc_request*, %struct.mmc_request** %6, align 8
  %47 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i8* %45, i8** %49, align 8
  br label %50

50:                                               ; preds = %41, %32
  %51 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %52 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.mmc_request*, %struct.mmc_request** %6, align 8
  %55 = call i32 @mmc_cqe_request_done(i32 %53, %struct.mmc_request* %54)
  br label %56

56:                                               ; preds = %50, %19
  ret void
}

declare dso_local i8* @cqhci_error_from_flags(i32) #1

declare dso_local i32 @mmc_cqe_request_done(i32, %struct.mmc_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
