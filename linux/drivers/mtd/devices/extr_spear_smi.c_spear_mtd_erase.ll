; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_spear_smi.c_spear_mtd_erase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_spear_smi.c_spear_mtd_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64, %struct.spear_smi* }
%struct.spear_smi = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.erase_info = type { i32, i32 }
%struct.spear_snor_flash = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Invalid Bank Num\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.erase_info*)* @spear_mtd_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spear_mtd_erase(%struct.mtd_info* %0, %struct.erase_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca %struct.erase_info*, align 8
  %6 = alloca %struct.spear_snor_flash*, align 8
  %7 = alloca %struct.spear_smi*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store %struct.erase_info* %1, %struct.erase_info** %5, align 8
  %13 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %14 = call %struct.spear_snor_flash* @get_flash_data(%struct.mtd_info* %13)
  store %struct.spear_snor_flash* %14, %struct.spear_snor_flash** %6, align 8
  %15 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %16 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %15, i32 0, i32 1
  %17 = load %struct.spear_smi*, %struct.spear_smi** %16, align 8
  store %struct.spear_smi* %17, %struct.spear_smi** %7, align 8
  %18 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %6, align 8
  %19 = icmp ne %struct.spear_snor_flash* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.spear_smi*, %struct.spear_smi** %7, align 8
  %22 = icmp ne %struct.spear_smi* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20, %2
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %91

26:                                               ; preds = %20
  %27 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %6, align 8
  %28 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.spear_smi*, %struct.spear_smi** %7, align 8
  %32 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sub nsw i32 %33, 1
  %35 = icmp sgt i32 %30, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %26
  %37 = load %struct.spear_smi*, %struct.spear_smi** %7, align 8
  %38 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 @dev_err(i32* %40, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %91

44:                                               ; preds = %26
  %45 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %46 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %8, align 4
  %48 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %49 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %11, align 4
  %51 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %6, align 8
  %52 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %51, i32 0, i32 1
  %53 = call i32 @mutex_lock(i32* %52)
  br label %54

54:                                               ; preds = %72, %44
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %87

57:                                               ; preds = %54
  %58 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %6, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @get_sector_erase_cmd(%struct.spear_snor_flash* %58, i32 %59)
  store i32 %60, i32* %9, align 4
  %61 = load %struct.spear_smi*, %struct.spear_smi** %7, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @spear_smi_erase_sector(%struct.spear_smi* %61, i32 %62, i32 %63, i32 4)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %57
  %68 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %6, align 8
  %69 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %68, i32 0, i32 1
  %70 = call i32 @mutex_unlock(i32* %69)
  %71 = load i32, i32* %12, align 4
  store i32 %71, i32* %3, align 4
  br label %91

72:                                               ; preds = %57
  %73 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %74 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %77, %75
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %8, align 4
  %80 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %81 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = sub nsw i64 %84, %82
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %11, align 4
  br label %54

87:                                               ; preds = %54
  %88 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %6, align 8
  %89 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %88, i32 0, i32 1
  %90 = call i32 @mutex_unlock(i32* %89)
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %87, %67, %36, %23
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local %struct.spear_snor_flash* @get_flash_data(%struct.mtd_info*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @get_sector_erase_cmd(%struct.spear_snor_flash*, i32) #1

declare dso_local i32 @spear_smi_erase_sector(%struct.spear_smi*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
