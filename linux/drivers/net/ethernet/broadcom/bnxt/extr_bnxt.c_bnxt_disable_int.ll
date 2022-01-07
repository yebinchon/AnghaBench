; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_disable_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_disable_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, %struct.bnxt_napi** }
%struct.bnxt_napi = type { %struct.bnxt_cp_ring_info }
%struct.bnxt_cp_ring_info = type { i32, i32, %struct.bnxt_ring_struct }
%struct.bnxt_ring_struct = type { i64 }

@INVALID_HW_RING_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt*)* @bnxt_disable_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_disable_int(%struct.bnxt* %0) #0 {
  %2 = alloca %struct.bnxt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnxt_napi*, align 8
  %5 = alloca %struct.bnxt_cp_ring_info*, align 8
  %6 = alloca %struct.bnxt_ring_struct*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %2, align 8
  %7 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %8 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %7, i32 0, i32 1
  %9 = load %struct.bnxt_napi**, %struct.bnxt_napi*** %8, align 8
  %10 = icmp ne %struct.bnxt_napi** %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %48

12:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %45, %12
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %16 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %48

19:                                               ; preds = %13
  %20 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %21 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %20, i32 0, i32 1
  %22 = load %struct.bnxt_napi**, %struct.bnxt_napi*** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.bnxt_napi*, %struct.bnxt_napi** %22, i64 %24
  %26 = load %struct.bnxt_napi*, %struct.bnxt_napi** %25, align 8
  store %struct.bnxt_napi* %26, %struct.bnxt_napi** %4, align 8
  %27 = load %struct.bnxt_napi*, %struct.bnxt_napi** %4, align 8
  %28 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %27, i32 0, i32 0
  store %struct.bnxt_cp_ring_info* %28, %struct.bnxt_cp_ring_info** %5, align 8
  %29 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %5, align 8
  %30 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %29, i32 0, i32 2
  store %struct.bnxt_ring_struct* %30, %struct.bnxt_ring_struct** %6, align 8
  %31 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %6, align 8
  %32 = getelementptr inbounds %struct.bnxt_ring_struct, %struct.bnxt_ring_struct* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @INVALID_HW_RING_ID, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %19
  %37 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %38 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %5, align 8
  %39 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %38, i32 0, i32 1
  %40 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %5, align 8
  %41 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @bnxt_db_nq(%struct.bnxt* %37, i32* %39, i32 %42)
  br label %44

44:                                               ; preds = %36, %19
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %13

48:                                               ; preds = %11, %13
  ret void
}

declare dso_local i32 @bnxt_db_nq(%struct.bnxt*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
