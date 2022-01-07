; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c___bnxt_poll_cqs_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c___bnxt_poll_cqs_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32 }
%struct.bnxt_napi = type { %struct.bnxt_cp_ring_info }
%struct.bnxt_cp_ring_info = type { i64, i32, %struct.bnxt_db_info, %struct.bnxt_cp_ring_info** }
%struct.bnxt_db_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt*, %struct.bnxt_napi*, i32, i32)* @__bnxt_poll_cqs_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__bnxt_poll_cqs_done(%struct.bnxt* %0, %struct.bnxt_napi* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bnxt*, align 8
  %6 = alloca %struct.bnxt_napi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bnxt_cp_ring_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.bnxt_cp_ring_info*, align 8
  %12 = alloca %struct.bnxt_db_info*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %5, align 8
  store %struct.bnxt_napi* %1, %struct.bnxt_napi** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.bnxt_napi*, %struct.bnxt_napi** %6, align 8
  %14 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %13, i32 0, i32 0
  store %struct.bnxt_cp_ring_info* %14, %struct.bnxt_cp_ring_info** %9, align 8
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %56, %4
  %16 = load i32, i32* %10, align 4
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %18, label %59

18:                                               ; preds = %15
  %19 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %9, align 8
  %20 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %19, i32 0, i32 3
  %21 = load %struct.bnxt_cp_ring_info**, %struct.bnxt_cp_ring_info*** %20, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %21, i64 %23
  %25 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %24, align 8
  store %struct.bnxt_cp_ring_info* %25, %struct.bnxt_cp_ring_info** %11, align 8
  %26 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %11, align 8
  %27 = icmp ne %struct.bnxt_cp_ring_info* %26, null
  br i1 %27, label %28, label %55

28:                                               ; preds = %18
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %11, align 8
  %33 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %31, %28
  %37 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %11, align 8
  %38 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %37, i32 0, i32 2
  store %struct.bnxt_db_info* %38, %struct.bnxt_db_info** %12, align 8
  %39 = load %struct.bnxt_db_info*, %struct.bnxt_db_info** %12, align 8
  %40 = getelementptr inbounds %struct.bnxt_db_info, %struct.bnxt_db_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %7, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %11, align 8
  %45 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @RING_CMP(i32 %46)
  %48 = or i32 %43, %47
  %49 = load %struct.bnxt_db_info*, %struct.bnxt_db_info** %12, align 8
  %50 = getelementptr inbounds %struct.bnxt_db_info, %struct.bnxt_db_info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @writeq(i32 %48, i32 %51)
  %53 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %11, align 8
  %54 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %36, %31, %18
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %10, align 4
  br label %15

59:                                               ; preds = %15
  %60 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %61 = load %struct.bnxt_napi*, %struct.bnxt_napi** %6, align 8
  %62 = call i32 @__bnxt_poll_work_done(%struct.bnxt* %60, %struct.bnxt_napi* %61)
  ret void
}

declare dso_local i32 @writeq(i32, i32) #1

declare dso_local i32 @RING_CMP(i32) #1

declare dso_local i32 @__bnxt_poll_work_done(%struct.bnxt*, %struct.bnxt_napi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
