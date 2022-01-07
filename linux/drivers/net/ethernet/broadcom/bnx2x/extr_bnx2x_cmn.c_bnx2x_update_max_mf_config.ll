; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.c_bnx2x_update_max_mf_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.c_bnx2x_update_max_mf_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32* }

@FUNC_MF_CFG_MAX_BW_MASK = common dso_local global i32 0, align 4
@FUNC_MF_CFG_MAX_BW_SHIFT = common dso_local global i32 0, align 4
@DRV_MSG_CODE_SET_MF_BW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_update_max_mf_config(%struct.bnx2x* %0, i32 %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %7 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %10 = call i64 @BP_VN(%struct.bnx2x* %9)
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @bnx2x_extract_max_cfg(%struct.bnx2x* %14, i32 %15)
  %17 = icmp ne i32 %13, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %2
  %19 = load i32, i32* @FUNC_MF_CFG_MAX_BW_MASK, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @FUNC_MF_CFG_MAX_BW_SHIFT, align 4
  %25 = shl i32 %23, %24
  %26 = load i32, i32* @FUNC_MF_CFG_MAX_BW_MASK, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  %30 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %31 = load i32, i32* @DRV_MSG_CODE_SET_MF_BW, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @bnx2x_fw_command(%struct.bnx2x* %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %18, %2
  ret void
}

declare dso_local i64 @BP_VN(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_extract_max_cfg(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_fw_command(%struct.bnx2x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
