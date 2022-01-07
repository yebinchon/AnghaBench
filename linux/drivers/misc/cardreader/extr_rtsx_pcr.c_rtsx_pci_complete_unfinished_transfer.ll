; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_pcr.c_rtsx_pci_complete_unfinished_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_pcr.c_rtsx_pci_complete_unfinished_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { %struct.completion*, i32, i64 }
%struct.completion = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtsx_pci_complete_unfinished_transfer(%struct.rtsx_pcr* %0) #0 {
  %2 = alloca %struct.rtsx_pcr*, align 8
  %3 = alloca %struct.completion, align 4
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %2, align 8
  %4 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %5 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %4, i32 0, i32 0
  store %struct.completion* %3, %struct.completion** %5, align 8
  %6 = call i32 @init_completion(%struct.completion* %3)
  %7 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %8 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %13 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @complete(i64 %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %18 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %23 = call i32 @rtsx_pci_stop_cmd(%struct.rtsx_pcr* %22)
  br label %24

24:                                               ; preds = %21, %16
  %25 = call i32 @msecs_to_jiffies(i32 2)
  %26 = call i32 @wait_for_completion_interruptible_timeout(%struct.completion* %3, i32 %25)
  %27 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %28 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %27, i32 0, i32 0
  store %struct.completion* null, %struct.completion** %28, align 8
  ret void
}

declare dso_local i32 @init_completion(%struct.completion*) #1

declare dso_local i32 @complete(i64) #1

declare dso_local i32 @rtsx_pci_stop_cmd(%struct.rtsx_pcr*) #1

declare dso_local i32 @wait_for_completion_interruptible_timeout(%struct.completion*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
