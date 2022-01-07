; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_qmr.c_ehea_destroy_cq_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_qmr.c_ehea_destroy_cq_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehea_cq = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@H_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ehea_cq*, i64)* @ehea_destroy_cq_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ehea_destroy_cq_res(%struct.ehea_cq* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ehea_cq*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.ehea_cq* %0, %struct.ehea_cq** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.ehea_cq*, %struct.ehea_cq** %4, align 8
  %9 = getelementptr inbounds %struct.ehea_cq, %struct.ehea_cq* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load %struct.ehea_cq*, %struct.ehea_cq** %4, align 8
  %15 = getelementptr inbounds %struct.ehea_cq, %struct.ehea_cq* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* %5, align 8
  %18 = call i64 @ehea_h_free_resource(i64 %13, i32 %16, i64 %17)
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @H_SUCCESS, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i64, i64* %6, align 8
  store i64 %23, i64* %3, align 8
  br label %31

24:                                               ; preds = %2
  %25 = load %struct.ehea_cq*, %struct.ehea_cq** %4, align 8
  %26 = getelementptr inbounds %struct.ehea_cq, %struct.ehea_cq* %25, i32 0, i32 0
  %27 = call i32 @hw_queue_dtor(i32* %26)
  %28 = load %struct.ehea_cq*, %struct.ehea_cq** %4, align 8
  %29 = call i32 @kfree(%struct.ehea_cq* %28)
  %30 = load i64, i64* %6, align 8
  store i64 %30, i64* %3, align 8
  br label %31

31:                                               ; preds = %24, %22
  %32 = load i64, i64* %3, align 8
  ret i64 %32
}

declare dso_local i64 @ehea_h_free_resource(i64, i32, i64) #1

declare dso_local i32 @hw_queue_dtor(i32*) #1

declare dso_local i32 @kfree(%struct.ehea_cq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
