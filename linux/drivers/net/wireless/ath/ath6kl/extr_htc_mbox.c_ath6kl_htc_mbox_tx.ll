; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_ath6kl_htc_mbox_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_ath6kl_htc_mbox_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_target = type { i32, %struct.htc_endpoint* }
%struct.htc_endpoint = type { i32 }
%struct.htc_packet = type { i64, i32, i32, i32, i32 }
%struct.list_head = type { i32 }

@ATH6KL_DBG_HTC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"htc tx ep id %d buf 0x%p len %d\0A\00", align 1
@ENDPOINT_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@HTC_OP_STATE_STOPPING = common dso_local global i32 0, align 4
@ECANCELED = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.htc_target*, %struct.htc_packet*)* @ath6kl_htc_mbox_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_htc_mbox_tx(%struct.htc_target* %0, %struct.htc_packet* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.htc_target*, align 8
  %5 = alloca %struct.htc_packet*, align 8
  %6 = alloca %struct.htc_endpoint*, align 8
  %7 = alloca %struct.list_head, align 4
  store %struct.htc_target* %0, %struct.htc_target** %4, align 8
  store %struct.htc_packet* %1, %struct.htc_packet** %5, align 8
  %8 = load i32, i32* @ATH6KL_DBG_HTC, align 4
  %9 = load %struct.htc_packet*, %struct.htc_packet** %5, align 8
  %10 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.htc_packet*, %struct.htc_packet** %5, align 8
  %13 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.htc_packet*, %struct.htc_packet** %5, align 8
  %16 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @ath6kl_dbg(i32 %8, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %11, i32 %14, i32 %17)
  %19 = load %struct.htc_packet*, %struct.htc_packet** %5, align 8
  %20 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ENDPOINT_MAX, align 8
  %23 = icmp uge i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = call i32 @WARN_ON(i32 1)
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %65

28:                                               ; preds = %2
  %29 = load %struct.htc_target*, %struct.htc_target** %4, align 8
  %30 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %29, i32 0, i32 1
  %31 = load %struct.htc_endpoint*, %struct.htc_endpoint** %30, align 8
  %32 = load %struct.htc_packet*, %struct.htc_packet** %5, align 8
  %33 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %31, i64 %34
  store %struct.htc_endpoint* %35, %struct.htc_endpoint** %6, align 8
  %36 = load %struct.htc_target*, %struct.htc_target** %4, align 8
  %37 = load %struct.htc_endpoint*, %struct.htc_endpoint** %6, align 8
  %38 = load %struct.htc_packet*, %struct.htc_packet** %5, align 8
  %39 = call i32 @ath6kl_htc_tx_try(%struct.htc_target* %36, %struct.htc_endpoint* %37, %struct.htc_packet* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %64, label %41

41:                                               ; preds = %28
  %42 = load %struct.htc_target*, %struct.htc_target** %4, align 8
  %43 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @HTC_OP_STATE_STOPPING, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32, i32* @ECANCELED, align 4
  %50 = sub nsw i32 0, %49
  br label %54

51:                                               ; preds = %41
  %52 = load i32, i32* @ENOSPC, align 4
  %53 = sub nsw i32 0, %52
  br label %54

54:                                               ; preds = %51, %48
  %55 = phi i32 [ %50, %48 ], [ %53, %51 ]
  %56 = load %struct.htc_packet*, %struct.htc_packet** %5, align 8
  %57 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = call i32 @INIT_LIST_HEAD(%struct.list_head* %7)
  %59 = load %struct.htc_packet*, %struct.htc_packet** %5, align 8
  %60 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %59, i32 0, i32 1
  %61 = call i32 @list_add(i32* %60, %struct.list_head* %7)
  %62 = load %struct.htc_endpoint*, %struct.htc_endpoint** %6, align 8
  %63 = call i32 @htc_tx_complete(%struct.htc_endpoint* %62, %struct.list_head* %7)
  br label %64

64:                                               ; preds = %54, %28
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %24
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @ath6kl_dbg(i32, i8*, i64, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ath6kl_htc_tx_try(%struct.htc_target*, %struct.htc_endpoint*, %struct.htc_packet*) #1

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

declare dso_local i32 @htc_tx_complete(%struct.htc_endpoint*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
