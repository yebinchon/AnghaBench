; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_reserve_vf_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_reserve_vf_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hwrm_func_vf_cfg_input = type { i32 }

@HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, i32, i32, i32, i32, i32, i32)* @bnxt_hwrm_reserve_vf_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_hwrm_reserve_vf_rings(%struct.bnxt* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.bnxt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.hwrm_func_vf_cfg_input, align 4
  %17 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = bitcast %struct.hwrm_func_vf_cfg_input* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 4, i1 false)
  %19 = load %struct.bnxt*, %struct.bnxt** %9, align 8
  %20 = call i32 @BNXT_NEW_RM(%struct.bnxt* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %7
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.bnxt*, %struct.bnxt** %9, align 8
  %25 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 4
  store i32 0, i32* %8, align 4
  br label %47

27:                                               ; preds = %7
  %28 = load %struct.bnxt*, %struct.bnxt** %9, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* %15, align 4
  %35 = call i32 @__bnxt_hwrm_reserve_vf_rings(%struct.bnxt* %28, %struct.hwrm_func_vf_cfg_input* %16, i32 %29, i32 %30, i32 %31, i32 %32, i32 %33, i32 %34)
  %36 = load %struct.bnxt*, %struct.bnxt** %9, align 8
  %37 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %38 = call i32 @hwrm_send_message(%struct.bnxt* %36, %struct.hwrm_func_vf_cfg_input* %16, i32 4, i32 %37)
  store i32 %38, i32* %17, align 4
  %39 = load i32, i32* %17, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %27
  %42 = load i32, i32* %17, align 4
  store i32 %42, i32* %8, align 4
  br label %47

43:                                               ; preds = %27
  %44 = load %struct.bnxt*, %struct.bnxt** %9, align 8
  %45 = call i32 @bnxt_hwrm_get_rings(%struct.bnxt* %44)
  store i32 %45, i32* %17, align 4
  %46 = load i32, i32* %17, align 4
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %43, %41, %22
  %48 = load i32, i32* %8, align 4
  ret i32 %48
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @BNXT_NEW_RM(%struct.bnxt*) #2

declare dso_local i32 @__bnxt_hwrm_reserve_vf_rings(%struct.bnxt*, %struct.hwrm_func_vf_cfg_input*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @hwrm_send_message(%struct.bnxt*, %struct.hwrm_func_vf_cfg_input*, i32, i32) #2

declare dso_local i32 @bnxt_hwrm_get_rings(%struct.bnxt*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
