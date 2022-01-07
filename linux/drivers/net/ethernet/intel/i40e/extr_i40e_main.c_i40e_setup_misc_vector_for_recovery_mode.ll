; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_setup_misc_vector_for_recovery_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_setup_misc_vector_for_recovery_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@I40E_FLAG_MSIX_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"MSI-X misc vector request failed, error %d\0A\00", align 1
@I40E_FLAG_MSI_ENABLED = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@i40e_intr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"MSI/legacy misc vector request failed, error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_pf*)* @i40e_setup_misc_vector_for_recovery_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_setup_misc_vector_for_recovery_mode(%struct.i40e_pf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i40e_pf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.i40e_pf* %0, %struct.i40e_pf** %3, align 8
  %6 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %7 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @I40E_FLAG_MSIX_ENABLED, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %1
  %13 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %14 = call i32 @i40e_setup_misc_vector(%struct.i40e_pf* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %12
  %18 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %19 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @dev_info(i32* %21, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %66

25:                                               ; preds = %12
  br label %65

26:                                               ; preds = %1
  %27 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %28 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @I40E_FLAG_MSI_ENABLED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %36

34:                                               ; preds = %26
  %35 = load i32, i32* @IRQF_SHARED, align 4
  br label %36

36:                                               ; preds = %34, %33
  %37 = phi i32 [ 0, %33 ], [ %35, %34 ]
  store i32 %37, i32* %5, align 4
  %38 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %39 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @i40e_intr, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %46 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %49 = call i32 @request_irq(i32 %42, i32 %43, i32 %44, i32 %47, %struct.i40e_pf* %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %36
  %53 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %54 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @dev_info(i32* %56, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %2, align 4
  br label %66

60:                                               ; preds = %36
  %61 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %62 = call i32 @i40e_enable_misc_int_causes(%struct.i40e_pf* %61)
  %63 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %64 = call i32 @i40e_irq_dynamic_enable_icr0(%struct.i40e_pf* %63)
  br label %65

65:                                               ; preds = %60, %25
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %52, %17
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @i40e_setup_misc_vector(%struct.i40e_pf*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.i40e_pf*) #1

declare dso_local i32 @i40e_enable_misc_int_causes(%struct.i40e_pf*) #1

declare dso_local i32 @i40e_irq_dynamic_enable_icr0(%struct.i40e_pf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
