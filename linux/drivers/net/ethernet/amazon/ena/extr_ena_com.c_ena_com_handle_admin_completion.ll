; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_handle_admin_completion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_handle_admin_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_admin_queue = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.ena_admin_acq_entry* }
%struct.ena_admin_acq_entry = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@ENA_ADMIN_ACQ_COMMON_DESC_PHASE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ena_com_admin_queue*)* @ena_com_handle_admin_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_com_handle_admin_completion(%struct.ena_com_admin_queue* %0) #0 {
  %2 = alloca %struct.ena_com_admin_queue*, align 8
  %3 = alloca %struct.ena_admin_acq_entry*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ena_com_admin_queue* %0, %struct.ena_com_admin_queue** %2, align 8
  store %struct.ena_admin_acq_entry* null, %struct.ena_admin_acq_entry** %3, align 8
  store i64 0, i64* %4, align 8
  %7 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %2, align 8
  %8 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %2, align 8
  %12 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sub nsw i32 %13, 1
  %15 = and i32 %10, %14
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %5, align 8
  %17 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %2, align 8
  %18 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  %21 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %2, align 8
  %22 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  %24 = load %struct.ena_admin_acq_entry*, %struct.ena_admin_acq_entry** %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds %struct.ena_admin_acq_entry, %struct.ena_admin_acq_entry* %24, i64 %25
  store %struct.ena_admin_acq_entry* %26, %struct.ena_admin_acq_entry** %3, align 8
  br label %27

27:                                               ; preds = %60, %1
  %28 = load %struct.ena_admin_acq_entry*, %struct.ena_admin_acq_entry** %3, align 8
  %29 = getelementptr inbounds %struct.ena_admin_acq_entry, %struct.ena_admin_acq_entry* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @READ_ONCE(i32 %31)
  %33 = load i32, i32* @ENA_ADMIN_ACQ_COMMON_DESC_PHASE_MASK, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %67

37:                                               ; preds = %27
  %38 = call i32 (...) @dma_rmb()
  %39 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %2, align 8
  %40 = load %struct.ena_admin_acq_entry*, %struct.ena_admin_acq_entry** %3, align 8
  %41 = call i32 @ena_com_handle_single_admin_completion(%struct.ena_com_admin_queue* %39, %struct.ena_admin_acq_entry* %40)
  %42 = load i64, i64* %5, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %5, align 8
  %44 = load i64, i64* %4, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %4, align 8
  %46 = load i64, i64* %5, align 8
  %47 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %2, align 8
  %48 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = icmp eq i64 %46, %50
  %52 = zext i1 %51 to i32
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %37
  store i64 0, i64* %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %55, %37
  %61 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %2, align 8
  %62 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  %64 = load %struct.ena_admin_acq_entry*, %struct.ena_admin_acq_entry** %63, align 8
  %65 = load i64, i64* %5, align 8
  %66 = getelementptr inbounds %struct.ena_admin_acq_entry, %struct.ena_admin_acq_entry* %64, i64 %65
  store %struct.ena_admin_acq_entry* %66, %struct.ena_admin_acq_entry** %3, align 8
  br label %27

67:                                               ; preds = %27
  %68 = load i64, i64* %4, align 8
  %69 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %2, align 8
  %70 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = add i64 %73, %68
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %71, align 8
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %2, align 8
  %78 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  store i32 %76, i32* %79, align 4
  %80 = load i64, i64* %4, align 8
  %81 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %2, align 8
  %82 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = add i64 %85, %80
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %83, align 8
  %88 = load i64, i64* %4, align 8
  %89 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %2, align 8
  %90 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = add i64 %93, %88
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %91, align 4
  ret void
}

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @dma_rmb(...) #1

declare dso_local i32 @ena_com_handle_single_admin_completion(%struct.ena_com_admin_queue*, %struct.ena_admin_acq_entry*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
