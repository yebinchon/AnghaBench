; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_contig_fd_to_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_contig_fd_to_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.dpaa_priv = type { i64 }
%struct.qm_fd = type { i32 }
%struct.dpaa_bp = type { i64 }

@SMP_CACHE_BYTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Build skb failure on Rx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.dpaa_priv*, %struct.qm_fd*)* @contig_fd_to_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @contig_fd_to_skb(%struct.dpaa_priv* %0, %struct.qm_fd* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.dpaa_priv*, align 8
  %5 = alloca %struct.qm_fd*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dpaa_bp*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i8*, align 8
  store %struct.dpaa_priv* %0, %struct.dpaa_priv** %4, align 8
  store %struct.qm_fd* %1, %struct.qm_fd** %5, align 8
  %11 = load %struct.qm_fd*, %struct.qm_fd** %5, align 8
  %12 = call i64 @qm_fd_get_offset(%struct.qm_fd* %11)
  store i64 %12, i64* %6, align 8
  %13 = load %struct.qm_fd*, %struct.qm_fd** %5, align 8
  %14 = call i32 @qm_fd_addr(%struct.qm_fd* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i8* @phys_to_virt(i32 %15)
  store i8* %16, i8** %10, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = ptrtoint i8* %17 to i64
  %19 = load i32, i32* @SMP_CACHE_BYTES, align 4
  %20 = call i32 @IS_ALIGNED(i64 %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @WARN_ON(i32 %23)
  %25 = load %struct.qm_fd*, %struct.qm_fd** %5, align 8
  %26 = getelementptr inbounds %struct.qm_fd, %struct.qm_fd* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.dpaa_bp* @dpaa_bpid2pool(i32 %27)
  store %struct.dpaa_bp* %28, %struct.dpaa_bp** %8, align 8
  %29 = load %struct.dpaa_bp*, %struct.dpaa_bp** %8, align 8
  %30 = icmp ne %struct.dpaa_bp* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %2
  br label %68

32:                                               ; preds = %2
  %33 = load i8*, i8** %10, align 8
  %34 = load %struct.dpaa_bp*, %struct.dpaa_bp** %8, align 8
  %35 = getelementptr inbounds %struct.dpaa_bp, %struct.dpaa_bp* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @SKB_DATA_ALIGN(i32 4)
  %38 = add nsw i64 %36, %37
  %39 = call %struct.sk_buff* @build_skb(i8* %33, i64 %38)
  store %struct.sk_buff* %39, %struct.sk_buff** %9, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %41 = icmp ne %struct.sk_buff* %40, null
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i64 @WARN_ONCE(i32 %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %32
  br label %68

47:                                               ; preds = %32
  %48 = load i64, i64* %6, align 8
  %49 = load %struct.dpaa_priv*, %struct.dpaa_priv** %4, align 8
  %50 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %48, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @WARN_ON(i32 %53)
  %55 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @skb_reserve(%struct.sk_buff* %55, i64 %56)
  %58 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %59 = load %struct.qm_fd*, %struct.qm_fd** %5, align 8
  %60 = call i32 @qm_fd_get_length(%struct.qm_fd* %59)
  %61 = call i32 @skb_put(%struct.sk_buff* %58, i32 %60)
  %62 = load %struct.dpaa_priv*, %struct.dpaa_priv** %4, align 8
  %63 = load %struct.qm_fd*, %struct.qm_fd** %5, align 8
  %64 = call i32 @rx_csum_offload(%struct.dpaa_priv* %62, %struct.qm_fd* %63)
  %65 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %67, %struct.sk_buff** %3, align 8
  br label %71

68:                                               ; preds = %46, %31
  %69 = load i8*, i8** %10, align 8
  %70 = call i32 @skb_free_frag(i8* %69)
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %71

71:                                               ; preds = %68, %47
  %72 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %72
}

declare dso_local i64 @qm_fd_get_offset(%struct.qm_fd*) #1

declare dso_local i32 @qm_fd_addr(%struct.qm_fd*) #1

declare dso_local i8* @phys_to_virt(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @IS_ALIGNED(i64, i32) #1

declare dso_local %struct.dpaa_bp* @dpaa_bpid2pool(i32) #1

declare dso_local %struct.sk_buff* @build_skb(i8*, i64) #1

declare dso_local i64 @SKB_DATA_ALIGN(i32) #1

declare dso_local i64 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @qm_fd_get_length(%struct.qm_fd*) #1

declare dso_local i32 @rx_csum_offload(%struct.dpaa_priv*, %struct.qm_fd*) #1

declare dso_local i32 @skb_free_frag(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
