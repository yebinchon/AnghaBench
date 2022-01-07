; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_enable_nvram_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_enable_nvram_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@BNX2_MISC_CFG = common dso_local global i32 0, align 4
@BNX2_MISC_CFG_NVM_WR_EN_PCI = common dso_local global i32 0, align 4
@BNX2_NV_WREN = common dso_local global i32 0, align 4
@BNX2_NVM_COMMAND = common dso_local global i32 0, align 4
@BNX2_NVM_COMMAND_DONE = common dso_local global i32 0, align 4
@BNX2_NVM_COMMAND_WREN = common dso_local global i32 0, align 4
@BNX2_NVM_COMMAND_DOIT = common dso_local global i32 0, align 4
@NVRAM_TIMEOUT_COUNT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2*)* @bnx2_enable_nvram_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_enable_nvram_write(%struct.bnx2* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %3, align 8
  %6 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %7 = load i32, i32* @BNX2_MISC_CFG, align 4
  %8 = call i32 @BNX2_RD(%struct.bnx2* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %10 = load i32, i32* @BNX2_MISC_CFG, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @BNX2_MISC_CFG_NVM_WR_EN_PCI, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @BNX2_WR(%struct.bnx2* %9, i32 %10, i32 %13)
  %15 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %16 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @BNX2_NV_WREN, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %60

23:                                               ; preds = %1
  %24 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %25 = load i32, i32* @BNX2_NVM_COMMAND, align 4
  %26 = load i32, i32* @BNX2_NVM_COMMAND_DONE, align 4
  %27 = call i32 @BNX2_WR(%struct.bnx2* %24, i32 %25, i32 %26)
  %28 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %29 = load i32, i32* @BNX2_NVM_COMMAND, align 4
  %30 = load i32, i32* @BNX2_NVM_COMMAND_WREN, align 4
  %31 = load i32, i32* @BNX2_NVM_COMMAND_DOIT, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @BNX2_WR(%struct.bnx2* %28, i32 %29, i32 %32)
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %49, %23
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @NVRAM_TIMEOUT_COUNT, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %34
  %39 = call i32 @udelay(i32 5)
  %40 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %41 = load i32, i32* @BNX2_NVM_COMMAND, align 4
  %42 = call i32 @BNX2_RD(%struct.bnx2* %40, i32 %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @BNX2_NVM_COMMAND_DONE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %52

48:                                               ; preds = %38
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %34

52:                                               ; preds = %47, %34
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @NVRAM_TIMEOUT_COUNT, align 4
  %55 = icmp sge i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* @EBUSY, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %61

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59, %1
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %56
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @BNX2_RD(%struct.bnx2*, i32) #1

declare dso_local i32 @BNX2_WR(%struct.bnx2*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
