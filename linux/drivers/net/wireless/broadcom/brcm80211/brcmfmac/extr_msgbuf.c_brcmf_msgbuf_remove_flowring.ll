; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_msgbuf.c_brcmf_msgbuf_remove_flowring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_msgbuf.c_brcmf_msgbuf_remove_flowring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_msgbuf = type { i32, i32*, %struct.TYPE_6__*, %struct.TYPE_4__** }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i8* }

@MSGBUF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Removing flowring %d\0A\00", align 1
@BRCMF_H2D_TXFLOWRING_MAX_ITEM = common dso_local global i32 0, align 4
@BRCMF_H2D_TXFLOWRING_ITEMSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_msgbuf*, i64)* @brcmf_msgbuf_remove_flowring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_msgbuf_remove_flowring(%struct.brcmf_msgbuf* %0, i64 %1) #0 {
  %3 = alloca %struct.brcmf_msgbuf*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.brcmf_msgbuf* %0, %struct.brcmf_msgbuf** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i32, i32* @MSGBUF, align 4
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @brcmf_dbg(i32 %7, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %8)
  %10 = load i32, i32* @BRCMF_H2D_TXFLOWRING_MAX_ITEM, align 4
  %11 = load i32, i32* @BRCMF_H2D_TXFLOWRING_ITEMSIZE, align 4
  %12 = mul nsw i32 %10, %11
  store i32 %12, i32* %5, align 4
  %13 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %3, align 8
  %14 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %13, i32 0, i32 3
  %15 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %14, align 8
  %16 = load i64, i64* %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %15, i64 %16
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %6, align 8
  %21 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %3, align 8
  %22 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %21, i32 0, i32 2
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %3, align 8
  %31 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* %4, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dma_free_coherent(i32 %27, i32 %28, i8* %29, i32 %35)
  %37 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %3, align 8
  %38 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @brcmf_flowring_delete(i32 %39, i64 %40)
  ret void
}

declare dso_local i32 @brcmf_dbg(i32, i8*, i64) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i8*, i32) #1

declare dso_local i32 @brcmf_flowring_delete(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
