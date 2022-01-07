; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_rma.c_scif_destroy_remote_window.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_rma.c_scif_destroy_remote_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scif_window = type { i32, i64, %struct.scif_window*, %struct.scif_window* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scif_destroy_remote_window(%struct.scif_window* %0) #0 {
  %2 = alloca %struct.scif_window*, align 8
  store %struct.scif_window* %0, %struct.scif_window** %2, align 8
  %3 = load %struct.scif_window*, %struct.scif_window** %2, align 8
  %4 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %3, i32 0, i32 3
  %5 = load %struct.scif_window*, %struct.scif_window** %4, align 8
  %6 = load %struct.scif_window*, %struct.scif_window** %2, align 8
  %7 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = sext i32 %8 to i64
  %10 = mul i64 %9, 32
  %11 = trunc i64 %10 to i32
  %12 = call i32 @scif_free(%struct.scif_window* %5, i32 %11)
  %13 = load %struct.scif_window*, %struct.scif_window** %2, align 8
  %14 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %13, i32 0, i32 2
  %15 = load %struct.scif_window*, %struct.scif_window** %14, align 8
  %16 = load %struct.scif_window*, %struct.scif_window** %2, align 8
  %17 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 32
  %21 = trunc i64 %20 to i32
  %22 = call i32 @scif_free(%struct.scif_window* %15, i32 %21)
  %23 = load %struct.scif_window*, %struct.scif_window** %2, align 8
  %24 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load %struct.scif_window*, %struct.scif_window** %2, align 8
  %26 = call i32 @scif_free(%struct.scif_window* %25, i32 32)
  ret void
}

declare dso_local i32 @scif_free(%struct.scif_window*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
