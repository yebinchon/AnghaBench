; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-i2c.c_ivtv_sendbyte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-i2c.c_ivtv_sendbyte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"write %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Error setting SCL low\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Error setting SDA\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Slave not ready for bit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ivtv*, i8)* @ivtv_sendbyte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtv_sendbyte(%struct.ivtv* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ivtv*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ivtv* %0, %struct.ivtv** %4, align 8
  store i8 %1, i8* %5, align 1
  %8 = load i8, i8* %5, align 1
  %9 = call i32 @IVTV_DEBUG_HI_I2C(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8 zeroext %8)
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %50, %2
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 8
  br i1 %12, label %13, label %57

13:                                               ; preds = %10
  %14 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %15 = call i32 @ivtv_setscl(%struct.ivtv* %14, i32 0)
  %16 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %17 = call i32 @ivtv_waitscl(%struct.ivtv* %16, i32 0)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %13
  %20 = call i32 @IVTV_DEBUG_I2C(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @EREMOTEIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %70

23:                                               ; preds = %13
  %24 = load i8, i8* %5, align 1
  %25 = zext i8 %24 to i32
  %26 = ashr i32 %25, 7
  %27 = and i32 %26, 1
  store i32 %27, i32* %7, align 4
  %28 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @ivtv_setsda(%struct.ivtv* %28, i32 %29)
  %31 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @ivtv_waitsda(%struct.ivtv* %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %23
  %36 = call i32 @IVTV_DEBUG_I2C(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32, i32* @EREMOTEIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %70

39:                                               ; preds = %23
  %40 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %41 = call i32 @ivtv_setscl(%struct.ivtv* %40, i32 1)
  %42 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %43 = call i32 @ivtv_waitscl(%struct.ivtv* %42, i32 1)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %39
  %46 = call i32 @IVTV_DEBUG_I2C(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %47 = load i32, i32* @EREMOTEIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %70

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  %53 = load i8, i8* %5, align 1
  %54 = zext i8 %53 to i32
  %55 = shl i32 %54, 1
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %5, align 1
  br label %10

57:                                               ; preds = %10
  %58 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %59 = call i32 @ivtv_setscl(%struct.ivtv* %58, i32 0)
  %60 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %61 = call i32 @ivtv_waitscl(%struct.ivtv* %60, i32 0)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %57
  %64 = call i32 @IVTV_DEBUG_I2C(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* @EREMOTEIO, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %70

67:                                               ; preds = %57
  %68 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %69 = call i32 @ivtv_ack(%struct.ivtv* %68)
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %67, %63, %45, %35, %19
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @IVTV_DEBUG_HI_I2C(i8*, i8 zeroext) #1

declare dso_local i32 @ivtv_setscl(%struct.ivtv*, i32) #1

declare dso_local i32 @ivtv_waitscl(%struct.ivtv*, i32) #1

declare dso_local i32 @IVTV_DEBUG_I2C(i8*) #1

declare dso_local i32 @ivtv_setsda(%struct.ivtv*, i32) #1

declare dso_local i32 @ivtv_waitsda(%struct.ivtv*, i32) #1

declare dso_local i32 @ivtv_ack(%struct.ivtv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
