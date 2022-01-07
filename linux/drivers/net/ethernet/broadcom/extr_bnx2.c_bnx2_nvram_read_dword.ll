; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_nvram_read_dword.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_nvram_read_dword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@BNX2_NVM_COMMAND_DOIT = common dso_local global i32 0, align 4
@BNX2_NV_TRANSLATE = common dso_local global i32 0, align 4
@BNX2_NVM_COMMAND = common dso_local global i32 0, align 4
@BNX2_NVM_COMMAND_DONE = common dso_local global i32 0, align 4
@BNX2_NVM_ADDR = common dso_local global i32 0, align 4
@BNX2_NVM_ADDR_NVM_ADDR_VALUE = common dso_local global i32 0, align 4
@NVRAM_TIMEOUT_COUNT = common dso_local global i32 0, align 4
@BNX2_NVM_READ = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2*, i32, i32*, i32)* @bnx2_nvram_read_dword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_nvram_read_dword(%struct.bnx2* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnx2*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* @BNX2_NVM_COMMAND_DOIT, align 4
  %15 = load i32, i32* %9, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %10, align 4
  %17 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %18 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @BNX2_NV_TRANSLATE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %47

25:                                               ; preds = %4
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %28 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sdiv i32 %26, %31
  %33 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %34 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %32, %37
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %41 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = srem i32 %39, %44
  %46 = add nsw i32 %38, %45
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %25, %4
  %48 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %49 = load i32, i32* @BNX2_NVM_COMMAND, align 4
  %50 = load i32, i32* @BNX2_NVM_COMMAND_DONE, align 4
  %51 = call i32 @BNX2_WR(%struct.bnx2* %48, i32 %49, i32 %50)
  %52 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %53 = load i32, i32* @BNX2_NVM_ADDR, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @BNX2_NVM_ADDR_NVM_ADDR_VALUE, align 4
  %56 = and i32 %54, %55
  %57 = call i32 @BNX2_WR(%struct.bnx2* %52, i32 %53, i32 %56)
  %58 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %59 = load i32, i32* @BNX2_NVM_COMMAND, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @BNX2_WR(%struct.bnx2* %58, i32 %59, i32 %60)
  store i32 0, i32* %11, align 4
  br label %62

62:                                               ; preds = %83, %47
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @NVRAM_TIMEOUT_COUNT, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %86

66:                                               ; preds = %62
  %67 = call i32 @udelay(i32 5)
  %68 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %69 = load i32, i32* @BNX2_NVM_COMMAND, align 4
  %70 = call i32 @BNX2_RD(%struct.bnx2* %68, i32 %69)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* @BNX2_NVM_COMMAND_DONE, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %66
  %76 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %77 = load i32, i32* @BNX2_NVM_READ, align 4
  %78 = call i32 @BNX2_RD(%struct.bnx2* %76, i32 %77)
  %79 = call i32 @cpu_to_be32(i32 %78)
  store i32 %79, i32* %13, align 4
  %80 = load i32*, i32** %8, align 8
  %81 = call i32 @memcpy(i32* %80, i32* %13, i32 4)
  br label %86

82:                                               ; preds = %66
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %11, align 4
  br label %62

86:                                               ; preds = %75, %62
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* @NVRAM_TIMEOUT_COUNT, align 4
  %89 = icmp sge i32 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load i32, i32* @EBUSY, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %5, align 4
  br label %94

93:                                               ; preds = %86
  store i32 0, i32* %5, align 4
  br label %94

94:                                               ; preds = %93, %90
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @BNX2_WR(%struct.bnx2*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @BNX2_RD(%struct.bnx2*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
