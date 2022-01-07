; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_nvram_write_dword.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_nvram_write_dword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@BNX2_NVM_COMMAND_DOIT = common dso_local global i32 0, align 4
@BNX2_NVM_COMMAND_WR = common dso_local global i32 0, align 4
@BNX2_NV_TRANSLATE = common dso_local global i32 0, align 4
@BNX2_NVM_COMMAND = common dso_local global i32 0, align 4
@BNX2_NVM_COMMAND_DONE = common dso_local global i32 0, align 4
@BNX2_NVM_WRITE = common dso_local global i32 0, align 4
@BNX2_NVM_ADDR = common dso_local global i32 0, align 4
@BNX2_NVM_ADDR_NVM_ADDR_VALUE = common dso_local global i32 0, align 4
@NVRAM_TIMEOUT_COUNT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2*, i32, i32*, i32)* @bnx2_nvram_write_dword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_nvram_write_dword(%struct.bnx2* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnx2*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @BNX2_NVM_COMMAND_DOIT, align 4
  %14 = load i32, i32* @BNX2_NVM_COMMAND_WR, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* %9, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %10, align 4
  %18 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %19 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @BNX2_NV_TRANSLATE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %48

26:                                               ; preds = %4
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %29 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sdiv i32 %27, %32
  %34 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %35 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %33, %38
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %42 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = srem i32 %40, %45
  %47 = add nsw i32 %39, %46
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %26, %4
  %49 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %50 = load i32, i32* @BNX2_NVM_COMMAND, align 4
  %51 = load i32, i32* @BNX2_NVM_COMMAND_DONE, align 4
  %52 = call i32 @BNX2_WR(%struct.bnx2* %49, i32 %50, i32 %51)
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @memcpy(i32* %11, i32* %53, i32 4)
  %55 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %56 = load i32, i32* @BNX2_NVM_WRITE, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @be32_to_cpu(i32 %57)
  %59 = call i32 @BNX2_WR(%struct.bnx2* %55, i32 %56, i32 %58)
  %60 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %61 = load i32, i32* @BNX2_NVM_ADDR, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @BNX2_NVM_ADDR_NVM_ADDR_VALUE, align 4
  %64 = and i32 %62, %63
  %65 = call i32 @BNX2_WR(%struct.bnx2* %60, i32 %61, i32 %64)
  %66 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %67 = load i32, i32* @BNX2_NVM_COMMAND, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @BNX2_WR(%struct.bnx2* %66, i32 %67, i32 %68)
  store i32 0, i32* %12, align 4
  br label %70

70:                                               ; preds = %84, %48
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* @NVRAM_TIMEOUT_COUNT, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %70
  %75 = call i32 @udelay(i32 5)
  %76 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %77 = load i32, i32* @BNX2_NVM_COMMAND, align 4
  %78 = call i32 @BNX2_RD(%struct.bnx2* %76, i32 %77)
  %79 = load i32, i32* @BNX2_NVM_COMMAND_DONE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  br label %87

83:                                               ; preds = %74
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %12, align 4
  br label %70

87:                                               ; preds = %82, %70
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* @NVRAM_TIMEOUT_COUNT, align 4
  %90 = icmp sge i32 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load i32, i32* @EBUSY, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %5, align 4
  br label %95

94:                                               ; preds = %87
  store i32 0, i32* %5, align 4
  br label %95

95:                                               ; preds = %94, %91
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i32 @BNX2_WR(%struct.bnx2*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @BNX2_RD(%struct.bnx2*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
