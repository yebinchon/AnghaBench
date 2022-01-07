; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-i2c.c_ivtv_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-i2c.c_ivtv_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"SCL was high starting an ack\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Could not set SCL low starting an ack\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Slave did not ack\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Failed to set SCL low after ACK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ivtv*)* @ivtv_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtv_ack(%struct.ivtv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ivtv*, align 8
  %4 = alloca i32, align 4
  store %struct.ivtv* %0, %struct.ivtv** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %6 = call i32 @ivtv_getscl(%struct.ivtv* %5)
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  %9 = call i32 @IVTV_DEBUG_HI_I2C(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %11 = call i32 @ivtv_setscl(%struct.ivtv* %10, i32 0)
  %12 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %13 = call i32 @ivtv_waitscl(%struct.ivtv* %12, i32 0)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %8
  %16 = call i32 @IVTV_DEBUG_I2C(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* @EREMOTEIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %46

19:                                               ; preds = %8
  br label %20

20:                                               ; preds = %19, %1
  %21 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %22 = call i32 @ivtv_setsda(%struct.ivtv* %21, i32 1)
  %23 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %24 = call i32 @ivtv_scldelay(%struct.ivtv* %23)
  %25 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %26 = call i32 @ivtv_setscl(%struct.ivtv* %25, i32 1)
  %27 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %28 = call i32 @ivtv_waitsda(%struct.ivtv* %27, i32 0)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %20
  %31 = call i32 @IVTV_DEBUG_I2C(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %32 = load i32, i32* @EREMOTEIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %30, %20
  %35 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %36 = call i32 @ivtv_setscl(%struct.ivtv* %35, i32 0)
  %37 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %38 = call i32 @ivtv_waitscl(%struct.ivtv* %37, i32 0)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = call i32 @IVTV_DEBUG_I2C(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %42 = load i32, i32* @EREMOTEIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %40, %34
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %44, %15
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @ivtv_getscl(%struct.ivtv*) #1

declare dso_local i32 @IVTV_DEBUG_HI_I2C(i8*) #1

declare dso_local i32 @ivtv_setscl(%struct.ivtv*, i32) #1

declare dso_local i32 @ivtv_waitscl(%struct.ivtv*, i32) #1

declare dso_local i32 @IVTV_DEBUG_I2C(i8*) #1

declare dso_local i32 @ivtv_setsda(%struct.ivtv*, i32) #1

declare dso_local i32 @ivtv_scldelay(%struct.ivtv*) #1

declare dso_local i32 @ivtv_waitsda(%struct.ivtv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
