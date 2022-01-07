; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-i2c.c_ivtv_readbyte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-i2c.c_ivtv_readbyte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Error setting SCL high\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"read %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ivtv*, i8*, i32)* @ivtv_readbyte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtv_readbyte(%struct.ivtv* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ivtv*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ivtv* %0, %struct.ivtv** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %6, align 8
  store i8 0, i8* %9, align 1
  %10 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %11 = call i32 @ivtv_setsda(%struct.ivtv* %10, i32 1)
  %12 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %13 = call i32 @ivtv_scldelay(%struct.ivtv* %12)
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %42, %3
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 8
  br i1 %16, label %17, label %45

17:                                               ; preds = %14
  %18 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %19 = call i32 @ivtv_setscl(%struct.ivtv* %18, i32 0)
  %20 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %21 = call i32 @ivtv_scldelay(%struct.ivtv* %20)
  %22 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %23 = call i32 @ivtv_setscl(%struct.ivtv* %22, i32 1)
  %24 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %25 = call i32 @ivtv_waitscl(%struct.ivtv* %24, i32 1)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %17
  %28 = call i32 @IVTV_DEBUG_I2C(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EREMOTEIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %66

31:                                               ; preds = %17
  %32 = load i8*, i8** %6, align 8
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = shl i32 %34, 1
  %36 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %37 = call zeroext i8 @ivtv_getsda(%struct.ivtv* %36)
  %38 = zext i8 %37 to i32
  %39 = or i32 %35, %38
  %40 = trunc i32 %39 to i8
  %41 = load i8*, i8** %6, align 8
  store i8 %40, i8* %41, align 1
  br label %42

42:                                               ; preds = %31
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %14

45:                                               ; preds = %14
  %46 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %47 = call i32 @ivtv_setscl(%struct.ivtv* %46, i32 0)
  %48 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %49 = call i32 @ivtv_scldelay(%struct.ivtv* %48)
  %50 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @ivtv_setsda(%struct.ivtv* %50, i32 %51)
  %53 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %54 = call i32 @ivtv_scldelay(%struct.ivtv* %53)
  %55 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %56 = call i32 @ivtv_setscl(%struct.ivtv* %55, i32 1)
  %57 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %58 = call i32 @ivtv_scldelay(%struct.ivtv* %57)
  %59 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %60 = call i32 @ivtv_setscl(%struct.ivtv* %59, i32 0)
  %61 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %62 = call i32 @ivtv_scldelay(%struct.ivtv* %61)
  %63 = load i8*, i8** %6, align 8
  %64 = load i8, i8* %63, align 1
  %65 = call i32 @IVTV_DEBUG_HI_I2C(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %64)
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %45, %27
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @ivtv_setsda(%struct.ivtv*, i32) #1

declare dso_local i32 @ivtv_scldelay(%struct.ivtv*) #1

declare dso_local i32 @ivtv_setscl(%struct.ivtv*, i32) #1

declare dso_local i32 @ivtv_waitscl(%struct.ivtv*, i32) #1

declare dso_local i32 @IVTV_DEBUG_I2C(i8*) #1

declare dso_local zeroext i8 @ivtv_getsda(%struct.ivtv*) #1

declare dso_local i32 @IVTV_DEBUG_HI_I2C(i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
