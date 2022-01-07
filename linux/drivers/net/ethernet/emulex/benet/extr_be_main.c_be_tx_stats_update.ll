; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_tx_stats_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_tx_stats_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_tx_obj = type { i32 }
%struct.sk_buff = type { i32, i64, i64 }
%struct.be_tx_stats = type { i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.be_tx_obj*, %struct.sk_buff*)* @be_tx_stats_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_tx_stats_update(%struct.be_tx_obj* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.be_tx_obj*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.be_tx_stats*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.be_tx_obj* %0, %struct.be_tx_obj** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.be_tx_obj*, %struct.be_tx_obj** %3, align 8
  %9 = call %struct.be_tx_stats* @tx_stats(%struct.be_tx_obj* %8)
  store %struct.be_tx_stats* %9, %struct.be_tx_stats** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %17

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16, %15
  %18 = phi i64 [ %13, %15 ], [ 1, %16 ]
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = call i32 @be_gso_hdr_len(%struct.sk_buff* %23)
  %25 = load i32, i32* %6, align 4
  %26 = sub nsw i32 %25, 1
  %27 = mul nsw i32 %24, %26
  br label %29

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %28, %22
  %30 = phi i32 [ %27, %22 ], [ 0, %28 ]
  store i32 %30, i32* %7, align 4
  %31 = load %struct.be_tx_stats*, %struct.be_tx_stats** %5, align 8
  %32 = getelementptr inbounds %struct.be_tx_stats, %struct.be_tx_stats* %31, i32 0, i32 2
  %33 = call i32 @u64_stats_update_begin(i32* %32)
  %34 = load %struct.be_tx_stats*, %struct.be_tx_stats** %5, align 8
  %35 = getelementptr inbounds %struct.be_tx_stats, %struct.be_tx_stats* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %40, %41
  %43 = load %struct.be_tx_stats*, %struct.be_tx_stats** %5, align 8
  %44 = getelementptr inbounds %struct.be_tx_stats, %struct.be_tx_stats* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.be_tx_stats*, %struct.be_tx_stats** %5, align 8
  %49 = getelementptr inbounds %struct.be_tx_stats, %struct.be_tx_stats* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %29
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.be_tx_stats*, %struct.be_tx_stats** %5, align 8
  %65 = getelementptr inbounds %struct.be_tx_stats, %struct.be_tx_stats* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %62, %56, %29
  %69 = load %struct.be_tx_stats*, %struct.be_tx_stats** %5, align 8
  %70 = getelementptr inbounds %struct.be_tx_stats, %struct.be_tx_stats* %69, i32 0, i32 2
  %71 = call i32 @u64_stats_update_end(i32* %70)
  ret void
}

declare dso_local %struct.be_tx_stats* @tx_stats(%struct.be_tx_obj*) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @be_gso_hdr_len(%struct.sk_buff*) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
