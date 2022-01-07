; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_tx_tso.c_efx_tx_queue_insert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_tx_tso.c_efx_tx_queue_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_tx_queue = type { i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.efx_tx_queue*, i32, i32)* }
%struct.efx_tx_buffer = type { i32, i32, i32 }

@EFX_TX_BUF_CONT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_tx_queue*, i32, i32, %struct.efx_tx_buffer**)* @efx_tx_queue_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_tx_queue_insert(%struct.efx_tx_queue* %0, i32 %1, i32 %2, %struct.efx_tx_buffer** %3) #0 {
  %5 = alloca %struct.efx_tx_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.efx_tx_buffer**, align 8
  %9 = alloca %struct.efx_tx_buffer*, align 8
  %10 = alloca i32, align 4
  store %struct.efx_tx_queue* %0, %struct.efx_tx_queue** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.efx_tx_buffer** %3, %struct.efx_tx_buffer*** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = icmp ule i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @EFX_WARN_ON_ONCE_PARANOID(i32 %13)
  br label %15

15:                                               ; preds = %4, %55
  %16 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %5, align 8
  %17 = call %struct.efx_tx_buffer* @efx_tx_queue_get_insert_buffer(%struct.efx_tx_queue* %16)
  store %struct.efx_tx_buffer* %17, %struct.efx_tx_buffer** %9, align 8
  %18 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %5, align 8
  %19 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* %19, align 8
  %22 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %5, align 8
  %23 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %5, align 8
  %26 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %24, %27
  %29 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %5, align 8
  %30 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %29, i32 0, i32 2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sge i64 %28, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @EFX_WARN_ON_ONCE_PARANOID(i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %9, align 8
  %39 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %5, align 8
  %41 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %40, i32 0, i32 2
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32 (%struct.efx_tx_queue*, i32, i32)*, i32 (%struct.efx_tx_queue*, i32, i32)** %45, align 8
  %47 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 %46(%struct.efx_tx_queue* %47, i32 %48, i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp uge i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %15
  br label %68

55:                                               ; preds = %15
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %9, align 8
  %58 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @EFX_TX_BUF_CONT, align 4
  %60 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %9, align 8
  %61 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %6, align 4
  %64 = add i32 %63, %62
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %7, align 4
  %67 = sub i32 %66, %65
  store i32 %67, i32* %7, align 4
  br label %15

68:                                               ; preds = %54
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = call i32 @EFX_WARN_ON_ONCE_PARANOID(i32 %72)
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %9, align 8
  %76 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %9, align 8
  %78 = load %struct.efx_tx_buffer**, %struct.efx_tx_buffer*** %8, align 8
  store %struct.efx_tx_buffer* %77, %struct.efx_tx_buffer** %78, align 8
  ret void
}

declare dso_local i32 @EFX_WARN_ON_ONCE_PARANOID(i32) #1

declare dso_local %struct.efx_tx_buffer* @efx_tx_queue_get_insert_buffer(%struct.efx_tx_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
