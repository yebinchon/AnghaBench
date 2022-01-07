; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_main.c_fm10k_init_queueing_scheme.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_main.c_fm10k_init_queueing_scheme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_intfc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"Unable to initialize MSI-X capability\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Unable to allocate queue vectors\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fm10k_init_queueing_scheme(%struct.fm10k_intfc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fm10k_intfc*, align 8
  %4 = alloca i32, align 4
  store %struct.fm10k_intfc* %0, %struct.fm10k_intfc** %3, align 8
  %5 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %6 = call i32 @fm10k_set_num_queues(%struct.fm10k_intfc* %5)
  %7 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %8 = call i32 @fm10k_init_msix_capability(%struct.fm10k_intfc* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %13 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %36

17:                                               ; preds = %1
  %18 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %19 = call i32 @fm10k_alloc_q_vectors(%struct.fm10k_intfc* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %24 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @dev_err(i32* %26, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %33

28:                                               ; preds = %17
  %29 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %30 = call i32 @fm10k_assign_rings(%struct.fm10k_intfc* %29)
  %31 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %32 = call i32 @fm10k_init_reta(%struct.fm10k_intfc* %31)
  store i32 0, i32* %2, align 4
  br label %40

33:                                               ; preds = %22
  %34 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %35 = call i32 @fm10k_reset_msix_capability(%struct.fm10k_intfc* %34)
  br label %36

36:                                               ; preds = %33, %11
  %37 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %38 = call i32 @fm10k_reset_num_queues(%struct.fm10k_intfc* %37)
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %36, %28
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @fm10k_set_num_queues(%struct.fm10k_intfc*) #1

declare dso_local i32 @fm10k_init_msix_capability(%struct.fm10k_intfc*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @fm10k_alloc_q_vectors(%struct.fm10k_intfc*) #1

declare dso_local i32 @fm10k_assign_rings(%struct.fm10k_intfc*) #1

declare dso_local i32 @fm10k_init_reta(%struct.fm10k_intfc*) #1

declare dso_local i32 @fm10k_reset_msix_capability(%struct.fm10k_intfc*) #1

declare dso_local i32 @fm10k_reset_num_queues(%struct.fm10k_intfc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
