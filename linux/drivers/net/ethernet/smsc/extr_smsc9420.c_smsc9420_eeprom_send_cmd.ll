; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc9420.c_smsc9420_eeprom_send_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc9420.c_smsc9420_eeprom_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsc9420_pdata = type { i32 }

@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"op 0x%08x\0A\00", align 1
@E2P_CMD = common dso_local global i32 0, align 4
@E2P_CMD_EPC_BUSY_ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Busy at start\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"TIMED OUT\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@E2P_CMD_EPC_TIMEOUT_ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"Error occurred during eeprom operation\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smsc9420_pdata*, i32)* @smsc9420_eeprom_send_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc9420_eeprom_send_cmd(%struct.smsc9420_pdata* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smsc9420_pdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.smsc9420_pdata* %0, %struct.smsc9420_pdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 100, i32* %6, align 4
  %8 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %9 = load i32, i32* @hw, align 4
  %10 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %11 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @netif_dbg(%struct.smsc9420_pdata* %8, i32 %9, i32 %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %16 = load i32, i32* @E2P_CMD, align 4
  %17 = call i32 @smsc9420_reg_read(%struct.smsc9420_pdata* %15, i32 %16)
  %18 = load i32, i32* @E2P_CMD_EPC_BUSY_, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %2
  %22 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %23 = load i32, i32* @hw, align 4
  %24 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %25 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @netif_warn(%struct.smsc9420_pdata* %22, i32 %23, i32 %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %81

30:                                               ; preds = %2
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @E2P_CMD_EPC_BUSY_, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %7, align 4
  %34 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %35 = load i32, i32* @E2P_CMD, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %52, %30
  %39 = call i32 @msleep(i32 1)
  %40 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %41 = load i32, i32* @E2P_CMD, align 4
  %42 = call i32 @smsc9420_reg_read(%struct.smsc9420_pdata* %40, i32 %41)
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %38
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @E2P_CMD_EPC_BUSY_, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br label %52

52:                                               ; preds = %48, %43
  %53 = phi i1 [ false, %43 ], [ %51, %48 ]
  br i1 %53, label %38, label %54

54:                                               ; preds = %52
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %54
  %58 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %59 = load i32, i32* @hw, align 4
  %60 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %61 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @netif_info(%struct.smsc9420_pdata* %58, i32 %59, i32 %62, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i32, i32* @EAGAIN, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %81

66:                                               ; preds = %54
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @E2P_CMD_EPC_TIMEOUT_, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %66
  %72 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %73 = load i32, i32* @hw, align 4
  %74 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %75 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @netif_info(%struct.smsc9420_pdata* %72, i32 %73, i32 %76, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %81

80:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %71, %57, %21
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @netif_dbg(%struct.smsc9420_pdata*, i32, i32, i8*, i32) #1

declare dso_local i32 @smsc9420_reg_read(%struct.smsc9420_pdata*, i32) #1

declare dso_local i32 @netif_warn(%struct.smsc9420_pdata*, i32, i32, i8*) #1

declare dso_local i32 @smsc9420_reg_write(%struct.smsc9420_pdata*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @netif_info(%struct.smsc9420_pdata*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
