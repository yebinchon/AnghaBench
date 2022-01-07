; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_ath6kl_htc_rx_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_ath6kl_htc_rx_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_target = type { %struct.ath6kl_device* }
%struct.ath6kl_device = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.htc_packet = type { i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [73 x i8] c"not enough receive space for packet - padlen %d recvlen %d bufferlen %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ATH6KL_DBG_HTC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"htc rx 0x%p hdr 0x%x len %d mbox 0x%x\0A\00", align 1
@HIF_RD_SYNC_BLOCK_FIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.htc_target*, %struct.htc_packet*, i32)* @ath6kl_htc_rx_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_htc_rx_packet(%struct.htc_target* %0, %struct.htc_packet* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.htc_target*, align 8
  %6 = alloca %struct.htc_packet*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ath6kl_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.htc_target* %0, %struct.htc_target** %5, align 8
  store %struct.htc_packet* %1, %struct.htc_packet** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %12 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %11, i32 0, i32 0
  %13 = load %struct.ath6kl_device*, %struct.ath6kl_device** %12, align 8
  store %struct.ath6kl_device* %13, %struct.ath6kl_device** %8, align 8
  %14 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @CALC_TXRX_PADDED_LEN(%struct.htc_target* %14, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.htc_packet*, %struct.htc_packet** %6, align 8
  %19 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %17, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %3
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.htc_packet*, %struct.htc_packet** %6, align 8
  %26 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ath6kl_err(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24, i32 %27)
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %66

31:                                               ; preds = %3
  %32 = load i32, i32* @ATH6KL_DBG_HTC, align 4
  %33 = load %struct.htc_packet*, %struct.htc_packet** %6, align 8
  %34 = load %struct.htc_packet*, %struct.htc_packet** %6, align 8
  %35 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.ath6kl_device*, %struct.ath6kl_device** %8, align 8
  %41 = getelementptr inbounds %struct.ath6kl_device, %struct.ath6kl_device* %40, i32 0, i32 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ath6kl_dbg(i32 %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), %struct.htc_packet* %33, i32 %38, i32 %39, i32 %45)
  %47 = load %struct.ath6kl_device*, %struct.ath6kl_device** %8, align 8
  %48 = getelementptr inbounds %struct.ath6kl_device, %struct.ath6kl_device* %47, i32 0, i32 0
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = load %struct.ath6kl_device*, %struct.ath6kl_device** %8, align 8
  %51 = getelementptr inbounds %struct.ath6kl_device, %struct.ath6kl_device* %50, i32 0, i32 0
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.htc_packet*, %struct.htc_packet** %6, align 8
  %57 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @HIF_RD_SYNC_BLOCK_FIX, align 4
  %61 = call i32 @hif_read_write_sync(%struct.TYPE_8__* %49, i32 %55, i32 %58, i32 %59, i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.htc_packet*, %struct.htc_packet** %6, align 8
  %64 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %31, %22
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @CALC_TXRX_PADDED_LEN(%struct.htc_target*, i32) #1

declare dso_local i32 @ath6kl_err(i8*, i32, i32, i32) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, %struct.htc_packet*, i32, i32, i32) #1

declare dso_local i32 @hif_read_write_sync(%struct.TYPE_8__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
