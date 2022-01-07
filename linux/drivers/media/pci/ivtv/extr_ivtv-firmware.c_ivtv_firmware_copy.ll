; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-firmware.c_ivtv_firmware_copy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-firmware.c_ivtv_firmware_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"Loading encoder image\0A\00", align 1
@CX2341X_FIRM_ENC_FILENAME = common dso_local global i32 0, align 4
@IVTV_FW_ENC_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"failed loading encoder firmware\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Loading decoder image\0A\00", align 1
@CX2341X_FIRM_DEC_FILENAME = common dso_local global i32 0, align 4
@IVTV_FW_DEC_SIZE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"failed loading decoder firmware\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ivtv*)* @ivtv_firmware_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtv_firmware_copy(%struct.ivtv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ivtv*, align 8
  store %struct.ivtv* %0, %struct.ivtv** %3, align 8
  %4 = call i32 @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @CX2341X_FIRM_ENC_FILENAME, align 4
  %6 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %7 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %10 = load i64, i64* @IVTV_FW_ENC_SIZE, align 8
  %11 = call i64 @load_fw_direct(i32 %5, i32 %8, %struct.ivtv* %9, i64 %10)
  %12 = load i64, i64* @IVTV_FW_ENC_SIZE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 @IVTV_DEBUG_WARN(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 -3, i32* %2, align 4
  br label %36

16:                                               ; preds = %1
  %17 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %18 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %36

22:                                               ; preds = %16
  %23 = call i32 @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %24 = load i32, i32* @CX2341X_FIRM_DEC_FILENAME, align 4
  %25 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %26 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %29 = load i64, i64* @IVTV_FW_DEC_SIZE, align 8
  %30 = call i64 @load_fw_direct(i32 %24, i32 %27, %struct.ivtv* %28, i64 %29)
  %31 = load i64, i64* @IVTV_FW_DEC_SIZE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %22
  %34 = call i32 @IVTV_DEBUG_WARN(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %36

35:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %33, %21, %14
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @IVTV_DEBUG_INFO(i8*) #1

declare dso_local i64 @load_fw_direct(i32, i32, %struct.ivtv*, i64) #1

declare dso_local i32 @IVTV_DEBUG_WARN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
