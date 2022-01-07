; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_mbox.c_otx2_reply_invalid_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_mbox.c_otx2_reply_invalid_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.otx2_mbox = type { i32 }
%struct.msg_rsp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32, i32, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@OTX2_MBOX_RSP_SIG = common dso_local global i32 0, align 4
@MBOX_MSG_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @otx2_reply_invalid_msg(%struct.otx2_mbox* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.otx2_mbox*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.msg_rsp*, align 8
  store %struct.otx2_mbox* %0, %struct.otx2_mbox** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.otx2_mbox*, %struct.otx2_mbox** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i64 @otx2_mbox_alloc_msg(%struct.otx2_mbox* %11, i32 %12, i32 24)
  %14 = inttoptr i64 %13 to %struct.msg_rsp*
  store %struct.msg_rsp* %14, %struct.msg_rsp** %10, align 8
  %15 = load %struct.msg_rsp*, %struct.msg_rsp** %10, align 8
  %16 = icmp ne %struct.msg_rsp* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %37

20:                                               ; preds = %4
  %21 = load i8*, i8** %9, align 8
  %22 = load %struct.msg_rsp*, %struct.msg_rsp** %10, align 8
  %23 = getelementptr inbounds %struct.msg_rsp, %struct.msg_rsp* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 3
  store i8* %21, i8** %24, align 8
  %25 = load i32, i32* @OTX2_MBOX_RSP_SIG, align 4
  %26 = load %struct.msg_rsp*, %struct.msg_rsp** %10, align 8
  %27 = getelementptr inbounds %struct.msg_rsp, %struct.msg_rsp* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* @MBOX_MSG_INVALID, align 4
  %30 = load %struct.msg_rsp*, %struct.msg_rsp** %10, align 8
  %31 = getelementptr inbounds %struct.msg_rsp, %struct.msg_rsp* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load %struct.msg_rsp*, %struct.msg_rsp** %10, align 8
  %35 = getelementptr inbounds %struct.msg_rsp, %struct.msg_rsp* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i8* %33, i8** %36, align 8
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %20, %17
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i64 @otx2_mbox_alloc_msg(%struct.otx2_mbox*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
