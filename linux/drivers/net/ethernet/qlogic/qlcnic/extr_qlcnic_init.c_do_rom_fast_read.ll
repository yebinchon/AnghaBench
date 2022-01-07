; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_init.c_do_rom_fast_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_init.c_do_rom_fast_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@QLCNIC_ROMUSB_ROM_ADDRESS = common dso_local global i32 0, align 4
@QLCNIC_ROMUSB_ROM_DUMMY_BYTE_CNT = common dso_local global i32 0, align 4
@QLCNIC_ROMUSB_ROM_ABYTE_CNT = common dso_local global i32 0, align 4
@QLCNIC_ROMUSB_ROM_INSTR_OPCODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Error waiting for rom done\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@QLCNIC_ROMUSB_ROM_RDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, i32, i32*)* @do_rom_fast_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_rom_fast_read(%struct.qlcnic_adapter* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %10 = load i32, i32* @QLCNIC_ROMUSB_ROM_ADDRESS, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @QLCWR32(%struct.qlcnic_adapter* %9, i32 %10, i32 %11)
  %13 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %14 = load i32, i32* @QLCNIC_ROMUSB_ROM_DUMMY_BYTE_CNT, align 4
  %15 = call i32 @QLCWR32(%struct.qlcnic_adapter* %13, i32 %14, i32 0)
  %16 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %17 = load i32, i32* @QLCNIC_ROMUSB_ROM_ABYTE_CNT, align 4
  %18 = call i32 @QLCWR32(%struct.qlcnic_adapter* %16, i32 %17, i32 3)
  %19 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %20 = load i32, i32* @QLCNIC_ROMUSB_ROM_INSTR_OPCODE, align 4
  %21 = call i32 @QLCWR32(%struct.qlcnic_adapter* %19, i32 %20, i32 11)
  %22 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %23 = call i64 @qlcnic_wait_rom_done(%struct.qlcnic_adapter* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %3
  %26 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %27 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %52

33:                                               ; preds = %3
  %34 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %35 = load i32, i32* @QLCNIC_ROMUSB_ROM_ABYTE_CNT, align 4
  %36 = call i32 @QLCWR32(%struct.qlcnic_adapter* %34, i32 %35, i32 0)
  %37 = call i32 @udelay(i32 10)
  %38 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %39 = load i32, i32* @QLCNIC_ROMUSB_ROM_DUMMY_BYTE_CNT, align 4
  %40 = call i32 @QLCWR32(%struct.qlcnic_adapter* %38, i32 %39, i32 0)
  %41 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %42 = load i32, i32* @QLCNIC_ROMUSB_ROM_RDATA, align 4
  %43 = call i32 @QLCRD32(%struct.qlcnic_adapter* %41, i32 %42, i32* %8)
  %44 = load i32*, i32** %7, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %33
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %4, align 4
  br label %52

51:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %49, %25
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @QLCWR32(%struct.qlcnic_adapter*, i32, i32) #1

declare dso_local i64 @qlcnic_wait_rom_done(%struct.qlcnic_adapter*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @QLCRD32(%struct.qlcnic_adapter*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
