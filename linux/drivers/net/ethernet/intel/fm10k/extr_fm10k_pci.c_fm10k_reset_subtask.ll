; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pci.c_fm10k_reset_subtask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pci.c_fm10k_reset_subtask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_intfc = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@FM10K_FLAG_RESET_REQUESTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Reset interface\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"fm10k_handle_reset failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fm10k_intfc*)* @fm10k_reset_subtask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm10k_reset_subtask(%struct.fm10k_intfc* %0) #0 {
  %2 = alloca %struct.fm10k_intfc*, align 8
  %3 = alloca i32, align 4
  store %struct.fm10k_intfc* %0, %struct.fm10k_intfc** %2, align 8
  %4 = load i32, i32* @FM10K_FLAG_RESET_REQUESTED, align 4
  %5 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %6 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @test_and_clear_bit(i32 %4, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %32

11:                                               ; preds = %1
  %12 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %13 = call i32 @fm10k_prepare_for_reset(%struct.fm10k_intfc* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  br label %32

16:                                               ; preds = %11
  %17 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %18 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @netdev_err(i32 %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %22 = call i32 @fm10k_handle_reset(%struct.fm10k_intfc* %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %16
  %26 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %27 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %10, %15, %25, %16
  ret void
}

declare dso_local i32 @test_and_clear_bit(i32, i32) #1

declare dso_local i32 @fm10k_prepare_for_reset(%struct.fm10k_intfc*) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @fm10k_handle_reset(%struct.fm10k_intfc*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
