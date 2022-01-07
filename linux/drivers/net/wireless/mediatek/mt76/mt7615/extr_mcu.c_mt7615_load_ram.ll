; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_mcu.c_mt7615_load_ram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_mcu.c_mt7615_load_ram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7615_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mt7615_fw_trailer = type { i32, i32, i32 }
%struct.firmware = type { i32, i32 }

@MT7615_FIRMWARE_N9 = common dso_local global i32 0, align 4
@N9_REGION_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Invalid firmware\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"N9 Firmware Version: %.10s, Build Time: %.15s\0A\00", align 1
@FW_START_OVERRIDE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to start N9 firmware\0A\00", align 1
@MT7615_FIRMWARE_CR4 = common dso_local global i32 0, align 4
@CR4_REGION_NUM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"CR4 Firmware Version: %.10s, Build Time: %.15s\0A\00", align 1
@FW_START_WORKING_PDA_CR4 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"Failed to start CR4 firmware\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt7615_dev*)* @mt7615_load_ram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7615_load_ram(%struct.mt7615_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt7615_dev*, align 8
  %4 = alloca %struct.mt7615_fw_trailer*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca i32, align 4
  store %struct.mt7615_dev* %0, %struct.mt7615_dev** %3, align 8
  %7 = load i32, i32* @MT7615_FIRMWARE_N9, align 4
  %8 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %9 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @request_firmware(%struct.firmware** %5, i32 %7, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %2, align 4
  br label %181

17:                                               ; preds = %1
  %18 = load %struct.firmware*, %struct.firmware** %5, align 8
  %19 = icmp ne %struct.firmware* %18, null
  br i1 %19, label %20, label %34

20:                                               ; preds = %17
  %21 = load %struct.firmware*, %struct.firmware** %5, align 8
  %22 = getelementptr inbounds %struct.firmware, %struct.firmware* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load %struct.firmware*, %struct.firmware** %5, align 8
  %27 = getelementptr inbounds %struct.firmware, %struct.firmware* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = load i32, i32* @N9_REGION_NUM, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 12
  %33 = icmp ult i64 %29, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %25, %20, %17
  %35 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %36 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %177

42:                                               ; preds = %25
  %43 = load %struct.firmware*, %struct.firmware** %5, align 8
  %44 = getelementptr inbounds %struct.firmware, %struct.firmware* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.firmware*, %struct.firmware** %5, align 8
  %47 = getelementptr inbounds %struct.firmware, %struct.firmware* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %45, %48
  %50 = sext i32 %49 to i64
  %51 = load i32, i32* @N9_REGION_NUM, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 12
  %54 = sub i64 %50, %53
  %55 = inttoptr i64 %54 to %struct.mt7615_fw_trailer*
  store %struct.mt7615_fw_trailer* %55, %struct.mt7615_fw_trailer** %4, align 8
  %56 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %57 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.mt7615_fw_trailer*, %struct.mt7615_fw_trailer** %4, align 8
  %61 = getelementptr inbounds %struct.mt7615_fw_trailer, %struct.mt7615_fw_trailer* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.mt7615_fw_trailer*, %struct.mt7615_fw_trailer** %4, align 8
  %64 = getelementptr inbounds %struct.mt7615_fw_trailer, %struct.mt7615_fw_trailer* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @dev_info(i32 %59, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %65)
  %67 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %68 = load %struct.mt7615_fw_trailer*, %struct.mt7615_fw_trailer** %4, align 8
  %69 = load %struct.firmware*, %struct.firmware** %5, align 8
  %70 = getelementptr inbounds %struct.firmware, %struct.firmware* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @mt7615_mcu_send_ram_firmware(%struct.mt7615_dev* %67, %struct.mt7615_fw_trailer* %68, i32 %71, i32 0)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %42
  br label %177

76:                                               ; preds = %42
  %77 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %78 = load %struct.mt7615_fw_trailer*, %struct.mt7615_fw_trailer** %4, align 8
  %79 = getelementptr inbounds %struct.mt7615_fw_trailer, %struct.mt7615_fw_trailer* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @le32_to_cpu(i32 %80)
  %82 = load i32, i32* @FW_START_OVERRIDE, align 4
  %83 = call i32 @mt7615_mcu_start_firmware(%struct.mt7615_dev* %77, i32 %81, i32 %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %76
  %87 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %88 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @dev_err(i32 %90, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %177

92:                                               ; preds = %76
  %93 = load %struct.firmware*, %struct.firmware** %5, align 8
  %94 = call i32 @release_firmware(%struct.firmware* %93)
  %95 = load i32, i32* @MT7615_FIRMWARE_CR4, align 4
  %96 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %97 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @request_firmware(%struct.firmware** %5, i32 %95, i32 %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %92
  %104 = load i32, i32* %6, align 4
  store i32 %104, i32* %2, align 4
  br label %181

105:                                              ; preds = %92
  %106 = load %struct.firmware*, %struct.firmware** %5, align 8
  %107 = icmp ne %struct.firmware* %106, null
  br i1 %107, label %108, label %122

108:                                              ; preds = %105
  %109 = load %struct.firmware*, %struct.firmware** %5, align 8
  %110 = getelementptr inbounds %struct.firmware, %struct.firmware* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %108
  %114 = load %struct.firmware*, %struct.firmware** %5, align 8
  %115 = getelementptr inbounds %struct.firmware, %struct.firmware* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = sext i32 %116 to i64
  %118 = load i32, i32* @CR4_REGION_NUM, align 4
  %119 = sext i32 %118 to i64
  %120 = mul i64 %119, 12
  %121 = icmp ult i64 %117, %120
  br i1 %121, label %122, label %130

122:                                              ; preds = %113, %108, %105
  %123 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %124 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @dev_err(i32 %126, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %6, align 4
  br label %177

130:                                              ; preds = %113
  %131 = load %struct.firmware*, %struct.firmware** %5, align 8
  %132 = getelementptr inbounds %struct.firmware, %struct.firmware* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.firmware*, %struct.firmware** %5, align 8
  %135 = getelementptr inbounds %struct.firmware, %struct.firmware* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %133, %136
  %138 = sext i32 %137 to i64
  %139 = load i32, i32* @CR4_REGION_NUM, align 4
  %140 = sext i32 %139 to i64
  %141 = mul i64 %140, 12
  %142 = sub i64 %138, %141
  %143 = inttoptr i64 %142 to %struct.mt7615_fw_trailer*
  store %struct.mt7615_fw_trailer* %143, %struct.mt7615_fw_trailer** %4, align 8
  %144 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %145 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.mt7615_fw_trailer*, %struct.mt7615_fw_trailer** %4, align 8
  %149 = getelementptr inbounds %struct.mt7615_fw_trailer, %struct.mt7615_fw_trailer* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.mt7615_fw_trailer*, %struct.mt7615_fw_trailer** %4, align 8
  %152 = getelementptr inbounds %struct.mt7615_fw_trailer, %struct.mt7615_fw_trailer* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @dev_info(i32 %147, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %150, i32 %153)
  %155 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %156 = load %struct.mt7615_fw_trailer*, %struct.mt7615_fw_trailer** %4, align 8
  %157 = load %struct.firmware*, %struct.firmware** %5, align 8
  %158 = getelementptr inbounds %struct.firmware, %struct.firmware* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @mt7615_mcu_send_ram_firmware(%struct.mt7615_dev* %155, %struct.mt7615_fw_trailer* %156, i32 %159, i32 1)
  store i32 %160, i32* %6, align 4
  %161 = load i32, i32* %6, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %130
  br label %177

164:                                              ; preds = %130
  %165 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %166 = load i32, i32* @FW_START_WORKING_PDA_CR4, align 4
  %167 = call i32 @mt7615_mcu_start_firmware(%struct.mt7615_dev* %165, i32 0, i32 %166)
  store i32 %167, i32* %6, align 4
  %168 = load i32, i32* %6, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %164
  %171 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %172 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @dev_err(i32 %174, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %176

176:                                              ; preds = %170, %164
  br label %177

177:                                              ; preds = %176, %163, %122, %86, %75, %34
  %178 = load %struct.firmware*, %struct.firmware** %5, align 8
  %179 = call i32 @release_firmware(%struct.firmware* %178)
  %180 = load i32, i32* %6, align 4
  store i32 %180, i32* %2, align 4
  br label %181

181:                                              ; preds = %177, %103, %15
  %182 = load i32, i32* %2, align 4
  ret i32 %182
}

declare dso_local i32 @request_firmware(%struct.firmware**, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32) #1

declare dso_local i32 @mt7615_mcu_send_ram_firmware(%struct.mt7615_dev*, %struct.mt7615_fw_trailer*, i32, i32) #1

declare dso_local i32 @mt7615_mcu_start_firmware(%struct.mt7615_dev*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
