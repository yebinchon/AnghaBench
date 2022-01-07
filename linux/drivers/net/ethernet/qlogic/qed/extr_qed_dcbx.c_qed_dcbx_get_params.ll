; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dcbx.c_qed_dcbx_get_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dcbx.c_qed_dcbx_get_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_dcbx_get = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"MIB read err, unknown mib type %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_dcbx_get*, i32)* @qed_dcbx_get_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_dcbx_get_params(%struct.qed_hwfn* %0, %struct.qed_dcbx_get* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_dcbx_get*, align 8
  %7 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.qed_dcbx_get* %1, %struct.qed_dcbx_get** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %29 [
    i32 128, label %9
    i32 131, label %13
    i32 130, label %17
    i32 129, label %21
    i32 132, label %25
  ]

9:                                                ; preds = %3
  %10 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %11 = load %struct.qed_dcbx_get*, %struct.qed_dcbx_get** %6, align 8
  %12 = call i32 @qed_dcbx_get_remote_params(%struct.qed_hwfn* %10, %struct.qed_dcbx_get* %11)
  br label %35

13:                                               ; preds = %3
  %14 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %15 = load %struct.qed_dcbx_get*, %struct.qed_dcbx_get** %6, align 8
  %16 = call i32 @qed_dcbx_get_local_params(%struct.qed_hwfn* %14, %struct.qed_dcbx_get* %15)
  br label %35

17:                                               ; preds = %3
  %18 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %19 = load %struct.qed_dcbx_get*, %struct.qed_dcbx_get** %6, align 8
  %20 = call i32 @qed_dcbx_get_operational_params(%struct.qed_hwfn* %18, %struct.qed_dcbx_get* %19)
  br label %35

21:                                               ; preds = %3
  %22 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %23 = load %struct.qed_dcbx_get*, %struct.qed_dcbx_get** %6, align 8
  %24 = call i32 @qed_dcbx_get_remote_lldp_params(%struct.qed_hwfn* %22, %struct.qed_dcbx_get* %23)
  br label %35

25:                                               ; preds = %3
  %26 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %27 = load %struct.qed_dcbx_get*, %struct.qed_dcbx_get** %6, align 8
  %28 = call i32 @qed_dcbx_get_local_lldp_params(%struct.qed_hwfn* %26, %struct.qed_dcbx_get* %27)
  br label %35

29:                                               ; preds = %3
  %30 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @DP_ERR(%struct.qed_hwfn* %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %36

35:                                               ; preds = %25, %21, %17, %13, %9
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %35, %29
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @qed_dcbx_get_remote_params(%struct.qed_hwfn*, %struct.qed_dcbx_get*) #1

declare dso_local i32 @qed_dcbx_get_local_params(%struct.qed_hwfn*, %struct.qed_dcbx_get*) #1

declare dso_local i32 @qed_dcbx_get_operational_params(%struct.qed_hwfn*, %struct.qed_dcbx_get*) #1

declare dso_local i32 @qed_dcbx_get_remote_lldp_params(%struct.qed_hwfn*, %struct.qed_dcbx_get*) #1

declare dso_local i32 @qed_dcbx_get_local_lldp_params(%struct.qed_hwfn*, %struct.qed_dcbx_get*) #1

declare dso_local i32 @DP_ERR(%struct.qed_hwfn*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
