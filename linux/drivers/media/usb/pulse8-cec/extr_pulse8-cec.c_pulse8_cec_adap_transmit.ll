; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pulse8-cec/extr_pulse8-cec.c_pulse8_cec_adap_transmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pulse8-cec/extr_pulse8-cec.c_pulse8_cec_adap_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { i32 }
%struct.cec_msg = type { i32, i32* }
%struct.pulse8 = type { i32 }

@MSGCODE_TRANSMIT_IDLETIME = common dso_local global i32 0, align 4
@MSGCODE_COMMAND_ACCEPTED = common dso_local global i32 0, align 4
@MSGCODE_TRANSMIT_ACK_POLARITY = common dso_local global i32 0, align 4
@MSGCODE_TRANSMIT_EOM = common dso_local global i32 0, align 4
@MSGCODE_TRANSMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cec_adapter*, i32, i32, %struct.cec_msg*)* @pulse8_cec_adap_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pulse8_cec_adap_transmit(%struct.cec_adapter* %0, i32 %1, i32 %2, %struct.cec_msg* %3) #0 {
  %5 = alloca %struct.cec_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cec_msg*, align 8
  %9 = alloca %struct.pulse8*, align 8
  %10 = alloca [2 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cec_adapter* %0, %struct.cec_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.cec_msg* %3, %struct.cec_msg** %8, align 8
  %13 = load %struct.cec_adapter*, %struct.cec_adapter** %5, align 8
  %14 = call %struct.pulse8* @cec_get_drvdata(%struct.cec_adapter* %13)
  store %struct.pulse8* %14, %struct.pulse8** %9, align 8
  %15 = load i32, i32* @MSGCODE_TRANSMIT_IDLETIME, align 4
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %7, align 4
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 %17, i32* %18, align 4
  %19 = load %struct.pulse8*, %struct.pulse8** %9, align 8
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %21 = load i32, i32* @MSGCODE_COMMAND_ACCEPTED, align 4
  %22 = call i32 @pulse8_send_and_wait(%struct.pulse8* %19, i32* %20, i32 2, i32 %21, i32 1)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* @MSGCODE_TRANSMIT_ACK_POLARITY, align 4
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 %23, i32* %24, align 4
  %25 = load %struct.cec_msg*, %struct.cec_msg** %8, align 8
  %26 = call i32 @cec_msg_is_broadcast(%struct.cec_msg* %25)
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %4
  %31 = load %struct.pulse8*, %struct.pulse8** %9, align 8
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %33 = load i32, i32* @MSGCODE_COMMAND_ACCEPTED, align 4
  %34 = call i32 @pulse8_send_and_wait(%struct.pulse8* %31, i32* %32, i32 2, i32 %33, i32 1)
  store i32 %34, i32* %12, align 4
  br label %35

35:                                               ; preds = %30, %4
  %36 = load %struct.cec_msg*, %struct.cec_msg** %8, align 8
  %37 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @MSGCODE_TRANSMIT_EOM, align 4
  br label %44

42:                                               ; preds = %35
  %43 = load i32, i32* @MSGCODE_TRANSMIT, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 %45, i32* %46, align 4
  %47 = load %struct.cec_msg*, %struct.cec_msg** %8, align 8
  %48 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %44
  %56 = load %struct.pulse8*, %struct.pulse8** %9, align 8
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %58 = load i32, i32* @MSGCODE_COMMAND_ACCEPTED, align 4
  %59 = call i32 @pulse8_send_and_wait(%struct.pulse8* %56, i32* %57, i32 2, i32 %58, i32 1)
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %55, %44
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %134, label %63

63:                                               ; preds = %60
  %64 = load %struct.cec_msg*, %struct.cec_msg** %8, align 8
  %65 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp sgt i32 %66, 1
  br i1 %67, label %68, label %134

68:                                               ; preds = %63
  %69 = load %struct.cec_msg*, %struct.cec_msg** %8, align 8
  %70 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %71, 2
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i32, i32* @MSGCODE_TRANSMIT_EOM, align 4
  br label %77

75:                                               ; preds = %68
  %76 = load i32, i32* @MSGCODE_TRANSMIT, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 %78, i32* %79, align 4
  %80 = load %struct.cec_msg*, %struct.cec_msg** %8, align 8
  %81 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 %84, i32* %85, align 4
  %86 = load %struct.pulse8*, %struct.pulse8** %9, align 8
  %87 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %88 = load i32, i32* @MSGCODE_COMMAND_ACCEPTED, align 4
  %89 = call i32 @pulse8_send_and_wait(%struct.pulse8* %86, i32* %87, i32 2, i32 %88, i32 1)
  store i32 %89, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %90

90:                                               ; preds = %130, %77
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %11, align 4
  %95 = add i32 %94, 2
  %96 = load %struct.cec_msg*, %struct.cec_msg** %8, align 8
  %97 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp ult i32 %95, %98
  br label %100

100:                                              ; preds = %93, %90
  %101 = phi i1 [ false, %90 ], [ %99, %93 ]
  br i1 %101, label %102, label %133

102:                                              ; preds = %100
  %103 = load i32, i32* %11, align 4
  %104 = add i32 %103, 2
  %105 = load %struct.cec_msg*, %struct.cec_msg** %8, align 8
  %106 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = sub nsw i32 %107, 1
  %109 = icmp eq i32 %104, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %102
  %111 = load i32, i32* @MSGCODE_TRANSMIT_EOM, align 4
  br label %114

112:                                              ; preds = %102
  %113 = load i32, i32* @MSGCODE_TRANSMIT, align 4
  br label %114

114:                                              ; preds = %112, %110
  %115 = phi i32 [ %111, %110 ], [ %113, %112 ]
  %116 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 %115, i32* %116, align 4
  %117 = load %struct.cec_msg*, %struct.cec_msg** %8, align 8
  %118 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %11, align 4
  %121 = add i32 %120, 2
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %119, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 %124, i32* %125, align 4
  %126 = load %struct.pulse8*, %struct.pulse8** %9, align 8
  %127 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %128 = load i32, i32* @MSGCODE_COMMAND_ACCEPTED, align 4
  %129 = call i32 @pulse8_send_and_wait(%struct.pulse8* %126, i32* %127, i32 2, i32 %128, i32 1)
  store i32 %129, i32* %12, align 4
  br label %130

130:                                              ; preds = %114
  %131 = load i32, i32* %11, align 4
  %132 = add i32 %131, 1
  store i32 %132, i32* %11, align 4
  br label %90

133:                                              ; preds = %100
  br label %134

134:                                              ; preds = %133, %63, %60
  %135 = load i32, i32* %12, align 4
  ret i32 %135
}

declare dso_local %struct.pulse8* @cec_get_drvdata(%struct.cec_adapter*) #1

declare dso_local i32 @pulse8_send_and_wait(%struct.pulse8*, i32*, i32, i32, i32) #1

declare dso_local i32 @cec_msg_is_broadcast(%struct.cec_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
