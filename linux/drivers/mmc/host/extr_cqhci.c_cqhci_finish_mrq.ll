; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cqhci.c_cqhci_finish_mrq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cqhci.c_cqhci_finish_mrq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { %struct.cqhci_host* }
%struct.cqhci_host = type { i32, i64, %struct.cqhci_slot* }
%struct.cqhci_slot = type { %struct.mmc_request*, i32 }
%struct.mmc_request = type { %struct.mmc_data* }
%struct.mmc_data = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [36 x i8] c"%s: cqhci: spurious TCN for tag %d\0A\00", align 1
@CQHCI_COMPLETED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, i32)* @cqhci_finish_mrq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cqhci_finish_mrq(%struct.mmc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cqhci_host*, align 8
  %6 = alloca %struct.cqhci_slot*, align 8
  %7 = alloca %struct.mmc_request*, align 8
  %8 = alloca %struct.mmc_data*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %10 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %9, i32 0, i32 0
  %11 = load %struct.cqhci_host*, %struct.cqhci_host** %10, align 8
  store %struct.cqhci_host* %11, %struct.cqhci_host** %5, align 8
  %12 = load %struct.cqhci_host*, %struct.cqhci_host** %5, align 8
  %13 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %12, i32 0, i32 2
  %14 = load %struct.cqhci_slot*, %struct.cqhci_slot** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.cqhci_slot, %struct.cqhci_slot* %14, i64 %16
  store %struct.cqhci_slot* %17, %struct.cqhci_slot** %6, align 8
  %18 = load %struct.cqhci_slot*, %struct.cqhci_slot** %6, align 8
  %19 = getelementptr inbounds %struct.cqhci_slot, %struct.cqhci_slot* %18, i32 0, i32 0
  %20 = load %struct.mmc_request*, %struct.mmc_request** %19, align 8
  store %struct.mmc_request* %20, %struct.mmc_request** %7, align 8
  %21 = load %struct.mmc_request*, %struct.mmc_request** %7, align 8
  %22 = icmp ne %struct.mmc_request* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %2
  %24 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %25 = call i32 @mmc_hostname(%struct.mmc_host* %24)
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  br label %74

28:                                               ; preds = %2
  %29 = load %struct.cqhci_host*, %struct.cqhci_host** %5, align 8
  %30 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i32, i32* @CQHCI_COMPLETED, align 4
  %35 = load %struct.cqhci_slot*, %struct.cqhci_slot** %6, align 8
  %36 = getelementptr inbounds %struct.cqhci_slot, %struct.cqhci_slot* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  br label %74

39:                                               ; preds = %28
  %40 = load %struct.cqhci_slot*, %struct.cqhci_slot** %6, align 8
  %41 = getelementptr inbounds %struct.cqhci_slot, %struct.cqhci_slot* %40, i32 0, i32 0
  store %struct.mmc_request* null, %struct.mmc_request** %41, align 8
  %42 = load %struct.cqhci_host*, %struct.cqhci_host** %5, align 8
  %43 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  %46 = load %struct.mmc_request*, %struct.mmc_request** %7, align 8
  %47 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %46, i32 0, i32 0
  %48 = load %struct.mmc_data*, %struct.mmc_data** %47, align 8
  store %struct.mmc_data* %48, %struct.mmc_data** %8, align 8
  %49 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %50 = icmp ne %struct.mmc_data* %49, null
  br i1 %50, label %51, label %70

51:                                               ; preds = %39
  %52 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %53 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %58 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  br label %69

59:                                               ; preds = %51
  %60 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %61 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %64 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = mul nsw i32 %62, %65
  %67 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %68 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  br label %69

69:                                               ; preds = %59, %56
  br label %70

70:                                               ; preds = %69, %39
  %71 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %72 = load %struct.mmc_request*, %struct.mmc_request** %7, align 8
  %73 = call i32 @mmc_cqe_request_done(%struct.mmc_host* %71, %struct.mmc_request* %72)
  br label %74

74:                                               ; preds = %70, %33, %23
  ret void
}

declare dso_local i32 @WARN_ONCE(i32, i8*, i32, i32) #1

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #1

declare dso_local i32 @mmc_cqe_request_done(%struct.mmc_host*, %struct.mmc_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
