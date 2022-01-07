; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-driver.c_cx18_read_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-driver.c_cx18_read_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.tveeprom = type { i32 }
%struct.i2c_client = type { i32, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"cx18 tveeprom tmp\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"eeprom PCI ID: %02x%02x:%02x%02x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx18_read_eeprom(%struct.cx18* %0, %struct.tveeprom* %1) #0 {
  %3 = alloca %struct.cx18*, align 8
  %4 = alloca %struct.tveeprom*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca [256 x i32], align 16
  store %struct.cx18* %0, %struct.cx18** %3, align 8
  store %struct.tveeprom* %1, %struct.tveeprom** %4, align 8
  %7 = load %struct.tveeprom*, %struct.tveeprom** %4, align 8
  %8 = call i32 @memset(%struct.tveeprom* %7, i32 0, i32 4)
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.i2c_client* @kzalloc(i32 24, i32 %9)
  store %struct.i2c_client* %10, %struct.i2c_client** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %12 = icmp ne %struct.i2c_client* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %67

14:                                               ; preds = %2
  %15 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @strscpy(i32 %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 4)
  %19 = load %struct.cx18*, %struct.cx18** %3, align 8
  %20 = getelementptr inbounds %struct.cx18, %struct.cx18* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 1
  store i32* %22, i32** %24, align 8
  %25 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 0
  store i32 80, i32* %26, align 8
  %27 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %28 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %29 = call i64 @tveeprom_read(%struct.i2c_client* %27, i32* %28, i32 1024)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %14
  br label %64

32:                                               ; preds = %14
  %33 = load %struct.cx18*, %struct.cx18** %3, align 8
  %34 = getelementptr inbounds %struct.cx18, %struct.cx18* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %57 [
    i32 131, label %38
    i32 129, label %38
    i32 130, label %38
    i32 128, label %42
    i32 132, label %42
  ]

38:                                               ; preds = %32, %32, %32
  %39 = load %struct.tveeprom*, %struct.tveeprom** %4, align 8
  %40 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %41 = call i32 @tveeprom_hauppauge_analog(%struct.tveeprom* %39, i32* %40)
  br label %63

42:                                               ; preds = %32, %32
  %43 = load %struct.tveeprom*, %struct.tveeprom** %4, align 8
  %44 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %43, i32 0, i32 0
  store i32 1816, i32* %44, align 4
  %45 = load %struct.cx18*, %struct.cx18** %3, align 8
  %46 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %47 = call i32 @cx18_eeprom_dump(%struct.cx18* %45, i32* %46, i32 1024)
  %48 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 2
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 4
  %53 = load i32, i32* %52, align 16
  %54 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @CX18_INFO(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %51, i32 %53, i32 %55)
  br label %63

57:                                               ; preds = %32
  %58 = load %struct.tveeprom*, %struct.tveeprom** %4, align 8
  %59 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %58, i32 0, i32 0
  store i32 -1, i32* %59, align 4
  %60 = load %struct.cx18*, %struct.cx18** %3, align 8
  %61 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %62 = call i32 @cx18_eeprom_dump(%struct.cx18* %60, i32* %61, i32 1024)
  br label %63

63:                                               ; preds = %57, %42, %38
  br label %64

64:                                               ; preds = %63, %31
  %65 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %66 = call i32 @kfree(%struct.i2c_client* %65)
  br label %67

67:                                               ; preds = %64, %13
  ret void
}

declare dso_local i32 @memset(%struct.tveeprom*, i32, i32) #1

declare dso_local %struct.i2c_client* @kzalloc(i32, i32) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i64 @tveeprom_read(%struct.i2c_client*, i32*, i32) #1

declare dso_local i32 @tveeprom_hauppauge_analog(%struct.tveeprom*, i32*) #1

declare dso_local i32 @cx18_eeprom_dump(%struct.cx18*, i32*, i32) #1

declare dso_local i32 @CX18_INFO(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
