; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_api.c___scif_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_api.c___scif_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scif_endpt = type { i32, i32 }

@SCIFEP_CLLISTEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__scif_flush(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.scif_endpt*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to %struct.scif_endpt*
  store %struct.scif_endpt* %5, %struct.scif_endpt** %3, align 8
  %6 = load %struct.scif_endpt*, %struct.scif_endpt** %3, align 8
  %7 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %16 [
    i32 128, label %9
  ]

9:                                                ; preds = %1
  %10 = load i32, i32* @SCIFEP_CLLISTEN, align 4
  %11 = load %struct.scif_endpt*, %struct.scif_endpt** %3, align 8
  %12 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load %struct.scif_endpt*, %struct.scif_endpt** %3, align 8
  %14 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %13, i32 0, i32 1
  %15 = call i32 @wake_up_interruptible(i32* %14)
  br label %17

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %16, %9
  ret i32 0
}

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
