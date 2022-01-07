; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_cmd_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_cmd_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@WMI_CMD_UNSUPPORTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"wmi command %d is not supported by firmware\0A\00", align 1
@ATH10K_FLAG_CRASH_FLUSH = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"wmi command %d timeout, restarting hardware\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath10k_wmi_cmd_send(%struct.ath10k* %0, %struct.sk_buff* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i32, i32* @EOPNOTSUPP, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %8, align 4
  %12 = call i32 (...) @might_sleep()
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @WMI_CMD_UNSUPPORTED, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @ath10k_warn(%struct.ath10k* %17, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %4, align 4
  br label %75

21:                                               ; preds = %3
  %22 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %23 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %27 = call i32 @ath10k_wmi_tx_beacons_nowait(%struct.ath10k* %26)
  %28 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @ath10k_wmi_cmd_send_nowait(%struct.ath10k* %28, %struct.sk_buff* %29, i64 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %21
  %35 = load i32, i32* @ATH10K_FLAG_CRASH_FLUSH, align 4
  %36 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %37 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %36, i32 0, i32 2
  %38 = call i64 @test_bit(i32 %35, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @ESHUTDOWN, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %40, %34, %21
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @EAGAIN, align 4
  %46 = sub nsw i32 0, %45
  %47 = icmp ne i32 %44, %46
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @HZ, align 4
  %51 = mul nsw i32 3, %50
  %52 = call i32 @wait_event_timeout(i32 %25, i32 %49, i32 %51)
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %43
  %56 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %57 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %56)
  br label %58

58:                                               ; preds = %55, %43
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @EAGAIN, align 4
  %61 = sub nsw i32 0, %60
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %58
  %64 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %65 = load i64, i64* %7, align 8
  %66 = call i32 @ath10k_warn(%struct.ath10k* %64, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %65)
  %67 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %68 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %71 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %70, i32 0, i32 0
  %72 = call i32 @queue_work(i32 %69, i32* %71)
  br label %73

73:                                               ; preds = %63, %58
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %73, %16
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i64) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @ath10k_wmi_tx_beacons_nowait(%struct.ath10k*) #1

declare dso_local i32 @ath10k_wmi_cmd_send_nowait(%struct.ath10k*, %struct.sk_buff*, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
