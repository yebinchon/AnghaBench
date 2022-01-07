; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_tx_rollback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_tx_rollback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1c_adapter = type { i32, %struct.atl1c_tpd_ring* }
%struct.atl1c_tpd_ring = type { i64, i64, %struct.atl1c_buffer*, i64 }
%struct.atl1c_buffer = type { i32 }
%struct.atl1c_tpd_desc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl1c_adapter*, %struct.atl1c_tpd_desc*, i32)* @atl1c_tx_rollback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1c_tx_rollback(%struct.atl1c_adapter* %0, %struct.atl1c_tpd_desc* %1, i32 %2) #0 {
  %4 = alloca %struct.atl1c_adapter*, align 8
  %5 = alloca %struct.atl1c_tpd_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.atl1c_tpd_ring*, align 8
  %8 = alloca %struct.atl1c_buffer*, align 8
  %9 = alloca %struct.atl1c_tpd_desc*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.atl1c_adapter* %0, %struct.atl1c_adapter** %4, align 8
  store %struct.atl1c_tpd_desc* %1, %struct.atl1c_tpd_desc** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %12, i32 0, i32 1
  %14 = load %struct.atl1c_tpd_ring*, %struct.atl1c_tpd_ring** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %14, i64 %16
  store %struct.atl1c_tpd_ring* %17, %struct.atl1c_tpd_ring** %7, align 8
  %18 = load %struct.atl1c_tpd_desc*, %struct.atl1c_tpd_desc** %5, align 8
  %19 = load %struct.atl1c_tpd_ring*, %struct.atl1c_tpd_ring** %7, align 8
  %20 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.atl1c_tpd_desc*
  %23 = ptrtoint %struct.atl1c_tpd_desc* %18 to i64
  %24 = ptrtoint %struct.atl1c_tpd_desc* %22 to i64
  %25 = sub i64 %23, %24
  %26 = sdiv exact i64 %25, 4
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  store i64 %27, i64* %11, align 8
  br label %28

28:                                               ; preds = %57, %3
  %29 = load i64, i64* %11, align 8
  %30 = load %struct.atl1c_tpd_ring*, %struct.atl1c_tpd_ring** %7, align 8
  %31 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %34, label %58

34:                                               ; preds = %28
  %35 = load %struct.atl1c_tpd_ring*, %struct.atl1c_tpd_ring** %7, align 8
  %36 = load i64, i64* %11, align 8
  %37 = call %struct.atl1c_tpd_desc* @ATL1C_TPD_DESC(%struct.atl1c_tpd_ring* %35, i64 %36)
  store %struct.atl1c_tpd_desc* %37, %struct.atl1c_tpd_desc** %9, align 8
  %38 = load %struct.atl1c_tpd_ring*, %struct.atl1c_tpd_ring** %7, align 8
  %39 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %38, i32 0, i32 2
  %40 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %39, align 8
  %41 = load i64, i64* %11, align 8
  %42 = getelementptr inbounds %struct.atl1c_buffer, %struct.atl1c_buffer* %40, i64 %41
  store %struct.atl1c_buffer* %42, %struct.atl1c_buffer** %8, align 8
  %43 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %4, align 8
  %44 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %8, align 8
  %47 = call i32 @atl1c_clean_buffer(i32 %45, %struct.atl1c_buffer* %46)
  %48 = load %struct.atl1c_tpd_desc*, %struct.atl1c_tpd_desc** %9, align 8
  %49 = call i32 @memset(%struct.atl1c_tpd_desc* %48, i32 0, i32 4)
  %50 = load i64, i64* %11, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %11, align 8
  %52 = load %struct.atl1c_tpd_ring*, %struct.atl1c_tpd_ring** %7, align 8
  %53 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %51, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %34
  store i64 0, i64* %11, align 8
  br label %57

57:                                               ; preds = %56, %34
  br label %28

58:                                               ; preds = %28
  %59 = load i64, i64* %10, align 8
  %60 = load %struct.atl1c_tpd_ring*, %struct.atl1c_tpd_ring** %7, align 8
  %61 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  ret void
}

declare dso_local %struct.atl1c_tpd_desc* @ATL1C_TPD_DESC(%struct.atl1c_tpd_ring*, i64) #1

declare dso_local i32 @atl1c_clean_buffer(i32, %struct.atl1c_buffer*) #1

declare dso_local i32 @memset(%struct.atl1c_tpd_desc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
