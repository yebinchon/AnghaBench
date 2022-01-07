; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_netup-eeprom.c_netup_eeprom_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_netup-eeprom.c_netup_eeprom_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i8*, i32, i32, i32 }

@EEPROM_I2C_ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"eeprom i2c write error, status=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netup_eeprom_write(%struct.i2c_adapter* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca [2 x i8], align 1
  %10 = alloca [1 x %struct.i2c_msg], align 16
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  %11 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %10, i64 0, i64 0
  %12 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 0
  %13 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  store i8* %13, i8** %12, align 8
  %14 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 1
  store i32 2, i32* %14, align 8
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 2
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 3
  %17 = load i32, i32* @EEPROM_I2C_ADDR, align 4
  store i32 %17, i32* %16, align 8
  %18 = load i8, i8* %6, align 1
  %19 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  store i8 %18, i8* %19, align 1
  %20 = load i8, i8* %7, align 1
  %21 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 1
  store i8 %20, i8* %21, align 1
  %22 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %23 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %10, i64 0, i64 0
  %24 = call i32 @i2c_transfer(%struct.i2c_adapter* %22, %struct.i2c_msg* %23, i32 1)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 1
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %28)
  store i32 -1, i32* %4, align 4
  br label %32

30:                                               ; preds = %3
  %31 = call i32 @mdelay(i32 10)
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %30, %27
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
