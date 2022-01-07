; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-i2c.c_ivtv_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-i2c.c_ivtv_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i32 }

@EREMOTEIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"i2c write to %x failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ivtv*, i8, i8*, i64, i32)* @ivtv_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtv_write(%struct.ivtv* %0, i8 zeroext %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.ivtv*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.ivtv* %0, %struct.ivtv** %6, align 8
  store i8 %1, i8* %7, align 1
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* @EREMOTEIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %66, %5
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* %11, align 4
  %21 = icmp slt i32 %20, 8
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi i1 [ false, %16 ], [ %21, %19 ]
  br i1 %23, label %24, label %69

24:                                               ; preds = %22
  %25 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %26 = call i32 @ivtv_start(%struct.ivtv* %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %56

29:                                               ; preds = %24
  %30 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %31 = load i8, i8* %7, align 1
  %32 = zext i8 %31 to i32
  %33 = shl i32 %32, 1
  %34 = trunc i32 %33 to i8
  %35 = call i32 @ivtv_sendbyte(%struct.ivtv* %30, i8 zeroext %34)
  store i32 %35, i32* %12, align 4
  store i64 0, i64* %13, align 8
  br label %36

36:                                               ; preds = %52, %29
  %37 = load i32, i32* %12, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i64, i64* %13, align 8
  %41 = load i64, i64* %9, align 8
  %42 = icmp ult i64 %40, %41
  br label %43

43:                                               ; preds = %39, %36
  %44 = phi i1 [ false, %36 ], [ %42, %39 ]
  br i1 %44, label %45, label %55

45:                                               ; preds = %43
  %46 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = load i64, i64* %13, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = call i32 @ivtv_sendbyte(%struct.ivtv* %46, i8 zeroext %50)
  store i32 %51, i32* %12, align 4
  br label %52

52:                                               ; preds = %45
  %53 = load i64, i64* %13, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %13, align 8
  br label %36

55:                                               ; preds = %43
  br label %56

56:                                               ; preds = %55, %24
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59, %56
  %63 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %64 = call i32 @ivtv_stop(%struct.ivtv* %63)
  br label %65

65:                                               ; preds = %62, %59
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %11, align 4
  br label %16

69:                                               ; preds = %22
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i8, i8* %7, align 1
  %74 = call i32 @IVTV_DEBUG_I2C(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8 zeroext %73)
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i32, i32* %12, align 4
  ret i32 %76
}

declare dso_local i32 @ivtv_start(%struct.ivtv*) #1

declare dso_local i32 @ivtv_sendbyte(%struct.ivtv*, i8 zeroext) #1

declare dso_local i32 @ivtv_stop(%struct.ivtv*) #1

declare dso_local i32 @IVTV_DEBUG_I2C(i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
