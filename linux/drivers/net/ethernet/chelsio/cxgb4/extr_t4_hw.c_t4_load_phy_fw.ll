; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_load_phy_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_load_phy_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"PHY Firmware already up-to-date, version %#x\0A\00", align 1
@FW_PARAMS_MNEM_DEV = common dso_local global i32 0, align 4
@FW_PARAMS_PARAM_DEV_PHYFW = common dso_local global i32 0, align 4
@FW_PARAMS_PARAM_DEV_PHYFW_DOWNLOAD = common dso_local global i32 0, align 4
@T4_MEMORY_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [74 x i8] c"PHY Firmware did not update: version on adapter %#x, version flashed %#x\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_load_phy_fw(%struct.adapter* %0, i32 %1, i32* %2, i32 (i32*, i64)* %3, i32* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32 (i32*, i64)*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 (i32*, i64)* %3, i32 (i32*, i64)** %11, align 8
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %21 = load i32 (i32*, i64)*, i32 (i32*, i64)** %11, align 8
  %22 = icmp ne i32 (i32*, i64)* %21, null
  br i1 %22, label %23, label %43

23:                                               ; preds = %6
  %24 = load i32 (i32*, i64)*, i32 (i32*, i64)** %11, align 8
  %25 = load i32*, i32** %12, align 8
  %26 = load i64, i64* %13, align 8
  %27 = call i32 %24(i32* %25, i64 %26)
  store i32 %27, i32* %19, align 4
  %28 = load %struct.adapter*, %struct.adapter** %8, align 8
  %29 = call i32 @t4_phy_fw_ver(%struct.adapter* %28, i32* %18)
  store i32 %29, i32* %20, align 4
  %30 = load i32, i32* %20, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i32, i32* %20, align 4
  store i32 %33, i32* %7, align 4
  br label %149

34:                                               ; preds = %23
  %35 = load i32, i32* %18, align 4
  %36 = load i32, i32* %19, align 4
  %37 = icmp sge i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load %struct.adapter*, %struct.adapter** %8, align 8
  %40 = load i32, i32* %18, align 4
  %41 = call i32 (%struct.adapter*, i8*, i32, ...) @CH_WARN(%struct.adapter* %39, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %40)
  store i32 0, i32* %7, align 4
  br label %149

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42, %6
  %44 = load i32, i32* @FW_PARAMS_MNEM_DEV, align 4
  %45 = call i32 @FW_PARAMS_MNEM_V(i32 %44)
  %46 = load i32, i32* @FW_PARAMS_PARAM_DEV_PHYFW, align 4
  %47 = call i32 @FW_PARAMS_PARAM_X_V(i32 %46)
  %48 = or i32 %45, %47
  %49 = load %struct.adapter*, %struct.adapter** %8, align 8
  %50 = getelementptr inbounds %struct.adapter, %struct.adapter* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @FW_PARAMS_PARAM_Y_V(i32 %52)
  %54 = or i32 %48, %53
  %55 = load i32, i32* @FW_PARAMS_PARAM_DEV_PHYFW_DOWNLOAD, align 4
  %56 = call i32 @FW_PARAMS_PARAM_Z_V(i32 %55)
  %57 = or i32 %54, %56
  store i32 %57, i32* %16, align 4
  %58 = load i64, i64* %13, align 8
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %17, align 4
  %60 = load %struct.adapter*, %struct.adapter** %8, align 8
  %61 = load %struct.adapter*, %struct.adapter** %8, align 8
  %62 = getelementptr inbounds %struct.adapter, %struct.adapter* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.adapter*, %struct.adapter** %8, align 8
  %65 = getelementptr inbounds %struct.adapter, %struct.adapter* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @t4_query_params_rw(%struct.adapter* %60, i32 %63, i32 %66, i32 0, i32 1, i32* %16, i32* %17, i32 1, i32 1)
  store i32 %67, i32* %20, align 4
  %68 = load i32, i32* %20, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %43
  %71 = load i32, i32* %20, align 4
  store i32 %71, i32* %7, align 4
  br label %149

72:                                               ; preds = %43
  %73 = load i32, i32* %17, align 4
  %74 = ashr i32 %73, 8
  %75 = sext i32 %74 to i64
  store i64 %75, i64* %14, align 8
  %76 = load i32, i32* %17, align 4
  %77 = and i32 %76, 255
  %78 = shl i32 %77, 16
  %79 = sext i32 %78 to i64
  store i64 %79, i64* %15, align 8
  %80 = load i32*, i32** %10, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %72
  %83 = load i32*, i32** %10, align 8
  %84 = call i32 @spin_lock_bh(i32* %83)
  br label %85

