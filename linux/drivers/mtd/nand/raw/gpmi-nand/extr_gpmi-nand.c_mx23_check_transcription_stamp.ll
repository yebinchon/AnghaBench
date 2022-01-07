; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_mx23_check_transcription_stamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_mx23_check_transcription_stamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpmi_nand_data = type { %struct.nand_chip, %struct.device*, %struct.boot_rom_geometry }
%struct.nand_chip = type { i32 }
%struct.device = type { i32 }
%struct.boot_rom_geometry = type { i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"Scanning for an NCB fingerprint...\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Looking for a fingerprint in page 0x%x\0A\00", align 1
@fingerprint = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"\09Found a fingerprint\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"\09No fingerprint found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpmi_nand_data*)* @mx23_check_transcription_stamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mx23_check_transcription_stamp(%struct.gpmi_nand_data* %0) #0 {
  %2 = alloca %struct.gpmi_nand_data*, align 8
  %3 = alloca %struct.boot_rom_geometry*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gpmi_nand_data* %0, %struct.gpmi_nand_data** %2, align 8
  %12 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %2, align 8
  %13 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %12, i32 0, i32 2
  store %struct.boot_rom_geometry* %13, %struct.boot_rom_geometry** %3, align 8
  %14 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %2, align 8
  %15 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %14, i32 0, i32 1
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %4, align 8
  %17 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %2, align 8
  %18 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %17, i32 0, i32 0
  store %struct.nand_chip* %18, %struct.nand_chip** %5, align 8
  %19 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %20 = call i32* @nand_get_data_buf(%struct.nand_chip* %19)
  store i32* %20, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %21 = load %struct.boot_rom_geometry*, %struct.boot_rom_geometry** %3, align 8
  %22 = getelementptr inbounds %struct.boot_rom_geometry, %struct.boot_rom_geometry* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 1, %23
  store i32 %24, i32* %6, align 4
  %25 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %26 = call i32 @nand_select_target(%struct.nand_chip* %25, i32 0)
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %27, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %60, %1
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %63

33:                                               ; preds = %29
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.boot_rom_geometry*, %struct.boot_rom_geometry** %3, align 8
  %36 = getelementptr inbounds %struct.boot_rom_geometry, %struct.boot_rom_geometry* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = mul i32 %34, %37
  store i32 %38, i32* %8, align 4
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %39, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* @fingerprint, align 4
  %46 = call i32 @strlen(i32 %45)
  %47 = call i32 @nand_read_page_op(%struct.nand_chip* %42, i32 %43, i32 12, i32* %44, i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %33
  br label %60

51:                                               ; preds = %33
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* @fingerprint, align 4
  %54 = load i32, i32* @fingerprint, align 4
  %55 = call i32 @strlen(i32 %54)
  %56 = call i32 @memcmp(i32* %52, i32 %53, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %51
  store i32 1, i32* %10, align 4
  br label %63

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59, %50
  %61 = load i32, i32* %7, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %29

63:                                               ; preds = %58, %29
  %64 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %65 = call i32 @nand_deselect_target(%struct.nand_chip* %64)
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load %struct.device*, %struct.device** %4, align 8
  %70 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %69, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %74

71:                                               ; preds = %63
  %72 = load %struct.device*, %struct.device** %4, align 8
  %73 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %72, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i32, i32* %10, align 4
  ret i32 %75
}

declare dso_local i32* @nand_get_data_buf(%struct.nand_chip*) #1

declare dso_local i32 @nand_select_target(%struct.nand_chip*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @nand_read_page_op(%struct.nand_chip*, i32, i32, i32*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @nand_deselect_target(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
