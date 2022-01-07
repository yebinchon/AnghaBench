; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_console.c_octeon_console_send_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_console.c_octeon_console_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"sending \22%s\22 to bootloader\0A\00", align 1
@BOOTLOADER_PCI_WRITE_BUFFER_STR_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Command string too long, max length is: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Bootloader not ready for command.\0A\00", align 1
@BOOTLOADER_PCI_READ_BUFFER_DATA_ADDR = common dso_local global i32 0, align 4
@BOOTLOADER_PCI_READ_BUFFER_LEN_ADDR = common dso_local global i32 0, align 4
@BOOTLOADER_PCI_READ_BUFFER_OWNER_ADDR = common dso_local global i32 0, align 4
@OCTEON_PCI_IO_BUF_OWNER_OCTEON = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Bootloader did not accept command.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @octeon_console_send_cmd(%struct.octeon_device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.octeon_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = call i32 @strlen(i8* %9)
  store i32 %10, i32* %8, align 4
  %11 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %12 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @dev_dbg(i32* %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @BOOTLOADER_PCI_WRITE_BUFFER_STR_LEN, align 4
  %19 = sub nsw i32 %18, 1
  %20 = icmp sgt i32 %17, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %3
  %22 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %23 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* @BOOTLOADER_PCI_WRITE_BUFFER_STR_LEN, align 4
  %27 = sub nsw i32 %26, 1
  %28 = call i32 (i32*, i8*, ...) @dev_err(i32* %25, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  store i32 -1, i32* %4, align 4
  br label %68

29:                                               ; preds = %3
  %30 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i64 @octeon_wait_for_bootloader(%struct.octeon_device* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %36 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 (i32*, i8*, ...) @dev_err(i32* %38, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %68

40:                                               ; preds = %29
  %41 = call i32 (...) @octeon_remote_lock()
  %42 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %43 = load i32, i32* @BOOTLOADER_PCI_READ_BUFFER_DATA_ADDR, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = bitcast i8* %44 to i32*
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @octeon_pci_write_core_mem(%struct.octeon_device* %42, i32 %43, i32* %45, i32 %46)
  %48 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %49 = load i32, i32* @BOOTLOADER_PCI_READ_BUFFER_LEN_ADDR, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @octeon_write_device_mem32(%struct.octeon_device* %48, i32 %49, i32 %50)
  %52 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %53 = load i32, i32* @BOOTLOADER_PCI_READ_BUFFER_OWNER_ADDR, align 4
  %54 = load i32, i32* @OCTEON_PCI_IO_BUF_OWNER_OCTEON, align 4
  %55 = call i32 @octeon_write_device_mem32(%struct.octeon_device* %52, i32 %53, i32 %54)
  %56 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %57 = call i64 @octeon_wait_for_bootloader(%struct.octeon_device* %56, i32 200)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %40
  %60 = call i32 (...) @octeon_remote_unlock()
  %61 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %62 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = call i32 (i32*, i8*, ...) @dev_err(i32* %64, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %68

66:                                               ; preds = %40
  %67 = call i32 (...) @octeon_remote_unlock()
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %66, %59, %34, %21
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i64 @octeon_wait_for_bootloader(%struct.octeon_device*, i32) #1

declare dso_local i32 @octeon_remote_lock(...) #1

declare dso_local i32 @octeon_pci_write_core_mem(%struct.octeon_device*, i32, i32*, i32) #1

declare dso_local i32 @octeon_write_device_mem32(%struct.octeon_device*, i32, i32) #1

declare dso_local i32 @octeon_remote_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
