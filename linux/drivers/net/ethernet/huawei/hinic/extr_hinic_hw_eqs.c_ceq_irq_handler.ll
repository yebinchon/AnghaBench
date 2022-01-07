; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_eqs.c_ceq_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_eqs.c_ceq_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_eq = type { i32, i32, i32 }
%struct.hinic_ceqs = type { i32 }

@WRAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hinic_eq*)* @ceq_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ceq_irq_handler(%struct.hinic_eq* %0) #0 {
  %2 = alloca %struct.hinic_eq*, align 8
  %3 = alloca %struct.hinic_ceqs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hinic_eq* %0, %struct.hinic_eq** %2, align 8
  %6 = load %struct.hinic_eq*, %struct.hinic_eq** %2, align 8
  %7 = call %struct.hinic_ceqs* @ceq_to_ceqs(%struct.hinic_eq* %6)
  store %struct.hinic_ceqs* %7, %struct.hinic_ceqs** %3, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %55, %1
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.hinic_eq*, %struct.hinic_eq** %2, align 8
  %11 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %58

14:                                               ; preds = %8
  %15 = load %struct.hinic_eq*, %struct.hinic_eq** %2, align 8
  %16 = call i32* @GET_CURR_CEQ_ELEM(%struct.hinic_eq* %15)
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @be32_to_cpu(i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @WRAPPED, align 4
  %22 = call i32 @HINIC_EQ_ELEM_DESC_GET(i32 %20, i32 %21)
  %23 = load %struct.hinic_eq*, %struct.hinic_eq** %2, align 8
  %24 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %14
  br label %58

28:                                               ; preds = %14
  %29 = load %struct.hinic_ceqs*, %struct.hinic_ceqs** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @ceq_event_handler(%struct.hinic_ceqs* %29, i32 %30)
  %32 = load %struct.hinic_eq*, %struct.hinic_eq** %2, align 8
  %33 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load %struct.hinic_eq*, %struct.hinic_eq** %2, align 8
  %37 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.hinic_eq*, %struct.hinic_eq** %2, align 8
  %40 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %38, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %28
  %44 = load %struct.hinic_eq*, %struct.hinic_eq** %2, align 8
  %45 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %44, i32 0, i32 2
  store i32 0, i32* %45, align 4
  %46 = load %struct.hinic_eq*, %struct.hinic_eq** %2, align 8
  %47 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = load %struct.hinic_eq*, %struct.hinic_eq** %2, align 8
  %53 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %43, %28
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %8

58:                                               ; preds = %27, %8
  ret void
}

declare dso_local %struct.hinic_ceqs* @ceq_to_ceqs(%struct.hinic_eq*) #1

declare dso_local i32* @GET_CURR_CEQ_ELEM(%struct.hinic_eq*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @HINIC_EQ_ELEM_DESC_GET(i32, i32) #1

declare dso_local i32 @ceq_event_handler(%struct.hinic_ceqs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
