; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/rainshadow-cec/extr_rainshadow-cec.c_rain_cec_adap_transmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/rainshadow-cec/extr_rainshadow-cec.c_rain_cec_adap_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { i32 }
%struct.cec_msg = type { i32, i32* }
%struct.rain = type { i32 }

@CEC_MAX_MSG_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"x%x\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"x%x %02x \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cec_adapter*, i32, i32, %struct.cec_msg*)* @rain_cec_adap_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rain_cec_adap_transmit(%struct.cec_adapter* %0, i32 %1, i32 %2, %struct.cec_msg* %3) #0 {
  %5 = alloca %struct.cec_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cec_msg*, align 8
  %9 = alloca %struct.rain*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [3 x i8], align 1
  store %struct.cec_adapter* %0, %struct.cec_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.cec_msg* %3, %struct.cec_msg** %8, align 8
  %15 = load %struct.cec_adapter*, %struct.cec_adapter** %5, align 8
  %16 = call %struct.rain* @cec_get_drvdata(%struct.cec_adapter* %15)
  store %struct.rain* %16, %struct.rain** %9, align 8
  %17 = load i32, i32* @CEC_MAX_MSG_SIZE, align 4
  %18 = mul nsw i32 2, %17
  %19 = add nsw i32 %18, 16
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %10, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %11, align 8
  %23 = load %struct.cec_msg*, %struct.cec_msg** %8, align 8
  %24 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %32

27:                                               ; preds = %4
  %28 = trunc i64 %20 to i32
  %29 = load %struct.cec_msg*, %struct.cec_msg** %8, align 8
  %30 = call i32 @cec_msg_destination(%struct.cec_msg* %29)
  %31 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %22, i32 %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %65

32:                                               ; preds = %4
  %33 = trunc i64 %20 to i32
  %34 = load %struct.cec_msg*, %struct.cec_msg** %8, align 8
  %35 = call i32 @cec_msg_destination(%struct.cec_msg* %34)
  %36 = load %struct.cec_msg*, %struct.cec_msg** %8, align 8
  %37 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %22, i32 %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %40)
  store i32 2, i32* %12, align 4
  br label %42

42:                                               ; preds = %61, %32
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.cec_msg*, %struct.cec_msg** %8, align 8
  %45 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ult i32 %43, %46
  br i1 %47, label %48, label %64

48:                                               ; preds = %42
  %49 = getelementptr inbounds [3 x i8], [3 x i8]* %14, i64 0, i64 0
  %50 = load %struct.cec_msg*, %struct.cec_msg** %8, align 8
  %51 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %12, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %49, i32 3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = getelementptr inbounds [3 x i8], [3 x i8]* %14, i64 0, i64 0
  %59 = trunc i64 %20 to i32
  %60 = call i32 @strlcat(i8* %22, i8* %58, i32 %59)
  br label %61

61:                                               ; preds = %48
  %62 = load i32, i32* %12, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %12, align 4
  br label %42

64:                                               ; preds = %42
  br label %65

65:                                               ; preds = %64, %27
  %66 = load %struct.rain*, %struct.rain** %9, align 8
  %67 = getelementptr inbounds %struct.rain, %struct.rain* %66, i32 0, i32 0
  %68 = call i32 @mutex_lock(i32* %67)
  %69 = load %struct.rain*, %struct.rain** %9, align 8
  %70 = call i32 @rain_send(%struct.rain* %69, i8* %22)
  store i32 %70, i32* %13, align 4
  %71 = load %struct.rain*, %struct.rain** %9, align 8
  %72 = getelementptr inbounds %struct.rain, %struct.rain* %71, i32 0, i32 0
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load i32, i32* %13, align 4
  %75 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %75)
  ret i32 %74
}

declare dso_local %struct.rain* @cec_get_drvdata(%struct.cec_adapter*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, ...) #1

declare dso_local i32 @cec_msg_destination(%struct.cec_msg*) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rain_send(%struct.rain*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
