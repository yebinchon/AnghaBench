; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_pch_phub.c_pch_phub_bin_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_pch_phub.c_pch_phub_bin_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i32 }
%struct.pch_phub_reg = type { i32, i32, i64 }

@pch_phub_mutex = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i32, i64)* @pch_phub_bin_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pch_phub_bin_read(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.kobject*, align 8
  %10 = alloca %struct.bin_attribute*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.pch_phub_reg*, align 8
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.kobject* %1, %struct.kobject** %9, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %23 = load %struct.kobject*, %struct.kobject** %9, align 8
  %24 = call i32 @kobj_to_dev(%struct.kobject* %23)
  %25 = call %struct.pch_phub_reg* @dev_get_drvdata(i32 %24)
  store %struct.pch_phub_reg* %25, %struct.pch_phub_reg** %22, align 8
  %26 = call i32 @mutex_lock_interruptible(i32* @pch_phub_mutex)
  store i32 %26, i32* %19, align 4
  %27 = load i32, i32* %19, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %6
  %30 = load i32, i32* @ERESTARTSYS, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %20, align 4
  br label %139

32:                                               ; preds = %6
  %33 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %22, align 8
  %34 = getelementptr inbounds %struct.pch_phub_reg, %struct.pch_phub_reg* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @pci_map_rom(i32 %35, i32* %21)
  %37 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %22, align 8
  %38 = getelementptr inbounds %struct.pch_phub_reg, %struct.pch_phub_reg* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %22, align 8
  %40 = getelementptr inbounds %struct.pch_phub_reg, %struct.pch_phub_reg* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %32
  %44 = load i32, i32* @ENODATA, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %20, align 4
  br label %137

46:                                               ; preds = %32
  %47 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %22, align 8
  %48 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %22, align 8
  %49 = getelementptr inbounds %struct.pch_phub_reg, %struct.pch_phub_reg* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = bitcast i32* %14 to i8*
  %52 = call i32 (%struct.pch_phub_reg*, i64, ...) @pch_phub_read_serial_rom(%struct.pch_phub_reg* %47, i64 %50, i8* %51)
  %53 = load i32, i32* %14, align 4
  %54 = and i32 %53, 255
  store i32 %54, i32* %14, align 4
  %55 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %22, align 8
  %56 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %22, align 8
  %57 = getelementptr inbounds %struct.pch_phub_reg, %struct.pch_phub_reg* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 1
  %60 = bitcast i32* %16 to i8*
  %61 = call i32 (%struct.pch_phub_reg*, i64, ...) @pch_phub_read_serial_rom(%struct.pch_phub_reg* %55, i64 %59, i8* %60)
  %62 = load i32, i32* %16, align 4
  %63 = and i32 %62, 255
  %64 = shl i32 %63, 8
  %65 = load i32, i32* %14, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %14, align 4
  %68 = icmp eq i32 %67, 43605
  br i1 %68, label %69, label %115

69:                                               ; preds = %46
  %70 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %22, align 8
  %71 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %22, align 8
  %72 = getelementptr inbounds %struct.pch_phub_reg, %struct.pch_phub_reg* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, 2
  %75 = call i32 (%struct.pch_phub_reg*, i64, ...) @pch_phub_read_serial_rom(%struct.pch_phub_reg* %70, i64 %74, i8* %15)
  %76 = load i8, i8* %15, align 1
  %77 = zext i8 %76 to i32
  %78 = mul nsw i32 %77, 512
  store i32 %78, i32* %18, align 4
  %79 = load i32, i32* %18, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp ult i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %69
  store i32 0, i32* %17, align 4
  br label %119

83:                                               ; preds = %69
  %84 = load i32, i32* %18, align 4
  %85 = zext i32 %84 to i64
  %86 = load i64, i64* %13, align 8
  %87 = icmp ult i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  store i32 0, i32* %17, align 4
  br label %119

89:                                               ; preds = %83
  store i32 0, i32* %17, align 4
  br label %90

90:                                               ; preds = %111, %89
  %91 = load i32, i32* %17, align 4
  %92 = zext i32 %91 to i64
  %93 = load i64, i64* %13, align 8
  %94 = icmp ult i64 %92, %93
  br i1 %94, label %95, label %114

95:                                               ; preds = %90
  %96 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %22, align 8
  %97 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %22, align 8
  %98 = getelementptr inbounds %struct.pch_phub_reg, %struct.pch_phub_reg* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* %17, align 4
  %101 = zext i32 %100 to i64
  %102 = add nsw i64 %99, %101
  %103 = load i32, i32* %12, align 4
  %104 = zext i32 %103 to i64
  %105 = add nsw i64 %102, %104
  %106 = load i8*, i8** %11, align 8
  %107 = load i32, i32* %17, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  %110 = call i32 (%struct.pch_phub_reg*, i64, ...) @pch_phub_read_serial_rom(%struct.pch_phub_reg* %96, i64 %105, i8* %109)
  br label %111

111:                                              ; preds = %95
  %112 = load i32, i32* %17, align 4
  %113 = add i32 %112, 1
  store i32 %113, i32* %17, align 4
  br label %90

114:                                              ; preds = %90
  br label %118

115:                                              ; preds = %46
  %116 = load i32, i32* @ENODATA, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %20, align 4
  br label %129

118:                                              ; preds = %114
  br label %119

119:                                              ; preds = %118, %88, %82
  %120 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %22, align 8
  %121 = getelementptr inbounds %struct.pch_phub_reg, %struct.pch_phub_reg* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %22, align 8
  %124 = getelementptr inbounds %struct.pch_phub_reg, %struct.pch_phub_reg* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @pci_unmap_rom(i32 %122, i32 %125)
  %127 = call i32 @mutex_unlock(i32* @pch_phub_mutex)
  %128 = load i32, i32* %17, align 4
  store i32 %128, i32* %7, align 4
  br label %141

129:                                              ; preds = %115
  %130 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %22, align 8
  %131 = getelementptr inbounds %struct.pch_phub_reg, %struct.pch_phub_reg* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %22, align 8
  %134 = getelementptr inbounds %struct.pch_phub_reg, %struct.pch_phub_reg* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @pci_unmap_rom(i32 %132, i32 %135)
  br label %137

137:                                              ; preds = %129, %43
  %138 = call i32 @mutex_unlock(i32* @pch_phub_mutex)
  br label %139

139:                                              ; preds = %137, %29
  %140 = load i32, i32* %20, align 4
  store i32 %140, i32* %7, align 4
  br label %141

141:                                              ; preds = %139, %119
  %142 = load i32, i32* %7, align 4
  ret i32 %142
}

declare dso_local %struct.pch_phub_reg* @dev_get_drvdata(i32) #1

declare dso_local i32 @kobj_to_dev(%struct.kobject*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @pci_map_rom(i32, i32*) #1

declare dso_local i32 @pch_phub_read_serial_rom(%struct.pch_phub_reg*, i64, ...) #1

declare dso_local i32 @pci_unmap_rom(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
