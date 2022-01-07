; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-input.c_get_key_pvr2000.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-input.c_get_key_pvr2000.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IR_i2c = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"read error\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"IR Key/Flags: (0x%02x/0x%02x)\0A\00", align 1
@RC_PROTO_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.IR_i2c*, i32*, i32*, i64*)* @get_key_pvr2000 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_key_pvr2000(%struct.IR_i2c* %0, i32* %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.IR_i2c*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.IR_i2c* %0, %struct.IR_i2c** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load %struct.IR_i2c*, %struct.IR_i2c** %6, align 8
  %13 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @i2c_smbus_read_byte_data(i32 %14, i32 16)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %46

20:                                               ; preds = %4
  %21 = load i32, i32* %10, align 4
  %22 = and i32 %21, 128
  %23 = icmp eq i32 0, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %46

25:                                               ; preds = %20
  %26 = load %struct.IR_i2c*, %struct.IR_i2c** %6, align 8
  %27 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @i2c_smbus_read_byte_data(i32 %28, i32 0)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %46

34:                                               ; preds = %25
  %35 = load i32, i32* %11, align 4
  %36 = and i32 %35, 255
  %37 = load i32, i32* %10, align 4
  %38 = and i32 %37, 255
  %39 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %38)
  %40 = load i32, i32* @RC_PROTO_UNKNOWN, align 4
  %41 = load i32*, i32** %7, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* %11, align 4
  %43 = and i32 %42, 255
  %44 = load i32*, i32** %8, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i64*, i64** %9, align 8
  store i64 0, i64* %45, align 8
  store i32 1, i32* %5, align 4
  br label %46

46:                                               ; preds = %34, %32, %24, %18
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @i2c_smbus_read_byte_data(i32, i32) #1

declare dso_local i32 @dprintk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
