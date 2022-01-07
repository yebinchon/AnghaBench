; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_mcu.c_mt7615_mcu_send_ram_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_mcu.c_mt7615_mcu_send_ram_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7615_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mt7615_fw_trailer = type { i32, i32, i32 }

@CR4_REGION_NUM = common dso_local global i32 0, align 4
@N9_REGION_NUM = common dso_local global i32 0, align 4
@IMG_CRC_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Download request failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to send firmware to device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt7615_dev*, %struct.mt7615_fw_trailer*, i32*, i32)* @mt7615_mcu_send_ram_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7615_mcu_send_ram_firmware(%struct.mt7615_dev* %0, %struct.mt7615_fw_trailer* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mt7615_dev*, align 8
  %7 = alloca %struct.mt7615_fw_trailer*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.mt7615_dev* %0, %struct.mt7615_dev** %6, align 8
  store %struct.mt7615_fw_trailer* %1, %struct.mt7615_fw_trailer** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @CR4_REGION_NUM, align 4
  br label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @N9_REGION_NUM, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %10, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %25

25:                                               ; preds = %91, %23
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %94

29:                                               ; preds = %25
  %30 = load %struct.mt7615_fw_trailer*, %struct.mt7615_fw_trailer** %7, align 8
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.mt7615_fw_trailer, %struct.mt7615_fw_trailer* %30, i64 %32
  %34 = getelementptr inbounds %struct.mt7615_fw_trailer, %struct.mt7615_fw_trailer* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i64 @mt7615_mcu_gen_dl_mode(i32 %35, i32 %36)
  store i64 %37, i64* %16, align 8
  %38 = load %struct.mt7615_fw_trailer*, %struct.mt7615_fw_trailer** %7, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.mt7615_fw_trailer, %struct.mt7615_fw_trailer* %38, i64 %40
  %42 = getelementptr inbounds %struct.mt7615_fw_trailer, %struct.mt7615_fw_trailer* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @le32_to_cpu(i32 %43)
  %45 = load i64, i64* @IMG_CRC_LEN, align 8
  %46 = add nsw i64 %44, %45
  store i64 %46, i64* %14, align 8
  %47 = load %struct.mt7615_fw_trailer*, %struct.mt7615_fw_trailer** %7, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.mt7615_fw_trailer, %struct.mt7615_fw_trailer* %47, i64 %49
  %51 = getelementptr inbounds %struct.mt7615_fw_trailer, %struct.mt7615_fw_trailer* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @le32_to_cpu(i32 %52)
  store i64 %53, i64* %15, align 8
  %54 = load %struct.mt7615_dev*, %struct.mt7615_dev** %6, align 8
  %55 = load i64, i64* %15, align 8
  %56 = load i64, i64* %14, align 8
  %57 = load i64, i64* %16, align 8
  %58 = call i32 @mt7615_mcu_init_download(%struct.mt7615_dev* %54, i64 %55, i64 %56, i64 %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %29
  %62 = load %struct.mt7615_dev*, %struct.mt7615_dev** %6, align 8
  %63 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @dev_err(i32 %65, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %5, align 4
  br label %95

68:                                               ; preds = %29
  %69 = load %struct.mt7615_dev*, %struct.mt7615_dev** %6, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i64, i64* %14, align 8
  %75 = call i32 @mt7615_mcu_send_firmware(%struct.mt7615_dev* %69, i32* %73, i64 %74)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %68
  %79 = load %struct.mt7615_dev*, %struct.mt7615_dev** %6, align 8
  %80 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @dev_err(i32 %82, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %84 = load i32, i32* %11, align 4
  store i32 %84, i32* %5, align 4
  br label %95

85:                                               ; preds = %68
  %86 = load i64, i64* %14, align 8
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %88, %86
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %13, align 4
  br label %91

91:                                               ; preds = %85
  %92 = load i32, i32* %12, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %12, align 4
  br label %25

94:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %95

95:                                               ; preds = %94, %78, %61
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i64 @mt7615_mcu_gen_dl_mode(i32, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @mt7615_mcu_init_download(%struct.mt7615_dev*, i64, i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mt7615_mcu_send_firmware(%struct.mt7615_dev*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
