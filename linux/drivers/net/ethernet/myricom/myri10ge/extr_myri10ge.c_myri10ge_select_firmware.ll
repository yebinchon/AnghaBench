; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/myricom/myri10ge/extr_myri10ge.c_myri10ge_select_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/myricom/myri10ge/extr_myri10ge.c_myri10ge_select_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myri10ge_priv = type { i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@myri10ge_force_firmware = common dso_local global i32 0, align 4
@PCI_EXP_LNKSTA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"PCIE x%d Link\0A\00", align 1
@myri10ge_fw_aligned = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Assuming aligned completions (forced)\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Assuming unaligned completions (forced)\0A\00", align 1
@myri10ge_fw_unaligned = common dso_local global i8* null, align 8
@THIS_MODULE = common dso_local global i32 0, align 4
@myri10ge_fw_name = common dso_local global i32* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@MYRI10GE_MAX_BOARDS = common dso_local global i64 0, align 8
@myri10ge_fw_names = common dso_local global i8** null, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"overriding firmware to %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.myri10ge_priv*)* @myri10ge_select_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @myri10ge_select_firmware(%struct.myri10ge_priv* %0) #0 {
  %2 = alloca %struct.myri10ge_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.myri10ge_priv* %0, %struct.myri10ge_priv** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load i32, i32* @myri10ge_force_firmware, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %36

9:                                                ; preds = %1
  %10 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %11 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %10, i32 0, i32 3
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load i32, i32* @PCI_EXP_LNKSTA, align 4
  %14 = call i32 @pcie_capability_read_word(%struct.TYPE_2__* %12, i32 %13, i32* %5)
  %15 = load i32, i32* %5, align 4
  %16 = ashr i32 %15, 4
  %17 = and i32 %16, 63
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 8
  br i1 %19, label %20, label %32

20:                                               ; preds = %9
  %21 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %22 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %21, i32 0, i32 3
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %4, align 4
  %26 = call i32 (i32*, i8*, ...) @dev_info(i32* %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %28 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %27, i32 0, i32 0
  store i32 4096, i32* %28, align 8
  %29 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %30 = load i8*, i8** @myri10ge_fw_aligned, align 8
  %31 = call i32 @set_fw_name(%struct.myri10ge_priv* %29, i8* %30, i32 0)
  br label %35

32:                                               ; preds = %9
  %33 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %34 = call i32 @myri10ge_firmware_probe(%struct.myri10ge_priv* %33)
  br label %35

35:                                               ; preds = %32, %20
  br label %62

36:                                               ; preds = %1
  %37 = load i32, i32* @myri10ge_force_firmware, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %41 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %40, i32 0, i32 3
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = call i32 (i32*, i8*, ...) @dev_info(i32* %43, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %46 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %45, i32 0, i32 0
  store i32 4096, i32* %46, align 8
  %47 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %48 = load i8*, i8** @myri10ge_fw_aligned, align 8
  %49 = call i32 @set_fw_name(%struct.myri10ge_priv* %47, i8* %48, i32 0)
  br label %61

50:                                               ; preds = %36
  %51 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %52 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %51, i32 0, i32 3
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = call i32 (i32*, i8*, ...) @dev_info(i32* %54, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %56 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %57 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %56, i32 0, i32 0
  store i32 2048, i32* %57, align 8
  %58 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %59 = load i8*, i8** @myri10ge_fw_unaligned, align 8
  %60 = call i32 @set_fw_name(%struct.myri10ge_priv* %58, i8* %59, i32 0)
  br label %61

61:                                               ; preds = %50, %39
  br label %62

62:                                               ; preds = %61, %35
  %63 = load i32, i32* @THIS_MODULE, align 4
  %64 = call i32 @kernel_param_lock(i32 %63)
  %65 = load i32*, i32** @myri10ge_fw_name, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %78

67:                                               ; preds = %62
  %68 = load i32*, i32** @myri10ge_fw_name, align 8
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call i8* @kstrdup(i32* %68, i32 %69)
  store i8* %70, i8** %6, align 8
  %71 = load i8*, i8** %6, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  store i32 1, i32* %3, align 4
  %74 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = call i32 @set_fw_name(%struct.myri10ge_priv* %74, i8* %75, i32 1)
  br label %77

77:                                               ; preds = %73, %67
  br label %78

78:                                               ; preds = %77, %62
  %79 = load i32, i32* @THIS_MODULE, align 4
  %80 = call i32 @kernel_param_unlock(i32 %79)
  %81 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %82 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @MYRI10GE_MAX_BOARDS, align 8
  %85 = icmp ult i64 %83, %84
  br i1 %85, label %86, label %112

86:                                               ; preds = %78
  %87 = load i8**, i8*** @myri10ge_fw_names, align 8
  %88 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %89 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds i8*, i8** %87, i64 %90
  %92 = load i8*, i8** %91, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %112

94:                                               ; preds = %86
  %95 = load i8**, i8*** @myri10ge_fw_names, align 8
  %96 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %97 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds i8*, i8** %95, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = call i64 @strlen(i8* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %94
  %104 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %105 = load i8**, i8*** @myri10ge_fw_names, align 8
  %106 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %107 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds i8*, i8** %105, i64 %108
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @set_fw_name(%struct.myri10ge_priv* %104, i8* %110, i32 0)
  store i32 1, i32* %3, align 4
  br label %112

112:                                              ; preds = %103, %94, %86, %78
  %113 = load i32, i32* %3, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %124

115:                                              ; preds = %112
  %116 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %117 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %116, i32 0, i32 3
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %121 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i32 (i32*, i8*, ...) @dev_info(i32* %119, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %122)
  br label %124

124:                                              ; preds = %115, %112
  ret void
}

declare dso_local i32 @pcie_capability_read_word(%struct.TYPE_2__*, i32, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @set_fw_name(%struct.myri10ge_priv*, i8*, i32) #1

declare dso_local i32 @myri10ge_firmware_probe(%struct.myri10ge_priv*) #1

declare dso_local i32 @kernel_param_lock(i32) #1

declare dso_local i8* @kstrdup(i32*, i32) #1

declare dso_local i32 @kernel_param_unlock(i32) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
