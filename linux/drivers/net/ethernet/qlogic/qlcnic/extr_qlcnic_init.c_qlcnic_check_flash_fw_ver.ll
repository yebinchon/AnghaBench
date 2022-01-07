; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_init.c_qlcnic_check_flash_fw_ver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_init.c_qlcnic_check_flash_fw_ver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.qlcnic_flt_entry = type { i64 }

@QLCNIC_P3P_C0 = common dso_local global i64 0, align 8
@QLCNIC_C0_FW_IMAGE_REGION = common dso_local global i32 0, align 4
@QLCNIC_B0_FW_IMAGE_REGION = common dso_local global i32 0, align 4
@QLCNIC_FW_VERSION_OFFSET = common dso_local global i64 0, align 8
@QLCNIC_MIN_FW_VERSION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [70 x i8] c"firmware version %d.%d.%d unsupported.Min supported version %d.%d.%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_check_flash_fw_ver(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca %struct.qlcnic_flt_entry, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  store i64 -1, i64* %5, align 8
  %8 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @QLCNIC_P3P_C0, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %17 = load i32, i32* @QLCNIC_C0_FW_IMAGE_REGION, align 4
  %18 = call i32 @qlcnic_get_flt_entry(%struct.qlcnic_adapter* %16, i32 %17, %struct.qlcnic_flt_entry* %4)
  store i32 %18, i32* %7, align 4
  br label %23

19:                                               ; preds = %1
  %20 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %21 = load i32, i32* @QLCNIC_B0_FW_IMAGE_REGION, align 4
  %22 = call i32 @qlcnic_get_flt_entry(%struct.qlcnic_adapter* %20, i32 %21, %struct.qlcnic_flt_entry* %4)
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %19, %15
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %23
  %27 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %28 = getelementptr inbounds %struct.qlcnic_flt_entry, %struct.qlcnic_flt_entry* %4, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 4
  %31 = bitcast i64* %5 to i32*
  %32 = call i32 @qlcnic_rom_fast_read(%struct.qlcnic_adapter* %27, i64 %30, i32* %31)
  br label %38

33:                                               ; preds = %23
  %34 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %35 = load i64, i64* @QLCNIC_FW_VERSION_OFFSET, align 8
  %36 = bitcast i64* %5 to i32*
  %37 = call i32 @qlcnic_rom_fast_read(%struct.qlcnic_adapter* %34, i64 %35, i32* %36)
  br label %38

38:                                               ; preds = %33, %26
  %39 = load i64, i64* %5, align 8
  %40 = call i64 @QLCNIC_DECODE_VERSION(i64 %39)
  store i64 %40, i64* %5, align 8
  %41 = load i64, i64* @QLCNIC_MIN_FW_VERSION, align 8
  store i64 %41, i64* %6, align 8
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* %6, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %65

45:                                               ; preds = %38
  %46 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %47 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @_major(i64 %50)
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @_minor(i64 %52)
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @_build(i64 %54)
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @_major(i64 %56)
  %58 = load i64, i64* %6, align 8
  %59 = call i32 @_minor(i64 %58)
  %60 = load i64, i64* %6, align 8
  %61 = call i32 @_build(i64 %60)
  %62 = call i32 @dev_err(i32* %49, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %53, i32 %55, i32 %57, i32 %59, i32 %61)
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %66

65:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %45
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @qlcnic_get_flt_entry(%struct.qlcnic_adapter*, i32, %struct.qlcnic_flt_entry*) #1

declare dso_local i32 @qlcnic_rom_fast_read(%struct.qlcnic_adapter*, i64, i32*) #1

declare dso_local i64 @QLCNIC_DECODE_VERSION(i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @_major(i64) #1

declare dso_local i32 @_minor(i64) #1

declare dso_local i32 @_build(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
