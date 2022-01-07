; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_msgs.c_hfi_process_msg_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_msgs.c_hfi_process_msg_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi_done_handler = type { i64, i64, i32 (%struct.venus_core*, %struct.venus_inst*, %struct.hfi_pkt_hdr*)*, i32, i64 }
%struct.venus_core = type { %struct.device* }
%struct.device = type { i32 }
%struct.venus_inst = type { i32 }
%struct.hfi_pkt_hdr = type { i64, i32 }
%struct.hfi_session_pkt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@handlers = common dso_local global %struct.hfi_done_handler* null, align 8
@.str = private unnamed_addr constant [48 x i8] c"bad packet size (%d should be %d, pkt type:%x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"no valid instance(pkt session_id:%x, pkt:%x)\0A\00", align 1
@HFI_MSG_EVENT_NOTIFY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"got invalid session id:%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfi_process_msg_packet(%struct.venus_core* %0, %struct.hfi_pkt_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.venus_core*, align 8
  %5 = alloca %struct.hfi_pkt_hdr*, align 8
  %6 = alloca %struct.hfi_done_handler*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.venus_inst*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.hfi_session_pkt*, align 8
  store %struct.venus_core* %0, %struct.venus_core** %4, align 8
  store %struct.hfi_pkt_hdr* %1, %struct.hfi_pkt_hdr** %5, align 8
  %12 = load %struct.venus_core*, %struct.venus_core** %4, align 8
  %13 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %12, i32 0, i32 0
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %34, %2
  %16 = load i32, i32* %10, align 4
  %17 = load %struct.hfi_done_handler*, %struct.hfi_done_handler** @handlers, align 8
  %18 = call i32 @ARRAY_SIZE(%struct.hfi_done_handler* %17)
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %15
  %21 = load %struct.hfi_done_handler*, %struct.hfi_done_handler** @handlers, align 8
  %22 = load i32, i32* %10, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.hfi_done_handler, %struct.hfi_done_handler* %21, i64 %23
  store %struct.hfi_done_handler* %24, %struct.hfi_done_handler** %6, align 8
  %25 = load %struct.hfi_done_handler*, %struct.hfi_done_handler** %6, align 8
  %26 = getelementptr inbounds %struct.hfi_done_handler, %struct.hfi_done_handler* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.hfi_pkt_hdr*, %struct.hfi_pkt_hdr** %5, align 8
  %29 = getelementptr inbounds %struct.hfi_pkt_hdr, %struct.hfi_pkt_hdr* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  br label %34

33:                                               ; preds = %20
  store i32 1, i32* %9, align 4
  br label %37

34:                                               ; preds = %32
  %35 = load i32, i32* %10, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %10, align 4
  br label %15

37:                                               ; preds = %33, %15
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = load %struct.hfi_pkt_hdr*, %struct.hfi_pkt_hdr** %5, align 8
  %42 = getelementptr inbounds %struct.hfi_pkt_hdr, %struct.hfi_pkt_hdr* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %3, align 4
  br label %143

44:                                               ; preds = %37
  %45 = load %struct.hfi_pkt_hdr*, %struct.hfi_pkt_hdr** %5, align 8
  %46 = getelementptr inbounds %struct.hfi_pkt_hdr, %struct.hfi_pkt_hdr* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %80

49:                                               ; preds = %44
  %50 = load %struct.hfi_pkt_hdr*, %struct.hfi_pkt_hdr** %5, align 8
  %51 = getelementptr inbounds %struct.hfi_pkt_hdr, %struct.hfi_pkt_hdr* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.hfi_done_handler*, %struct.hfi_done_handler** %6, align 8
  %54 = getelementptr inbounds %struct.hfi_done_handler, %struct.hfi_done_handler* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %52, %55
  br i1 %56, label %57, label %80

57:                                               ; preds = %49
  %58 = load %struct.hfi_pkt_hdr*, %struct.hfi_pkt_hdr** %5, align 8
  %59 = getelementptr inbounds %struct.hfi_pkt_hdr, %struct.hfi_pkt_hdr* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.hfi_done_handler*, %struct.hfi_done_handler** %6, align 8
  %62 = getelementptr inbounds %struct.hfi_done_handler, %struct.hfi_done_handler* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp slt i64 %60, %63
  br i1 %64, label %65, label %80

65:                                               ; preds = %57
  %66 = load %struct.device*, %struct.device** %7, align 8
  %67 = load %struct.hfi_pkt_hdr*, %struct.hfi_pkt_hdr** %5, align 8
  %68 = getelementptr inbounds %struct.hfi_pkt_hdr, %struct.hfi_pkt_hdr* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.hfi_done_handler*, %struct.hfi_done_handler** %6, align 8
  %71 = getelementptr inbounds %struct.hfi_done_handler, %struct.hfi_done_handler* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.hfi_pkt_hdr*, %struct.hfi_pkt_hdr** %5, align 8
  %74 = getelementptr inbounds %struct.hfi_pkt_hdr, %struct.hfi_pkt_hdr* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %66, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %69, i64 %72, i32 %75)
  %77 = load %struct.hfi_pkt_hdr*, %struct.hfi_pkt_hdr** %5, align 8
  %78 = getelementptr inbounds %struct.hfi_pkt_hdr, %struct.hfi_pkt_hdr* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %3, align 4
  br label %143

