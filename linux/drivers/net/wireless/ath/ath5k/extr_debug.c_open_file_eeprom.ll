; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_debug.c_open_file_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_debug.c_open_file_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.ath5k_hw* }
%struct.ath5k_hw = type { i32 }
%struct.file = type { i8* }
%struct.eeprom_private = type { i32*, i32 }

@AR5K_EEPROM_SIZE_UPPER = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@AR5K_EEPROM_INFO_MAX = common dso_local global i32 0, align 4
@AR5K_EEPROM_INFO_BASE = common dso_local global i32 0, align 4
@AR5K_EEPROM_SIZE_UPPER_MASK = common dso_local global i32 0, align 4
@AR5K_EEPROM_SIZE_ENDLOC_SHIFT = common dso_local global i32 0, align 4
@AR5K_EEPROM_SIZE_LOWER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @open_file_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_file_eeprom(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.eeprom_private*, align 8
  %7 = alloca %struct.ath5k_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load %struct.ath5k_hw*, %struct.ath5k_hw** %15, align 8
  store %struct.ath5k_hw* %16, %struct.ath5k_hw** %7, align 8
  %17 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %18 = load i32, i32* @AR5K_EEPROM_SIZE_UPPER, align 4
  %19 = call i32 @ath5k_hw_nvram_read(%struct.ath5k_hw* %17, i32 %18, i32* %12)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @EACCES, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %106

25:                                               ; preds = %2
  %26 = load i32, i32* %12, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i32, i32* @AR5K_EEPROM_INFO_MAX, align 4
  %30 = load i32, i32* @AR5K_EEPROM_INFO_BASE, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %11, align 4
  br label %44

32:                                               ; preds = %25
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @AR5K_EEPROM_SIZE_UPPER_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @AR5K_EEPROM_SIZE_ENDLOC_SHIFT, align 4
  %37 = shl i32 %35, %36
  store i32 %37, i32* %11, align 4
  %38 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %39 = load i32, i32* @AR5K_EEPROM_SIZE_LOWER, align 4
  %40 = call i32 @ath5k_hw_nvram_read(%struct.ath5k_hw* %38, i32 %39, i32* %12)
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %12, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %32, %28
  %45 = load i32, i32* %11, align 4
  %46 = icmp sgt i32 %45, 4096
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %106

50:                                               ; preds = %44
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @array_size(i32 %51, i32 2)
  %53 = call i32* @vmalloc(i32 %52)
  store i32* %53, i32** %13, align 8
  %54 = load i32*, i32** %13, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %10, align 4
  br label %104

59:                                               ; preds = %50
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %78, %59
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %81

64:                                               ; preds = %60
  %65 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @ath5k_hw_nvram_read(%struct.ath5k_hw* %65, i32 %66, i32* %12)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* @EIO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %10, align 4
  br label %101

72:                                               ; preds = %64
  %73 = load i32, i32* %12, align 4
  %74 = load i32*, i32** %13, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %73, i32* %77, align 4
  br label %78

78:                                               ; preds = %72
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %9, align 4
  br label %60

81:                                               ; preds = %60
  %82 = load i32, i32* @GFP_KERNEL, align 4
  %83 = call %struct.eeprom_private* @kmalloc(i32 16, i32 %82)
  store %struct.eeprom_private* %83, %struct.eeprom_private** %6, align 8
  %84 = load %struct.eeprom_private*, %struct.eeprom_private** %6, align 8
  %85 = icmp ne %struct.eeprom_private* %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %81
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %10, align 4
  br label %101

89:                                               ; preds = %81
  %90 = load i32*, i32** %13, align 8
  %91 = load %struct.eeprom_private*, %struct.eeprom_private** %6, align 8
  %92 = getelementptr inbounds %struct.eeprom_private, %struct.eeprom_private* %91, i32 0, i32 0
  store i32* %90, i32** %92, align 8
  %93 = load i32, i32* %11, align 4
  %94 = mul nsw i32 %93, 2
  %95 = load %struct.eeprom_private*, %struct.eeprom_private** %6, align 8
  %96 = getelementptr inbounds %struct.eeprom_private, %struct.eeprom_private* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 8
  %97 = load %struct.eeprom_private*, %struct.eeprom_private** %6, align 8
  %98 = bitcast %struct.eeprom_private* %97 to i8*
  %99 = load %struct.file*, %struct.file** %5, align 8
  %100 = getelementptr inbounds %struct.file, %struct.file* %99, i32 0, i32 0
  store i8* %98, i8** %100, align 8
  store i32 0, i32* %3, align 4
  br label %106

101:                                              ; preds = %86, %69
  %102 = load i32*, i32** %13, align 8
  %103 = call i32 @vfree(i32* %102)
  br label %104

104:                                              ; preds = %101, %56
  %105 = load i32, i32* %10, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %104, %89, %47, %22
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @ath5k_hw_nvram_read(%struct.ath5k_hw*, i32, i32*) #1

declare dso_local i32* @vmalloc(i32) #1

declare dso_local i32 @array_size(i32, i32) #1

declare dso_local %struct.eeprom_private* @kmalloc(i32, i32) #1

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
