; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_msgbuf.c_brcmf_msgbuf_flowring_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_msgbuf.c_brcmf_msgbuf_flowring_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_msgbuf = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i32, i64 }
%struct.brcmf_msgbuf_work_item = type { i32, i32, i32, i32, i64 }
%struct.ethhdr = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@BRCMF_FLOWRING_INVALID_ID = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.brcmf_msgbuf*, i32, %struct.sk_buff*)* @brcmf_msgbuf_flowring_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @brcmf_msgbuf_flowring_create(%struct.brcmf_msgbuf* %0, i32 %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.brcmf_msgbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.brcmf_msgbuf_work_item*, align 8
  %9 = alloca %struct.ethhdr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.brcmf_msgbuf* %0, %struct.brcmf_msgbuf** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.ethhdr*
  store %struct.ethhdr* %15, %struct.ethhdr** %9, align 8
  %16 = load i32, i32* @GFP_ATOMIC, align 4
  %17 = call %struct.brcmf_msgbuf_work_item* @kzalloc(i32 24, i32 %16)
  store %struct.brcmf_msgbuf_work_item* %17, %struct.brcmf_msgbuf_work_item** %8, align 8
  %18 = load %struct.brcmf_msgbuf_work_item*, %struct.brcmf_msgbuf_work_item** %8, align 8
  %19 = icmp eq %struct.brcmf_msgbuf_work_item* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i64, i64* @BRCMF_FLOWRING_INVALID_ID, align 8
  store i64 %21, i64* %4, align 8
  br label %81

22:                                               ; preds = %3
  %23 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %24 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ethhdr*, %struct.ethhdr** %9, align 8
  %27 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i64 @brcmf_flowring_create(i32 %25, i32 %28, i32 %31, i32 %32)
  store i64 %33, i64* %10, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* @BRCMF_FLOWRING_INVALID_ID, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %22
  %38 = load %struct.brcmf_msgbuf_work_item*, %struct.brcmf_msgbuf_work_item** %8, align 8
  %39 = call i32 @kfree(%struct.brcmf_msgbuf_work_item* %38)
  %40 = load i64, i64* %10, align 8
  store i64 %40, i64* %4, align 8
  br label %81

41:                                               ; preds = %22
  %42 = load i64, i64* %10, align 8
  %43 = load %struct.brcmf_msgbuf_work_item*, %struct.brcmf_msgbuf_work_item** %8, align 8
  %44 = getelementptr inbounds %struct.brcmf_msgbuf_work_item, %struct.brcmf_msgbuf_work_item* %43, i32 0, i32 4
  store i64 %42, i64* %44, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.brcmf_msgbuf_work_item*, %struct.brcmf_msgbuf_work_item** %8, align 8
  %47 = getelementptr inbounds %struct.brcmf_msgbuf_work_item, %struct.brcmf_msgbuf_work_item* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.brcmf_msgbuf_work_item*, %struct.brcmf_msgbuf_work_item** %8, align 8
  %49 = getelementptr inbounds %struct.brcmf_msgbuf_work_item, %struct.brcmf_msgbuf_work_item* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ethhdr*, %struct.ethhdr** %9, align 8
  %52 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @ETH_ALEN, align 4
  %55 = call i32 @memcpy(i32 %50, i32 %53, i32 %54)
  %56 = load %struct.brcmf_msgbuf_work_item*, %struct.brcmf_msgbuf_work_item** %8, align 8
  %57 = getelementptr inbounds %struct.brcmf_msgbuf_work_item, %struct.brcmf_msgbuf_work_item* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.ethhdr*, %struct.ethhdr** %9, align 8
  %60 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @ETH_ALEN, align 4
  %63 = call i32 @memcpy(i32 %58, i32 %61, i32 %62)
  %64 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %65 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %64, i32 0, i32 1
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @spin_lock_irqsave(i32* %65, i32 %66)
  %68 = load %struct.brcmf_msgbuf_work_item*, %struct.brcmf_msgbuf_work_item** %8, align 8
  %69 = getelementptr inbounds %struct.brcmf_msgbuf_work_item, %struct.brcmf_msgbuf_work_item* %68, i32 0, i32 1
  %70 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %71 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %70, i32 0, i32 2
  %72 = call i32 @list_add_tail(i32* %69, i32* %71)
  %73 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %74 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %73, i32 0, i32 1
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @spin_unlock_irqrestore(i32* %74, i32 %75)
  %77 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %78 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %77, i32 0, i32 0
  %79 = call i32 @schedule_work(i32* %78)
  %80 = load i64, i64* %10, align 8
  store i64 %80, i64* %4, align 8
  br label %81

81:                                               ; preds = %41, %37, %20
  %82 = load i64, i64* %4, align 8
  ret i64 %82
}

declare dso_local %struct.brcmf_msgbuf_work_item* @kzalloc(i32, i32) #1

declare dso_local i64 @brcmf_flowring_create(i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.brcmf_msgbuf_work_item*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
