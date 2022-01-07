; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_skfddi.c_mac_drv_rx_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_skfddi.c_mac_drv_rx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"entering mac_drv_rx_init(len=%d)\0A\00", align 1
@FDDI_MAC_HDR_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"fddi: Discard invalid local SMT frame\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"  len=%d, la_len=%d, (ULONG) look_ahead=%08lXh.\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"fddi: Local SMT: skb memory exhausted.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_drv_rx_init(%struct.s_smc* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.s_smc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  store %struct.s_smc* %0, %struct.s_smc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %25, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @FDDI_MAC_HDR_LEN, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i8*, i8** %10, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %22, %18, %5
  %26 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i8*, i8** %10, align 8
  %30 = ptrtoint i8* %29 to i64
  %31 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %27, i32 %28, i64 %30)
  store i32 0, i32* %6, align 4
  br label %61

32:                                               ; preds = %22
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 3
  %35 = load i32, i32* @GFP_ATOMIC, align 4
  %36 = call %struct.sk_buff* @alloc_skb(i32 %34, i32 %35)
  store %struct.sk_buff* %36, %struct.sk_buff** %12, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %38 = icmp ne %struct.sk_buff* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %32
  %40 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %61

41:                                               ; preds = %32
  %42 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %43 = call i32 @skb_reserve(%struct.sk_buff* %42, i32 3)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @skb_put(%struct.sk_buff* %44, i32 %45)
  %47 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %47, i8* %48, i32 %49)
  %51 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %52 = load %struct.s_smc*, %struct.s_smc** %7, align 8
  %53 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @fddi_type_trans(%struct.sk_buff* %51, i32 %55)
  %57 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %60 = call i32 @netif_rx(%struct.sk_buff* %59)
  store i32 0, i32* %6, align 4
  br label %61

61:                                               ; preds = %41, %39, %25
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, i8*, i32) #1

declare dso_local i32 @fddi_type_trans(%struct.sk_buff*, i32) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
