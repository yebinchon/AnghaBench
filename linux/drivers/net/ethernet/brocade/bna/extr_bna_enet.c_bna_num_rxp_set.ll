; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_enet.c_bna_num_rxp_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_enet.c_bna_num_rxp_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }

@BNA_CB_SUCCESS = common dso_local global i32 0, align 4
@BNA_CB_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bna_num_rxp_set(%struct.bna* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bna*, align 8
  %5 = alloca i32, align 4
  store %struct.bna* %0, %struct.bna** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.bna*, %struct.bna** %4, align 8
  %7 = getelementptr inbounds %struct.bna, %struct.bna* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.bna*, %struct.bna** %4, align 8
  %15 = getelementptr inbounds %struct.bna, %struct.bna* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sle i32 %13, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %12
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.bna*, %struct.bna** %4, align 8
  %23 = getelementptr inbounds %struct.bna, %struct.bna* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 %21, i32* %25, align 8
  %26 = load i32, i32* @BNA_CB_SUCCESS, align 4
  store i32 %26, i32* %3, align 4
  br label %29

27:                                               ; preds = %12, %2
  %28 = load i32, i32* @BNA_CB_FAIL, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %27, %20
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
