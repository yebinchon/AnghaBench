; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_pcie_load_cpu_sections.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_pcie_load_cpu_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.fw_img = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@CPU1_CPU2_SEPARATOR_SECTION = common dso_local global i64 0, align 8
@PAGING_SEPARATOR_SECTION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"Break since Data not valid or Empty section, sec = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*, %struct.fw_img*, i32, i32*)* @iwl_pcie_load_cpu_sections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_pcie_load_cpu_sections(%struct.iwl_trans* %0, %struct.fw_img* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_trans*, align 8
  %7 = alloca %struct.fw_img*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %6, align 8
  store %struct.fw_img* %1, %struct.fw_img** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32*, i32** %9, align 8
  store i32 0, i32* %16, align 4
  br label %21

17:                                               ; preds = %4
  %18 = load i32*, i32** %9, align 8
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  br label %21

21:                                               ; preds = %17, %15
  %22 = load i32*, i32** %9, align 8
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  br label %24

24:                                               ; preds = %82, %21
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.fw_img*, %struct.fw_img** %7, align 8
  %27 = getelementptr inbounds %struct.fw_img, %struct.fw_img* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %85

30:                                               ; preds = %24
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %12, align 4
  %32 = load %struct.fw_img*, %struct.fw_img** %7, align 8
  %33 = getelementptr inbounds %struct.fw_img, %struct.fw_img* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %63

41:                                               ; preds = %30
  %42 = load %struct.fw_img*, %struct.fw_img** %7, align 8
  %43 = getelementptr inbounds %struct.fw_img, %struct.fw_img* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @CPU1_CPU2_SEPARATOR_SECTION, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %63, label %52

52:                                               ; preds = %41
  %53 = load %struct.fw_img*, %struct.fw_img** %7, align 8
  %54 = getelementptr inbounds %struct.fw_img, %struct.fw_img* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @PAGING_SEPARATOR_SECTION, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %52, %41, %30
  %64 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @IWL_DEBUG_FW(%struct.iwl_trans* %64, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %65)
  br label %85

67:                                               ; preds = %52
  %68 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.fw_img*, %struct.fw_img** %7, align 8
  %71 = getelementptr inbounds %struct.fw_img, %struct.fw_img* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = call i32 @iwl_pcie_load_section(%struct.iwl_trans* %68, i32 %69, %struct.TYPE_2__* %75)
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %67
  %80 = load i32, i32* %11, align 4
  store i32 %80, i32* %5, align 4
  br label %88

81:                                               ; preds = %67
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %24

85:                                               ; preds = %63, %24
  %86 = load i32, i32* %12, align 4
  %87 = load i32*, i32** %9, align 8
  store i32 %86, i32* %87, align 4
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %85, %79
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32 @IWL_DEBUG_FW(%struct.iwl_trans*, i8*, i32) #1

declare dso_local i32 @iwl_pcie_load_section(%struct.iwl_trans*, i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
