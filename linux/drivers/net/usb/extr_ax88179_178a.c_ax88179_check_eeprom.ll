; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_ax88179_178a.c_ax88179_check_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_ax88179_178a.c_ax88179_check_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }

@HZ = common dso_local global i32 0, align 4
@AX_ACCESS_MAC = common dso_local global i32 0, align 4
@AX_SROM_ADDR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EEP_RD = common dso_local global i32 0, align 4
@AX_SROM_CMD = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@EEP_BUSY = common dso_local global i32 0, align 4
@AX_SROM_DATA_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*)* @ax88179_check_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ax88179_check_eeprom(%struct.usbnet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [20 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  %10 = load i32, i32* @HZ, align 4
  %11 = sdiv i32 %10, 10
  store i32 %11, i32* %8, align 4
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %77, %1
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 6
  br i1 %14, label %15, label %80

15:                                               ; preds = %12
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %5, align 4
  %17 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %18 = load i32, i32* @AX_ACCESS_MAC, align 4
  %19 = load i32, i32* @AX_SROM_ADDR, align 4
  %20 = call i64 @ax88179_write_cmd(%struct.usbnet* %17, i32 %18, i32 %19, i32 1, i32 1, i32* %5)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %106

25:                                               ; preds = %15
  %26 = load i32, i32* @EEP_RD, align 4
  store i32 %26, i32* %5, align 4
  %27 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %28 = load i32, i32* @AX_ACCESS_MAC, align 4
  %29 = load i32, i32* @AX_SROM_CMD, align 4
  %30 = call i64 @ax88179_write_cmd(%struct.usbnet* %27, i32 %28, i32 %29, i32 1, i32 1, i32* %5)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %106

35:                                               ; preds = %25
  %36 = load i32, i32* @jiffies, align 4
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %36, %37
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %9, align 8
  br label %40

40:                                               ; preds = %53, %35
  %41 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %42 = load i32, i32* @AX_ACCESS_MAC, align 4
  %43 = load i32, i32* @AX_SROM_CMD, align 4
  %44 = call i32 @ax88179_read_cmd(%struct.usbnet* %41, i32 %42, i32 %43, i32 1, i32 1, i32* %5)
  %45 = load i32, i32* @jiffies, align 4
  %46 = load i64, i64* %9, align 8
  %47 = call i64 @time_after(i32 %45, i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %106

52:                                               ; preds = %40
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @EEP_BUSY, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %40, label %58

58:                                               ; preds = %53
  %59 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %60 = load i32, i32* @AX_ACCESS_MAC, align 4
  %61 = load i32, i32* @AX_SROM_DATA_LOW, align 4
  %62 = load i32, i32* %4, align 4
  %63 = mul nsw i32 %62, 2
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [20 x i32], [20 x i32]* %6, i64 0, i64 %64
  %66 = call i32 @__ax88179_read_cmd(%struct.usbnet* %59, i32 %60, i32 %61, i32 2, i32 2, i32* %65, i32 0)
  %67 = load i32, i32* %4, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %58
  %70 = getelementptr inbounds [20 x i32], [20 x i32]* %6, i64 0, i64 0
  %71 = load i32, i32* %70, align 16
  %72 = icmp eq i32 %71, 255
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %106

76:                                               ; preds = %69, %58
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %4, align 4
  br label %12

80:                                               ; preds = %12
  %81 = getelementptr inbounds [20 x i32], [20 x i32]* %6, i64 0, i64 6
  %82 = load i32, i32* %81, align 8
  %83 = getelementptr inbounds [20 x i32], [20 x i32]* %6, i64 0, i64 7
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %82, %84
  %86 = getelementptr inbounds [20 x i32], [20 x i32]* %6, i64 0, i64 8
  %87 = load i32, i32* %86, align 16
  %88 = add nsw i32 %85, %87
  %89 = getelementptr inbounds [20 x i32], [20 x i32]* %6, i64 0, i64 9
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %88, %90
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = ashr i32 %92, 8
  %94 = load i32, i32* %7, align 4
  %95 = and i32 %94, 255
  %96 = add nsw i32 %93, %95
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = getelementptr inbounds [20 x i32], [20 x i32]* %6, i64 0, i64 10
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %97, %99
  %101 = icmp ne i32 %100, 255
  br i1 %101, label %102, label %105

102:                                              ; preds = %80
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %2, align 4
  br label %106

105:                                              ; preds = %80
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %105, %102, %73, %49, %32, %22
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i64 @ax88179_write_cmd(%struct.usbnet*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @ax88179_read_cmd(%struct.usbnet*, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @__ax88179_read_cmd(%struct.usbnet*, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
