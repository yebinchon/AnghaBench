; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_msgbuf.c_brcmf_msgbuf_process_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_msgbuf.c_brcmf_msgbuf_process_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_msgbuf = type { i32 }
%struct.brcmf_commonring = type { i64 }

@BRCMF_MSGBUF_UPDATE_RX_PTR_THRS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_msgbuf*, %struct.brcmf_commonring*)* @brcmf_msgbuf_process_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_msgbuf_process_rx(%struct.brcmf_msgbuf* %0, %struct.brcmf_commonring* %1) #0 {
  %3 = alloca %struct.brcmf_msgbuf*, align 8
  %4 = alloca %struct.brcmf_commonring*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.brcmf_msgbuf* %0, %struct.brcmf_msgbuf** %3, align 8
  store %struct.brcmf_commonring* %1, %struct.brcmf_commonring** %4, align 8
  br label %8

8:                                                ; preds = %56, %2
  %9 = load %struct.brcmf_commonring*, %struct.brcmf_commonring** %4, align 8
  %10 = call i8* @brcmf_commonring_get_read_ptr(%struct.brcmf_commonring* %9, i64* %6)
  store i8* %10, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  br label %57

14:                                               ; preds = %8
  store i64 0, i64* %7, align 8
  br label %15

15:                                               ; preds = %41, %14
  %16 = load i64, i64* %6, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %44

18:                                               ; preds = %15
  %19 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %3, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %3, align 8
  %22 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr i8, i8* %20, i64 %24
  %26 = call i32 @brcmf_msgbuf_process_msgtype(%struct.brcmf_msgbuf* %19, i8* %25)
  %27 = load %struct.brcmf_commonring*, %struct.brcmf_commonring** %4, align 8
  %28 = call i32 @brcmf_commonring_len_item(%struct.brcmf_commonring* %27)
  %29 = load i8*, i8** %5, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr i8, i8* %29, i64 %30
  store i8* %31, i8** %5, align 8
  %32 = load i64, i64* %7, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %7, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @BRCMF_MSGBUF_UPDATE_RX_PTR_THRS, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %18
  %38 = load %struct.brcmf_commonring*, %struct.brcmf_commonring** %4, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @brcmf_commonring_read_complete(%struct.brcmf_commonring* %38, i64 %39)
  store i64 0, i64* %7, align 8
  br label %41

41:                                               ; preds = %37, %18
  %42 = load i64, i64* %6, align 8
  %43 = add nsw i64 %42, -1
  store i64 %43, i64* %6, align 8
  br label %15

44:                                               ; preds = %15
  %45 = load i64, i64* %7, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load %struct.brcmf_commonring*, %struct.brcmf_commonring** %4, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @brcmf_commonring_read_complete(%struct.brcmf_commonring* %48, i64 %49)
  br label %51

51:                                               ; preds = %47, %44
  %52 = load %struct.brcmf_commonring*, %struct.brcmf_commonring** %4, align 8
  %53 = getelementptr inbounds %struct.brcmf_commonring, %struct.brcmf_commonring* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %8

57:                                               ; preds = %13, %51
  ret void
}

declare dso_local i8* @brcmf_commonring_get_read_ptr(%struct.brcmf_commonring*, i64*) #1

declare dso_local i32 @brcmf_msgbuf_process_msgtype(%struct.brcmf_msgbuf*, i8*) #1

declare dso_local i32 @brcmf_commonring_len_item(%struct.brcmf_commonring*) #1

declare dso_local i32 @brcmf_commonring_read_complete(%struct.brcmf_commonring*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
