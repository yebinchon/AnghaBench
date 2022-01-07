; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_idt_89hpesx.c_idt_csr_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_idt_89hpesx.c_idt_csr_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt_89hpesx_dev = type { i32, i32, i32 (%struct.idt_89hpesx_dev*, %struct.idt_smb_seq*)*, i32 (%struct.idt_89hpesx_dev*, %struct.idt_smb_seq*)*, i32, %struct.TYPE_2__* }
%struct.idt_smb_seq = type { i32, i32, i32* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.idt_csr_seq = type { i32, i32, i32 }

@CCODE_CSR = common dso_local global i32 0, align 4
@CSR_WR_CNT = common dso_local global i32 0, align 4
@CSR_OP_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to write 0x%04x: 0x%04x to csr\00", align 1
@CSR_WRRD_CNT = common dso_local global i32 0, align 4
@CSR_OP_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to init csr address 0x%04x\00", align 1
@CSR_RD_CNT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to read csr 0x%04x\00", align 1
@CSR_RERR = common dso_local global i32 0, align 4
@CSR_WERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"IDT failed to perform CSR r/w\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idt_89hpesx_dev*, i32, i32)* @idt_csr_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idt_csr_write(%struct.idt_89hpesx_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.idt_89hpesx_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.idt_csr_seq, align 4
  %9 = alloca %struct.idt_smb_seq, align 8
  %10 = alloca i32, align 4
  store %struct.idt_89hpesx_dev* %0, %struct.idt_89hpesx_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %4, align 8
  %12 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %11, i32 0, i32 5
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %7, align 8
  %15 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %4, align 8
  %16 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @CCODE_CSR, align 4
  %19 = or i32 %17, %18
  %20 = getelementptr inbounds %struct.idt_smb_seq, %struct.idt_smb_seq* %9, i32 0, i32 0
  store i32 %19, i32* %20, align 8
  %21 = bitcast %struct.idt_csr_seq* %8 to i32*
  %22 = getelementptr inbounds %struct.idt_smb_seq, %struct.idt_smb_seq* %9, i32 0, i32 2
  store i32* %21, i32** %22, align 8
  %23 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %4, align 8
  %24 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %23, i32 0, i32 4
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load i32, i32* @CSR_WR_CNT, align 4
  %27 = getelementptr inbounds %struct.idt_smb_seq, %struct.idt_smb_seq* %9, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %4, align 8
  %29 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @CSR_OP_WRITE, align 4
  %32 = or i32 %30, %31
  %33 = getelementptr inbounds %struct.idt_csr_seq, %struct.idt_csr_seq* %8, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @cpu_to_le16(i32 %34)
  %36 = getelementptr inbounds %struct.idt_csr_seq, %struct.idt_csr_seq* %8, i32 0, i32 2
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @cpu_to_le32(i32 %37)
  %39 = getelementptr inbounds %struct.idt_csr_seq, %struct.idt_csr_seq* %8, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %4, align 8
  %41 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %40, i32 0, i32 2
  %42 = load i32 (%struct.idt_89hpesx_dev*, %struct.idt_smb_seq*)*, i32 (%struct.idt_89hpesx_dev*, %struct.idt_smb_seq*)** %41, align 8
  %43 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %4, align 8
  %44 = call i32 %42(%struct.idt_89hpesx_dev* %43, %struct.idt_smb_seq* %9)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %3
  %48 = load %struct.device*, %struct.device** %7, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @CSR_REAL_ADDR(i32 %49)
  %51 = load i32, i32* %6, align 4
  %52 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %48, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51)
  br label %103

53:                                               ; preds = %3
  %54 = load i32, i32* @CSR_WRRD_CNT, align 4
  %55 = getelementptr inbounds %struct.idt_smb_seq, %struct.idt_smb_seq* %9, i32 0, i32 1
  store i32 %54, i32* %55, align 4
  %56 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %4, align 8
  %57 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @CSR_OP_READ, align 4
  %60 = or i32 %58, %59
  %61 = getelementptr inbounds %struct.idt_csr_seq, %struct.idt_csr_seq* %8, i32 0, i32 0
  store i32 %60, i32* %61, align 4
  %62 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %4, align 8
  %63 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %62, i32 0, i32 2
  %64 = load i32 (%struct.idt_89hpesx_dev*, %struct.idt_smb_seq*)*, i32 (%struct.idt_89hpesx_dev*, %struct.idt_smb_seq*)** %63, align 8
  %65 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %4, align 8
  %66 = call i32 %64(%struct.idt_89hpesx_dev* %65, %struct.idt_smb_seq* %9)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %53
  %70 = load %struct.device*, %struct.device** %7, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @CSR_REAL_ADDR(i32 %71)
  %73 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %70, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  br label %103

74:                                               ; preds = %53
  %75 = load i32, i32* @CSR_RD_CNT, align 4
  %76 = getelementptr inbounds %struct.idt_smb_seq, %struct.idt_smb_seq* %9, i32 0, i32 1
  store i32 %75, i32* %76, align 4
  %77 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %4, align 8
  %78 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %77, i32 0, i32 3
  %79 = load i32 (%struct.idt_89hpesx_dev*, %struct.idt_smb_seq*)*, i32 (%struct.idt_89hpesx_dev*, %struct.idt_smb_seq*)** %78, align 8
  %80 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %4, align 8
  %81 = call i32 %79(%struct.idt_89hpesx_dev* %80, %struct.idt_smb_seq* %9)
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %74
  %85 = load %struct.device*, %struct.device** %7, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @CSR_REAL_ADDR(i32 %86)
  %88 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %85, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  br label %103

89:                                               ; preds = %74
  %90 = getelementptr inbounds %struct.idt_csr_seq, %struct.idt_csr_seq* %8, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @CSR_RERR, align 4
  %93 = load i32, i32* @CSR_WERR, align 4
  %94 = or i32 %92, %93
  %95 = and i32 %91, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %89
  %98 = load %struct.device*, %struct.device** %7, align 8
  %99 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %98, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %100 = load i32, i32* @EREMOTEIO, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %10, align 4
  br label %103

102:                                              ; preds = %89
  br label %103

103:                                              ; preds = %102, %97, %84, %69, %47
  %104 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %4, align 8
  %105 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %104, i32 0, i32 4
  %106 = call i32 @mutex_unlock(i32* %105)
  %107 = load i32, i32* %10, align 4
  ret i32 %107
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @CSR_REAL_ADDR(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
