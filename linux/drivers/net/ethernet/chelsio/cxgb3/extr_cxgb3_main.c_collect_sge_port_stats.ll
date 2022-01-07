; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_main.c_collect_sge_port_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_main.c_collect_sge_port_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64* }
%struct.port_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.adapter*, %struct.port_info*, i32)* @collect_sge_port_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @collect_sge_port_stats(%struct.adapter* %0, %struct.port_info* %1, i32 %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.port_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.port_info* %1, %struct.port_info** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %8, align 8
  %9 = load %struct.port_info*, %struct.port_info** %5, align 8
  %10 = getelementptr inbounds %struct.port_info, %struct.port_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  br label %12

12:                                               ; preds = %38, %3
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.port_info*, %struct.port_info** %5, align 8
  %15 = getelementptr inbounds %struct.port_info, %struct.port_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.port_info*, %struct.port_info** %5, align 8
  %18 = getelementptr inbounds %struct.port_info, %struct.port_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %16, %19
  %21 = icmp slt i32 %13, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %12
  %23 = load %struct.adapter*, %struct.adapter** %4, align 8
  %24 = getelementptr inbounds %struct.adapter, %struct.adapter* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %8, align 8
  %37 = add i64 %36, %35
  store i64 %37, i64* %8, align 8
  br label %38

38:                                               ; preds = %22
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %12

41:                                               ; preds = %12
  %42 = load i64, i64* %8, align 8
  ret i64 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
