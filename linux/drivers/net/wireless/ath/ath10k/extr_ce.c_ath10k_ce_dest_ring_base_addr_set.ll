; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ce.c_ath10k_ce_dest_ring_base_addr_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ce.c_ath10k_ce_dest_ring_base_addr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.ath10k_ce = type { %struct.ath10k_ce_pipe* }
%struct.ath10k_ce_pipe = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.ath10k*, i64, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*, i64, i32)* @ath10k_ce_dest_ring_base_addr_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_ce_dest_ring_base_addr_set(%struct.ath10k* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath10k_ce*, align 8
  %8 = alloca %struct.ath10k_ce_pipe*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %12 = call %struct.ath10k_ce* @ath10k_ce_priv(%struct.ath10k* %11)
  store %struct.ath10k_ce* %12, %struct.ath10k_ce** %7, align 8
  %13 = load %struct.ath10k_ce*, %struct.ath10k_ce** %7, align 8
  %14 = getelementptr inbounds %struct.ath10k_ce, %struct.ath10k_ce* %13, i32 0, i32 0
  %15 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %15, i64 %16
  store %struct.ath10k_ce_pipe* %17, %struct.ath10k_ce_pipe** %8, align 8
  %18 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i64 @ath10k_ce_base_address(%struct.ath10k* %18, i64 %19)
  store i64 %20, i64* %9, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @lower_32_bits(i32 %21)
  store i64 %22, i64* %10, align 8
  %23 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %26 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add i64 %24, %29
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @ath10k_ce_write32(%struct.ath10k* %23, i64 %30, i64 %31)
  %33 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %8, align 8
  %34 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32 (%struct.ath10k*, i64, i32)*, i32 (%struct.ath10k*, i64, i32)** %36, align 8
  %38 = icmp ne i32 (%struct.ath10k*, i64, i32)* %37, null
  br i1 %38, label %39, label %49

39:                                               ; preds = %3
  %40 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %8, align 8
  %41 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32 (%struct.ath10k*, i64, i32)*, i32 (%struct.ath10k*, i64, i32)** %43, align 8
  %45 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 %44(%struct.ath10k* %45, i64 %46, i32 %47)
  br label %49

49:                                               ; preds = %39, %3
  ret void
}

declare dso_local %struct.ath10k_ce* @ath10k_ce_priv(%struct.ath10k*) #1

declare dso_local i64 @ath10k_ce_base_address(%struct.ath10k*, i64) #1

declare dso_local i64 @lower_32_bits(i32) #1

declare dso_local i32 @ath10k_ce_write32(%struct.ath10k*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
