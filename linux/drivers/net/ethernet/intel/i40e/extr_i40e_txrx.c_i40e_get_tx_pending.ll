; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_get_tx_pending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_get_tx_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_ring = type { i64, i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @i40e_get_tx_pending(%struct.i40e_ring* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.i40e_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.i40e_ring* %0, %struct.i40e_ring** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %12 = call i64 @i40e_get_head(%struct.i40e_ring* %11)
  store i64 %12, i64* %6, align 8
  %13 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %14 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @readl(i32 %15)
  store i64 %16, i64* %7, align 8
  br label %24

17:                                               ; preds = %2
  %18 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %19 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %6, align 8
  %21 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %22 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %7, align 8
  br label %24

24:                                               ; preds = %17, %10
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %24
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* %6, align 8
  %35 = sub nsw i64 %33, %34
  br label %44

36:                                               ; preds = %28
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %39 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %37, %40
  %42 = load i64, i64* %6, align 8
  %43 = sub nsw i64 %41, %42
  br label %44

44:                                               ; preds = %36, %32
  %45 = phi i64 [ %35, %32 ], [ %43, %36 ]
  store i64 %45, i64* %3, align 8
  br label %47

46:                                               ; preds = %24
  store i64 0, i64* %3, align 8
  br label %47

47:                                               ; preds = %46, %44
  %48 = load i64, i64* %3, align 8
  ret i64 %48
}

declare dso_local i64 @i40e_get_head(%struct.i40e_ring*) #1

declare dso_local i64 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
