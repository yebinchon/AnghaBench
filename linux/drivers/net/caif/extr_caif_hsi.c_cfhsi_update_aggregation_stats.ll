; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/caif/extr_caif_hsi.c_cfhsi_update_aggregation_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/caif/extr_caif_hsi.c_cfhsi_update_aggregation_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfhsi = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sk_buff = type { i32, i32 }
%struct.caif_payload_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfhsi*, %struct.sk_buff*, i32)* @cfhsi_update_aggregation_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfhsi_update_aggregation_stats(%struct.cfhsi* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.cfhsi*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.caif_payload_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cfhsi* %0, %struct.cfhsi** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 1
  %13 = bitcast i32* %12 to %struct.caif_payload_info*
  store %struct.caif_payload_info* %13, %struct.caif_payload_info** %7, align 8
  %14 = load %struct.caif_payload_info*, %struct.caif_payload_info** %7, align 8
  %15 = getelementptr inbounds %struct.caif_payload_info, %struct.caif_payload_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  %18 = load %struct.cfhsi*, %struct.cfhsi** %4, align 8
  %19 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @PAD_POW2(i32 %17, i32 %21)
  %23 = add nsw i32 1, %22
  store i32 %23, i32* %8, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 %26, %27
  %29 = load %struct.cfhsi*, %struct.cfhsi** %4, align 8
  %30 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @PAD_POW2(i32 %28, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %36, %37
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %38, %39
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %3
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.cfhsi*, %struct.cfhsi** %4, align 8
  %46 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %59

49:                                               ; preds = %3
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.cfhsi*, %struct.cfhsi** %4, align 8
  %55 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %52, %49
  br label %59

59:                                               ; preds = %58, %43
  ret void
}

declare dso_local i32 @PAD_POW2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
