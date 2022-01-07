; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/rainshadow-cec/extr_rainshadow-cec.c_rain_process_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/rainshadow-cec/extr_rainshadow-cec.c_rain_process_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rain = type { i8*, i32 }
%struct.cec_msg = type { i64, i64 }

@CEC_MAX_MSG_SIZE = common dso_local global i64 0, align 8
@CEC_TX_STATUS_OK = common dso_local global i32 0, align 4
@CEC_TX_STATUS_NACK = common dso_local global i32 0, align 4
@CEC_TX_STATUS_LOW_DRIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rain*)* @rain_process_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rain_process_msg(%struct.rain* %0) #0 {
  %2 = alloca %struct.rain*, align 8
  %3 = alloca %struct.cec_msg, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.rain* %0, %struct.rain** %2, align 8
  %6 = bitcast %struct.cec_msg* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 16, i1 false)
  %7 = load %struct.rain*, %struct.rain** %2, align 8
  %8 = getelementptr inbounds %struct.rain, %struct.rain* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 3
  store i8* %10, i8** %4, align 8
  store i32 -1, i32* %5, align 4
  br label %11

11:                                               ; preds = %66, %1
  %12 = load i8*, i8** %4, align 8
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %15, label %69

15:                                               ; preds = %11
  %16 = load i8*, i8** %4, align 8
  %17 = load i8, i8* %16, align 1
  %18 = call i64 @isxdigit(i8 signext %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %66

21:                                               ; preds = %15
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = call i64 @isxdigit(i8 signext %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %55

27:                                               ; preds = %21
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = load i8, i8* %29, align 1
  %31 = call i64 @isxdigit(i8 signext %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %55

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %3, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CEC_MAX_MSG_SIZE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %69

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %3, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %3, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %41, %43
  %45 = load i8*, i8** %4, align 8
  %46 = call i64 @hex2bin(i64 %44, i8* %45, i32 1)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  br label %66

49:                                               ; preds = %39
  %50 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %3, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %50, align 8
  %53 = load i8*, i8** %4, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %4, align 8
  br label %66

55:                                               ; preds = %27, %21
  %56 = load i8*, i8** %4, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = load i8, i8* %57, align 1
  %59 = icmp ne i8 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load i8*, i8** %4, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = call i32 @hex_to_bin(i8 signext %63)
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %60, %55
  br label %69

66:                                               ; preds = %49, %48, %20
  %67 = load i8*, i8** %4, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %4, align 8
  br label %11

69:                                               ; preds = %65, %38, %11
  %70 = load %struct.rain*, %struct.rain** %2, align 8
  %71 = getelementptr inbounds %struct.rain, %struct.rain* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 82
  br i1 %76, label %77, label %89

77:                                               ; preds = %69
  %78 = load i32, i32* %5, align 4
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %5, align 4
  %82 = icmp eq i32 %81, 2
  br i1 %82, label %83, label %88

83:                                               ; preds = %80, %77
  %84 = load %struct.rain*, %struct.rain** %2, align 8
  %85 = getelementptr inbounds %struct.rain, %struct.rain* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @cec_received_msg(i32 %86, %struct.cec_msg* %3)
  br label %88

88:                                               ; preds = %83, %80
  br label %109

89:                                               ; preds = %69
  %90 = load i32, i32* %5, align 4
  switch i32 %90, label %103 [
    i32 1, label %91
    i32 2, label %97
  ]

91:                                               ; preds = %89
  %92 = load %struct.rain*, %struct.rain** %2, align 8
  %93 = getelementptr inbounds %struct.rain, %struct.rain* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @CEC_TX_STATUS_OK, align 4
  %96 = call i32 @cec_transmit_attempt_done(i32 %94, i32 %95)
  br label %109

97:                                               ; preds = %89
  %98 = load %struct.rain*, %struct.rain** %2, align 8
  %99 = getelementptr inbounds %struct.rain, %struct.rain* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @CEC_TX_STATUS_NACK, align 4
  %102 = call i32 @cec_transmit_attempt_done(i32 %100, i32 %101)
  br label %109

103:                                              ; preds = %89
  %104 = load %struct.rain*, %struct.rain** %2, align 8
  %105 = getelementptr inbounds %struct.rain, %struct.rain* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @CEC_TX_STATUS_LOW_DRIVE, align 4
  %108 = call i32 @cec_transmit_attempt_done(i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %88, %103, %97, %91
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @isxdigit(i8 signext) #2

declare dso_local i64 @hex2bin(i64, i8*, i32) #2

declare dso_local i32 @hex_to_bin(i8 signext) #2

declare dso_local i32 @cec_received_msg(i32, %struct.cec_msg*) #2

declare dso_local i32 @cec_transmit_attempt_done(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
