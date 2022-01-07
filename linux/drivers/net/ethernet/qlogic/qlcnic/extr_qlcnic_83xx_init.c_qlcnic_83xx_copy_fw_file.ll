; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_copy_fw_file.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_copy_fw_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.qlc_83xx_fw_info* }
%struct.qlc_83xx_fw_info = type { %struct.firmware* }
%struct.firmware = type { i32, i64 }

@EIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QLCNIC_FW_IMAGE_ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"MS memory write failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*)* @qlcnic_83xx_copy_fw_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_83xx_copy_fw_file(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca %struct.qlc_83xx_fw_info*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca [16 x i64], align 16
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  %15 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.qlc_83xx_fw_info*, %struct.qlc_83xx_fw_info** %18, align 8
  store %struct.qlc_83xx_fw_info* %19, %struct.qlc_83xx_fw_info** %4, align 8
  %20 = load %struct.qlc_83xx_fw_info*, %struct.qlc_83xx_fw_info** %4, align 8
  %21 = getelementptr inbounds %struct.qlc_83xx_fw_info, %struct.qlc_83xx_fw_info* %20, i32 0, i32 0
  %22 = load %struct.firmware*, %struct.firmware** %21, align 8
  store %struct.firmware* %22, %struct.firmware** %5, align 8
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %10, align 4
  %25 = load %struct.firmware*, %struct.firmware** %5, align 8
  %26 = getelementptr inbounds %struct.firmware, %struct.firmware* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i64* @vzalloc(i32 %27)
  store i64* %28, i64** %8, align 8
  %29 = load i64*, i64** %8, align 8
  %30 = icmp ne i64* %29, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %1
  %32 = load %struct.firmware*, %struct.firmware** %5, align 8
  %33 = call i32 @release_firmware(%struct.firmware* %32)
  %34 = load %struct.qlc_83xx_fw_info*, %struct.qlc_83xx_fw_info** %4, align 8
  %35 = getelementptr inbounds %struct.qlc_83xx_fw_info, %struct.qlc_83xx_fw_info* %34, i32 0, i32 0
  store %struct.firmware* null, %struct.firmware** %35, align 8
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %159

38:                                               ; preds = %1
  %39 = load %struct.firmware*, %struct.firmware** %5, align 8
  %40 = getelementptr inbounds %struct.firmware, %struct.firmware* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i32*
  store i32* %42, i32** %11, align 8
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %63, %38
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = load %struct.firmware*, %struct.firmware** %5, align 8
  %47 = getelementptr inbounds %struct.firmware, %struct.firmware* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = udiv i64 %49, 8
  %51 = icmp ult i64 %45, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %43
  %53 = load i32*, i32** %11, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @__le32_to_cpu(i32 %57)
  %59 = load i64*, i64** %8, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  store i64 %58, i64* %62, align 8
  br label %63

63:                                               ; preds = %52
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %43

66:                                               ; preds = %43
  %67 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %68 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load i32, i32* @QLCNIC_FW_IMAGE_ADDR, align 4
  %71 = call i64 @QLCRDX(%struct.TYPE_4__* %69, i32 %70)
  store i64 %71, i64* %6, align 8
  %72 = load %struct.firmware*, %struct.firmware** %5, align 8
  %73 = getelementptr inbounds %struct.firmware, %struct.firmware* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %74, -16
  %76 = sext i32 %75 to i64
  store i64 %76, i64* %13, align 8
  %77 = load i64*, i64** %8, align 8
  store i64* %77, i64** %7, align 8
  %78 = load i64, i64* %6, align 8
  store i64 %78, i64* %14, align 8
  %79 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %80 = load i64, i64* %14, align 8
  %81 = load i64*, i64** %7, align 8
  %82 = load i64, i64* %13, align 8
  %83 = udiv i64 %82, 16
  %84 = trunc i64 %83 to i32
  %85 = call i32 @qlcnic_ms_mem_write128(%struct.qlcnic_adapter* %79, i64 %80, i64* %81, i32 %84)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %66
  %89 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %90 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %89, i32 0, i32 0
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = call i32 @dev_err(i32* %92, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %151

94:                                               ; preds = %66
  %95 = load %struct.firmware*, %struct.firmware** %5, align 8
  %96 = getelementptr inbounds %struct.firmware, %struct.firmware* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = and i32 %97, 15
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %150

100:                                              ; preds = %94
  %101 = load i64, i64* %6, align 8
  %102 = load i64, i64* %13, align 8
  %103 = add i64 %101, %102
  store i64 %103, i64* %14, align 8
  store i32 0, i32* %9, align 4
  br label %104

104:                                              ; preds = %122, %100
  %105 = load i32, i32* %9, align 4
  %106 = load %struct.firmware*, %struct.firmware** %5, align 8
  %107 = getelementptr inbounds %struct.firmware, %struct.firmware* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = and i32 %108, 15
  %110 = icmp slt i32 %105, %109
  br i1 %110, label %111, label %125

111:                                              ; preds = %104
  %112 = load i64*, i64** %8, align 8
  %113 = load i64, i64* %13, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = add i64 %113, %115
  %117 = getelementptr inbounds i64, i64* %112, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [16 x i64], [16 x i64]* %12, i64 0, i64 %120
  store i64 %118, i64* %121, align 8
  br label %122

122:                                              ; preds = %111
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %9, align 4
  br label %104

125:                                              ; preds = %104
  br label %126

126:                                              ; preds = %133, %125
  %127 = load i32, i32* %9, align 4
  %128 = icmp slt i32 %127, 16
  br i1 %128, label %129, label %136

129:                                              ; preds = %126
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [16 x i64], [16 x i64]* %12, i64 0, i64 %131
  store i64 0, i64* %132, align 8
  br label %133

133:                                              ; preds = %129
  %134 = load i32, i32* %9, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %9, align 4
  br label %126

136:                                              ; preds = %126
  %137 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %138 = load i64, i64* %14, align 8
  %139 = getelementptr inbounds [16 x i64], [16 x i64]* %12, i64 0, i64 0
  %140 = call i32 @qlcnic_ms_mem_write128(%struct.qlcnic_adapter* %137, i64 %138, i64* %139, i32 1)
  store i32 %140, i32* %10, align 4
  %141 = load i32, i32* %10, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %136
  %144 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %145 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %144, i32 0, i32 0
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  %148 = call i32 @dev_err(i32* %147, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %151

149:                                              ; preds = %136
  br label %150

150:                                              ; preds = %149, %94
  br label %151

151:                                              ; preds = %150, %143, %88
  %152 = load %struct.firmware*, %struct.firmware** %5, align 8
  %153 = call i32 @release_firmware(%struct.firmware* %152)
  %154 = load %struct.qlc_83xx_fw_info*, %struct.qlc_83xx_fw_info** %4, align 8
  %155 = getelementptr inbounds %struct.qlc_83xx_fw_info, %struct.qlc_83xx_fw_info* %154, i32 0, i32 0
  store %struct.firmware* null, %struct.firmware** %155, align 8
  %156 = load i64*, i64** %8, align 8
  %157 = call i32 @vfree(i64* %156)
  %158 = load i32, i32* %10, align 4
  store i32 %158, i32* %2, align 4
  br label %159

159:                                              ; preds = %151, %31
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local i64* @vzalloc(i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i64 @__le32_to_cpu(i32) #1

declare dso_local i64 @QLCRDX(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @qlcnic_ms_mem_write128(%struct.qlcnic_adapter*, i64, i64*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @vfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
