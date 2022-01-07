; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_control_rx_q.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_control_rx_q.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { %struct.i40e_hw }
%struct.i40e_hw = type { i32 }

@I40E_QTX_ENA_WAIT_COUNT = common dso_local global i32 0, align 4
@I40E_QRX_ENA_QENA_REQ_SHIFT = common dso_local global i32 0, align 4
@I40E_QRX_ENA_QENA_STAT_SHIFT = common dso_local global i32 0, align 4
@I40E_QRX_ENA_QENA_STAT_MASK = common dso_local global i32 0, align 4
@I40E_QRX_ENA_QENA_REQ_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_pf*, i32, i32)* @i40e_control_rx_q to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_control_rx_q(%struct.i40e_pf* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.i40e_pf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.i40e_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i40e_pf* %0, %struct.i40e_pf** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %11 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %10, i32 0, i32 0
  store %struct.i40e_hw* %11, %struct.i40e_hw** %7, align 8
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %33, %3
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @I40E_QTX_ENA_WAIT_COUNT, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %36

16:                                               ; preds = %12
  %17 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @I40E_QRX_ENA(i32 %18)
  %20 = call i32 @rd32(%struct.i40e_hw* %17, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @I40E_QRX_ENA_QENA_REQ_SHIFT, align 4
  %23 = ashr i32 %21, %22
  %24 = and i32 %23, 1
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @I40E_QRX_ENA_QENA_STAT_SHIFT, align 4
  %27 = ashr i32 %25, %26
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %24, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %16
  br label %36

31:                                               ; preds = %16
  %32 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %33

33:                                               ; preds = %31
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  br label %12

36:                                               ; preds = %30, %12
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @I40E_QRX_ENA_QENA_STAT_MASK, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = icmp eq i32 %37, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %65

47:                                               ; preds = %36
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32, i32* @I40E_QRX_ENA_QENA_REQ_MASK, align 4
  %52 = load i32, i32* %8, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %8, align 4
  br label %59

54:                                               ; preds = %47
  %55 = load i32, i32* @I40E_QRX_ENA_QENA_REQ_MASK, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %8, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %54, %50
  %60 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @I40E_QRX_ENA(i32 %61)
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @wr32(%struct.i40e_hw* %60, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %59, %46
  ret void
}

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @I40E_QRX_ENA(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
