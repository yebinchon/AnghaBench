; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc9420.c_smsc9420_eeprom_write_location.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc9420.c_smsc9420_eeprom_write_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsc9420_pdata = type { i32 }

@E2P_CMD_EPC_CMD_ERASE_ = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"address 0x%x, data 0x%x\0A\00", align 1
@E2P_CMD_EPC_CMD_WRITE_ = common dso_local global i32 0, align 4
@E2P_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smsc9420_pdata*, i32, i32)* @smsc9420_eeprom_write_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc9420_eeprom_write_location(%struct.smsc9420_pdata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.smsc9420_pdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.smsc9420_pdata* %0, %struct.smsc9420_pdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @E2P_CMD_EPC_CMD_ERASE_, align 4
  %10 = load i32, i32* %5, align 4
  %11 = or i32 %9, %10
  store i32 %11, i32* %7, align 4
  %12 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %13 = load i32, i32* @hw, align 4
  %14 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %15 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @netif_dbg(%struct.smsc9420_pdata* %12, i32 %13, i32 %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @smsc9420_eeprom_send_cmd(%struct.smsc9420_pdata* %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @E2P_CMD_EPC_CMD_WRITE_, align 4
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %7, align 4
  %29 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %30 = load i32, i32* @E2P_DATA, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %29, i32 %30, i32 %31)
  %33 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @smsc9420_eeprom_send_cmd(%struct.smsc9420_pdata* %33, i32 %34)
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %25, %3
  %37 = load i32, i32* %8, align 4
  ret i32 %37
}

declare dso_local i32 @netif_dbg(%struct.smsc9420_pdata*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @smsc9420_eeprom_send_cmd(%struct.smsc9420_pdata*, i32) #1

declare dso_local i32 @smsc9420_reg_write(%struct.smsc9420_pdata*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
