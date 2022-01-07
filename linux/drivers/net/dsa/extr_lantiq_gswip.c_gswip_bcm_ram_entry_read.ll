; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lantiq_gswip.c_gswip_bcm_ram_entry_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lantiq_gswip.c_gswip_bcm_ram_entry_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gswip_priv = type { i32 }

@GSWIP_BM_RAM_ADDR = common dso_local global i32 0, align 4
@GSWIP_BM_RAM_CTRL_ADDR_MASK = common dso_local global i32 0, align 4
@GSWIP_BM_RAM_CTRL_OPMOD = common dso_local global i32 0, align 4
@GSWIP_BM_RAM_CTRL_BAS = common dso_local global i32 0, align 4
@GSWIP_BM_RAM_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"timeout while reading table: %u, index: %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gswip_priv*, i32, i32)* @gswip_bcm_ram_entry_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gswip_bcm_ram_entry_read(%struct.gswip_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gswip_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gswip_priv* %0, %struct.gswip_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.gswip_priv*, %struct.gswip_priv** %5, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @GSWIP_BM_RAM_ADDR, align 4
  %13 = call i32 @gswip_switch_w(%struct.gswip_priv* %10, i32 %11, i32 %12)
  %14 = load %struct.gswip_priv*, %struct.gswip_priv** %5, align 8
  %15 = load i32, i32* @GSWIP_BM_RAM_CTRL_ADDR_MASK, align 4
  %16 = load i32, i32* @GSWIP_BM_RAM_CTRL_OPMOD, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @GSWIP_BM_RAM_CTRL_BAS, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @GSWIP_BM_RAM_CTRL, align 4
  %22 = call i32 @gswip_switch_mask(%struct.gswip_priv* %14, i32 %17, i32 %20, i32 %21)
  %23 = load %struct.gswip_priv*, %struct.gswip_priv** %5, align 8
  %24 = load i32, i32* @GSWIP_BM_RAM_CTRL, align 4
  %25 = load i32, i32* @GSWIP_BM_RAM_CTRL_BAS, align 4
  %26 = call i32 @gswip_switch_r_timeout(%struct.gswip_priv* %23, i32 %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %3
  %30 = load %struct.gswip_priv*, %struct.gswip_priv** %5, align 8
  %31 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  store i32 0, i32* %4, align 4
  br label %47

36:                                               ; preds = %3
  %37 = load %struct.gswip_priv*, %struct.gswip_priv** %5, align 8
  %38 = call i32 @GSWIP_BM_RAM_VAL(i32 0)
  %39 = call i32 @gswip_switch_r(%struct.gswip_priv* %37, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load %struct.gswip_priv*, %struct.gswip_priv** %5, align 8
  %41 = call i32 @GSWIP_BM_RAM_VAL(i32 1)
  %42 = call i32 @gswip_switch_r(%struct.gswip_priv* %40, i32 %41)
  %43 = shl i32 %42, 16
  %44 = load i32, i32* %8, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %36, %29
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @gswip_switch_w(%struct.gswip_priv*, i32, i32) #1

declare dso_local i32 @gswip_switch_mask(%struct.gswip_priv*, i32, i32, i32) #1

declare dso_local i32 @gswip_switch_r_timeout(%struct.gswip_priv*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @gswip_switch_r(%struct.gswip_priv*, i32) #1

declare dso_local i32 @GSWIP_BM_RAM_VAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
