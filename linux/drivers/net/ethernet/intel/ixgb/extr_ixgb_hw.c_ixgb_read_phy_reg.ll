; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_hw.c_ixgb_read_phy_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_hw.c_ixgb_read_phy_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgb_hw = type { i32 }

@IXGB_MAX_PHY_REG_ADDRESS = common dso_local global i32 0, align 4
@IXGB_MAX_PHY_ADDRESS = common dso_local global i32 0, align 4
@IXGB_MAX_PHY_DEV_TYPE = common dso_local global i32 0, align 4
@IXGB_MSCA_NP_ADDR_SHIFT = common dso_local global i32 0, align 4
@IXGB_MSCA_DEV_TYPE_SHIFT = common dso_local global i32 0, align 4
@IXGB_MSCA_PHY_ADDR_SHIFT = common dso_local global i32 0, align 4
@IXGB_MSCA_ADDR_CYCLE = common dso_local global i32 0, align 4
@IXGB_MSCA_MDI_COMMAND = common dso_local global i32 0, align 4
@MSCA = common dso_local global i32 0, align 4
@IXGB_MSCA_READ = common dso_local global i32 0, align 4
@MSRWD = common dso_local global i32 0, align 4
@IXGB_MSRWD_READ_DATA_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgb_hw*, i32, i32, i32)* @ixgb_read_phy_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgb_read_phy_reg(%struct.ixgb_hw* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ixgb_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ixgb_hw* %0, %struct.ixgb_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @IXGB_MAX_PHY_REG_ADDRESS, align 4
  %14 = icmp sle i32 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @ASSERT(i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @IXGB_MAX_PHY_ADDRESS, align 4
  %19 = icmp sle i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @ASSERT(i32 %20)
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @IXGB_MAX_PHY_DEV_TYPE, align 4
  %24 = icmp sle i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @ASSERT(i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @IXGB_MSCA_NP_ADDR_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @IXGB_MSCA_DEV_TYPE_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = or i32 %29, %32
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @IXGB_MSCA_PHY_ADDR_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = or i32 %33, %36
  %38 = load i32, i32* @IXGB_MSCA_ADDR_CYCLE, align 4
  %39 = load i32, i32* @IXGB_MSCA_MDI_COMMAND, align 4
  %40 = or i32 %38, %39
  %41 = or i32 %37, %40
  store i32 %41, i32* %11, align 4
  %42 = load %struct.ixgb_hw*, %struct.ixgb_hw** %5, align 8
  %43 = load i32, i32* @MSCA, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @IXGB_WRITE_REG(%struct.ixgb_hw* %42, i32 %43, i32 %44)
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %60, %4
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %47, 10
  br i1 %48, label %49, label %63

49:                                               ; preds = %46
  %50 = call i32 @udelay(i32 10)
  %51 = load %struct.ixgb_hw*, %struct.ixgb_hw** %5, align 8
  %52 = load i32, i32* @MSCA, align 4
  %53 = call i32 @IXGB_READ_REG(%struct.ixgb_hw* %51, i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @IXGB_MSCA_MDI_COMMAND, align 4
  %56 = and i32 %54, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  br label %63

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %46

63:                                               ; preds = %58, %46
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @IXGB_MSCA_MDI_COMMAND, align 4
  %66 = and i32 %64, %65
  %67 = icmp eq i32 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i32 @ASSERT(i32 %68)
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @IXGB_MSCA_NP_ADDR_SHIFT, align 4
  %72 = shl i32 %70, %71
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @IXGB_MSCA_DEV_TYPE_SHIFT, align 4
  %75 = shl i32 %73, %74
  %76 = or i32 %72, %75
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @IXGB_MSCA_PHY_ADDR_SHIFT, align 4
  %79 = shl i32 %77, %78
  %80 = or i32 %76, %79
  %81 = load i32, i32* @IXGB_MSCA_READ, align 4
  %82 = load i32, i32* @IXGB_MSCA_MDI_COMMAND, align 4
  %83 = or i32 %81, %82
  %84 = or i32 %80, %83
  store i32 %84, i32* %11, align 4
  %85 = load %struct.ixgb_hw*, %struct.ixgb_hw** %5, align 8
  %86 = load i32, i32* @MSCA, align 4
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @IXGB_WRITE_REG(%struct.ixgb_hw* %85, i32 %86, i32 %87)
  store i32 0, i32* %9, align 4
  br label %89

89:                                               ; preds = %103, %63
  %90 = load i32, i32* %9, align 4
  %91 = icmp slt i32 %90, 10
  br i1 %91, label %92, label %106

92:                                               ; preds = %89
  %93 = call i32 @udelay(i32 10)
  %94 = load %struct.ixgb_hw*, %struct.ixgb_hw** %5, align 8
  %95 = load i32, i32* @MSCA, align 4
  %96 = call i32 @IXGB_READ_REG(%struct.ixgb_hw* %94, i32 %95)
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* @IXGB_MSCA_MDI_COMMAND, align 4
  %99 = and i32 %97, %98
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %92
  br label %106

102:                                              ; preds = %92
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %9, align 4
  br label %89

106:                                              ; preds = %101, %89
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* @IXGB_MSCA_MDI_COMMAND, align 4
  %109 = and i32 %107, %108
  %110 = icmp eq i32 %109, 0
  %111 = zext i1 %110 to i32
  %112 = call i32 @ASSERT(i32 %111)
  %113 = load %struct.ixgb_hw*, %struct.ixgb_hw** %5, align 8
  %114 = load i32, i32* @MSRWD, align 4
  %115 = call i32 @IXGB_READ_REG(%struct.ixgb_hw* %113, i32 %114)
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* @IXGB_MSRWD_READ_DATA_SHIFT, align 4
  %117 = load i32, i32* %10, align 4
  %118 = ashr i32 %117, %116
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %10, align 4
  ret i32 %119
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @IXGB_WRITE_REG(%struct.ixgb_hw*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @IXGB_READ_REG(%struct.ixgb_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
