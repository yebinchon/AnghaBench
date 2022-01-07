; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_pch_phub.c_pch_phub_bin_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_pch_phub.c_pch_phub_bin_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i32 }
%struct.pch_phub_reg = type { i64, i32, i32 }

@pch_phub_mutex = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@PCH_PHUB_OROM_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @pch_phub_bin_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pch_phub_bin_write(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.kobject*, align 8
  %10 = alloca %struct.bin_attribute*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.pch_phub_reg*, align 8
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.kobject* %1, %struct.kobject** %9, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %19 = load %struct.kobject*, %struct.kobject** %9, align 8
  %20 = call i32 @kobj_to_dev(%struct.kobject* %19)
  %21 = call %struct.pch_phub_reg* @dev_get_drvdata(i32 %20)
  store %struct.pch_phub_reg* %21, %struct.pch_phub_reg** %18, align 8
  %22 = call i32 @mutex_lock_interruptible(i32* @pch_phub_mutex)
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* %16, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %6
  %26 = load i32, i32* @ERESTARTSYS, align 4
  %27 = sub i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %112

28:                                               ; preds = %6
  %29 = load i64, i64* %12, align 8
  %30 = load i64, i64* @PCH_PHUB_OROM_SIZE, align 8
  %31 = icmp ugt i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 0, i32* %15, align 4
  br label %91

33:                                               ; preds = %28
  %34 = load i64, i64* %13, align 8
  %35 = load i64, i64* @PCH_PHUB_OROM_SIZE, align 8
  %36 = icmp ugt i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 0, i32* %15, align 4
  br label %91

38:                                               ; preds = %33
  %39 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %18, align 8
  %40 = getelementptr inbounds %struct.pch_phub_reg, %struct.pch_phub_reg* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @pci_map_rom(i32 %41, i32* %17)
  %43 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %18, align 8
  %44 = getelementptr inbounds %struct.pch_phub_reg, %struct.pch_phub_reg* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %18, align 8
  %46 = getelementptr inbounds %struct.pch_phub_reg, %struct.pch_phub_reg* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %38
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %14, align 4
  br label %109

52:                                               ; preds = %38
  store i32 0, i32* %15, align 4
  br label %53

53:                                               ; preds = %87, %52
  %54 = load i32, i32* %15, align 4
  %55 = zext i32 %54 to i64
  %56 = load i64, i64* %13, align 8
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %58, label %90

58:                                               ; preds = %53
  %59 = load i64, i64* @PCH_PHUB_OROM_SIZE, align 8
  %60 = load i64, i64* %12, align 8
  %61 = load i32, i32* %15, align 4
  %62 = zext i32 %61 to i64
  %63 = add i64 %60, %62
  %64 = icmp ult i64 %59, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %91

66:                                               ; preds = %58
  %67 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %18, align 8
  %68 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %18, align 8
  %69 = getelementptr inbounds %struct.pch_phub_reg, %struct.pch_phub_reg* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %15, align 4
  %72 = zext i32 %71 to i64
  %73 = add i64 %70, %72
  %74 = load i64, i64* %12, align 8
  %75 = add i64 %73, %74
  %76 = load i8*, i8** %11, align 8
  %77 = load i32, i32* %15, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = call i32 @pch_phub_write_serial_rom(%struct.pch_phub_reg* %67, i64 %75, i8 signext %80)
  store i32 %81, i32* %16, align 4
  %82 = load i32, i32* %16, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %66
  %85 = load i32, i32* %16, align 4
  store i32 %85, i32* %14, align 4
  br label %101

86:                                               ; preds = %66
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %15, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %15, align 4
  br label %53

90:                                               ; preds = %53
  br label %91

91:                                               ; preds = %90, %65, %37, %32
  %92 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %18, align 8
  %93 = getelementptr inbounds %struct.pch_phub_reg, %struct.pch_phub_reg* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %18, align 8
  %96 = getelementptr inbounds %struct.pch_phub_reg, %struct.pch_phub_reg* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @pci_unmap_rom(i32 %94, i32 %97)
  %99 = call i32 @mutex_unlock(i32* @pch_phub_mutex)
  %100 = load i32, i32* %15, align 4
  store i32 %100, i32* %7, align 4
  br label %112

101:                                              ; preds = %84
  %102 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %18, align 8
  %103 = getelementptr inbounds %struct.pch_phub_reg, %struct.pch_phub_reg* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %18, align 8
  %106 = getelementptr inbounds %struct.pch_phub_reg, %struct.pch_phub_reg* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @pci_unmap_rom(i32 %104, i32 %107)
  br label %109

109:                                              ; preds = %101, %49
  %110 = call i32 @mutex_unlock(i32* @pch_phub_mutex)
  %111 = load i32, i32* %14, align 4
  store i32 %111, i32* %7, align 4
  br label %112

112:                                              ; preds = %109, %91, %25
  %113 = load i32, i32* %7, align 4
  ret i32 %113
}

declare dso_local %struct.pch_phub_reg* @dev_get_drvdata(i32) #1

declare dso_local i32 @kobj_to_dev(%struct.kobject*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @pci_map_rom(i32, i32*) #1

declare dso_local i32 @pch_phub_write_serial_rom(%struct.pch_phub_reg*, i64, i8 signext) #1

declare dso_local i32 @pci_unmap_rom(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
