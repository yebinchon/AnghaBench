; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_main.c_fm10k_get_tx_pending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_main.c_fm10k_get_tx_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_ring = type { i64, i64, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.fm10k_intfc* }
%struct.fm10k_intfc = type { %struct.fm10k_hw }
%struct.fm10k_hw = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fm10k_get_tx_pending(%struct.fm10k_ring* %0, i32 %1) #0 {
  %3 = alloca %struct.fm10k_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fm10k_intfc*, align 8
  %6 = alloca %struct.fm10k_hw*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.fm10k_ring* %0, %struct.fm10k_ring** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.fm10k_ring*, %struct.fm10k_ring** %3, align 8
  %10 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %9, i32 0, i32 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %12, align 8
  store %struct.fm10k_intfc* %13, %struct.fm10k_intfc** %5, align 8
  %14 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %5, align 8
  %15 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %14, i32 0, i32 0
  store %struct.fm10k_hw* %15, %struct.fm10k_hw** %6, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @likely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.fm10k_ring*, %struct.fm10k_ring** %3, align 8
  %21 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %7, align 8
  %23 = load %struct.fm10k_ring*, %struct.fm10k_ring** %3, align 8
  %24 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %8, align 8
  br label %39

26:                                               ; preds = %2
  %27 = load %struct.fm10k_hw*, %struct.fm10k_hw** %6, align 8
  %28 = load %struct.fm10k_ring*, %struct.fm10k_ring** %3, align 8
  %29 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @FM10K_TDH(i32 %30)
  %32 = call i64 @fm10k_read_reg(%struct.fm10k_hw* %27, i32 %31)
  store i64 %32, i64* %7, align 8
  %33 = load %struct.fm10k_hw*, %struct.fm10k_hw** %6, align 8
  %34 = load %struct.fm10k_ring*, %struct.fm10k_ring** %3, align 8
  %35 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @FM10K_TDT(i32 %36)
  %38 = call i64 @fm10k_read_reg(%struct.fm10k_hw* %33, i32 %37)
  store i64 %38, i64* %8, align 8
  br label %39

39:                                               ; preds = %26, %19
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = icmp sle i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i64, i64* %8, align 8
  br label %51

45:                                               ; preds = %39
  %46 = load i64, i64* %8, align 8
  %47 = load %struct.fm10k_ring*, %struct.fm10k_ring** %3, align 8
  %48 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  br label %51

51:                                               ; preds = %45, %43
  %52 = phi i64 [ %44, %43 ], [ %50, %45 ]
  %53 = load i64, i64* %7, align 8
  %54 = sub nsw i64 %52, %53
  ret i64 %54
}

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @fm10k_read_reg(%struct.fm10k_hw*, i32) #1

declare dso_local i32 @FM10K_TDH(i32) #1

declare dso_local i32 @FM10K_TDT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
