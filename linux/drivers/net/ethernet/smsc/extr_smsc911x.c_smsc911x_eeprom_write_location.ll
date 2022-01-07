; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c_smsc911x_eeprom_write_location.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c_smsc911x_eeprom_write_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsc911x_data = type { i32 }

@E2P_CMD_EPC_CMD_ERASE_ = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"address 0x%x, data 0x%x\00", align 1
@E2P_CMD_EPC_CMD_WRITE_ = common dso_local global i32 0, align 4
@E2P_DATA = common dso_local global i32 0, align 4
@BYTE_TEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smsc911x_data*, i32, i32)* @smsc911x_eeprom_write_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc911x_eeprom_write_location(%struct.smsc911x_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.smsc911x_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.smsc911x_data* %0, %struct.smsc911x_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @E2P_CMD_EPC_CMD_ERASE_, align 4
  %11 = load i32, i32* %5, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %7, align 4
  %13 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %14 = load i32, i32* @drv, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @SMSC_TRACE(%struct.smsc911x_data* %13, i32 %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  %18 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @smsc911x_eeprom_send_cmd(%struct.smsc911x_data* %18, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @E2P_CMD_EPC_CMD_WRITE_, align 4
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %7, align 4
  %27 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %28 = load i32, i32* @E2P_DATA, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @smsc911x_reg_write(%struct.smsc911x_data* %27, i32 %28, i32 %29)
  %31 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %32 = load i32, i32* @BYTE_TEST, align 4
  %33 = call i32 @smsc911x_reg_read(%struct.smsc911x_data* %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @smsc911x_eeprom_send_cmd(%struct.smsc911x_data* %34, i32 %35)
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %23, %3
  %38 = load i32, i32* %9, align 4
  ret i32 %38
}

declare dso_local i32 @SMSC_TRACE(%struct.smsc911x_data*, i32, i8*, i32, i32) #1

declare dso_local i32 @smsc911x_eeprom_send_cmd(%struct.smsc911x_data*, i32) #1

declare dso_local i32 @smsc911x_reg_write(%struct.smsc911x_data*, i32, i32) #1

declare dso_local i32 @smsc911x_reg_read(%struct.smsc911x_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
