; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_firmware.c_rtl_fw_data_ok.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_firmware.c_rtl_fw_data_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl_fw = type { i32, %struct.rtl_fw_phy_action }
%struct.rtl_fw_phy_action = type { i64, i32* }

@.str = private unnamed_addr constant [23 x i8] c"Invalid action 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Out of range of firmware\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl_fw*)* @rtl_fw_data_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl_fw_data_ok(%struct.rtl_fw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtl_fw*, align 8
  %4 = alloca %struct.rtl_fw_phy_action*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rtl_fw* %0, %struct.rtl_fw** %3, align 8
  %8 = load %struct.rtl_fw*, %struct.rtl_fw** %3, align 8
  %9 = getelementptr inbounds %struct.rtl_fw, %struct.rtl_fw* %8, i32 0, i32 1
  store %struct.rtl_fw_phy_action* %9, %struct.rtl_fw_phy_action** %4, align 8
  store i64 0, i64* %5, align 8
  br label %10

10:                                               ; preds = %65, %1
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.rtl_fw_phy_action*, %struct.rtl_fw_phy_action** %4, align 8
  %13 = getelementptr inbounds %struct.rtl_fw_phy_action, %struct.rtl_fw_phy_action* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %11, %14
  br i1 %15, label %16, label %68

16:                                               ; preds = %10
  %17 = load %struct.rtl_fw_phy_action*, %struct.rtl_fw_phy_action** %4, align 8
  %18 = getelementptr inbounds %struct.rtl_fw_phy_action, %struct.rtl_fw_phy_action* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @le32_to_cpu(i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, 268369920
  %26 = ashr i32 %25, 16
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = ashr i32 %27, 28
  switch i32 %28, label %58 [
    i32 132, label %29
    i32 135, label %29
    i32 136, label %29
    i32 133, label %29
    i32 139, label %29
    i32 129, label %29
    i32 128, label %29
    i32 134, label %29
    i32 140, label %30
    i32 131, label %37
    i32 138, label %46
    i32 137, label %46
    i32 130, label %46
  ]

29:                                               ; preds = %16, %16, %16, %16, %16, %16, %16, %16
  br label %64

30:                                               ; preds = %16
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %5, align 8
  %34 = icmp ugt i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %69

36:                                               ; preds = %30
  br label %64

37:                                               ; preds = %16
  %38 = load i64, i64* %5, align 8
  %39 = add i64 %38, 2
  %40 = load %struct.rtl_fw_phy_action*, %struct.rtl_fw_phy_action** %4, align 8
  %41 = getelementptr inbounds %struct.rtl_fw_phy_action, %struct.rtl_fw_phy_action* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp uge i64 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %69

45:                                               ; preds = %37
  br label %64

46:                                               ; preds = %16, %16, %16
  %47 = load i64, i64* %5, align 8
  %48 = add i64 %47, 1
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = add i64 %48, %50
  %52 = load %struct.rtl_fw_phy_action*, %struct.rtl_fw_phy_action** %4, align 8
  %53 = getelementptr inbounds %struct.rtl_fw_phy_action, %struct.rtl_fw_phy_action* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp uge i64 %51, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  br label %69

57:                                               ; preds = %46
  br label %64

58:                                               ; preds = %16
  %59 = load %struct.rtl_fw*, %struct.rtl_fw** %3, align 8
  %60 = getelementptr inbounds %struct.rtl_fw, %struct.rtl_fw* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 (i32, i8*, ...) @dev_err(i32 %61, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %62)
  store i32 0, i32* %2, align 4
  br label %74

64:                                               ; preds = %57, %45, %36, %29
  br label %65

65:                                               ; preds = %64
  %66 = load i64, i64* %5, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %5, align 8
  br label %10

68:                                               ; preds = %10
  store i32 1, i32* %2, align 4
  br label %74

69:                                               ; preds = %56, %44, %35
  %70 = load %struct.rtl_fw*, %struct.rtl_fw** %3, align 8
  %71 = getelementptr inbounds %struct.rtl_fw, %struct.rtl_fw* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (i32, i8*, ...) @dev_err(i32 %72, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %69, %68, %58
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
