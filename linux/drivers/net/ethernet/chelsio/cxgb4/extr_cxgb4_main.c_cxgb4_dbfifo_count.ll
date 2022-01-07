; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_cxgb4_dbfifo_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_cxgb4_dbfifo_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SGE_DBFIFO_STATUS_A = common dso_local global i32 0, align 4
@SGE_DBFIFO_STATUS2_A = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxgb4_dbfifo_count(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.adapter* @netdev2adap(%struct.net_device* %10)
  store %struct.adapter* %11, %struct.adapter** %5, align 8
  %12 = load %struct.adapter*, %struct.adapter** %5, align 8
  %13 = load i32, i32* @SGE_DBFIFO_STATUS_A, align 4
  %14 = call i32 @t4_read_reg(%struct.adapter* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.adapter*, %struct.adapter** %5, align 8
  %16 = load i32, i32* @SGE_DBFIFO_STATUS2_A, align 4
  %17 = call i32 @t4_read_reg(%struct.adapter* %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.adapter*, %struct.adapter** %5, align 8
  %19 = getelementptr inbounds %struct.adapter, %struct.adapter* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @is_t4(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @LP_COUNT_G(i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @HP_COUNT_G(i32 %27)
  store i32 %28, i32* %9, align 4
  br label %34

29:                                               ; preds = %2
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @LP_COUNT_T5_G(i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @HP_COUNT_T5_G(i32 %32)
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %29, %24
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* %8, align 4
  br label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %9, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  ret i32 %42
}

declare dso_local %struct.adapter* @netdev2adap(%struct.net_device*) #1

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i64 @is_t4(i32) #1

declare dso_local i32 @LP_COUNT_G(i32) #1

declare dso_local i32 @HP_COUNT_G(i32) #1

declare dso_local i32 @LP_COUNT_T5_G(i32) #1

declare dso_local i32 @HP_COUNT_T5_G(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
