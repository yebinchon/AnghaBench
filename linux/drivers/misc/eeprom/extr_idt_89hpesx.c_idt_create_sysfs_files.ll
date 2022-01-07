; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_idt_89hpesx.c_idt_create_sysfs_files.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_idt_89hpesx.c_idt_create_sysfs_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt_89hpesx_dev = type { i64, %struct.TYPE_8__*, i64, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i64, i32*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Skip creating sysfs-files\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bin_attr_eeprom = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to create EEPROM sysfs-node\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idt_89hpesx_dev*)* @idt_create_sysfs_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idt_create_sysfs_files(%struct.idt_89hpesx_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.idt_89hpesx_dev*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.idt_89hpesx_dev* %0, %struct.idt_89hpesx_dev** %3, align 8
  %6 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %3, align 8
  %7 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %6, i32 0, i32 3
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %3, align 8
  %11 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call i32 @dev_dbg(%struct.device* %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %72

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.TYPE_8__* @devm_kmalloc(%struct.device* %18, i32 24, i32 %19)
  %21 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %3, align 8
  %22 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %21, i32 0, i32 1
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %22, align 8
  %23 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %3, align 8
  %24 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %23, i32 0, i32 1
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = icmp ne %struct.TYPE_8__* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %17
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %72

30:                                               ; preds = %17
  %31 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %3, align 8
  %32 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %31, i32 0, i32 1
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = call i32 @memcpy(%struct.TYPE_8__* %33, i32* @bin_attr_eeprom, i32 24)
  %35 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %3, align 8
  %36 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %30
  %40 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %3, align 8
  %41 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %40, i32 0, i32 1
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, -129
  store i32 %46, i32* %44, align 8
  %47 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %3, align 8
  %48 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %47, i32 0, i32 1
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  store i32* null, i32** %50, align 8
  br label %51

51:                                               ; preds = %39, %30
  %52 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %3, align 8
  %53 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %3, align 8
  %56 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %55, i32 0, i32 1
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  store i64 %54, i64* %58, align 8
  %59 = load %struct.device*, %struct.device** %4, align 8
  %60 = getelementptr inbounds %struct.device, %struct.device* %59, i32 0, i32 0
  %61 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %3, align 8
  %62 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %61, i32 0, i32 1
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = call i32 @sysfs_create_bin_file(i32* %60, %struct.TYPE_8__* %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %51
  %68 = load %struct.device*, %struct.device** %4, align 8
  %69 = call i32 @dev_err(%struct.device* %68, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i32, i32* %5, align 4
  store i32 %70, i32* %2, align 4
  br label %72

71:                                               ; preds = %51
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %67, %27, %14
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local %struct.TYPE_8__* @devm_kmalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @sysfs_create_bin_file(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
