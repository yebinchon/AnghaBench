; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_pf_rxq_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_pf_rxq_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { i32 }

@I40E_QUEUE_WAIT_RETRY_LIMIT = common dso_local global i32 0, align 4
@I40E_QRX_ENA_QENA_STAT_MASK = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_pf*, i32, i32)* @i40e_pf_rxq_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_pf_rxq_wait(%struct.i40e_pf* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40e_pf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i40e_pf* %0, %struct.i40e_pf** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %32, %3
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @I40E_QUEUE_WAIT_RETRY_LIMIT, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %35

14:                                               ; preds = %10
  %15 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %16 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %15, i32 0, i32 0
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @I40E_QRX_ENA(i32 %17)
  %19 = call i32 @rd32(i32* %16, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @I40E_QRX_ENA_QENA_STAT_MASK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = icmp eq i32 %20, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %14
  br label %35

30:                                               ; preds = %14
  %31 = call i32 @usleep_range(i32 10, i32 20)
  br label %32

32:                                               ; preds = %30
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  br label %10

35:                                               ; preds = %29, %10
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @I40E_QUEUE_WAIT_RETRY_LIMIT, align 4
  %38 = icmp sge i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @ETIMEDOUT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %43

42:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %39
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @rd32(i32*, i32) #1

declare dso_local i32 @I40E_QRX_ENA(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