85:                                               ; preds = %82, %72
  %86 = load %struct.adapter*, %struct.adapter** %8, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load i64, i64* %14, align 8
  %89 = load i64, i64* %15, align 8
  %90 = load i64, i64* %13, align 8
  %91 = load i32*, i32** %12, align 8
  %92 = load i32, i32* @T4_MEMORY_WRITE, align 4
  %93 = call i32 @t4_memory_rw(%struct.adapter* %86, i32 %87, i64 %88, i64 %89, i64 %90, i32* %91, i32 %92)
  store i32 %93, i32* %20, align 4
  %94 = load i32*, i32** %10, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %85
  %97 = load i32*, i32** %10, align 8
  %98 = call i32 @spin_unlock_bh(i32* %97)
  br label %99

99:                                               ; preds = %96, %85
  %100 = load i32, i32* %20, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = load i32, i32* %20, align 4
  store i32 %103, i32* %7, align 4
  br label %149

104:                                              ; preds = %99
  %105 = load i32, i32* @FW_PARAMS_MNEM_DEV, align 4
  %106 = call i32 @FW_PARAMS_MNEM_V(i32 %105)
  %107 = load i32, i32* @FW_PARAMS_PARAM_DEV_PHYFW, align 4
  %108 = call i32 @FW_PARAMS_PARAM_X_V(i32 %107)
  %109 = or i32 %106, %108
  %110 = load %struct.adapter*, %struct.adapter** %8, align 8
  %111 = getelementptr inbounds %struct.adapter, %struct.adapter* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @FW_PARAMS_PARAM_Y_V(i32 %113)
  %115 = or i32 %109, %114
  %116 = load i32, i32* @FW_PARAMS_PARAM_DEV_PHYFW_DOWNLOAD, align 4
  %117 = call i32 @FW_PARAMS_PARAM_Z_V(i32 %116)
  %118 = or i32 %115, %117
  store i32 %118, i32* %16, align 4
  %119 = load %struct.adapter*, %struct.adapter** %8, align 8
  %120 = load %struct.adapter*, %struct.adapter** %8, align 8
  %121 = getelementptr inbounds %struct.adapter, %struct.adapter* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.adapter*, %struct.adapter** %8, align 8
  %124 = getelementptr inbounds %struct.adapter, %struct.adapter* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @t4_set_params_timeout(%struct.adapter* %119, i32 %122, i32 %125, i32 0, i32 1, i32* %16, i32* %17, i32 30000)
  store i32 %126, i32* %20, align 4
  %127 = load i32 (i32*, i64)*, i32 (i32*, i64)** %11, align 8
  %128 = icmp ne i32 (i32*, i64)* %127, null
  br i1 %128, label %129, label %148

129:                                              ; preds = %104
  %130 = load %struct.adapter*, %struct.adapter** %8, align 8
  %131 = call i32 @t4_phy_fw_ver(%struct.adapter* %130, i32* %18)
  store i32 %131, i32* %20, align 4
  %132 = load i32, i32* %20, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %129
  %135 = load i32, i32* %20, align 4
  store i32 %135, i32* %7, align 4
  br label %149

136:                                              ; preds = %129
  %137 = load i32, i32* %18, align 4
  %138 = load i32, i32* %19, align 4
  %139 = icmp ne i32 %137, %138
  br i1 %139, label %140, label %147

140:                                              ; preds = %136
  %141 = load %struct.adapter*, %struct.adapter** %8, align 8
  %142 = load i32, i32* %18, align 4
  %143 = load i32, i32* %19, align 4
  %144 = call i32 (%struct.adapter*, i8*, i32, ...) @CH_WARN(%struct.adapter* %141, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 %142, i32 %143)
  %145 = load i32, i32* @ENXIO, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %7, align 4
  br label %149

147:                                              ; preds = %136
  br label %148

148:                                              ; preds = %147, %104
  store i32 1, i32* %7, align 4
  br label %149

149:                                              ; preds = %148, %140, %134, %102, %70, %38, %32
  %150 = load i32, i32* %7, align 4
  ret i32 %150
}

declare dso_local i32 @t4_phy_fw_ver(%struct.adapter*, i32*) #1

declare dso_local i32 @CH_WARN(%struct.adapter*, i8*, i32, ...) #1

declare dso_local i32 @FW_PARAMS_MNEM_V(i32) #1

declare dso_local i32 @FW_PARAMS_PARAM_X_V(i32) #1

declare dso_local i32 @FW_PARAMS_PARAM_Y_V(i32) #1

declare dso_local i32 @FW_PARAMS_PARAM_Z_V(i32) #1

declare dso_local i32 @t4_query_params_rw(%struct.adapter*, i32, i32, i32, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @t4_memory_rw(%struct.adapter*, i32, i64, i64, i64, i32*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @t4_set_params_timeout(%struct.adapter*, i32, i32, i32, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
