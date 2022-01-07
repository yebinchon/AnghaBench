; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_dcb.h_qlcnic_dcb_query_cee_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_dcb.h_qlcnic_dcb_query_cee_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_dcb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_dcb*, i8*, i32)* @qlcnic_dcb_query_cee_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_dcb_query_cee_param(%struct.qlcnic_dcb* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_dcb*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.qlcnic_dcb* %0, %struct.qlcnic_dcb** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.qlcnic_dcb*, %struct.qlcnic_dcb** %5, align 8
  %9 = icmp ne %struct.qlcnic_dcb* %8, null
  br i1 %9, label %10, label %29

10:                                               ; preds = %3
  %11 = load %struct.qlcnic_dcb*, %struct.qlcnic_dcb** %5, align 8
  %12 = getelementptr inbounds %struct.qlcnic_dcb, %struct.qlcnic_dcb* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = bitcast {}** %14 to i32 (%struct.qlcnic_dcb*, i8*, i32)**
  %16 = load i32 (%struct.qlcnic_dcb*, i8*, i32)*, i32 (%struct.qlcnic_dcb*, i8*, i32)** %15, align 8
  %17 = icmp ne i32 (%struct.qlcnic_dcb*, i8*, i32)* %16, null
  br i1 %17, label %18, label %29

18:                                               ; preds = %10
  %19 = load %struct.qlcnic_dcb*, %struct.qlcnic_dcb** %5, align 8
  %20 = getelementptr inbounds %struct.qlcnic_dcb, %struct.qlcnic_dcb* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = bitcast {}** %22 to i32 (%struct.qlcnic_dcb*, i8*, i32)**
  %24 = load i32 (%struct.qlcnic_dcb*, i8*, i32)*, i32 (%struct.qlcnic_dcb*, i8*, i32)** %23, align 8
  %25 = load %struct.qlcnic_dcb*, %struct.qlcnic_dcb** %5, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 %24(%struct.qlcnic_dcb* %25, i8* %26, i32 %27)
  store i32 %28, i32* %4, align 4
  br label %30

29:                                               ; preds = %10, %3
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %29, %18
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
