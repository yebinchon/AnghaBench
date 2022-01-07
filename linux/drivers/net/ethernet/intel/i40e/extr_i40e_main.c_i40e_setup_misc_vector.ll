; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_setup_misc_vector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_setup_misc_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__*, %struct.i40e_hw }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.i40e_hw = type { i32 }

@__I40E_MISC_IRQ_REQUESTED = common dso_local global i32 0, align 4
@i40e_intr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"request_irq for %s failed: %d\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@I40E_PFINT_LNKLST0 = common dso_local global i32 0, align 4
@I40E_QUEUE_END_OF_LIST = common dso_local global i32 0, align 4
@I40E_RX_ITR = common dso_local global i32 0, align 4
@I40E_ITR_8K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_pf*)* @i40e_setup_misc_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_setup_misc_vector(%struct.i40e_pf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i40e_pf*, align 8
  %4 = alloca %struct.i40e_hw*, align 8
  %5 = alloca i32, align 4
  store %struct.i40e_pf* %0, %struct.i40e_pf** %3, align 8
  %6 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %7 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %6, i32 0, i32 4
  store %struct.i40e_hw* %7, %struct.i40e_hw** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* @__I40E_MISC_IRQ_REQUESTED, align 4
  %9 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %10 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @test_and_set_bit(i32 %8, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %47, label %14

14:                                               ; preds = %1
  %15 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %16 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %15, i32 0, i32 3
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @i40e_intr, align 4
  %22 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %23 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %26 = call i32 @request_irq(i32 %20, i32 %21, i32 0, i32 %24, %struct.i40e_pf* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %14
  %30 = load i32, i32* @__I40E_MISC_IRQ_REQUESTED, align 4
  %31 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %32 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @clear_bit(i32 %30, i32 %33)
  %35 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %36 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %40 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @dev_info(i32* %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42)
  %44 = load i32, i32* @EFAULT, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %64

46:                                               ; preds = %14
  br label %47

47:                                               ; preds = %46, %1
  %48 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %49 = call i32 @i40e_enable_misc_int_causes(%struct.i40e_pf* %48)
  %50 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %51 = load i32, i32* @I40E_PFINT_LNKLST0, align 4
  %52 = load i32, i32* @I40E_QUEUE_END_OF_LIST, align 4
  %53 = call i32 @wr32(%struct.i40e_hw* %50, i32 %51, i32 %52)
  %54 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %55 = load i32, i32* @I40E_RX_ITR, align 4
  %56 = call i32 @I40E_PFINT_ITR0(i32 %55)
  %57 = load i32, i32* @I40E_ITR_8K, align 4
  %58 = call i32 @wr32(%struct.i40e_hw* %54, i32 %56, i32 %57)
  %59 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %60 = call i32 @i40e_flush(%struct.i40e_hw* %59)
  %61 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %62 = call i32 @i40e_irq_dynamic_enable_icr0(%struct.i40e_pf* %61)
  %63 = load i32, i32* %5, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %47, %29
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.i40e_pf*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @i40e_enable_misc_int_causes(%struct.i40e_pf*) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @I40E_PFINT_ITR0(i32) #1

declare dso_local i32 @i40e_flush(%struct.i40e_hw*) #1

declare dso_local i32 @i40e_irq_dynamic_enable_icr0(%struct.i40e_pf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
