; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-avcore.c_cx231xx_set_Colibri_For_LowIF.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-avcore.c_cx231xx_set_Colibri_For_LowIF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Enter cx231xx_set_Colibri_For_LowIF()\0A\00", align 1
@VRT_SET_REGISTER = common dso_local global i32 0, align 4
@PWR_CTL_EN = common dso_local global i32 0, align 4
@AFE_MODE_LOW_IF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"colibri_carrier_offset=%d, standard=0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx231xx_set_Colibri_For_LowIF(%struct.cx231xx* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.cx231xx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [4 x i64], align 16
  store %struct.cx231xx* %0, %struct.cx231xx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %13 = bitcast [4 x i64]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 32, i1 false)
  %14 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %15 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i32, i8*, ...) @dev_dbg(i32 %16, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %18 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  store i64 111, i64* %18, align 16
  %19 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 1
  store i64 111, i64* %19, align 8
  %20 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 2
  store i64 111, i64* %20, align 16
  %21 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 3
  store i64 111, i64* %21, align 8
  %22 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %23 = load i32, i32* @VRT_SET_REGISTER, align 4
  %24 = load i32, i32* @PWR_CTL_EN, align 4
  %25 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  %26 = call i32 @cx231xx_write_ctrl_reg(%struct.cx231xx* %22, i32 %23, i32 %24, i64* %25, i32 4)
  %27 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %28 = load i32, i32* @AFE_MODE_LOW_IF, align 4
  %29 = call i32 @cx231xx_afe_set_mode(%struct.cx231xx* %27, i32 %28)
  %30 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %31 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %11, align 4
  %33 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %34 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %35 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @cx231xx_dif_configure_C2HH_for_low_IF(%struct.cx231xx* %33, i32 %36, i32 %37, i32 %38)
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @cx231xx_Get_Colibri_CarrierOffset(i32 %40, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %44 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i32 (i32, i8*, ...) @dev_dbg(i32 %45, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %47)
  %49 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %50, %51
  %53 = load i64, i64* %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @cx231xx_set_DIF_bandpass(%struct.cx231xx* %49, i32 %52, i64 %53, i32 %54)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #2

declare dso_local i32 @cx231xx_write_ctrl_reg(%struct.cx231xx*, i32, i32, i64*, i32) #2

declare dso_local i32 @cx231xx_afe_set_mode(%struct.cx231xx*, i32) #2

declare dso_local i32 @cx231xx_dif_configure_C2HH_for_low_IF(%struct.cx231xx*, i32, i32, i32) #2

declare dso_local i32 @cx231xx_Get_Colibri_CarrierOffset(i32, i32) #2

declare dso_local i32 @cx231xx_set_DIF_bandpass(%struct.cx231xx*, i32, i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
