; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_dp_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_dp_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan743x_adapter = type { i32 }

@EIO = common dso_local global i32 0, align 4
@DP_SEL = common dso_local global i32 0, align 4
@DP_SEL_DPRDY_ = common dso_local global i32 0, align 4
@DP_SEL_MASK_ = common dso_local global i32 0, align 4
@DP_ADDR = common dso_local global i32 0, align 4
@DP_DATA_0 = common dso_local global i32 0, align 4
@DP_CMD = common dso_local global i32 0, align 4
@DP_CMD_WRITE_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lan743x_adapter*, i32, i32, i32, i32*)* @lan743x_dp_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan743x_dp_write(%struct.lan743x_adapter* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.lan743x_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.lan743x_adapter* %0, %struct.lan743x_adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %14 = load i32, i32* @EIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %11, align 4
  %16 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %17 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %20 = load i32, i32* @DP_SEL, align 4
  %21 = load i32, i32* @DP_SEL_DPRDY_, align 4
  %22 = call i64 @lan743x_csr_wait_for_bit(%struct.lan743x_adapter* %19, i32 %20, i32 %21, i32 1, i32 40, i32 100, i32 100)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  br label %74

25:                                               ; preds = %5
  %26 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %27 = load i32, i32* @DP_SEL, align 4
  %28 = call i32 @lan743x_csr_read(%struct.lan743x_adapter* %26, i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* @DP_SEL_MASK_, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %12, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %12, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %12, align 4
  %36 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %37 = load i32, i32* @DP_SEL, align 4
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %36, i32 %37, i32 %38)
  store i32 0, i32* %13, align 4
  br label %40

40:                                               ; preds = %70, %25
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %73

44:                                               ; preds = %40
  %45 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %46 = load i32, i32* @DP_ADDR, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %13, align 4
  %49 = add nsw i32 %47, %48
  %50 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %45, i32 %46, i32 %49)
  %51 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %52 = load i32, i32* @DP_DATA_0, align 4
  %53 = load i32*, i32** %10, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %51, i32 %52, i32 %57)
  %59 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %60 = load i32, i32* @DP_CMD, align 4
  %61 = load i32, i32* @DP_CMD_WRITE_, align 4
  %62 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %59, i32 %60, i32 %61)
  %63 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %64 = load i32, i32* @DP_SEL, align 4
  %65 = load i32, i32* @DP_SEL_DPRDY_, align 4
  %66 = call i64 @lan743x_csr_wait_for_bit(%struct.lan743x_adapter* %63, i32 %64, i32 %65, i32 1, i32 40, i32 100, i32 100)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %44
  br label %74

69:                                               ; preds = %44
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %13, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %13, align 4
  br label %40

73:                                               ; preds = %40
  store i32 0, i32* %11, align 4
  br label %74

74:                                               ; preds = %73, %68, %24
  %75 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %76 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %75, i32 0, i32 0
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load i32, i32* %11, align 4
  ret i32 %78
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @lan743x_csr_wait_for_bit(%struct.lan743x_adapter*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @lan743x_csr_read(%struct.lan743x_adapter*, i32) #1

declare dso_local i32 @lan743x_csr_write(%struct.lan743x_adapter*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
