; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_qmr.c_ehea_gen_smr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_qmr.c_ehea_gen_smr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehea_adapter = type { i32, i32 }
%struct.ehea_mr = type { %struct.ehea_adapter*, i32, i32 }

@EHEA_MR_ACC_CTRL = common dso_local global i32 0, align 4
@H_SUCCESS = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ehea_gen_smr(%struct.ehea_adapter* %0, %struct.ehea_mr* %1, %struct.ehea_mr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ehea_adapter*, align 8
  %6 = alloca %struct.ehea_mr*, align 8
  %7 = alloca %struct.ehea_mr*, align 8
  %8 = alloca i64, align 8
  store %struct.ehea_adapter* %0, %struct.ehea_adapter** %5, align 8
  store %struct.ehea_mr* %1, %struct.ehea_mr** %6, align 8
  store %struct.ehea_mr* %2, %struct.ehea_mr** %7, align 8
  %9 = load %struct.ehea_adapter*, %struct.ehea_adapter** %5, align 8
  %10 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ehea_mr*, %struct.ehea_mr** %6, align 8
  %13 = getelementptr inbounds %struct.ehea_mr, %struct.ehea_mr* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ehea_mr*, %struct.ehea_mr** %6, align 8
  %16 = getelementptr inbounds %struct.ehea_mr, %struct.ehea_mr* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @EHEA_MR_ACC_CTRL, align 4
  %19 = load %struct.ehea_adapter*, %struct.ehea_adapter** %5, align 8
  %20 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ehea_mr*, %struct.ehea_mr** %7, align 8
  %23 = call i64 @ehea_h_register_smr(i32 %11, i32 %14, i32 %17, i32 %18, i32 %21, %struct.ehea_mr* %22)
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* @H_SUCCESS, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %34

30:                                               ; preds = %3
  %31 = load %struct.ehea_adapter*, %struct.ehea_adapter** %5, align 8
  %32 = load %struct.ehea_mr*, %struct.ehea_mr** %7, align 8
  %33 = getelementptr inbounds %struct.ehea_mr, %struct.ehea_mr* %32, i32 0, i32 0
  store %struct.ehea_adapter* %31, %struct.ehea_adapter** %33, align 8
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %30, %27
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i64 @ehea_h_register_smr(i32, i32, i32, i32, i32, %struct.ehea_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
