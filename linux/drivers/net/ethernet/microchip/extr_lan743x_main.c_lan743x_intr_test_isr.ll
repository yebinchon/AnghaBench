; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_intr_test_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_intr_test_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan743x_adapter = type { %struct.lan743x_intr }
%struct.lan743x_intr = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@INT_EN_SET = common dso_local global i32 0, align 4
@INT_BIT_SW_GP_ = common dso_local global i32 0, align 4
@INT_SET = common dso_local global i32 0, align 4
@INT_EN_CLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lan743x_adapter*)* @lan743x_intr_test_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan743x_intr_test_isr(%struct.lan743x_adapter* %0) #0 {
  %2 = alloca %struct.lan743x_adapter*, align 8
  %3 = alloca %struct.lan743x_intr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lan743x_adapter* %0, %struct.lan743x_adapter** %2, align 8
  %6 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %6, i32 0, i32 0
  store %struct.lan743x_intr* %7, %struct.lan743x_intr** %3, align 8
  %8 = load i32, i32* @ENODEV, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %4, align 4
  store i32 10, i32* %5, align 4
  %10 = load %struct.lan743x_intr*, %struct.lan743x_intr** %3, align 8
  %11 = getelementptr inbounds %struct.lan743x_intr, %struct.lan743x_intr* %10, i32 0, i32 0
  store i64 0, i64* %11, align 8
  %12 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %2, align 8
  %13 = load i32, i32* @INT_EN_SET, align 4
  %14 = load i32, i32* @INT_BIT_SW_GP_, align 4
  %15 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %12, i32 %13, i32 %14)
  %16 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %2, align 8
  %17 = load i32, i32* @INT_SET, align 4
  %18 = load i32, i32* @INT_BIT_SW_GP_, align 4
  %19 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %16, i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %31, %1
  %21 = load i32, i32* %5, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load %struct.lan743x_intr*, %struct.lan743x_intr** %3, align 8
  %25 = getelementptr inbounds %struct.lan743x_intr, %struct.lan743x_intr* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  %28 = xor i1 %27, true
  br label %29

29:                                               ; preds = %23, %20
  %30 = phi i1 [ false, %20 ], [ %28, %23 ]
  br i1 %30, label %31, label %35

31:                                               ; preds = %29
  %32 = call i32 @usleep_range(i32 1000, i32 20000)
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %5, align 4
  br label %20

35:                                               ; preds = %29
  %36 = load %struct.lan743x_intr*, %struct.lan743x_intr** %3, align 8
  %37 = getelementptr inbounds %struct.lan743x_intr, %struct.lan743x_intr* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %40, %35
  %42 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %2, align 8
  %43 = load i32, i32* @INT_EN_CLR, align 4
  %44 = load i32, i32* @INT_BIT_SW_GP_, align 4
  %45 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %42, i32 %43, i32 %44)
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @lan743x_csr_write(%struct.lan743x_adapter*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
