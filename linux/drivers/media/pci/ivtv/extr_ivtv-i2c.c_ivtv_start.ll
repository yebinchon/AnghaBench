; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-i2c.c_ivtv_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-i2c.c_ivtv_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"SDA was low at start\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"SDA stuck low\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"SCL stuck low at start\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ivtv*)* @ivtv_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtv_start(%struct.ivtv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ivtv*, align 8
  %4 = alloca i32, align 4
  store %struct.ivtv* %0, %struct.ivtv** %3, align 8
  %5 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %6 = call i32 @ivtv_getsda(%struct.ivtv* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 1
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = call i32 @IVTV_DEBUG_HI_I2C(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %12 = call i32 @ivtv_setsda(%struct.ivtv* %11, i32 1)
  %13 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %14 = call i32 @ivtv_waitsda(%struct.ivtv* %13, i32 1)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %9
  %17 = call i32 @IVTV_DEBUG_I2C(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* @EREMOTEIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %41

20:                                               ; preds = %9
  br label %21

21:                                               ; preds = %20, %1
  %22 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %23 = call i32 @ivtv_getscl(%struct.ivtv* %22)
  %24 = icmp ne i32 %23, 1
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %27 = call i32 @ivtv_setscl(%struct.ivtv* %26, i32 1)
  %28 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %29 = call i32 @ivtv_waitscl(%struct.ivtv* %28, i32 1)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %25
  %32 = call i32 @IVTV_DEBUG_I2C(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i32, i32* @EREMOTEIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %41

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %35, %21
  %37 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %38 = call i32 @ivtv_setsda(%struct.ivtv* %37, i32 0)
  %39 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %40 = call i32 @ivtv_scldelay(%struct.ivtv* %39)
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %36, %31, %16
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @ivtv_getsda(%struct.ivtv*) #1

declare dso_local i32 @IVTV_DEBUG_HI_I2C(i8*) #1

declare dso_local i32 @ivtv_setsda(%struct.ivtv*, i32) #1

declare dso_local i32 @ivtv_waitsda(%struct.ivtv*, i32) #1

declare dso_local i32 @IVTV_DEBUG_I2C(i8*) #1

declare dso_local i32 @ivtv_getscl(%struct.ivtv*) #1

declare dso_local i32 @ivtv_setscl(%struct.ivtv*, i32) #1

declare dso_local i32 @ivtv_waitscl(%struct.ivtv*, i32) #1

declare dso_local i32 @ivtv_scldelay(%struct.ivtv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
