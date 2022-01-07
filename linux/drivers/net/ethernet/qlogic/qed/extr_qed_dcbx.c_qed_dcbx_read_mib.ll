; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dcbx.c_qed_dcbx_read_mib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dcbx.c_qed_dcbx_read_mib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"MIB read err, unknown mib type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ptt*, i32)* @qed_dcbx_read_mib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_dcbx_read_mib(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i32 %2) #0 {
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ptt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %34 [
    i32 130, label %11
    i32 128, label %16
    i32 131, label %21
    i32 129, label %25
    i32 132, label %30
  ]

11:                                               ; preds = %3
  %12 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %13 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @qed_dcbx_read_operational_mib(%struct.qed_hwfn* %12, %struct.qed_ptt* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  br label %38

16:                                               ; preds = %3
  %17 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %18 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @qed_dcbx_read_remote_mib(%struct.qed_hwfn* %17, %struct.qed_ptt* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  br label %38

21:                                               ; preds = %3
  %22 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %23 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %24 = call i32 @qed_dcbx_read_local_mib(%struct.qed_hwfn* %22, %struct.qed_ptt* %23)
  store i32 %24, i32* %7, align 4
  br label %38

25:                                               ; preds = %3
  %26 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %27 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @qed_dcbx_read_remote_lldp_mib(%struct.qed_hwfn* %26, %struct.qed_ptt* %27, i32 %28)
  store i32 %29, i32* %7, align 4
  br label %38

30:                                               ; preds = %3
  %31 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %32 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %33 = call i32 @qed_dcbx_read_local_lldp_mib(%struct.qed_hwfn* %31, %struct.qed_ptt* %32)
  store i32 %33, i32* %7, align 4
  br label %38

34:                                               ; preds = %3
  %35 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @DP_ERR(%struct.qed_hwfn* %35, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %34, %30, %25, %21, %16, %11
  %39 = load i32, i32* %7, align 4
  ret i32 %39
}

declare dso_local i32 @qed_dcbx_read_operational_mib(%struct.qed_hwfn*, %struct.qed_ptt*, i32) #1

declare dso_local i32 @qed_dcbx_read_remote_mib(%struct.qed_hwfn*, %struct.qed_ptt*, i32) #1

declare dso_local i32 @qed_dcbx_read_local_mib(%struct.qed_hwfn*, %struct.qed_ptt*) #1

declare dso_local i32 @qed_dcbx_read_remote_lldp_mib(%struct.qed_hwfn*, %struct.qed_ptt*, i32) #1

declare dso_local i32 @qed_dcbx_read_local_lldp_mib(%struct.qed_hwfn*, %struct.qed_ptt*) #1

declare dso_local i32 @DP_ERR(%struct.qed_hwfn*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
