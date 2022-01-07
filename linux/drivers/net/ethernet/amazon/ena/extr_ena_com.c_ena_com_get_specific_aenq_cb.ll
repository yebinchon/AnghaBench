; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_get_specific_aenq_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_get_specific_aenq_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ena_aenq_handlers* }
%struct.ena_aenq_handlers = type { i64, i64* }

@ENA_MAX_HANDLERS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ena_com_dev*, i64)* @ena_com_get_specific_aenq_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ena_com_get_specific_aenq_cb(%struct.ena_com_dev* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ena_com_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ena_aenq_handlers*, align 8
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %8 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.ena_aenq_handlers*, %struct.ena_aenq_handlers** %9, align 8
  store %struct.ena_aenq_handlers* %10, %struct.ena_aenq_handlers** %6, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @ENA_MAX_HANDLERS, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %2
  %15 = load %struct.ena_aenq_handlers*, %struct.ena_aenq_handlers** %6, align 8
  %16 = getelementptr inbounds %struct.ena_aenq_handlers, %struct.ena_aenq_handlers* %15, i32 0, i32 1
  %17 = load i64*, i64** %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %14
  %23 = load %struct.ena_aenq_handlers*, %struct.ena_aenq_handlers** %6, align 8
  %24 = getelementptr inbounds %struct.ena_aenq_handlers, %struct.ena_aenq_handlers* %23, i32 0, i32 1
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %3, align 8
  br label %33

29:                                               ; preds = %14, %2
  %30 = load %struct.ena_aenq_handlers*, %struct.ena_aenq_handlers** %6, align 8
  %31 = getelementptr inbounds %struct.ena_aenq_handlers, %struct.ena_aenq_handlers* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %3, align 8
  br label %33

33:                                               ; preds = %29, %22
  %34 = load i64, i64* %3, align 8
  ret i64 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
