; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_hif.c_ath6kl_hif_rw_comp_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_hif.c_ath6kl_hif_rw_comp_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_packet = type { i32, i32, i32 (i32, %struct.htc_packet*)* }

@ATH6KL_DBG_HIF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"hif rw completion pkt 0x%p status %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath6kl_hif_rw_comp_handler(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.htc_packet*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.htc_packet*
  store %struct.htc_packet* %7, %struct.htc_packet** %5, align 8
  %8 = load i32, i32* @ATH6KL_DBG_HIF, align 4
  %9 = load %struct.htc_packet*, %struct.htc_packet** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @ath6kl_dbg(i32 %8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.htc_packet* %9, i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.htc_packet*, %struct.htc_packet** %5, align 8
  %14 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.htc_packet*, %struct.htc_packet** %5, align 8
  %16 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %15, i32 0, i32 2
  %17 = load i32 (i32, %struct.htc_packet*)*, i32 (i32, %struct.htc_packet*)** %16, align 8
  %18 = load %struct.htc_packet*, %struct.htc_packet** %5, align 8
  %19 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.htc_packet*, %struct.htc_packet** %5, align 8
  %22 = call i32 %17(i32 %20, %struct.htc_packet* %21)
  ret i32 0
}

declare dso_local i32 @ath6kl_dbg(i32, i8*, %struct.htc_packet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
