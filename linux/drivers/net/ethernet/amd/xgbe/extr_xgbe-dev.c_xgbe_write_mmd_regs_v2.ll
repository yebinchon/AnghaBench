; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_write_mmd_regs_v2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_write_mmd_regs_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, i32, i32, i32, i32 }

@MII_ADDR_C45 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*, i32, i32, i32)* @xgbe_write_mmd_regs_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_write_mmd_regs_v2(%struct.xgbe_prv_data* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.xgbe_prv_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @MII_ADDR_C45, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @MII_ADDR_C45, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  store i32 %21, i32* %10, align 4
  br label %30

22:                                               ; preds = %4
  %23 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %24 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 16
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, 65535
  %29 = or i32 %26, %28
  store i32 %29, i32* %10, align 4
  br label %30

30:                                               ; preds = %22, %17
  %31 = load i32, i32* %10, align 4
  %32 = shl i32 %31, 1
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %35 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %33, %37
  store i32 %38, i32* %11, align 4
  %39 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %40 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %44 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %42, %45
  %47 = add i32 %41, %46
  store i32 %47, i32* %12, align 4
  %48 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %49 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %48, i32 0, i32 3
  %50 = load i64, i64* %9, align 8
  %51 = call i32 @spin_lock_irqsave(i32* %49, i64 %50)
  %52 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %53 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %54 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @XPCS32_IOWRITE(%struct.xgbe_prv_data* %52, i32 %55, i32 %56)
  %58 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @XPCS16_IOWRITE(%struct.xgbe_prv_data* %58, i32 %59, i32 %60)
  %62 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %63 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %62, i32 0, i32 3
  %64 = load i64, i64* %9, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32* %63, i64 %64)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @XPCS32_IOWRITE(%struct.xgbe_prv_data*, i32, i32) #1

declare dso_local i32 @XPCS16_IOWRITE(%struct.xgbe_prv_data*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
