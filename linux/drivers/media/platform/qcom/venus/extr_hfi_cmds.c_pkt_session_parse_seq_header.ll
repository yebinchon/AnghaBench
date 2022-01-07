; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_cmds.c_pkt_session_parse_seq_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_cmds.c_pkt_session_parse_seq_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi_session_parse_sequence_header_pkt = type { i8*, i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@HFI_CMD_SESSION_PARSE_SEQUENCE_HEADER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pkt_session_parse_seq_header(%struct.hfi_session_parse_sequence_header_pkt* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hfi_session_parse_sequence_header_pkt*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.hfi_session_parse_sequence_header_pkt* %0, %struct.hfi_session_parse_sequence_header_pkt** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %4
  %13 = load i8*, i8** %8, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i8*, i8** %9, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15, %12, %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %42

21:                                               ; preds = %15
  %22 = load %struct.hfi_session_parse_sequence_header_pkt*, %struct.hfi_session_parse_sequence_header_pkt** %6, align 8
  %23 = getelementptr inbounds %struct.hfi_session_parse_sequence_header_pkt, %struct.hfi_session_parse_sequence_header_pkt* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 32, i32* %25, align 4
  %26 = load i32, i32* @HFI_CMD_SESSION_PARSE_SEQUENCE_HEADER, align 4
  %27 = load %struct.hfi_session_parse_sequence_header_pkt*, %struct.hfi_session_parse_sequence_header_pkt** %6, align 8
  %28 = getelementptr inbounds %struct.hfi_session_parse_sequence_header_pkt, %struct.hfi_session_parse_sequence_header_pkt* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store i32 %26, i32* %30, align 4
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @hash32_ptr(i8* %31)
  %33 = load %struct.hfi_session_parse_sequence_header_pkt*, %struct.hfi_session_parse_sequence_header_pkt** %6, align 8
  %34 = getelementptr inbounds %struct.hfi_session_parse_sequence_header_pkt, %struct.hfi_session_parse_sequence_header_pkt* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = load %struct.hfi_session_parse_sequence_header_pkt*, %struct.hfi_session_parse_sequence_header_pkt** %6, align 8
  %38 = getelementptr inbounds %struct.hfi_session_parse_sequence_header_pkt, %struct.hfi_session_parse_sequence_header_pkt* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load %struct.hfi_session_parse_sequence_header_pkt*, %struct.hfi_session_parse_sequence_header_pkt** %6, align 8
  %41 = getelementptr inbounds %struct.hfi_session_parse_sequence_header_pkt, %struct.hfi_session_parse_sequence_header_pkt* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %21, %18
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @hash32_ptr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
