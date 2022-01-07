; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_init_fw_funcs.c_qed_set_geneve_dest_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_init_fw_funcs.c_qed_set_geneve_dest_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }

@PRS_REG_NGE_PORT = common dso_local global i32 0, align 4
@NIG_REG_NGE_PORT = common dso_local global i32 0, align 4
@PBF_REG_NGE_PORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qed_set_geneve_dest_port(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i32 %2) #0 {
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ptt*, align 8
  %6 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %8 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %9 = load i32, i32* @PRS_REG_NGE_PORT, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @qed_wr(%struct.qed_hwfn* %7, %struct.qed_ptt* %8, i32 %9, i32 %10)
  %12 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %13 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %14 = load i32, i32* @NIG_REG_NGE_PORT, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @qed_wr(%struct.qed_hwfn* %12, %struct.qed_ptt* %13, i32 %14, i32 %15)
  %17 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %18 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %19 = load i32, i32* @PBF_REG_NGE_PORT, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @qed_wr(%struct.qed_hwfn* %17, %struct.qed_ptt* %18, i32 %19, i32 %20)
  ret void
}

declare dso_local i32 @qed_wr(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
