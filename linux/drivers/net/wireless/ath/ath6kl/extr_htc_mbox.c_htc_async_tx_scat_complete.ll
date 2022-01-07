; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_htc_async_tx_scat_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_htc_async_tx_scat_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_target = type { %struct.TYPE_4__*, %struct.htc_endpoint* }
%struct.TYPE_4__ = type { i32 }
%struct.htc_endpoint = type { i32 }
%struct.hif_scatter_req = type { i32, i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.htc_packet* }
%struct.htc_packet = type { i64, i32, i64 }
%struct.list_head = type { i32 }

@ATH6KL_DBG_HTC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"htc tx scat complete len %d entries %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"send scatter req failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.htc_target*, %struct.hif_scatter_req*)* @htc_async_tx_scat_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @htc_async_tx_scat_complete(%struct.htc_target* %0, %struct.hif_scatter_req* %1) #0 {
  %3 = alloca %struct.htc_target*, align 8
  %4 = alloca %struct.hif_scatter_req*, align 8
  %5 = alloca %struct.htc_endpoint*, align 8
  %6 = alloca %struct.htc_packet*, align 8
  %7 = alloca %struct.list_head, align 4
  %8 = alloca i32, align 4
  store %struct.htc_target* %0, %struct.htc_target** %3, align 8
  store %struct.hif_scatter_req* %1, %struct.hif_scatter_req** %4, align 8
  %9 = call i32 @INIT_LIST_HEAD(%struct.list_head* %7)
  %10 = load i32, i32* @ATH6KL_DBG_HTC, align 4
  %11 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %4, align 8
  %12 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %4, align 8
  %15 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @ath6kl_dbg(i32 %10, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16)
  %18 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %4, align 8
  %19 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %4, align 8
  %24 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @ath6kl_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %25)
  br label %27

27:                                               ; preds = %22, %2
  %28 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %4, align 8
  %29 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %28, i32 0, i32 2
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load %struct.htc_packet*, %struct.htc_packet** %32, align 8
  store %struct.htc_packet* %33, %struct.htc_packet** %6, align 8
  %34 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %35 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %34, i32 0, i32 1
  %36 = load %struct.htc_endpoint*, %struct.htc_endpoint** %35, align 8
  %37 = load %struct.htc_packet*, %struct.htc_packet** %6, align 8
  %38 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %36, i64 %39
  store %struct.htc_endpoint* %40, %struct.htc_endpoint** %5, align 8
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %73, %27
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %4, align 8
  %44 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %76

47:                                               ; preds = %41
  %48 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %4, align 8
  %49 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %48, i32 0, i32 2
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load %struct.htc_packet*, %struct.htc_packet** %54, align 8
  store %struct.htc_packet* %55, %struct.htc_packet** %6, align 8
  %56 = load %struct.htc_packet*, %struct.htc_packet** %6, align 8
  %57 = icmp ne %struct.htc_packet* %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %47
  %59 = call i32 @WARN_ON(i32 1)
  br label %86

60:                                               ; preds = %47
  %61 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %4, align 8
  %62 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.htc_packet*, %struct.htc_packet** %6, align 8
  %65 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %64, i32 0, i32 2
  store i64 %63, i64* %65, align 8
  %66 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %67 = load %struct.htc_endpoint*, %struct.htc_endpoint** %5, align 8
  %68 = load %struct.htc_packet*, %struct.htc_packet** %6, align 8
  %69 = call i32 @htc_tx_comp_update(%struct.htc_target* %66, %struct.htc_endpoint* %67, %struct.htc_packet* %68)
  %70 = load %struct.htc_packet*, %struct.htc_packet** %6, align 8
  %71 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %70, i32 0, i32 1
  %72 = call i32 @list_add_tail(i32* %71, %struct.list_head* %7)
  br label %73

73:                                               ; preds = %60
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %41

76:                                               ; preds = %41
  %77 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %78 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %4, align 8
  %83 = call i32 @hif_scatter_req_add(i32 %81, %struct.hif_scatter_req* %82)
  %84 = load %struct.htc_endpoint*, %struct.htc_endpoint** %5, align 8
  %85 = call i32 @htc_tx_complete(%struct.htc_endpoint* %84, %struct.list_head* %7)
  br label %86

86:                                               ; preds = %76, %58
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @ath6kl_err(i8*, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @htc_tx_comp_update(%struct.htc_target*, %struct.htc_endpoint*, %struct.htc_packet*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @hif_scatter_req_add(i32, %struct.hif_scatter_req*) #1

declare dso_local i32 @htc_tx_complete(%struct.htc_endpoint*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
