; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_get_flash_crc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_get_flash_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32 }
%struct.be_cmd_read_flash_crc = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8* }
%struct.be_mcc_wrb = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_READ_FLASHROM = common dso_local global i32 0, align 4
@OPTYPE_OFFSET_SPECIFIED = common dso_local global i64 0, align 8
@FLASHROM_OPER_REPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.be_adapter*, i32*, i64, i32, i32)* @be_cmd_get_flash_crc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_cmd_get_flash_crc(%struct.be_adapter* %0, i32* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.be_adapter*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.be_cmd_read_flash_crc*, align 8
  %12 = alloca %struct.be_mcc_wrb*, align 8
  %13 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %15 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %18 = call %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter* %17)
  store %struct.be_mcc_wrb* %18, %struct.be_mcc_wrb** %12, align 8
  %19 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %12, align 8
  %20 = icmp ne %struct.be_mcc_wrb* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %13, align 4
  br label %77

24:                                               ; preds = %5
  %25 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %12, align 8
  %26 = call %struct.be_cmd_read_flash_crc* @embedded_payload(%struct.be_mcc_wrb* %25)
  store %struct.be_cmd_read_flash_crc* %26, %struct.be_cmd_read_flash_crc** %11, align 8
  %27 = load %struct.be_cmd_read_flash_crc*, %struct.be_cmd_read_flash_crc** %11, align 8
  %28 = getelementptr inbounds %struct.be_cmd_read_flash_crc, %struct.be_cmd_read_flash_crc* %27, i32 0, i32 2
  %29 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %30 = load i32, i32* @OPCODE_COMMON_READ_FLASHROM, align 4
  %31 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %12, align 8
  %32 = call i32 @be_wrb_cmd_hdr_prepare(i32* %28, i32 %29, i32 %30, i32 48, %struct.be_mcc_wrb* %31, i32* null)
  %33 = load i64, i64* %8, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i8* @cpu_to_le32(i32 %34)
  %36 = load %struct.be_cmd_read_flash_crc*, %struct.be_cmd_read_flash_crc** %11, align 8
  %37 = getelementptr inbounds %struct.be_cmd_read_flash_crc, %struct.be_cmd_read_flash_crc* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 3
  store i8* %35, i8** %38, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* @OPTYPE_OFFSET_SPECIFIED, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %24
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %43, %44
  %46 = call i8* @cpu_to_le32(i32 %45)
  %47 = load %struct.be_cmd_read_flash_crc*, %struct.be_cmd_read_flash_crc** %11, align 8
  %48 = getelementptr inbounds %struct.be_cmd_read_flash_crc, %struct.be_cmd_read_flash_crc* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  store i8* %46, i8** %49, align 8
  br label %56

50:                                               ; preds = %24
  %51 = load i32, i32* %10, align 4
  %52 = call i8* @cpu_to_le32(i32 %51)
  %53 = load %struct.be_cmd_read_flash_crc*, %struct.be_cmd_read_flash_crc** %11, align 8
  %54 = getelementptr inbounds %struct.be_cmd_read_flash_crc, %struct.be_cmd_read_flash_crc* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  store i8* %52, i8** %55, align 8
  br label %56

56:                                               ; preds = %50, %42
  %57 = load i32, i32* @FLASHROM_OPER_REPORT, align 4
  %58 = call i8* @cpu_to_le32(i32 %57)
  %59 = load %struct.be_cmd_read_flash_crc*, %struct.be_cmd_read_flash_crc** %11, align 8
  %60 = getelementptr inbounds %struct.be_cmd_read_flash_crc, %struct.be_cmd_read_flash_crc* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i8* %58, i8** %61, align 8
  %62 = call i8* @cpu_to_le32(i32 4)
  %63 = load %struct.be_cmd_read_flash_crc*, %struct.be_cmd_read_flash_crc** %11, align 8
  %64 = getelementptr inbounds %struct.be_cmd_read_flash_crc, %struct.be_cmd_read_flash_crc* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i8* %62, i8** %65, align 8
  %66 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %67 = call i32 @be_mcc_notify_wait(%struct.be_adapter* %66)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %56
  %71 = load i32*, i32** %7, align 8
  %72 = load %struct.be_cmd_read_flash_crc*, %struct.be_cmd_read_flash_crc** %11, align 8
  %73 = getelementptr inbounds %struct.be_cmd_read_flash_crc, %struct.be_cmd_read_flash_crc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @memcpy(i32* %71, i32 %74, i32 4)
  br label %76

76:                                               ; preds = %70, %56
  br label %77

77:                                               ; preds = %76, %21
  %78 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %79 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %78, i32 0, i32 0
  %80 = call i32 @mutex_unlock(i32* %79)
  %81 = load i32, i32* %13, align 4
  ret i32 %81
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter*) #1

declare dso_local %struct.be_cmd_read_flash_crc* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(i32*, i32, i32, i32, %struct.be_mcc_wrb*, i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @be_mcc_notify_wait(%struct.be_adapter*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
