; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_eqs.c_hinic_ceq_unregister_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_eqs.c_hinic_ceq_unregister_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_ceqs = type { %struct.hinic_ceq_cb* }
%struct.hinic_ceq_cb = type { i32, i32* }

@HINIC_EQE_ENABLED = common dso_local global i32 0, align 4
@HINIC_EQE_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hinic_ceq_unregister_cb(%struct.hinic_ceqs* %0, i32 %1) #0 {
  %3 = alloca %struct.hinic_ceqs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hinic_ceq_cb*, align 8
  store %struct.hinic_ceqs* %0, %struct.hinic_ceqs** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.hinic_ceqs*, %struct.hinic_ceqs** %3, align 8
  %7 = getelementptr inbounds %struct.hinic_ceqs, %struct.hinic_ceqs* %6, i32 0, i32 0
  %8 = load %struct.hinic_ceq_cb*, %struct.hinic_ceq_cb** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.hinic_ceq_cb, %struct.hinic_ceq_cb* %8, i64 %10
  store %struct.hinic_ceq_cb* %11, %struct.hinic_ceq_cb** %5, align 8
  %12 = load i32, i32* @HINIC_EQE_ENABLED, align 4
  %13 = xor i32 %12, -1
  %14 = load %struct.hinic_ceq_cb*, %struct.hinic_ceq_cb** %5, align 8
  %15 = getelementptr inbounds %struct.hinic_ceq_cb, %struct.hinic_ceq_cb* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 8
  br label %18

18:                                               ; preds = %25, %2
  %19 = load %struct.hinic_ceq_cb*, %struct.hinic_ceq_cb** %5, align 8
  %20 = getelementptr inbounds %struct.hinic_ceq_cb, %struct.hinic_ceq_cb* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @HINIC_EQE_RUNNING, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = call i32 (...) @schedule()
  br label %18

27:                                               ; preds = %18
  %28 = load %struct.hinic_ceq_cb*, %struct.hinic_ceq_cb** %5, align 8
  %29 = getelementptr inbounds %struct.hinic_ceq_cb, %struct.hinic_ceq_cb* %28, i32 0, i32 1
  store i32* null, i32** %29, align 8
  ret void
}

declare dso_local i32 @schedule(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
