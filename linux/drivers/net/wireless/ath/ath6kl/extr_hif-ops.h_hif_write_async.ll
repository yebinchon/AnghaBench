; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_hif-ops.h_hif_write_async.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_hif-ops.h_hif_write_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.htc_packet = type { i32 }

@ATH6KL_DBG_HIF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"hif write async addr 0x%x buf 0x%p len %d request 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl*, i32, i32*, i32, i32, %struct.htc_packet*)* @hif_write_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hif_write_async(%struct.ath6kl* %0, i32 %1, i32* %2, i32 %3, i32 %4, %struct.htc_packet* %5) #0 {
  %7 = alloca %struct.ath6kl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.htc_packet*, align 8
  store %struct.ath6kl* %0, %struct.ath6kl** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.htc_packet* %5, %struct.htc_packet** %12, align 8
  %13 = load i32, i32* @ATH6KL_DBG_HIF, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32*, i32** %9, align 8
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %11, align 4
  %18 = call i32 @ath6kl_dbg(i32 %13, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %14, i32* %15, i32 %16, i32 %17)
  %19 = load %struct.ath6kl*, %struct.ath6kl** %7, align 8
  %20 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = bitcast {}** %22 to i32 (%struct.ath6kl*, i32, i32*, i32, i32, %struct.htc_packet*)**
  %24 = load i32 (%struct.ath6kl*, i32, i32*, i32, i32, %struct.htc_packet*)*, i32 (%struct.ath6kl*, i32, i32*, i32, i32, %struct.htc_packet*)** %23, align 8
  %25 = load %struct.ath6kl*, %struct.ath6kl** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.htc_packet*, %struct.htc_packet** %12, align 8
  %31 = call i32 %24(%struct.ath6kl* %25, i32 %26, i32* %27, i32 %28, i32 %29, %struct.htc_packet* %30)
  ret i32 %31
}

declare dso_local i32 @ath6kl_dbg(i32, i8*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
