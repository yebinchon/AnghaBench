; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_metadata.c_nfp_flower_rx_flow_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_metadata.c_nfp_flower_rx_flow_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { %struct.nfp_flower_priv* }
%struct.nfp_flower_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.nfp_fl_stats_frame = type { i32, i32, i32 }

@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfp_flower_rx_flow_stats(%struct.nfp_app* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.nfp_app*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfp_flower_priv*, align 8
  %7 = alloca %struct.nfp_fl_stats_frame*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.nfp_app* %0, %struct.nfp_app** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = call i32 @nfp_flower_cmsg_get_data_len(%struct.sk_buff* %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %14 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %13, i32 0, i32 0
  %15 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %14, align 8
  store %struct.nfp_flower_priv* %15, %struct.nfp_flower_priv** %6, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = call i8* @nfp_flower_cmsg_get_data(%struct.sk_buff* %16)
  store i8* %17, i8** %8, align 8
  %18 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %6, align 8
  %19 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %18, i32 0, i32 0
  %20 = call i32 @spin_lock(i32* %19)
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %73, %2
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = load i32, i32* %5, align 4
  %25 = zext i32 %24 to i64
  %26 = udiv i64 %25, 12
  %27 = icmp ult i64 %23, %26
  br i1 %27, label %28, label %76

28:                                               ; preds = %21
  %29 = load i8*, i8** %8, align 8
  %30 = bitcast i8* %29 to %struct.nfp_fl_stats_frame*
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.nfp_fl_stats_frame, %struct.nfp_fl_stats_frame* %30, i64 %32
  store %struct.nfp_fl_stats_frame* %33, %struct.nfp_fl_stats_frame** %7, align 8
  %34 = load %struct.nfp_fl_stats_frame*, %struct.nfp_fl_stats_frame** %7, align 8
  %35 = getelementptr inbounds %struct.nfp_fl_stats_frame, %struct.nfp_fl_stats_frame* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @be32_to_cpu(i32 %36)
  store i64 %37, i64* %9, align 8
  %38 = load %struct.nfp_fl_stats_frame*, %struct.nfp_fl_stats_frame** %7, align 8
  %39 = getelementptr inbounds %struct.nfp_fl_stats_frame, %struct.nfp_fl_stats_frame* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @be32_to_cpu(i32 %40)
  %42 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %6, align 8
  %43 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i64, i64* %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = add i64 %49, %41
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %47, align 4
  %52 = load %struct.nfp_fl_stats_frame*, %struct.nfp_fl_stats_frame** %7, align 8
  %53 = getelementptr inbounds %struct.nfp_fl_stats_frame, %struct.nfp_fl_stats_frame* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @be64_to_cpu(i32 %54)
  %56 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %6, align 8
  %57 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i64, i64* %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %63, %55
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %61, align 4
  %66 = load i32, i32* @jiffies, align 4
  %67 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %6, align 8
  %68 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i64, i64* %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i32 %66, i32* %72, align 4
  br label %73

73:                                               ; preds = %28
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %10, align 4
  br label %21

76:                                               ; preds = %21
  %77 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %6, align 8
  %78 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %77, i32 0, i32 0
  %79 = call i32 @spin_unlock(i32* %78)
  ret void
}

declare dso_local i32 @nfp_flower_cmsg_get_data_len(%struct.sk_buff*) #1

declare dso_local i8* @nfp_flower_cmsg_get_data(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
