; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/seco-cec/extr_seco-cec.c_secocec_rx_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/seco-cec/extr_seco-cec.c_secocec_rx_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { i32 }
%struct.secocec_data = type { i32, %struct.device* }
%struct.device = type { i32 }
%struct.cec_msg = type { i32, i32* }

@SECOCEC_STATUS_RX_OVERFLOW_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Received more than 16 bytes. Discarding\00", align 1
@SECOCEC_STATUS_RX_ERROR_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Message received with errors. Discarding\00", align 1
@EIO = common dso_local global i32 0, align 4
@SECOCEC_READ_DATA_LENGTH = common dso_local global i64 0, align 8
@CEC_MAX_MSG_SIZE = common dso_local global i32 0, align 4
@SECOCEC_READ_BYTE0 = common dso_local global i64 0, align 8
@SECOCEC_READ_OPERATION_ID = common dso_local global i64 0, align 8
@SECOCEC_READ_DATA_00 = common dso_local global i64 0, align 8
@SECOCEC_STATUS_MSG_RECEIVED_MASK = common dso_local global i32 0, align 4
@SECOCEC_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cec_adapter*, i32)* @secocec_rx_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @secocec_rx_done(%struct.cec_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.cec_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.secocec_data*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.cec_msg, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.cec_adapter* %0, %struct.cec_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %15 = call %struct.secocec_data* @cec_get_drvdata(%struct.cec_adapter* %14)
  store %struct.secocec_data* %15, %struct.secocec_data** %5, align 8
  %16 = load %struct.secocec_data*, %struct.secocec_data** %5, align 8
  %17 = getelementptr inbounds %struct.secocec_data, %struct.secocec_data* %16, i32 0, i32 1
  %18 = load %struct.device*, %struct.device** %17, align 8
  store %struct.device* %18, %struct.device** %6, align 8
  %19 = bitcast %struct.cec_msg* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 16, i1 false)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @SECOCEC_STATUS_RX_OVERFLOW_MASK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load %struct.device*, %struct.device** %6, align 8
  %26 = call i32 @dev_warn(%struct.device* %25, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %27

27:                                               ; preds = %24, %2
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @SECOCEC_STATUS_RX_ERROR_MASK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = call i32 @dev_warn(%struct.device* %33, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %13, align 4
  br label %128

37:                                               ; preds = %27
  %38 = load i64, i64* @SECOCEC_READ_DATA_LENGTH, align 8
  %39 = call i32 @smb_rd16(i64 %38, i32* %12)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %142

43:                                               ; preds = %37
  %44 = load i32, i32* %12, align 4
  %45 = add nsw i32 %44, 1
  %46 = load i32, i32* @CEC_MAX_MSG_SIZE, align 4
  %47 = call i32 @min(i32 %45, i32 %46)
  %48 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %7, i32 0, i32 0
  store i32 %47, i32* %48, align 8
  %49 = load i64, i64* @SECOCEC_READ_BYTE0, align 8
  %50 = call i32 @smb_rd16(i64 %49, i32* %12)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %142

54:                                               ; preds = %43
  %55 = load i32, i32* %12, align 4
  %56 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %7, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 %55, i32* %58, align 4
  %59 = load i64, i64* @SECOCEC_READ_OPERATION_ID, align 8
  %60 = call i32 @smb_rd16(i64 %59, i32* %12)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  br label %142

64:                                               ; preds = %54
  %65 = load i32, i32* %12, align 4
  %66 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %7, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  store i32 %65, i32* %68, align 4
  %69 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %7, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp sgt i32 %70, 1
  br i1 %71, label %72, label %112

72:                                               ; preds = %64
  %73 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %7, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sub nsw i32 %74, 2
  store i32 %75, i32* %9, align 4
  %76 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %7, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  store i32* %78, i32** %11, align 8
  store i32 0, i32* %10, align 4
  br label %79

79:                                               ; preds = %108, %72
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %111

83:                                               ; preds = %79
  %84 = load i64, i64* @SECOCEC_READ_DATA_00, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sdiv i32 %85, 2
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %84, %87
  %89 = call i32 @smb_rd16(i64 %88, i32* %12)
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %13, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %83
  br label %142

93:                                               ; preds = %83
  %94 = load i32, i32* %12, align 4
  %95 = and i32 %94, 255
  %96 = load i32*, i32** %11, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 %95, i32* %99, align 4
  %100 = load i32, i32* %12, align 4
  %101 = and i32 %100, 65280
  %102 = ashr i32 %101, 8
  %103 = load i32*, i32** %11, align 8
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  store i32 %102, i32* %107, align 4
  br label %108

108:                                              ; preds = %93
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %109, 2
  store i32 %110, i32* %10, align 4
  br label %79

111:                                              ; preds = %79
  br label %112

112:                                              ; preds = %111, %64
  %113 = load %struct.secocec_data*, %struct.secocec_data** %5, align 8
  %114 = getelementptr inbounds %struct.secocec_data, %struct.secocec_data* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @cec_received_msg(i32 %115, %struct.cec_msg* %7)
  %117 = load i32, i32* @SECOCEC_STATUS_MSG_RECEIVED_MASK, align 4
  store i32 %117, i32* %4, align 4
  %118 = load i32, i32* %8, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %112
  %121 = load i32, i32* @SECOCEC_STATUS_RX_OVERFLOW_MASK, align 4
  %122 = load i32, i32* %4, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %4, align 4
  br label %124

124:                                              ; preds = %120, %112
  %125 = load i32, i32* @SECOCEC_STATUS, align 4
  %126 = load i32, i32* %4, align 4
  %127 = call i32 @smb_wr16(i32 %125, i32 %126)
  store i32 %127, i32* %13, align 4
  br label %142

128:                                              ; preds = %32
  %129 = load i32, i32* @SECOCEC_STATUS_MSG_RECEIVED_MASK, align 4
  %130 = load i32, i32* @SECOCEC_STATUS_RX_ERROR_MASK, align 4
  %131 = or i32 %129, %130
  store i32 %131, i32* %4, align 4
  %132 = load i32, i32* %8, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %128
  %135 = load i32, i32* @SECOCEC_STATUS_RX_OVERFLOW_MASK, align 4
  %136 = load i32, i32* %4, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %4, align 4
  br label %138

138:                                              ; preds = %134, %128
  %139 = load i32, i32* @SECOCEC_STATUS, align 4
  %140 = load i32, i32* %4, align 4
  %141 = call i32 @smb_wr16(i32 %139, i32 %140)
  br label %142

142:                                              ; preds = %138, %124, %92, %63, %53, %42
  ret void
}

declare dso_local %struct.secocec_data* @cec_get_drvdata(%struct.cec_adapter*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @smb_rd16(i64, i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @cec_received_msg(i32, %struct.cec_msg*) #1

declare dso_local i32 @smb_wr16(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
