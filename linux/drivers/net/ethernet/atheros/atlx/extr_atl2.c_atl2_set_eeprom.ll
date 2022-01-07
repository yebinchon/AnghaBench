; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl2.c_atl2_set_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl2.c_atl2_set_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i32, i32, i32 }
%struct.atl2_adapter = type { %struct.atl2_hw }
%struct.atl2_hw = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)* @atl2_set_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl2_set_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.atl2_adapter*, align 8
  %9 = alloca %struct.atl2_hw*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %6, align 8
  store i32* %2, i32** %7, align 8
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = call %struct.atl2_adapter* @netdev_priv(%struct.net_device* %17)
  store %struct.atl2_adapter* %18, %struct.atl2_adapter** %8, align 8
  %19 = load %struct.atl2_adapter*, %struct.atl2_adapter** %8, align 8
  %20 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %19, i32 0, i32 0
  store %struct.atl2_hw* %20, %struct.atl2_hw** %9, align 8
  store i32 0, i32* %15, align 4
  %21 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %22 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %152

28:                                               ; preds = %3
  %29 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %30 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.atl2_hw*, %struct.atl2_hw** %9, align 8
  %33 = getelementptr inbounds %struct.atl2_hw, %struct.atl2_hw* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.atl2_hw*, %struct.atl2_hw** %9, align 8
  %36 = getelementptr inbounds %struct.atl2_hw, %struct.atl2_hw* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 16
  %39 = or i32 %34, %38
  %40 = icmp ne i32 %31, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %28
  %42 = load i32, i32* @EFAULT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %152

44:                                               ; preds = %28
  store i32 512, i32* %12, align 4
  %45 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %46 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = ashr i32 %47, 2
  store i32 %48, i32* %13, align 4
  %49 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %50 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %53 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %51, %54
  %56 = sub nsw i32 %55, 1
  %57 = ashr i32 %56, 2
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call i32* @kmalloc(i32 %58, i32 %59)
  store i32* %60, i32** %10, align 8
  %61 = load i32*, i32** %10, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %44
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %152

66:                                               ; preds = %44
  %67 = load i32*, i32** %10, align 8
  store i32* %67, i32** %11, align 8
  %68 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %69 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 3
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %66
  %74 = load %struct.atl2_hw*, %struct.atl2_hw** %9, align 8
  %75 = load i32, i32* %13, align 4
  %76 = mul nsw i32 %75, 4
  %77 = load i32*, i32** %10, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = call i32 @atl2_read_eeprom(%struct.atl2_hw* %74, i32 %76, i32* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %73
  %82 = load i32, i32* @EIO, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %15, align 4
  br label %148

84:                                               ; preds = %73
  %85 = load i32*, i32** %11, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %86, i32** %11, align 8
  br label %87

87:                                               ; preds = %84, %66
  %88 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %89 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %92 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %90, %93
  %95 = and i32 %94, 3
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %113

97:                                               ; preds = %87
  %98 = load %struct.atl2_hw*, %struct.atl2_hw** %9, align 8
  %99 = load i32, i32* %14, align 4
  %100 = mul nsw i32 %99, 4
  %101 = load i32*, i32** %10, align 8
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* %13, align 4
  %104 = sub nsw i32 %102, %103
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %101, i64 %105
  %107 = call i32 @atl2_read_eeprom(%struct.atl2_hw* %98, i32 %100, i32* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %97
  %110 = load i32, i32* @EIO, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %15, align 4
  br label %148

112:                                              ; preds = %97
  br label %113

113:                                              ; preds = %112, %87
  %114 = load i32*, i32** %11, align 8
  %115 = load i32*, i32** %7, align 8
  %116 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %117 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @memcpy(i32* %114, i32* %115, i32 %118)
  store i32 0, i32* %16, align 4
  br label %120

120:                                              ; preds = %144, %113
  %121 = load i32, i32* %16, align 4
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* %13, align 4
  %124 = sub nsw i32 %122, %123
  %125 = add nsw i32 %124, 1
  %126 = icmp slt i32 %121, %125
  br i1 %126, label %127, label %147

127:                                              ; preds = %120
  %128 = load %struct.atl2_hw*, %struct.atl2_hw** %9, align 8
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* %16, align 4
  %131 = add nsw i32 %129, %130
  %132 = mul nsw i32 %131, 4
  %133 = load i32*, i32** %10, align 8
  %134 = load i32, i32* %16, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @atl2_write_eeprom(%struct.atl2_hw* %128, i32 %132, i32 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %127
  %141 = load i32, i32* @EIO, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %15, align 4
  br label %148

143:                                              ; preds = %127
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %16, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %16, align 4
  br label %120

147:                                              ; preds = %120
  br label %148

148:                                              ; preds = %147, %140, %109, %81
  %149 = load i32*, i32** %10, align 8
  %150 = call i32 @kfree(i32* %149)
  %151 = load i32, i32* %15, align 4
  store i32 %151, i32* %4, align 4
  br label %152

152:                                              ; preds = %148, %63, %41, %25
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

declare dso_local %struct.atl2_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @atl2_read_eeprom(%struct.atl2_hw*, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @atl2_write_eeprom(%struct.atl2_hw*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
