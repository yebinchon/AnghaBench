; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_idt_89hpesx.c_idt_csr_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_idt_89hpesx.c_idt_csr_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt_89hpesx_dev = type { i32, i32, i32 (%struct.idt_89hpesx_dev*, %struct.idt_smb_seq*)*, i32 (%struct.idt_89hpesx_dev*, %struct.idt_smb_seq*)*, i32, %struct.TYPE_2__* }
%struct.idt_smb_seq = type { i32, i32, i32* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.idt_csr_seq = type { i32, i32, i32 }

@CCODE_CSR = common dso_local global i32 0, align 4
@CSR_WRRD_CNT = common dso_local global i32 0, align 4
@CSR_OP_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to init csr address 0x%04x\00", align 1
@CSR_RD_CNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to read csr 0x%04hx\00", align 1
@CSR_RERR = common dso_local global i32 0, align 4
@CSR_WERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"IDT failed to perform CSR r/w\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idt_89hpesx_dev*, i32, i32*)* @idt_csr_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idt_csr_read(%struct.idt_89hpesx_dev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.idt_89hpesx_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.idt_csr_seq, align 4
  %9 = alloca %struct.idt_smb_seq, align 8
  %10 = alloca i32, align 4
  store %struct.idt_89hpesx_dev* %0, %struct.idt_89hpesx_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
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
  %26 = load i32, i32* @CSR_WRRD_CNT, align 4
  %27 = getelementptr inbounds %struct.idt_smb_seq, %struct.idt_smb_seq* %9, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %4, align 8
  %29 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @CSR_OP_READ, align 4
  %32 = or i32 %30, %31
  %33 = getelementptr inbounds %struct.idt_csr_seq, %struct.idt_csr_seq* %8, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @cpu_to_le16(i32 %34)
  %36 = getelementptr inbounds %struct.idt_csr_seq, %struct.idt_csr_seq* %8, i32 0, i32 2
  store i32 %35, i32* %36, align 4
  %37 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %4, align 8
  %38 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %37, i32 0, i32 2
  %39 = load i32 (%struct.idt_89hpesx_dev*, %struct.idt_smb_seq*)*, i32 (%struct.idt_89hpesx_dev*, %struct.idt_smb_seq*)** %38, align 8
  %40 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %4, align 8
  %41 = call i32 %39(%struct.idt_89hpesx_dev* %40, %struct.idt_smb_seq* %9)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %3
  %45 = load %struct.device*, %struct.device** %7, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @CSR_REAL_ADDR(i32 %46)
  %48 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %82

49:                                               ; preds = %3
  %50 = load i32, i32* @CSR_RD_CNT, align 4
  %51 = getelementptr inbounds %struct.idt_smb_seq, %struct.idt_smb_seq* %9, i32 0, i32 1
  store i32 %50, i32* %51, align 4
  %52 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %4, align 8
  %53 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %52, i32 0, i32 3
  %54 = load i32 (%struct.idt_89hpesx_dev*, %struct.idt_smb_seq*)*, i32 (%struct.idt_89hpesx_dev*, %struct.idt_smb_seq*)** %53, align 8
  %55 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %4, align 8
  %56 = call i32 %54(%struct.idt_89hpesx_dev* %55, %struct.idt_smb_seq* %9)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %49
  %60 = load %struct.device*, %struct.device** %7, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @CSR_REAL_ADDR(i32 %61)
  %63 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %60, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  br label %82

64:                                               ; preds = %49
  %65 = getelementptr inbounds %struct.idt_csr_seq, %struct.idt_csr_seq* %8, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @CSR_RERR, align 4
  %68 = load i32, i32* @CSR_WERR, align 4
  %69 = or i32 %67, %68
  %70 = and i32 %66, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %64
  %73 = load %struct.device*, %struct.device** %7, align 8
  %74 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %73, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %75 = load i32, i32* @EREMOTEIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %10, align 4
  br label %82

77:                                               ; preds = %64
  %78 = getelementptr inbounds %struct.idt_csr_seq, %struct.idt_csr_seq* %8, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @le32_to_cpu(i32 %79)
  %81 = load i32*, i32** %6, align 8
  store i32 %80, i32* %81, align 4
  br label %82

82:                                               ; preds = %77, %72, %59, %44
  %83 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %4, align 8
  %84 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %83, i32 0, i32 4
  %85 = call i32 @mutex_unlock(i32* %84)
  %86 = load i32, i32* %10, align 4
  ret i32 %86
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @CSR_REAL_ADDR(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
