; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_mcu.c_mt7615_load_patch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_mcu.c_mt7615_load_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7615_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mt7615_patch_hdr = type { i32, i32 }
%struct.firmware = type { i32, i64 }

@.str = private unnamed_addr constant [31 x i8] c"Failed to get patch semaphore\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@MT7615_ROM_PATCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Invalid firmware\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"HW/SW Version: 0x%x, Build Time: %.16s\0A\00", align 1
@MCU_PATCH_ADDRESS = common dso_local global i32 0, align 4
@DL_MODE_NEED_RSP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Download request failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Failed to send firmware to device\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Failed to start patch\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Failed to release patch semaphore\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt7615_dev*)* @mt7615_load_patch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7615_load_patch(%struct.mt7615_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt7615_dev*, align 8
  %4 = alloca %struct.mt7615_patch_hdr*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mt7615_dev* %0, %struct.mt7615_dev** %3, align 8
  store %struct.firmware* null, %struct.firmware** %5, align 8
  %9 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %10 = call i32 @mt7615_mcu_patch_sem_ctrl(%struct.mt7615_dev* %9, i32 1)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  switch i32 %11, label %14 [
    i32 130, label %12
    i32 129, label %13
  ]

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %135

13:                                               ; preds = %1
  br label %22

14:                                               ; preds = %1
  %15 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %16 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EAGAIN, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %135

22:                                               ; preds = %13
  %23 = load i32, i32* @MT7615_ROM_PATCH, align 4
  %24 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %25 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @request_firmware(%struct.firmware** %5, i32 %23, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %118

32:                                               ; preds = %22
  %33 = load %struct.firmware*, %struct.firmware** %5, align 8
  %34 = icmp ne %struct.firmware* %33, null
  br i1 %34, label %35, label %46

35:                                               ; preds = %32
  %36 = load %struct.firmware*, %struct.firmware** %5, align 8
  %37 = getelementptr inbounds %struct.firmware, %struct.firmware* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.firmware*, %struct.firmware** %5, align 8
  %42 = getelementptr inbounds %struct.firmware, %struct.firmware* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = icmp ult i64 %44, 8
  br i1 %45, label %46, label %54

46:                                               ; preds = %40, %35, %32
  %47 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %48 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dev_err(i32 %50, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %7, align 4
  br label %118

54:                                               ; preds = %40
  %55 = load %struct.firmware*, %struct.firmware** %5, align 8
  %56 = getelementptr inbounds %struct.firmware, %struct.firmware* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to %struct.mt7615_patch_hdr*
  store %struct.mt7615_patch_hdr* %58, %struct.mt7615_patch_hdr** %4, align 8
  %59 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %60 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.mt7615_patch_hdr*, %struct.mt7615_patch_hdr** %4, align 8
  %64 = getelementptr inbounds %struct.mt7615_patch_hdr, %struct.mt7615_patch_hdr* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @be32_to_cpu(i32 %65)
  %67 = load %struct.mt7615_patch_hdr*, %struct.mt7615_patch_hdr** %4, align 8
  %68 = getelementptr inbounds %struct.mt7615_patch_hdr, %struct.mt7615_patch_hdr* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @dev_info(i32 %62, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %66, i32 %69)
  %71 = load %struct.firmware*, %struct.firmware** %5, align 8
  %72 = getelementptr inbounds %struct.firmware, %struct.firmware* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = sub i64 %74, 8
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %6, align 4
  %77 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %78 = load i32, i32* @MCU_PATCH_ADDRESS, align 4
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @DL_MODE_NEED_RSP, align 4
  %81 = call i32 @mt7615_mcu_init_download(%struct.mt7615_dev* %77, i32 %78, i32 %79, i32 %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %54
  %85 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %86 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @dev_err(i32 %88, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %118

90:                                               ; preds = %54
  %91 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %92 = load %struct.firmware*, %struct.firmware** %5, align 8
  %93 = getelementptr inbounds %struct.firmware, %struct.firmware* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = add i64 %94, 8
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @mt7615_mcu_send_firmware(%struct.mt7615_dev* %91, i64 %95, i32 %96)
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %90
  %101 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %102 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @dev_err(i32 %104, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %118

106:                                              ; preds = %90
  %107 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %108 = call i32 @mt7615_mcu_start_patch(%struct.mt7615_dev* %107)
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %106
  %112 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %113 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @dev_err(i32 %115, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %117

117:                                              ; preds = %111, %106
  br label %118

118:                                              ; preds = %117, %100, %84, %46, %31
  %119 = load %struct.firmware*, %struct.firmware** %5, align 8
  %120 = call i32 @release_firmware(%struct.firmware* %119)
  %121 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %122 = call i32 @mt7615_mcu_patch_sem_ctrl(%struct.mt7615_dev* %121, i32 0)
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %8, align 4
  switch i32 %123, label %125 [
    i32 128, label %124
  ]

124:                                              ; preds = %118
  br label %133

125:                                              ; preds = %118
  %126 = load i32, i32* @EAGAIN, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %7, align 4
  %128 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %129 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @dev_err(i32 %131, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  br label %133

133:                                              ; preds = %125, %124
  %134 = load i32, i32* %7, align 4
  store i32 %134, i32* %2, align 4
  br label %135

135:                                              ; preds = %133, %14, %12
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local i32 @mt7615_mcu_patch_sem_ctrl(%struct.mt7615_dev*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @mt7615_mcu_init_download(%struct.mt7615_dev*, i32, i32, i32) #1

declare dso_local i32 @mt7615_mcu_send_firmware(%struct.mt7615_dev*, i64, i32) #1

declare dso_local i32 @mt7615_mcu_start_patch(%struct.mt7615_dev*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
