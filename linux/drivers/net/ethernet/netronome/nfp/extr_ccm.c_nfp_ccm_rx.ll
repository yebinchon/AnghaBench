; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_ccm.c_nfp_ccm_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_ccm.c_nfp_ccm_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_ccm = type { i32, i32, i32, %struct.nfp_app* }
%struct.nfp_app = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"cmsg drop - too short %d!\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"cmsg drop - no one is waiting for tag %u!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfp_ccm_rx(%struct.nfp_ccm* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.nfp_ccm*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nfp_app*, align 8
  %6 = alloca i32, align 4
  store %struct.nfp_ccm* %0, %struct.nfp_ccm** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.nfp_ccm*, %struct.nfp_ccm** %3, align 8
  %8 = getelementptr inbounds %struct.nfp_ccm, %struct.nfp_ccm* %7, i32 0, i32 3
  %9 = load %struct.nfp_app*, %struct.nfp_app** %8, align 8
  store %struct.nfp_app* %9, %struct.nfp_app** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ult i64 %13, 4
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ccm_warn(%struct.nfp_app* %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %62

24:                                               ; preds = %2
  %25 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %26 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @nfp_ctrl_lock(i32 %27)
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = call i32 @nfp_ccm_get_tag(%struct.sk_buff* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.nfp_ccm*, %struct.nfp_ccm** %3, align 8
  %33 = getelementptr inbounds %struct.nfp_ccm, %struct.nfp_ccm* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @test_bit(i32 %31, i32 %34)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %24
  %42 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @ccm_warn(%struct.nfp_app* %42, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %57

45:                                               ; preds = %24
  %46 = load %struct.nfp_ccm*, %struct.nfp_ccm** %3, align 8
  %47 = getelementptr inbounds %struct.nfp_ccm, %struct.nfp_ccm* %46, i32 0, i32 1
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = call i32 @__skb_queue_tail(i32* %47, %struct.sk_buff* %48)
  %50 = load %struct.nfp_ccm*, %struct.nfp_ccm** %3, align 8
  %51 = getelementptr inbounds %struct.nfp_ccm, %struct.nfp_ccm* %50, i32 0, i32 0
  %52 = call i32 @wake_up_interruptible_all(i32* %51)
  %53 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %54 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @nfp_ctrl_unlock(i32 %55)
  br label %65

57:                                               ; preds = %41
  %58 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %59 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @nfp_ctrl_unlock(i32 %60)
  br label %62

62:                                               ; preds = %57, %18
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %63)
  br label %65

65:                                               ; preds = %62, %45
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ccm_warn(%struct.nfp_app*, i8*, i32) #1

declare dso_local i32 @nfp_ctrl_lock(i32) #1

declare dso_local i32 @nfp_ccm_get_tag(%struct.sk_buff*) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @__skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @wake_up_interruptible_all(i32*) #1

declare dso_local i32 @nfp_ctrl_unlock(i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
