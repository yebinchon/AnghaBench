; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_clock.c_mlx4_en_fill_hwtstamps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_clock.c_mlx4_en_fill_hwtstamps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_dev = type { i32, i32 }
%struct.skb_shared_hwtstamps = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_en_fill_hwtstamps(%struct.mlx4_en_dev* %0, %struct.skb_shared_hwtstamps* %1, i32 %2) #0 {
  %4 = alloca %struct.mlx4_en_dev*, align 8
  %5 = alloca %struct.skb_shared_hwtstamps*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlx4_en_dev* %0, %struct.mlx4_en_dev** %4, align 8
  store %struct.skb_shared_hwtstamps* %1, %struct.skb_shared_hwtstamps** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %9

9:                                                ; preds = %17, %3
  %10 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %11 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %10, i32 0, i32 1
  %12 = call i32 @read_seqbegin(i32* %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %14 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @timecounter_cyc2time(i32* %14, i32 %15)
  store i32 %16, i32* %8, align 4
  br label %17

17:                                               ; preds = %9
  %18 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %19 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %18, i32 0, i32 1
  %20 = load i32, i32* %7, align 4
  %21 = call i64 @read_seqretry(i32* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %9, label %23

23:                                               ; preds = %17
  %24 = load %struct.skb_shared_hwtstamps*, %struct.skb_shared_hwtstamps** %5, align 8
  %25 = call i32 @memset(%struct.skb_shared_hwtstamps* %24, i32 0, i32 4)
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @ns_to_ktime(i32 %26)
  %28 = load %struct.skb_shared_hwtstamps*, %struct.skb_shared_hwtstamps** %5, align 8
  %29 = getelementptr inbounds %struct.skb_shared_hwtstamps, %struct.skb_shared_hwtstamps* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  ret void
}

declare dso_local i32 @read_seqbegin(i32*) #1

declare dso_local i32 @timecounter_cyc2time(i32*, i32) #1

declare dso_local i64 @read_seqretry(i32*, i32) #1

declare dso_local i32 @memset(%struct.skb_shared_hwtstamps*, i32, i32) #1

declare dso_local i32 @ns_to_ktime(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
