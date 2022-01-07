; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c_smsc911x_eeprom_send_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c_smsc911x_eeprom_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsc911x_data = type { i32 }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"op 0x%08x\00", align 1
@E2P_CMD = common dso_local global i32 0, align 4
@E2P_CMD_EPC_BUSY_ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Busy at start\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"TIMED OUT\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@E2P_CMD_EPC_TIMEOUT_ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Error occurred during eeprom operation\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smsc911x_data*, i32)* @smsc911x_eeprom_send_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc911x_eeprom_send_cmd(%struct.smsc911x_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smsc911x_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.smsc911x_data* %0, %struct.smsc911x_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 100, i32* %6, align 4
  %8 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %9 = load i32, i32* @drv, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 (%struct.smsc911x_data*, i32, i8*, ...) @SMSC_TRACE(%struct.smsc911x_data* %8, i32 %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %13 = load i32, i32* @E2P_CMD, align 4
  %14 = call i32 @smsc911x_reg_read(%struct.smsc911x_data* %12, i32 %13)
  %15 = load i32, i32* @E2P_CMD_EPC_BUSY_, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %20 = load i32, i32* @drv, align 4
  %21 = call i32 @SMSC_WARN(%struct.smsc911x_data* %19, i32 %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %69

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @E2P_CMD_EPC_BUSY_, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %7, align 4
  %28 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %29 = load i32, i32* @E2P_CMD, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @smsc911x_reg_write(%struct.smsc911x_data* %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %46, %24
  %33 = call i32 @msleep(i32 1)
  %34 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %35 = load i32, i32* @E2P_CMD, align 4
  %36 = call i32 @smsc911x_reg_read(%struct.smsc911x_data* %34, i32 %35)
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %32
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @E2P_CMD_EPC_BUSY_, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br label %46

46:                                               ; preds = %42, %37
  %47 = phi i1 [ false, %37 ], [ %45, %42 ]
  br i1 %47, label %32, label %48

48:                                               ; preds = %46
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %48
  %52 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %53 = load i32, i32* @drv, align 4
  %54 = call i32 (%struct.smsc911x_data*, i32, i8*, ...) @SMSC_TRACE(%struct.smsc911x_data* %52, i32 %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32, i32* @EAGAIN, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %69

57:                                               ; preds = %48
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @E2P_CMD_EPC_TIMEOUT_, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %64 = load i32, i32* @drv, align 4
  %65 = call i32 (%struct.smsc911x_data*, i32, i8*, ...) @SMSC_TRACE(%struct.smsc911x_data* %63, i32 %64, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %69

68:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %62, %51, %18
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @SMSC_TRACE(%struct.smsc911x_data*, i32, i8*, ...) #1

declare dso_local i32 @smsc911x_reg_read(%struct.smsc911x_data*, i32) #1

declare dso_local i32 @SMSC_WARN(%struct.smsc911x_data*, i32, i8*) #1

declare dso_local i32 @smsc911x_reg_write(%struct.smsc911x_data*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
