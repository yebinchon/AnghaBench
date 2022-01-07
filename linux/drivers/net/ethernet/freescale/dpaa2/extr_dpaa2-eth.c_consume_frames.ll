; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_consume_frames.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_consume_frames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa2_eth_channel = type { i32, %struct.dpaa2_eth_priv* }
%struct.dpaa2_eth_priv = type { i32 }
%struct.dpaa2_eth_fq = type { %struct.TYPE_2__, i32 (%struct.dpaa2_eth_priv*, %struct.dpaa2_eth_channel.0*, %struct.dpaa2_fd*, %struct.dpaa2_eth_fq*)* }
%struct.TYPE_2__ = type { i32 }
%struct.dpaa2_eth_channel.0 = type opaque
%struct.dpaa2_fd = type { i32 }
%struct.dpaa2_dq = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpaa2_eth_channel*, %struct.dpaa2_eth_fq**)* @consume_frames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @consume_frames(%struct.dpaa2_eth_channel* %0, %struct.dpaa2_eth_fq** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dpaa2_eth_channel*, align 8
  %5 = alloca %struct.dpaa2_eth_fq**, align 8
  %6 = alloca %struct.dpaa2_eth_priv*, align 8
  %7 = alloca %struct.dpaa2_eth_fq*, align 8
  %8 = alloca %struct.dpaa2_dq*, align 8
  %9 = alloca %struct.dpaa2_fd*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dpaa2_eth_channel* %0, %struct.dpaa2_eth_channel** %4, align 8
  store %struct.dpaa2_eth_fq** %1, %struct.dpaa2_eth_fq*** %5, align 8
  %12 = load %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %4, align 8
  %13 = getelementptr inbounds %struct.dpaa2_eth_channel, %struct.dpaa2_eth_channel* %12, i32 0, i32 1
  %14 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %13, align 8
  store %struct.dpaa2_eth_priv* %14, %struct.dpaa2_eth_priv** %6, align 8
  store %struct.dpaa2_eth_fq* null, %struct.dpaa2_eth_fq** %7, align 8
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %44, %2
  %16 = load %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %4, align 8
  %17 = getelementptr inbounds %struct.dpaa2_eth_channel, %struct.dpaa2_eth_channel* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.dpaa2_dq* @dpaa2_io_store_next(i32 %18, i32* %11)
  store %struct.dpaa2_dq* %19, %struct.dpaa2_dq** %8, align 8
  %20 = load %struct.dpaa2_dq*, %struct.dpaa2_dq** %8, align 8
  %21 = icmp ne %struct.dpaa2_dq* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  br label %44

27:                                               ; preds = %15
  %28 = load %struct.dpaa2_dq*, %struct.dpaa2_dq** %8, align 8
  %29 = call %struct.dpaa2_fd* @dpaa2_dq_fd(%struct.dpaa2_dq* %28)
  store %struct.dpaa2_fd* %29, %struct.dpaa2_fd** %9, align 8
  %30 = load %struct.dpaa2_dq*, %struct.dpaa2_dq** %8, align 8
  %31 = call i64 @dpaa2_dq_fqd_ctx(%struct.dpaa2_dq* %30)
  %32 = inttoptr i64 %31 to %struct.dpaa2_eth_fq*
  store %struct.dpaa2_eth_fq* %32, %struct.dpaa2_eth_fq** %7, align 8
  %33 = load %struct.dpaa2_eth_fq*, %struct.dpaa2_eth_fq** %7, align 8
  %34 = getelementptr inbounds %struct.dpaa2_eth_fq, %struct.dpaa2_eth_fq* %33, i32 0, i32 1
  %35 = load i32 (%struct.dpaa2_eth_priv*, %struct.dpaa2_eth_channel.0*, %struct.dpaa2_fd*, %struct.dpaa2_eth_fq*)*, i32 (%struct.dpaa2_eth_priv*, %struct.dpaa2_eth_channel.0*, %struct.dpaa2_fd*, %struct.dpaa2_eth_fq*)** %34, align 8
  %36 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %37 = load %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %4, align 8
  %38 = bitcast %struct.dpaa2_eth_channel* %37 to %struct.dpaa2_eth_channel.0*
  %39 = load %struct.dpaa2_fd*, %struct.dpaa2_fd** %9, align 8
  %40 = load %struct.dpaa2_eth_fq*, %struct.dpaa2_eth_fq** %7, align 8
  %41 = call i32 %35(%struct.dpaa2_eth_priv* %36, %struct.dpaa2_eth_channel.0* %38, %struct.dpaa2_fd* %39, %struct.dpaa2_eth_fq* %40)
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %27, %26
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  br i1 %47, label %15, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %66

52:                                               ; preds = %48
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.dpaa2_eth_fq*, %struct.dpaa2_eth_fq** %7, align 8
  %55 = getelementptr inbounds %struct.dpaa2_eth_fq, %struct.dpaa2_eth_fq* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, %53
  store i32 %58, i32* %56, align 8
  %59 = load %struct.dpaa2_eth_fq**, %struct.dpaa2_eth_fq*** %5, align 8
  %60 = icmp ne %struct.dpaa2_eth_fq** %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %52
  %62 = load %struct.dpaa2_eth_fq*, %struct.dpaa2_eth_fq** %7, align 8
  %63 = load %struct.dpaa2_eth_fq**, %struct.dpaa2_eth_fq*** %5, align 8
  store %struct.dpaa2_eth_fq* %62, %struct.dpaa2_eth_fq** %63, align 8
  br label %64

64:                                               ; preds = %61, %52
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %51
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.dpaa2_dq* @dpaa2_io_store_next(i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.dpaa2_fd* @dpaa2_dq_fd(%struct.dpaa2_dq*) #1

declare dso_local i64 @dpaa2_dq_fqd_ctx(%struct.dpaa2_dq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
