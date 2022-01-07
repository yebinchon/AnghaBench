; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_ttpci-eeprom.c_ttpci_eeprom_parse_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_ttpci-eeprom.c_ttpci_eeprom_parse_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"Couldn't read from EEPROM: not there?\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"adapter failed MAC signature check\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"encoded MAC from EEPROM was %*phC\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"adapter has MAC addr = %pM\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttpci_eeprom_parse_mac(%struct.i2c_adapter* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [20 x i32], align 16
  %8 = alloca [6 x i32], align 16
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %10 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 0
  %11 = call i32 @ttpci_eeprom_read_encodedMAC(%struct.i2c_adapter* %9, i32* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @eth_zero_addr(i32* %16)
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %3, align 4
  br label %37

19:                                               ; preds = %2
  %20 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  %21 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 0
  %22 = call i32 @getmac_tt(i32* %20, i32* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %27 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 80, [20 x i32]* %7)
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @eth_zero_addr(i32* %28)
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %37

31:                                               ; preds = %19
  %32 = load i32*, i32** %5, align 8
  %33 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  %34 = call i32 @memcpy(i32* %32, i32* %33, i32 6)
  %35 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  %36 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32* %35)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %31, %25, %14
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @ttpci_eeprom_read_encodedMAC(%struct.i2c_adapter*, i32*) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @eth_zero_addr(i32*) #1

declare dso_local i32 @getmac_tt(i32*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
