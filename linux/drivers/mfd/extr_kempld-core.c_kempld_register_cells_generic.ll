; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_kempld-core.c_kempld_register_cells_generic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_kempld-core.c_kempld_register_cells_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfd_cell = type { i32 }
%struct.kempld_device_data = type { i32, i32 }

@KEMPLD_MAX_DEVS = common dso_local global i32 0, align 4
@KEMPLD_FEATURE_BIT_I2C = common dso_local global i32 0, align 4
@kempld_devs = common dso_local global %struct.mfd_cell* null, align 8
@KEMPLD_I2C = common dso_local global i64 0, align 8
@KEMPLD_FEATURE_BIT_WATCHDOG = common dso_local global i32 0, align 4
@KEMPLD_WDT = common dso_local global i64 0, align 8
@KEMPLD_FEATURE_BIT_GPIO = common dso_local global i32 0, align 4
@KEMPLD_GPIO = common dso_local global i64 0, align 8
@KEMPLD_FEATURE_MASK_UART = common dso_local global i32 0, align 4
@KEMPLD_UART = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kempld_device_data*)* @kempld_register_cells_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kempld_register_cells_generic(%struct.kempld_device_data* %0) #0 {
  %2 = alloca %struct.kempld_device_data*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.kempld_device_data* %0, %struct.kempld_device_data** %2, align 8
  %6 = load i32, i32* @KEMPLD_MAX_DEVS, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca %struct.mfd_cell, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.kempld_device_data*, %struct.kempld_device_data** %2, align 8
  %11 = getelementptr inbounds %struct.kempld_device_data, %struct.kempld_device_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @KEMPLD_FEATURE_BIT_I2C, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %5, align 4
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %9, i64 %19
  %21 = load %struct.mfd_cell*, %struct.mfd_cell** @kempld_devs, align 8
  %22 = load i64, i64* @KEMPLD_I2C, align 8
  %23 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %21, i64 %22
  %24 = bitcast %struct.mfd_cell* %20 to i8*
  %25 = bitcast %struct.mfd_cell* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 %25, i64 4, i1 false)
  br label %26

26:                                               ; preds = %16, %1
  %27 = load %struct.kempld_device_data*, %struct.kempld_device_data** %2, align 8
  %28 = getelementptr inbounds %struct.kempld_device_data, %struct.kempld_device_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @KEMPLD_FEATURE_BIT_WATCHDOG, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %26
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %9, i64 %36
  %38 = load %struct.mfd_cell*, %struct.mfd_cell** @kempld_devs, align 8
  %39 = load i64, i64* @KEMPLD_WDT, align 8
  %40 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %38, i64 %39
  %41 = bitcast %struct.mfd_cell* %37 to i8*
  %42 = bitcast %struct.mfd_cell* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %42, i64 4, i1 false)
  br label %43

43:                                               ; preds = %33, %26
  %44 = load %struct.kempld_device_data*, %struct.kempld_device_data** %2, align 8
  %45 = getelementptr inbounds %struct.kempld_device_data, %struct.kempld_device_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @KEMPLD_FEATURE_BIT_GPIO, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %43
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %9, i64 %53
  %55 = load %struct.mfd_cell*, %struct.mfd_cell** @kempld_devs, align 8
  %56 = load i64, i64* @KEMPLD_GPIO, align 8
  %57 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %55, i64 %56
  %58 = bitcast %struct.mfd_cell* %54 to i8*
  %59 = bitcast %struct.mfd_cell* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %58, i8* align 4 %59, i64 4, i1 false)
  br label %60

60:                                               ; preds = %50, %43
  %61 = load %struct.kempld_device_data*, %struct.kempld_device_data** %2, align 8
  %62 = getelementptr inbounds %struct.kempld_device_data, %struct.kempld_device_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @KEMPLD_FEATURE_MASK_UART, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %60
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %9, i64 %70
  %72 = load %struct.mfd_cell*, %struct.mfd_cell** @kempld_devs, align 8
  %73 = load i64, i64* @KEMPLD_UART, align 8
  %74 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %72, i64 %73
  %75 = bitcast %struct.mfd_cell* %71 to i8*
  %76 = bitcast %struct.mfd_cell* %74 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %75, i8* align 4 %76, i64 4, i1 false)
  br label %77

77:                                               ; preds = %67, %60
  %78 = load %struct.kempld_device_data*, %struct.kempld_device_data** %2, align 8
  %79 = getelementptr inbounds %struct.kempld_device_data, %struct.kempld_device_data* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @mfd_add_devices(i32 %80, i32 -1, %struct.mfd_cell* %9, i32 %81, i32* null, i32 0, i32* null)
  %83 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %83)
  ret i32 %82
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mfd_add_devices(i32, i32, %struct.mfd_cell*, i32, i32*, i32, i32*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
