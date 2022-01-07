; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ce.c_ath10k_ce_dest_ring_read_index_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ce.c_ath10k_ce_dest_ring_read_index_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.ath10k_ce = type { %struct.ath10k_ce_pipe* }
%struct.ath10k_ce_pipe = type { i32 }

@CE_ATTR_DIS_INTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ath10k*, i64)* @ath10k_ce_dest_ring_read_index_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ath10k_ce_dest_ring_read_index_get(%struct.ath10k* %0, i64 %1) #0 {
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ath10k_ce*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ath10k_ce_pipe*, align 8
  %8 = alloca i64, align 8
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %10 = call %struct.ath10k_ce* @ath10k_ce_priv(%struct.ath10k* %9)
  store %struct.ath10k_ce* %10, %struct.ath10k_ce** %5, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i64 @COPY_ENGINE_ID(i64 %11)
  store i64 %12, i64* %6, align 8
  %13 = load %struct.ath10k_ce*, %struct.ath10k_ce** %5, align 8
  %14 = getelementptr inbounds %struct.ath10k_ce, %struct.ath10k_ce* %13, i32 0, i32 0
  %15 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %14, align 8
  %16 = load i64, i64* %6, align 8
  %17 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %15, i64 %16
  store %struct.ath10k_ce_pipe* %17, %struct.ath10k_ce_pipe** %7, align 8
  %18 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %19 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %2
  %24 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %7, align 8
  %25 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @CE_ATTR_DIS_INTR, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i64 @ath10k_ce_dest_ring_read_index_from_ddr(%struct.ath10k* %31, i64 %32)
  store i64 %33, i64* %8, align 8
  br label %44

34:                                               ; preds = %23, %2
  %35 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %36 = load i64, i64* %4, align 8
  %37 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %38 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add i64 %36, %41
  %43 = call i64 @ath10k_ce_read32(%struct.ath10k* %35, i64 %42)
  store i64 %43, i64* %8, align 8
  br label %44

44:                                               ; preds = %34, %30
  %45 = load i64, i64* %8, align 8
  ret i64 %45
}

declare dso_local %struct.ath10k_ce* @ath10k_ce_priv(%struct.ath10k*) #1

declare dso_local i64 @COPY_ENGINE_ID(i64) #1

declare dso_local i64 @ath10k_ce_dest_ring_read_index_from_ddr(%struct.ath10k*, i64) #1

declare dso_local i64 @ath10k_ce_read32(%struct.ath10k*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
