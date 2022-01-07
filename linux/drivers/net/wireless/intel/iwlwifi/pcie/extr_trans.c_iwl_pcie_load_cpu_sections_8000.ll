; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_pcie_load_cpu_sections_8000.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_pcie_load_cpu_sections_8000.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.fw_img = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }

@CPU1_CPU2_SEPARATOR_SECTION = common dso_local global i64 0, align 8
@PAGING_SEPARATOR_SECTION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"Break since Data not valid or Empty section, sec = %d\0A\00", align 1
@FH_UCODE_LOAD_STATUS = common dso_local global i32 0, align 4
@UREG_UCODE_LOAD_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*, %struct.fw_img*, i32, i32*)* @iwl_pcie_load_cpu_sections_8000 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_pcie_load_cpu_sections_8000(%struct.iwl_trans* %0, %struct.fw_img* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_trans*, align 8
  %7 = alloca %struct.fw_img*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %6, align 8
  store %struct.fw_img* %1, %struct.fw_img** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %12, align 4
  store i32 1, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  %19 = load i32*, i32** %9, align 8
  store i32 0, i32* %19, align 4
  br label %24

20:                                               ; preds = %4
  store i32 16, i32* %10, align 4
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %20, %18
  %25 = load i32*, i32** %9, align 8
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %11, align 4
  br label %27

27:                                               ; preds = %100, %24
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.fw_img*, %struct.fw_img** %7, align 8
  %30 = getelementptr inbounds %struct.fw_img, %struct.fw_img* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %103

33:                                               ; preds = %27
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %15, align 4
  %35 = load %struct.fw_img*, %struct.fw_img** %7, align 8
  %36 = getelementptr inbounds %struct.fw_img, %struct.fw_img* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %66

44:                                               ; preds = %33
  %45 = load %struct.fw_img*, %struct.fw_img** %7, align 8
  %46 = getelementptr inbounds %struct.fw_img, %struct.fw_img* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @CPU1_CPU2_SEPARATOR_SECTION, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %66, label %55

55:                                               ; preds = %44
  %56 = load %struct.fw_img*, %struct.fw_img** %7, align 8
  %57 = getelementptr inbounds %struct.fw_img, %struct.fw_img* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @PAGING_SEPARATOR_SECTION, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %55, %44, %33
  %67 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @IWL_DEBUG_FW(%struct.iwl_trans* %67, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %68)
  br label %103

70:                                               ; preds = %55
  %71 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.fw_img*, %struct.fw_img** %7, align 8
  %74 = getelementptr inbounds %struct.fw_img, %struct.fw_img* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %77
  %79 = call i32 @iwl_pcie_load_section(%struct.iwl_trans* %71, i32 %72, %struct.TYPE_4__* %78)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %70
  %83 = load i32, i32* %12, align 4
  store i32 %83, i32* %5, align 4
  br label %139

84:                                               ; preds = %70
  %85 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %86 = load i32, i32* @FH_UCODE_LOAD_STATUS, align 4
  %87 = call i32 @iwl_read_direct32(%struct.iwl_trans* %85, i32 %86)
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* %10, align 4
  %91 = shl i32 %89, %90
  %92 = or i32 %88, %91
  store i32 %92, i32* %14, align 4
  %93 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %94 = load i32, i32* @FH_UCODE_LOAD_STATUS, align 4
  %95 = load i32, i32* %14, align 4
  %96 = call i32 @iwl_write_direct32(%struct.iwl_trans* %93, i32 %94, i32 %95)
  %97 = load i32, i32* %13, align 4
  %98 = shl i32 %97, 1
  %99 = or i32 %98, 1
  store i32 %99, i32* %13, align 4
  br label %100

100:                                              ; preds = %84
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %11, align 4
  br label %27

103:                                              ; preds = %66, %27
  %104 = load i32, i32* %15, align 4
  %105 = load i32*, i32** %9, align 8
  store i32 %104, i32* %105, align 4
  %106 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %107 = call i32 @iwl_enable_interrupts(%struct.iwl_trans* %106)
  %108 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %109 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %108, i32 0, i32 0
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %126

114:                                              ; preds = %103
  %115 = load i32, i32* %8, align 4
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %119 = load i32, i32* @UREG_UCODE_LOAD_STATUS, align 4
  %120 = call i32 @iwl_write_prph(%struct.iwl_trans* %118, i32 %119, i32 65535)
  br label %125

121:                                              ; preds = %114
  %122 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %123 = load i32, i32* @UREG_UCODE_LOAD_STATUS, align 4
  %124 = call i32 @iwl_write_prph(%struct.iwl_trans* %122, i32 %123, i32 -1)
  br label %125

125:                                              ; preds = %121, %117
  br label %138

126:                                              ; preds = %103
  %127 = load i32, i32* %8, align 4
  %128 = icmp eq i32 %127, 1
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %131 = load i32, i32* @FH_UCODE_LOAD_STATUS, align 4
  %132 = call i32 @iwl_write_direct32(%struct.iwl_trans* %130, i32 %131, i32 65535)
  br label %137

133:                                              ; preds = %126
  %134 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %135 = load i32, i32* @FH_UCODE_LOAD_STATUS, align 4
  %136 = call i32 @iwl_write_direct32(%struct.iwl_trans* %134, i32 %135, i32 -1)
  br label %137

137:                                              ; preds = %133, %129
  br label %138

138:                                              ; preds = %137, %125
  store i32 0, i32* %5, align 4
  br label %139

139:                                              ; preds = %138, %82
  %140 = load i32, i32* %5, align 4
  ret i32 %140
}

declare dso_local i32 @IWL_DEBUG_FW(%struct.iwl_trans*, i8*, i32) #1

declare dso_local i32 @iwl_pcie_load_section(%struct.iwl_trans*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @iwl_read_direct32(%struct.iwl_trans*, i32) #1

declare dso_local i32 @iwl_write_direct32(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_enable_interrupts(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_write_prph(%struct.iwl_trans*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
