; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/extr_defxx.c_dfx_hw_port_ctrl_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/extr_defxx.c_dfx_hw_port_ctrl_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PI_PCTRL_M_CMD_ERROR = common dso_local global i32 0, align 4
@PI_PDQ_K_REG_PORT_DATA_A = common dso_local global i32 0, align 4
@PI_PDQ_K_REG_PORT_DATA_B = common dso_local global i32 0, align 4
@PI_PDQ_K_REG_PORT_CTRL = common dso_local global i32 0, align 4
@PI_PCTRL_M_BLAST_FLASH = common dso_local global i32 0, align 4
@DFX_K_HW_TIMEOUT = common dso_local global i32 0, align 4
@PI_PDQ_K_REG_HOST_DATA = common dso_local global i32 0, align 4
@DFX_K_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32, i32*)* @dfx_hw_port_ctrl_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dfx_hw_port_ctrl_req(i32* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @PI_PCTRL_M_CMD_ERROR, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %12, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* @PI_PDQ_K_REG_PORT_DATA_A, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @dfx_port_write_long(i32* %17, i32 %18, i32 %19)
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* @PI_PDQ_K_REG_PORT_DATA_B, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @dfx_port_write_long(i32* %21, i32 %22, i32 %23)
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* @PI_PDQ_K_REG_PORT_CTRL, align 4
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @dfx_port_write_long(i32* %25, i32 %26, i32 %27)
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @PI_PCTRL_M_BLAST_FLASH, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %5
  store i32 600000, i32* %13, align 4
  br label %34

33:                                               ; preds = %5
  store i32 20000, i32* %13, align 4
  br label %34

34:                                               ; preds = %33, %32
  br label %35

35:                                               ; preds = %49, %34
  %36 = load i32, i32* %13, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %35
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* @PI_PDQ_K_REG_PORT_CTRL, align 4
  %41 = call i32 @dfx_port_read_long(i32* %39, i32 %40, i32* %12)
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* @PI_PCTRL_M_CMD_ERROR, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %38
  br label %52

47:                                               ; preds = %38
  %48 = call i32 @udelay(i32 100)
  br label %49

49:                                               ; preds = %47
  %50 = load i32, i32* %13, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %13, align 4
  br label %35

52:                                               ; preds = %46, %35
  %53 = load i32, i32* %13, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* @DFX_K_HW_TIMEOUT, align 4
  store i32 %56, i32* %6, align 4
  br label %67

57:                                               ; preds = %52
  %58 = load i32*, i32** %11, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* @PI_PDQ_K_REG_HOST_DATA, align 4
  %63 = load i32*, i32** %11, align 8
  %64 = call i32 @dfx_port_read_long(i32* %61, i32 %62, i32* %63)
  br label %65

65:                                               ; preds = %60, %57
  %66 = load i32, i32* @DFX_K_SUCCESS, align 4
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %65, %55
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i32 @dfx_port_write_long(i32*, i32, i32) #1

declare dso_local i32 @dfx_port_read_long(i32*, i32, i32*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