80:                                               ; preds = %57, %49, %44
  %81 = load %struct.hfi_done_handler*, %struct.hfi_done_handler** %6, align 8
  %82 = getelementptr inbounds %struct.hfi_done_handler, %struct.hfi_done_handler* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  store %struct.venus_inst* null, %struct.venus_inst** %8, align 8
  br label %131

86:                                               ; preds = %80
  %87 = load %struct.hfi_pkt_hdr*, %struct.hfi_pkt_hdr** %5, align 8
  %88 = bitcast %struct.hfi_pkt_hdr* %87 to %struct.hfi_session_pkt*
  store %struct.hfi_session_pkt* %88, %struct.hfi_session_pkt** %11, align 8
  %89 = load %struct.venus_core*, %struct.venus_core** %4, align 8
  %90 = load %struct.hfi_session_pkt*, %struct.hfi_session_pkt** %11, align 8
  %91 = getelementptr inbounds %struct.hfi_session_pkt, %struct.hfi_session_pkt* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call %struct.venus_inst* @to_instance(%struct.venus_core* %89, i32 %93)
  store %struct.venus_inst* %94, %struct.venus_inst** %8, align 8
  %95 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %96 = icmp ne %struct.venus_inst* %95, null
  br i1 %96, label %113, label %97

97:                                               ; preds = %86
  %98 = load %struct.device*, %struct.device** %7, align 8
  %99 = load %struct.hfi_session_pkt*, %struct.hfi_session_pkt** %11, align 8
  %100 = getelementptr inbounds %struct.hfi_session_pkt, %struct.hfi_session_pkt* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.hfi_done_handler*, %struct.hfi_done_handler** %6, align 8
  %104 = icmp ne %struct.hfi_done_handler* %103, null
  br i1 %104, label %105, label %109

105:                                              ; preds = %97
  %106 = load %struct.hfi_done_handler*, %struct.hfi_done_handler** %6, align 8
  %107 = getelementptr inbounds %struct.hfi_done_handler, %struct.hfi_done_handler* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  br label %110

109:                                              ; preds = %97
  br label %110

110:                                              ; preds = %109, %105
  %111 = phi i32 [ %108, %105 ], [ 0, %109 ]
  %112 = call i32 @dev_warn(%struct.device* %98, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %102, i32 %111)
  br label %113

113:                                              ; preds = %110, %86
  %114 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %115 = icmp ne %struct.venus_inst* %114, null
  br i1 %115, label %130, label %116

116:                                              ; preds = %113
  %117 = load %struct.hfi_pkt_hdr*, %struct.hfi_pkt_hdr** %5, align 8
  %118 = getelementptr inbounds %struct.hfi_pkt_hdr, %struct.hfi_pkt_hdr* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @HFI_MSG_EVENT_NOTIFY, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %130

122:                                              ; preds = %116
  %123 = load %struct.device*, %struct.device** %7, align 8
  %124 = load %struct.hfi_session_pkt*, %struct.hfi_session_pkt** %11, align 8
  %125 = getelementptr inbounds %struct.hfi_session_pkt, %struct.hfi_session_pkt* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = sext i32 %127 to i64
  %129 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %123, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %128)
  br label %139

130:                                              ; preds = %116, %113
  br label %131

131:                                              ; preds = %130, %85
  %132 = load %struct.hfi_done_handler*, %struct.hfi_done_handler** %6, align 8
  %133 = getelementptr inbounds %struct.hfi_done_handler, %struct.hfi_done_handler* %132, i32 0, i32 2
  %134 = load i32 (%struct.venus_core*, %struct.venus_inst*, %struct.hfi_pkt_hdr*)*, i32 (%struct.venus_core*, %struct.venus_inst*, %struct.hfi_pkt_hdr*)** %133, align 8
  %135 = load %struct.venus_core*, %struct.venus_core** %4, align 8
  %136 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %137 = load %struct.hfi_pkt_hdr*, %struct.hfi_pkt_hdr** %5, align 8
  %138 = call i32 %134(%struct.venus_core* %135, %struct.venus_inst* %136, %struct.hfi_pkt_hdr* %137)
  br label %139

139:                                              ; preds = %131, %122
  %140 = load %struct.hfi_pkt_hdr*, %struct.hfi_pkt_hdr** %5, align 8
  %141 = getelementptr inbounds %struct.hfi_pkt_hdr, %struct.hfi_pkt_hdr* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  store i32 %142, i32* %3, align 4
  br label %143

143:                                              ; preds = %139, %65, %40
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i32 @ARRAY_SIZE(%struct.hfi_done_handler*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64, ...) #1

declare dso_local %struct.venus_inst* @to_instance(%struct.venus_core*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
