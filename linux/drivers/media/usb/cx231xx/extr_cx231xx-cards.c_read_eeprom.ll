; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-cards.c_read_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-cards.c_read_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32 }
%struct.i2c_client = type { i32, i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Can't read eeprom\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"i2c eeprom %02x: %*ph\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx231xx*, %struct.i2c_client*, i32*, i32)* @read_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_eeprom(%struct.cx231xx* %0, %struct.i2c_client* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cx231xx*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.i2c_msg, align 8
  %16 = alloca %struct.i2c_msg, align 8
  store %struct.cx231xx* %0, %struct.cx231xx** %6, align 8
  store %struct.i2c_client* %1, %struct.i2c_client** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %12, align 4
  %18 = load i32*, i32** %8, align 8
  store i32* %18, i32** %13, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 1
  store i32* %11, i32** %20, align 8
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 2
  store i32 0, i32* %21, align 8
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 3
  %23 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %22, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %16, i32 0, i32 0
  store i32 0, i32* %26, align 8
  %27 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %16, i32 0, i32 1
  store i32* null, i32** %27, align 8
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %16, i32 0, i32 2
  %29 = load i32, i32* @I2C_M_RD, align 4
  store i32 %29, i32* %28, align 8
  %30 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %16, i32 0, i32 3
  %31 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %30, align 4
  %34 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @i2c_transfer(i32 %36, %struct.i2c_msg* %15, i32 1)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %4
  %41 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %42 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %5, align 4
  br label %103

46:                                               ; preds = %4
  br label %47

47:                                               ; preds = %73, %46
  %48 = load i32, i32* %12, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %83

50:                                               ; preds = %47
  %51 = load i32, i32* %12, align 4
  %52 = icmp sgt i32 %51, 64
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %56

54:                                               ; preds = %50
  %55 = load i32, i32* %12, align 4
  br label %56

56:                                               ; preds = %54, %53
  %57 = phi i32 [ 64, %53 ], [ %55, %54 ]
  %58 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %16, i32 0, i32 0
  store i32 %57, i32* %58, align 8
  %59 = load i32*, i32** %13, align 8
  %60 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %16, i32 0, i32 1
  store i32* %59, i32** %60, align 8
  %61 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %62 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @i2c_transfer(i32 %63, %struct.i2c_msg* %16, i32 1)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %56
  %68 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %69 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @dev_err(i32 %70, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %5, align 4
  br label %103

73:                                               ; preds = %56
  %74 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %16, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32*, i32** %13, align 8
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  store i32* %78, i32** %13, align 8
  %79 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %16, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sub nsw i32 %81, %80
  store i32 %82, i32* %12, align 4
  br label %47

83:                                               ; preds = %47
  store i32 0, i32* %14, align 4
  br label %84

84:                                               ; preds = %99, %83
  %85 = load i32, i32* %14, align 4
  %86 = add nsw i32 %85, 15
  %87 = load i32, i32* %9, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %102

89:                                               ; preds = %84
  %90 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %91 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %14, align 4
  %94 = load i32*, i32** %8, align 8
  %95 = load i32, i32* %14, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = call i32 @dev_dbg(i32 %92, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %93, i32 16, i32* %97)
  br label %99

99:                                               ; preds = %89
  %100 = load i32, i32* %14, align 4
  %101 = add nsw i32 %100, 16
  store i32 %101, i32* %14, align 4
  br label %84

102:                                              ; preds = %84
  store i32 0, i32* %5, align 4
  br label %103

103:                                              ; preds = %102, %67, %40
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
