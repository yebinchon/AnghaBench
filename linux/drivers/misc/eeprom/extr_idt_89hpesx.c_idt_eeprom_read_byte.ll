; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_idt_89hpesx.c_idt_eeprom_read_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_idt_89hpesx.c_idt_eeprom_read_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt_89hpesx_dev = type { i32, i32, i32 (%struct.idt_89hpesx_dev*, %struct.idt_smb_seq*)*, i32 (%struct.idt_89hpesx_dev*, %struct.idt_smb_seq*)*, i32, %struct.TYPE_2__* }
%struct.idt_smb_seq = type { i32, i32, i32* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.idt_eeprom_seq = type { i32, i32, i32, i32 }

@CCODE_EEPROM = common dso_local global i32 0, align 4
@RETRY_CNT = common dso_local global i32 0, align 4
@EEPROM_WRRD_CNT = common dso_local global i32 0, align 4
@EEPROM_OP_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to init eeprom addr 0x%02hhx\00", align 1
@EEPROM_RD_CNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to read eeprom data 0x%02hhx\00", align 1
@EEPROM_NAERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"EEPROM busy, retry reading after %d ms\00", align 1
@EEPROM_TOUT = common dso_local global i32 0, align 4
@EEPROM_LAERR = common dso_local global i32 0, align 4
@EEPROM_MSS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"Communication with eeprom failed, cmd 0x%hhx\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idt_89hpesx_dev*, i32, i32*)* @idt_eeprom_read_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idt_eeprom_read_byte(%struct.idt_89hpesx_dev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.idt_89hpesx_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.idt_eeprom_seq, align 4
  %9 = alloca %struct.idt_smb_seq, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.idt_89hpesx_dev* %0, %struct.idt_89hpesx_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %12 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %4, align 8
  %13 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %12, i32 0, i32 5
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %7, align 8
  %16 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %4, align 8
  %17 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @CCODE_EEPROM, align 4
  %20 = or i32 %18, %19
  %21 = getelementptr inbounds %struct.idt_smb_seq, %struct.idt_smb_seq* %9, i32 0, i32 0
  store i32 %20, i32* %21, align 8
  %22 = bitcast %struct.idt_eeprom_seq* %8 to i32*
  %23 = getelementptr inbounds %struct.idt_smb_seq, %struct.idt_smb_seq* %9, i32 0, i32 2
  store i32* %22, i32** %23, align 8
  %24 = load i32, i32* @RETRY_CNT, align 4
  store i32 %24, i32* %11, align 4
  br label %25

25:                                               ; preds = %102, %3
  %26 = load i32, i32* @EEPROM_WRRD_CNT, align 4
  %27 = getelementptr inbounds %struct.idt_smb_seq, %struct.idt_smb_seq* %9, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %4, align 8
  %29 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @EEPROM_OP_READ, align 4
  %32 = or i32 %30, %31
  %33 = getelementptr inbounds %struct.idt_eeprom_seq, %struct.idt_eeprom_seq* %8, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %4, align 8
  %35 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds %struct.idt_eeprom_seq, %struct.idt_eeprom_seq* %8, i32 0, i32 3
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @cpu_to_le16(i32 %38)
  %40 = getelementptr inbounds %struct.idt_eeprom_seq, %struct.idt_eeprom_seq* %8, i32 0, i32 2
  store i32 %39, i32* %40, align 4
  %41 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %4, align 8
  %42 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %41, i32 0, i32 2
  %43 = load i32 (%struct.idt_89hpesx_dev*, %struct.idt_smb_seq*)*, i32 (%struct.idt_89hpesx_dev*, %struct.idt_smb_seq*)** %42, align 8
  %44 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %4, align 8
  %45 = call i32 %43(%struct.idt_89hpesx_dev* %44, %struct.idt_smb_seq* %9)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %25
  %49 = load %struct.device*, %struct.device** %7, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @dev_err(%struct.device* %49, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %106

52:                                               ; preds = %25
  %53 = load i32, i32* @EEPROM_RD_CNT, align 4
  %54 = getelementptr inbounds %struct.idt_smb_seq, %struct.idt_smb_seq* %9, i32 0, i32 1
  store i32 %53, i32* %54, align 4
  %55 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %4, align 8
  %56 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %55, i32 0, i32 3
  %57 = load i32 (%struct.idt_89hpesx_dev*, %struct.idt_smb_seq*)*, i32 (%struct.idt_89hpesx_dev*, %struct.idt_smb_seq*)** %56, align 8
  %58 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %4, align 8
  %59 = call i32 %57(%struct.idt_89hpesx_dev* %58, %struct.idt_smb_seq* %9)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %52
  %63 = load %struct.device*, %struct.device** %7, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @dev_err(%struct.device* %63, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %106

66:                                               ; preds = %52
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.idt_eeprom_seq, %struct.idt_eeprom_seq* %8, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @EEPROM_NAERR, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %69
  %76 = load %struct.device*, %struct.device** %7, align 8
  %77 = load i32, i32* @EEPROM_TOUT, align 4
  %78 = call i32 @dev_dbg(%struct.device* %76, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* @EEPROM_TOUT, align 4
  %80 = call i32 @msleep(i32 %79)
  br label %102

81:                                               ; preds = %69, %66
  %82 = getelementptr inbounds %struct.idt_eeprom_seq, %struct.idt_eeprom_seq* %8, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @EEPROM_NAERR, align 4
  %85 = load i32, i32* @EEPROM_LAERR, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @EEPROM_MSS, align 4
  %88 = or i32 %86, %87
  %89 = and i32 %83, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %81
  %92 = load %struct.device*, %struct.device** %7, align 8
  %93 = getelementptr inbounds %struct.idt_eeprom_seq, %struct.idt_eeprom_seq* %8, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @dev_err(%struct.device* %92, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* @EREMOTEIO, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %10, align 4
  br label %106

98:                                               ; preds = %81
  %99 = getelementptr inbounds %struct.idt_eeprom_seq, %struct.idt_eeprom_seq* %8, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32*, i32** %6, align 8
  store i32 %100, i32* %101, align 4
  br label %106

102:                                              ; preds = %75
  %103 = load i32, i32* %11, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %11, align 4
  %105 = icmp ne i32 %103, 0
  br i1 %105, label %25, label %106

106:                                              ; preds = %102, %98, %91, %62, %48
  %107 = load i32, i32* %10, align 4
  ret i32 %107
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
