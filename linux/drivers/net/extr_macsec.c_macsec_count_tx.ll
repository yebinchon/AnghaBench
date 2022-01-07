; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_macsec_count_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_macsec_count_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.macsec_tx_sc = type { i64, i32 }
%struct.macsec_tx_sa = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.pcpu_tx_sc_stats = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.macsec_tx_sc*, %struct.macsec_tx_sa*)* @macsec_count_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @macsec_count_tx(%struct.sk_buff* %0, %struct.macsec_tx_sc* %1, %struct.macsec_tx_sa* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.macsec_tx_sc*, align 8
  %6 = alloca %struct.macsec_tx_sa*, align 8
  %7 = alloca %struct.pcpu_tx_sc_stats*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.macsec_tx_sc* %1, %struct.macsec_tx_sc** %5, align 8
  store %struct.macsec_tx_sa* %2, %struct.macsec_tx_sa** %6, align 8
  %8 = load %struct.macsec_tx_sc*, %struct.macsec_tx_sc** %5, align 8
  %9 = getelementptr inbounds %struct.macsec_tx_sc, %struct.macsec_tx_sc* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.pcpu_tx_sc_stats* @this_cpu_ptr(i32 %10)
  store %struct.pcpu_tx_sc_stats* %11, %struct.pcpu_tx_sc_stats** %7, align 8
  %12 = load %struct.pcpu_tx_sc_stats*, %struct.pcpu_tx_sc_stats** %7, align 8
  %13 = getelementptr inbounds %struct.pcpu_tx_sc_stats, %struct.pcpu_tx_sc_stats* %12, i32 0, i32 0
  %14 = call i32 @u64_stats_update_begin(i32* %13)
  %15 = load %struct.macsec_tx_sc*, %struct.macsec_tx_sc** %5, align 8
  %16 = getelementptr inbounds %struct.macsec_tx_sc, %struct.macsec_tx_sc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %3
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.pcpu_tx_sc_stats*, %struct.pcpu_tx_sc_stats** %7, align 8
  %24 = getelementptr inbounds %struct.pcpu_tx_sc_stats, %struct.pcpu_tx_sc_stats* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %27, %22
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %25, align 4
  %30 = load %struct.pcpu_tx_sc_stats*, %struct.pcpu_tx_sc_stats** %7, align 8
  %31 = getelementptr inbounds %struct.pcpu_tx_sc_stats, %struct.pcpu_tx_sc_stats* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  %35 = load %struct.macsec_tx_sa*, %struct.macsec_tx_sa** %6, align 8
  %36 = getelementptr inbounds %struct.macsec_tx_sa, %struct.macsec_tx_sa* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @this_cpu_inc(i32 %39)
  br label %63

41:                                               ; preds = %3
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.pcpu_tx_sc_stats*, %struct.pcpu_tx_sc_stats** %7, align 8
  %46 = getelementptr inbounds %struct.pcpu_tx_sc_stats, %struct.pcpu_tx_sc_stats* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %44
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %47, align 4
  %52 = load %struct.pcpu_tx_sc_stats*, %struct.pcpu_tx_sc_stats** %7, align 8
  %53 = getelementptr inbounds %struct.pcpu_tx_sc_stats, %struct.pcpu_tx_sc_stats* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  %57 = load %struct.macsec_tx_sa*, %struct.macsec_tx_sa** %6, align 8
  %58 = getelementptr inbounds %struct.macsec_tx_sa, %struct.macsec_tx_sa* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @this_cpu_inc(i32 %61)
  br label %63

63:                                               ; preds = %41, %19
  %64 = load %struct.pcpu_tx_sc_stats*, %struct.pcpu_tx_sc_stats** %7, align 8
  %65 = getelementptr inbounds %struct.pcpu_tx_sc_stats, %struct.pcpu_tx_sc_stats* %64, i32 0, i32 0
  %66 = call i32 @u64_stats_update_end(i32* %65)
  ret void
}

declare dso_local %struct.pcpu_tx_sc_stats* @this_cpu_ptr(i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @this_cpu_inc(i32) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
