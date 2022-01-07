; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_atmel-mci.c_atmci_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_atmel-mci.c_atmci_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_request = type { %struct.TYPE_4__*, %struct.mmc_data* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.mmc_data = type { i32, i32 }
%struct.atmel_mci_slot = type { i32, i32, %struct.atmel_mci* }
%struct.atmel_mci = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"MRQ: cmd %u\0A\00", align 1
@ATMCI_CARD_PRESENT = common dso_local global i32 0, align 4
@ENOMEDIUM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_request*)* @atmci_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmci_request(%struct.mmc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca %struct.atmel_mci_slot*, align 8
  %6 = alloca %struct.atmel_mci*, align 8
  %7 = alloca %struct.mmc_data*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %8 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %9 = call %struct.atmel_mci_slot* @mmc_priv(%struct.mmc_host* %8)
  store %struct.atmel_mci_slot* %9, %struct.atmel_mci_slot** %5, align 8
  %10 = load %struct.atmel_mci_slot*, %struct.atmel_mci_slot** %5, align 8
  %11 = getelementptr inbounds %struct.atmel_mci_slot, %struct.atmel_mci_slot* %10, i32 0, i32 2
  %12 = load %struct.atmel_mci*, %struct.atmel_mci** %11, align 8
  store %struct.atmel_mci* %12, %struct.atmel_mci** %6, align 8
  %13 = load %struct.atmel_mci_slot*, %struct.atmel_mci_slot** %5, align 8
  %14 = getelementptr inbounds %struct.atmel_mci_slot, %struct.atmel_mci_slot* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load %struct.atmel_mci*, %struct.atmel_mci** %6, align 8
  %18 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %22 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_dbg(i32* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @ATMCI_CARD_PRESENT, align 4
  %28 = load %struct.atmel_mci_slot*, %struct.atmel_mci_slot** %5, align 8
  %29 = getelementptr inbounds %struct.atmel_mci_slot, %struct.atmel_mci_slot* %28, i32 0, i32 0
  %30 = call i32 @test_bit(i32 %27, i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* @ENOMEDIUM, align 4
  %34 = sub nsw i32 0, %33
  %35 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %36 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i32 %34, i32* %38, align 4
  %39 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %40 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %41 = call i32 @mmc_request_done(%struct.mmc_host* %39, %struct.mmc_request* %40)
  br label %74

42:                                               ; preds = %2
  %43 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %44 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %43, i32 0, i32 1
  %45 = load %struct.mmc_data*, %struct.mmc_data** %44, align 8
  store %struct.mmc_data* %45, %struct.mmc_data** %7, align 8
  %46 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %47 = icmp ne %struct.mmc_data* %46, null
  br i1 %47, label %48, label %69

48:                                               ; preds = %42
  %49 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %50 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp sgt i32 %51, 1
  br i1 %52, label %53, label %69

53:                                               ; preds = %48
  %54 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %55 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 3
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %53
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  %62 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %63 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i32 %61, i32* %65, align 4
  %66 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %67 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %68 = call i32 @mmc_request_done(%struct.mmc_host* %66, %struct.mmc_request* %67)
  br label %69

69:                                               ; preds = %59, %53, %48, %42
  %70 = load %struct.atmel_mci*, %struct.atmel_mci** %6, align 8
  %71 = load %struct.atmel_mci_slot*, %struct.atmel_mci_slot** %5, align 8
  %72 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %73 = call i32 @atmci_queue_request(%struct.atmel_mci* %70, %struct.atmel_mci_slot* %71, %struct.mmc_request* %72)
  br label %74

74:                                               ; preds = %69, %32
  ret void
}

declare dso_local %struct.atmel_mci_slot* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @mmc_request_done(%struct.mmc_host*, %struct.mmc_request*) #1

declare dso_local i32 @atmci_queue_request(%struct.atmel_mci*, %struct.atmel_mci_slot*, %struct.mmc_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
