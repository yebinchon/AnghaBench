; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_imx-vdoa.c_vdoa_context_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_imx-vdoa.c_vdoa_context_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdoa_ctx = type { %struct.vdoa_data* }
%struct.vdoa_data = type { i32, %struct.vdoa_ctx* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vdoa_context_destroy(%struct.vdoa_ctx* %0) #0 {
  %2 = alloca %struct.vdoa_ctx*, align 8
  %3 = alloca %struct.vdoa_data*, align 8
  store %struct.vdoa_ctx* %0, %struct.vdoa_ctx** %2, align 8
  %4 = load %struct.vdoa_ctx*, %struct.vdoa_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.vdoa_ctx, %struct.vdoa_ctx* %4, i32 0, i32 0
  %6 = load %struct.vdoa_data*, %struct.vdoa_data** %5, align 8
  store %struct.vdoa_data* %6, %struct.vdoa_data** %3, align 8
  %7 = load %struct.vdoa_data*, %struct.vdoa_data** %3, align 8
  %8 = getelementptr inbounds %struct.vdoa_data, %struct.vdoa_data* %7, i32 0, i32 1
  %9 = load %struct.vdoa_ctx*, %struct.vdoa_ctx** %8, align 8
  %10 = load %struct.vdoa_ctx*, %struct.vdoa_ctx** %2, align 8
  %11 = icmp eq %struct.vdoa_ctx* %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.vdoa_data*, %struct.vdoa_data** %3, align 8
  %14 = getelementptr inbounds %struct.vdoa_data, %struct.vdoa_data* %13, i32 0, i32 1
  %15 = load %struct.vdoa_ctx*, %struct.vdoa_ctx** %14, align 8
  %16 = call i32 @vdoa_wait_for_completion(%struct.vdoa_ctx* %15)
  %17 = load %struct.vdoa_data*, %struct.vdoa_data** %3, align 8
  %18 = getelementptr inbounds %struct.vdoa_data, %struct.vdoa_data* %17, i32 0, i32 1
  store %struct.vdoa_ctx* null, %struct.vdoa_ctx** %18, align 8
  br label %19

19:                                               ; preds = %12, %1
  %20 = load %struct.vdoa_data*, %struct.vdoa_data** %3, align 8
  %21 = getelementptr inbounds %struct.vdoa_data, %struct.vdoa_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @clk_disable_unprepare(i32 %22)
  %24 = load %struct.vdoa_ctx*, %struct.vdoa_ctx** %2, align 8
  %25 = call i32 @kfree(%struct.vdoa_ctx* %24)
  ret void
}

declare dso_local i32 @vdoa_wait_for_completion(%struct.vdoa_ctx*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @kfree(%struct.vdoa_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
