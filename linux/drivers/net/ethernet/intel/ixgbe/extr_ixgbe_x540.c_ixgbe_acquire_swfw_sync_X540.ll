; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x540.c_ixgbe_acquire_swfw_sync_X540.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x540.c_ixgbe_acquire_swfw_sync_X540.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_GSSR_NVM_PHY_MASK = common dso_local global i32 0, align 4
@IXGBE_GSSR_I2C_MASK = common dso_local global i32 0, align 4
@IXGBE_GSSR_EEP_SM = common dso_local global i32 0, align 4
@IXGBE_GSSR_FLASH_SM = common dso_local global i32 0, align 4
@IXGBE_GSSR_SW_MNG_SM = common dso_local global i32 0, align 4
@IXGBE_ERR_SWFW_SYNC = common dso_local global i32 0, align 4
@IXGBE_GSSR_PHY0_SM = common dso_local global i32 0, align 4
@IXGBE_GSSR_PHY1_SM = common dso_local global i32 0, align 4
@IXGBE_GSSR_MAC_CSR_SM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_acquire_swfw_sync_X540(%struct.ixgbe_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @IXGBE_GSSR_NVM_PHY_MASK, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @IXGBE_GSSR_I2C_MASK, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = shl i32 %20, 5
  store i32 %21, i32* %8, align 4
  store i32 200, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @IXGBE_GSSR_EEP_SM, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @IXGBE_GSSR_FLASH_SM, align 4
  store i32 %27, i32* %10, align 4
  br label %28

28:                                               ; preds = %26, %2
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @IXGBE_GSSR_SW_MNG_SM, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32, i32* @IXGBE_GSSR_SW_MNG_SM, align 4
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %33, %28
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = shl i32 %41, 2
  %43 = load i32, i32* %8, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %8, align 4
  store i32 0, i32* %12, align 4
  br label %45

45:                                               ; preds = %84, %37
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %87

49:                                               ; preds = %45
  %50 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %51 = call i64 @ixgbe_get_swfw_sync_semaphore(%struct.ixgbe_hw* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* @IXGBE_ERR_SWFW_SYNC, align 4
  store i32 %54, i32* %3, align 4
  br label %148

55:                                               ; preds = %49
  %56 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %57 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %58 = call i32 @IXGBE_SWFW_SYNC(%struct.ixgbe_hw* %57)
  %59 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %56, i32 %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %6, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* %10, align 4
  %65 = or i32 %63, %64
  %66 = and i32 %60, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %80, label %68

68:                                               ; preds = %55
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %11, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %11, align 4
  %72 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %73 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %74 = call i32 @IXGBE_SWFW_SYNC(%struct.ixgbe_hw* %73)
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %72, i32 %74, i32 %75)
  %77 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %78 = call i32 @ixgbe_release_swfw_sync_semaphore(%struct.ixgbe_hw* %77)
  %79 = call i32 @usleep_range(i32 5000, i32 6000)
  store i32 0, i32* %3, align 4
  br label %148

80:                                               ; preds = %55
  %81 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %82 = call i32 @ixgbe_release_swfw_sync_semaphore(%struct.ixgbe_hw* %81)
  %83 = call i32 @usleep_range(i32 5000, i32 10000)
  br label %84

84:                                               ; preds = %80
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %12, align 4
  br label %45

87:                                               ; preds = %45
  %88 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %89 = call i64 @ixgbe_get_swfw_sync_semaphore(%struct.ixgbe_hw* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = load i32, i32* @IXGBE_ERR_SWFW_SYNC, align 4
  store i32 %92, i32* %3, align 4
  br label %148

93:                                               ; preds = %87
  %94 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %95 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %96 = call i32 @IXGBE_SWFW_SYNC(%struct.ixgbe_hw* %95)
  %97 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %94, i32 %96)
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %10, align 4
  %101 = or i32 %99, %100
  %102 = and i32 %98, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %116

104:                                              ; preds = %93
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* %11, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %11, align 4
  %108 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %109 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %110 = call i32 @IXGBE_SWFW_SYNC(%struct.ixgbe_hw* %109)
  %111 = load i32, i32* %11, align 4
  %112 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %108, i32 %110, i32 %111)
  %113 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %114 = call i32 @ixgbe_release_swfw_sync_semaphore(%struct.ixgbe_hw* %113)
  %115 = call i32 @usleep_range(i32 5000, i32 6000)
  store i32 0, i32* %3, align 4
  br label %148

116:                                              ; preds = %93
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* %6, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %144

121:                                              ; preds = %116
  %122 = load i32, i32* @IXGBE_GSSR_EEP_SM, align 4
  %123 = load i32, i32* @IXGBE_GSSR_PHY0_SM, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @IXGBE_GSSR_PHY1_SM, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @IXGBE_GSSR_MAC_CSR_SM, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @IXGBE_GSSR_SW_MNG_SM, align 4
  %130 = or i32 %128, %129
  store i32 %130, i32* %13, align 4
  %131 = load i32, i32* %7, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %121
  %134 = load i32, i32* @IXGBE_GSSR_I2C_MASK, align 4
  %135 = load i32, i32* %13, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %13, align 4
  br label %137

137:                                              ; preds = %133, %121
  %138 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %139 = load i32, i32* %13, align 4
  %140 = call i32 @ixgbe_release_swfw_sync_X540(%struct.ixgbe_hw* %138, i32 %139)
  %141 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %142 = call i32 @ixgbe_release_swfw_sync_semaphore(%struct.ixgbe_hw* %141)
  %143 = load i32, i32* @IXGBE_ERR_SWFW_SYNC, align 4
  store i32 %143, i32* %3, align 4
  br label %148

144:                                              ; preds = %116
  %145 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %146 = call i32 @ixgbe_release_swfw_sync_semaphore(%struct.ixgbe_hw* %145)
  %147 = load i32, i32* @IXGBE_ERR_SWFW_SYNC, align 4
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %144, %137, %104, %91, %68, %53
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i64 @ixgbe_get_swfw_sync_semaphore(%struct.ixgbe_hw*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_SWFW_SYNC(%struct.ixgbe_hw*) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @ixgbe_release_swfw_sync_semaphore(%struct.ixgbe_hw*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @ixgbe_release_swfw_sync_X540(%struct.ixgbe_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
