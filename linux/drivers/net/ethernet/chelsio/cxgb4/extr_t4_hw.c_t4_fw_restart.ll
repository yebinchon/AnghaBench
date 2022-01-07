; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_fw_restart.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_fw_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@PCIE_FW_A = common dso_local global i32 0, align 4
@PCIE_FW_HALT_F = common dso_local global i32 0, align 4
@PCIE_FW_MASTER_M = common dso_local global i32 0, align 4
@CIM_BOOT_CFG_A = common dso_local global i32 0, align 4
@UPCRST_F = common dso_local global i32 0, align 4
@PIORST_F = common dso_local global i32 0, align 4
@PIORSTMODE_F = common dso_local global i32 0, align 4
@PL_RST_A = common dso_local global i32 0, align 4
@FW_CMD_MAX_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, i32, i32)* @t4_fw_restart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t4_fw_restart(%struct.adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %42

11:                                               ; preds = %3
  %12 = load %struct.adapter*, %struct.adapter** %5, align 8
  %13 = load i32, i32* @PCIE_FW_A, align 4
  %14 = load i32, i32* @PCIE_FW_HALT_F, align 4
  %15 = call i32 @t4_set_reg_field(%struct.adapter* %12, i32 %13, i32 %14, i32 0)
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @PCIE_FW_MASTER_M, align 4
  %18 = icmp ule i32 %16, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %11
  %20 = load %struct.adapter*, %struct.adapter** %5, align 8
  %21 = load i32, i32* @CIM_BOOT_CFG_A, align 4
  %22 = load i32, i32* @UPCRST_F, align 4
  %23 = call i32 @t4_set_reg_field(%struct.adapter* %20, i32 %21, i32 %22, i32 0)
  %24 = call i32 @msleep(i32 100)
  %25 = load %struct.adapter*, %struct.adapter** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @PIORST_F, align 4
  %28 = load i32, i32* @PIORSTMODE_F, align 4
  %29 = or i32 %27, %28
  %30 = call i64 @t4_fw_reset(%struct.adapter* %25, i32 %26, i32 %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %67

33:                                               ; preds = %19
  br label %34

34:                                               ; preds = %33, %11
  %35 = load %struct.adapter*, %struct.adapter** %5, align 8
  %36 = load i32, i32* @PL_RST_A, align 4
  %37 = load i32, i32* @PIORST_F, align 4
  %38 = load i32, i32* @PIORSTMODE_F, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @t4_write_reg(%struct.adapter* %35, i32 %36, i32 %39)
  %41 = call i32 @msleep(i32 2000)
  br label %66

42:                                               ; preds = %3
  %43 = load %struct.adapter*, %struct.adapter** %5, align 8
  %44 = load i32, i32* @CIM_BOOT_CFG_A, align 4
  %45 = load i32, i32* @UPCRST_F, align 4
  %46 = call i32 @t4_set_reg_field(%struct.adapter* %43, i32 %44, i32 %45, i32 0)
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %59, %42
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @FW_CMD_MAX_TIMEOUT, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %47
  %52 = load %struct.adapter*, %struct.adapter** %5, align 8
  %53 = load i32, i32* @PCIE_FW_A, align 4
  %54 = call i32 @t4_read_reg(%struct.adapter* %52, i32 %53)
  %55 = load i32, i32* @PCIE_FW_HALT_F, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %67

59:                                               ; preds = %51
  %60 = call i32 @msleep(i32 100)
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 100
  store i32 %62, i32* %8, align 4
  br label %47

63:                                               ; preds = %47
  %64 = load i32, i32* @ETIMEDOUT, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %67

66:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %66, %63, %58, %32
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @t4_set_reg_field(%struct.adapter*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @t4_fw_reset(%struct.adapter*, i32, i32) #1

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
