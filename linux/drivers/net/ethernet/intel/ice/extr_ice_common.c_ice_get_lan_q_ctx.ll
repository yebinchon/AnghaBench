; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_get_lan_q_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_get_lan_q_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_q_ctx = type { i32 }
%struct.ice_hw = type { i32 }
%struct.ice_vsi_ctx = type { i64*, %struct.ice_q_ctx** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ice_q_ctx* (%struct.ice_hw*, i64, i64, i64)* @ice_get_lan_q_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ice_q_ctx* @ice_get_lan_q_ctx(%struct.ice_hw* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.ice_q_ctx*, align 8
  %6 = alloca %struct.ice_hw*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ice_vsi_ctx*, align 8
  %11 = alloca %struct.ice_q_ctx*, align 8
  store %struct.ice_hw* %0, %struct.ice_hw** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call %struct.ice_vsi_ctx* @ice_get_vsi_ctx(%struct.ice_hw* %12, i64 %13)
  store %struct.ice_vsi_ctx* %14, %struct.ice_vsi_ctx** %10, align 8
  %15 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %10, align 8
  %16 = icmp ne %struct.ice_vsi_ctx* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store %struct.ice_q_ctx* null, %struct.ice_q_ctx** %5, align 8
  br label %47

18:                                               ; preds = %4
  %19 = load i64, i64* %9, align 8
  %20 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %10, align 8
  %21 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = icmp uge i64 %19, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  store %struct.ice_q_ctx* null, %struct.ice_q_ctx** %5, align 8
  br label %47

28:                                               ; preds = %18
  %29 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %10, align 8
  %30 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %29, i32 0, i32 1
  %31 = load %struct.ice_q_ctx**, %struct.ice_q_ctx*** %30, align 8
  %32 = load i64, i64* %8, align 8
  %33 = getelementptr inbounds %struct.ice_q_ctx*, %struct.ice_q_ctx** %31, i64 %32
  %34 = load %struct.ice_q_ctx*, %struct.ice_q_ctx** %33, align 8
  %35 = icmp ne %struct.ice_q_ctx* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %28
  store %struct.ice_q_ctx* null, %struct.ice_q_ctx** %5, align 8
  br label %47

37:                                               ; preds = %28
  %38 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %10, align 8
  %39 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %38, i32 0, i32 1
  %40 = load %struct.ice_q_ctx**, %struct.ice_q_ctx*** %39, align 8
  %41 = load i64, i64* %8, align 8
  %42 = getelementptr inbounds %struct.ice_q_ctx*, %struct.ice_q_ctx** %40, i64 %41
  %43 = load %struct.ice_q_ctx*, %struct.ice_q_ctx** %42, align 8
  store %struct.ice_q_ctx* %43, %struct.ice_q_ctx** %11, align 8
  %44 = load %struct.ice_q_ctx*, %struct.ice_q_ctx** %11, align 8
  %45 = load i64, i64* %9, align 8
  %46 = getelementptr inbounds %struct.ice_q_ctx, %struct.ice_q_ctx* %44, i64 %45
  store %struct.ice_q_ctx* %46, %struct.ice_q_ctx** %5, align 8
  br label %47

47:                                               ; preds = %37, %36, %27, %17
  %48 = load %struct.ice_q_ctx*, %struct.ice_q_ctx** %5, align 8
  ret %struct.ice_q_ctx* %48
}

declare dso_local %struct.ice_vsi_ctx* @ice_get_vsi_ctx(%struct.ice_hw*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
