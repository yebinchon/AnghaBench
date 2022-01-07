; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_rx.c_ef4_rx_packet__check_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_rx.c_ef4_rx_packet__check_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_rx_queue = type { %struct.ef4_nic* }
%struct.ef4_nic = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ef4_rx_buffer = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@EF4_RX_PKT_DISCARD = common dso_local global i32 0, align 4
@rx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c" RX queue %d seriously overlength RX event (0x%x > 0x%x+0x%x). Leaking\0A\00", align 1
@RESET_TYPE_RX_RECOVERY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c" RX queue %d overlength RX event (0x%x > 0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ef4_rx_queue*, %struct.ef4_rx_buffer*, i32)* @ef4_rx_packet__check_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ef4_rx_packet__check_len(%struct.ef4_rx_queue* %0, %struct.ef4_rx_buffer* %1, i32 %2) #0 {
  %4 = alloca %struct.ef4_rx_queue*, align 8
  %5 = alloca %struct.ef4_rx_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ef4_nic*, align 8
  %8 = alloca i32, align 4
  store %struct.ef4_rx_queue* %0, %struct.ef4_rx_queue** %4, align 8
  store %struct.ef4_rx_buffer* %1, %struct.ef4_rx_buffer** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ef4_rx_queue*, %struct.ef4_rx_queue** %4, align 8
  %10 = getelementptr inbounds %struct.ef4_rx_queue, %struct.ef4_rx_queue* %9, i32 0, i32 0
  %11 = load %struct.ef4_nic*, %struct.ef4_nic** %10, align 8
  store %struct.ef4_nic* %11, %struct.ef4_nic** %7, align 8
  %12 = load %struct.ef4_rx_buffer*, %struct.ef4_rx_buffer** %5, align 8
  %13 = getelementptr inbounds %struct.ef4_rx_buffer, %struct.ef4_rx_buffer* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ef4_nic*, %struct.ef4_nic** %7, align 8
  %16 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sub i32 %14, %19
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ule i32 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 @likely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %87

28:                                               ; preds = %3
  %29 = load i32, i32* @EF4_RX_PKT_DISCARD, align 4
  %30 = load %struct.ef4_rx_buffer*, %struct.ef4_rx_buffer** %5, align 8
  %31 = getelementptr inbounds %struct.ef4_rx_buffer, %struct.ef4_rx_buffer* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.ef4_rx_buffer*, %struct.ef4_rx_buffer** %5, align 8
  %36 = getelementptr inbounds %struct.ef4_rx_buffer, %struct.ef4_rx_buffer* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp sgt i32 %34, %37
  br i1 %38, label %39, label %66

39:                                               ; preds = %28
  %40 = load %struct.ef4_nic*, %struct.ef4_nic** %7, align 8
  %41 = call i64 @EF4_WORKAROUND_8071(%struct.ef4_nic* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %66

43:                                               ; preds = %39
  %44 = call i64 (...) @net_ratelimit()
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %43
  %47 = load %struct.ef4_nic*, %struct.ef4_nic** %7, align 8
  %48 = load i32, i32* @rx_err, align 4
  %49 = load %struct.ef4_nic*, %struct.ef4_nic** %7, align 8
  %50 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.ef4_rx_queue*, %struct.ef4_rx_queue** %4, align 8
  %53 = call i32 @ef4_rx_queue_index(%struct.ef4_rx_queue* %52)
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.ef4_nic*, %struct.ef4_nic** %7, align 8
  %57 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %56, i32 0, i32 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (%struct.ef4_nic*, i32, i32, i8*, i32, i32, i32, ...) @netif_err(%struct.ef4_nic* %47, i32 %48, i32 %51, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %54, i32 %55, i32 %60)
  br label %62

62:                                               ; preds = %46, %43
  %63 = load %struct.ef4_nic*, %struct.ef4_nic** %7, align 8
  %64 = load i32, i32* @RESET_TYPE_RX_RECOVERY, align 4
  %65 = call i32 @ef4_schedule_reset(%struct.ef4_nic* %63, i32 %64)
  br label %81

66:                                               ; preds = %39, %28
  %67 = call i64 (...) @net_ratelimit()
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %66
  %70 = load %struct.ef4_nic*, %struct.ef4_nic** %7, align 8
  %71 = load i32, i32* @rx_err, align 4
  %72 = load %struct.ef4_nic*, %struct.ef4_nic** %7, align 8
  %73 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.ef4_rx_queue*, %struct.ef4_rx_queue** %4, align 8
  %76 = call i32 @ef4_rx_queue_index(%struct.ef4_rx_queue* %75)
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %8, align 4
  %79 = call i32 (%struct.ef4_nic*, i32, i32, i8*, i32, i32, i32, ...) @netif_err(%struct.ef4_nic* %70, i32 %71, i32 %74, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %76, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %69, %66
  br label %81

81:                                               ; preds = %80, %62
  %82 = load %struct.ef4_rx_queue*, %struct.ef4_rx_queue** %4, align 8
  %83 = call %struct.TYPE_4__* @ef4_rx_queue_channel(%struct.ef4_rx_queue* %82)
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %81, %27
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @EF4_WORKAROUND_8071(%struct.ef4_nic*) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @netif_err(%struct.ef4_nic*, i32, i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @ef4_rx_queue_index(%struct.ef4_rx_queue*) #1

declare dso_local i32 @ef4_schedule_reset(%struct.ef4_nic*, i32) #1

declare dso_local %struct.TYPE_4__* @ef4_rx_queue_channel(%struct.ef4_rx_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
