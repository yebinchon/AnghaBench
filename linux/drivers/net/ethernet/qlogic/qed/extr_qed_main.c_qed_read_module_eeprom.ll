; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_read_module_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_read_module_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i32 }
%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*, i8*, i32, i32, i32)* @qed_read_module_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_read_module_eeprom(%struct.qed_dev* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qed_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.qed_hwfn*, align 8
  %13 = alloca %struct.qed_ptt*, align 8
  %14 = alloca i32, align 4
  store %struct.qed_dev* %0, %struct.qed_dev** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.qed_dev*, %struct.qed_dev** %7, align 8
  %16 = call %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev* %15)
  store %struct.qed_hwfn* %16, %struct.qed_hwfn** %12, align 8
  store i32 0, i32* %14, align 4
  %17 = load %struct.qed_dev*, %struct.qed_dev** %7, align 8
  %18 = call i64 @IS_VF(%struct.qed_dev* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %43

21:                                               ; preds = %5
  %22 = load %struct.qed_hwfn*, %struct.qed_hwfn** %12, align 8
  %23 = call %struct.qed_ptt* @qed_ptt_acquire(%struct.qed_hwfn* %22)
  store %struct.qed_ptt* %23, %struct.qed_ptt** %13, align 8
  %24 = load %struct.qed_ptt*, %struct.qed_ptt** %13, align 8
  %25 = icmp ne %struct.qed_ptt* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @EAGAIN, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %43

29:                                               ; preds = %21
  %30 = load %struct.qed_hwfn*, %struct.qed_hwfn** %12, align 8
  %31 = load %struct.qed_ptt*, %struct.qed_ptt** %13, align 8
  %32 = load %struct.qed_hwfn*, %struct.qed_hwfn** %12, align 8
  %33 = call i32 @MFW_PORT(%struct.qed_hwfn* %32)
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @qed_mcp_phy_sfp_read(%struct.qed_hwfn* %30, %struct.qed_ptt* %31, i32 %33, i32 %34, i32 %35, i32 %36, i8* %37)
  store i32 %38, i32* %14, align 4
  %39 = load %struct.qed_hwfn*, %struct.qed_hwfn** %12, align 8
  %40 = load %struct.qed_ptt*, %struct.qed_ptt** %13, align 8
  %41 = call i32 @qed_ptt_release(%struct.qed_hwfn* %39, %struct.qed_ptt* %40)
  %42 = load i32, i32* %14, align 4
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %29, %26, %20
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev*) #1

declare dso_local i64 @IS_VF(%struct.qed_dev*) #1

declare dso_local %struct.qed_ptt* @qed_ptt_acquire(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_mcp_phy_sfp_read(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @MFW_PORT(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_ptt_release(%struct.qed_hwfn*, %struct.qed_ptt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
