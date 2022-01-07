; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_msgbuf.c_brcmf_msgbuf_get_pktid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_msgbuf.c_brcmf_msgbuf_get_pktid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.device = type { i32 }
%struct.brcmf_msgbuf_pktids = type { i64, i32, %struct.brcmf_msgbuf_pktid* }
%struct.brcmf_msgbuf_pktid = type { %struct.TYPE_2__, %struct.sk_buff*, i64, i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [31 x i8] c"Invalid packet id %d (max %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Invalid packet id %d (not in use)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.device*, %struct.brcmf_msgbuf_pktids*, i64)* @brcmf_msgbuf_get_pktid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @brcmf_msgbuf_get_pktid(%struct.device* %0, %struct.brcmf_msgbuf_pktids* %1, i64 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.brcmf_msgbuf_pktids*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.brcmf_msgbuf_pktid*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.brcmf_msgbuf_pktids* %1, %struct.brcmf_msgbuf_pktids** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = icmp ult i64 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8
  %14 = load %struct.brcmf_msgbuf_pktids*, %struct.brcmf_msgbuf_pktids** %6, align 8
  %15 = getelementptr inbounds %struct.brcmf_msgbuf_pktids, %struct.brcmf_msgbuf_pktids* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp uge i64 %13, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %12, %3
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.brcmf_msgbuf_pktids*, %struct.brcmf_msgbuf_pktids** %6, align 8
  %21 = getelementptr inbounds %struct.brcmf_msgbuf_pktids, %struct.brcmf_msgbuf_pktids* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 (i8*, i64, ...) @brcmf_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %19, i64 %22)
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %68

24:                                               ; preds = %12
  %25 = load %struct.brcmf_msgbuf_pktids*, %struct.brcmf_msgbuf_pktids** %6, align 8
  %26 = getelementptr inbounds %struct.brcmf_msgbuf_pktids, %struct.brcmf_msgbuf_pktids* %25, i32 0, i32 2
  %27 = load %struct.brcmf_msgbuf_pktid*, %struct.brcmf_msgbuf_pktid** %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = getelementptr inbounds %struct.brcmf_msgbuf_pktid, %struct.brcmf_msgbuf_pktid* %27, i64 %28
  %30 = getelementptr inbounds %struct.brcmf_msgbuf_pktid, %struct.brcmf_msgbuf_pktid* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %64

34:                                               ; preds = %24
  %35 = load %struct.brcmf_msgbuf_pktids*, %struct.brcmf_msgbuf_pktids** %6, align 8
  %36 = getelementptr inbounds %struct.brcmf_msgbuf_pktids, %struct.brcmf_msgbuf_pktids* %35, i32 0, i32 2
  %37 = load %struct.brcmf_msgbuf_pktid*, %struct.brcmf_msgbuf_pktid** %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = getelementptr inbounds %struct.brcmf_msgbuf_pktid, %struct.brcmf_msgbuf_pktid* %37, i64 %38
  store %struct.brcmf_msgbuf_pktid* %39, %struct.brcmf_msgbuf_pktid** %8, align 8
  %40 = load %struct.device*, %struct.device** %5, align 8
  %41 = load %struct.brcmf_msgbuf_pktid*, %struct.brcmf_msgbuf_pktid** %8, align 8
  %42 = getelementptr inbounds %struct.brcmf_msgbuf_pktid, %struct.brcmf_msgbuf_pktid* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.brcmf_msgbuf_pktid*, %struct.brcmf_msgbuf_pktid** %8, align 8
  %45 = getelementptr inbounds %struct.brcmf_msgbuf_pktid, %struct.brcmf_msgbuf_pktid* %44, i32 0, i32 1
  %46 = load %struct.sk_buff*, %struct.sk_buff** %45, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.brcmf_msgbuf_pktid*, %struct.brcmf_msgbuf_pktid** %8, align 8
  %50 = getelementptr inbounds %struct.brcmf_msgbuf_pktid, %struct.brcmf_msgbuf_pktid* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %48, %51
  %53 = load %struct.brcmf_msgbuf_pktids*, %struct.brcmf_msgbuf_pktids** %6, align 8
  %54 = getelementptr inbounds %struct.brcmf_msgbuf_pktids, %struct.brcmf_msgbuf_pktids* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @dma_unmap_single(%struct.device* %40, i32 %43, i64 %52, i32 %55)
  %57 = load %struct.brcmf_msgbuf_pktid*, %struct.brcmf_msgbuf_pktid** %8, align 8
  %58 = getelementptr inbounds %struct.brcmf_msgbuf_pktid, %struct.brcmf_msgbuf_pktid* %57, i32 0, i32 1
  %59 = load %struct.sk_buff*, %struct.sk_buff** %58, align 8
  store %struct.sk_buff* %59, %struct.sk_buff** %9, align 8
  %60 = load %struct.brcmf_msgbuf_pktid*, %struct.brcmf_msgbuf_pktid** %8, align 8
  %61 = getelementptr inbounds %struct.brcmf_msgbuf_pktid, %struct.brcmf_msgbuf_pktid* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %63, %struct.sk_buff** %4, align 8
  br label %68

64:                                               ; preds = %24
  %65 = load i64, i64* %7, align 8
  %66 = call i32 (i8*, i64, ...) @brcmf_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %65)
  br label %67

67:                                               ; preds = %64
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %68

68:                                               ; preds = %67, %34, %18
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %69
}

declare dso_local i32 @brcmf_err(i8*, i64, ...) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
