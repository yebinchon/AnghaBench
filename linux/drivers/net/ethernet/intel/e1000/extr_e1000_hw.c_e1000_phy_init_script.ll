; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_phy_init_script.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_phy_init_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32, i64 }

@IGP01E1000_ANALOG_SPARE_FUSE_STATUS = common dso_local global i32 0, align 4
@IGP01E1000_ANALOG_SPARE_FUSE_ENABLED = common dso_local global i32 0, align 4
@IGP01E1000_ANALOG_FUSE_STATUS = common dso_local global i32 0, align 4
@IGP01E1000_ANALOG_FUSE_FINE_MASK = common dso_local global i32 0, align 4
@IGP01E1000_ANALOG_FUSE_COARSE_MASK = common dso_local global i32 0, align 4
@IGP01E1000_ANALOG_FUSE_COARSE_THRESH = common dso_local global i32 0, align 4
@IGP01E1000_ANALOG_FUSE_COARSE_10 = common dso_local global i64 0, align 8
@IGP01E1000_ANALOG_FUSE_FINE_1 = common dso_local global i64 0, align 8
@IGP01E1000_ANALOG_FUSE_FINE_10 = common dso_local global i64 0, align 8
@IGP01E1000_ANALOG_FUSE_POLY_MASK = common dso_local global i32 0, align 4
@IGP01E1000_ANALOG_FUSE_CONTROL = common dso_local global i32 0, align 4
@IGP01E1000_ANALOG_FUSE_BYPASS = common dso_local global i32 0, align 4
@IGP01E1000_ANALOG_FUSE_ENABLE_SW_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_hw*)* @e1000_phy_init_script to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_phy_init_script(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %124

12:                                               ; preds = %1
  %13 = call i32 @msleep(i32 20)
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %15 = call i32 @e1000_read_phy_reg(%struct.e1000_hw* %14, i32 12123, i32* %4)
  store i32 %15, i32* %3, align 4
  %16 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %17 = call i32 @e1000_write_phy_reg(%struct.e1000_hw* %16, i32 12123, i32 3)
  %18 = call i32 @msleep(i32 20)
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %20 = call i32 @e1000_write_phy_reg(%struct.e1000_hw* %19, i32 0, i32 320)
  %21 = call i32 @msleep(i32 5)
  %22 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %23 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %47 [
    i32 131, label %25
    i32 129, label %25
    i32 130, label %44
    i32 128, label %44
  ]

25:                                               ; preds = %12, %12
  %26 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %27 = call i32 @e1000_write_phy_reg(%struct.e1000_hw* %26, i32 8085, i32 1)
  %28 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %29 = call i32 @e1000_write_phy_reg(%struct.e1000_hw* %28, i32 8049, i32 48417)
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %31 = call i32 @e1000_write_phy_reg(%struct.e1000_hw* %30, i32 8057, i32 24)
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %33 = call i32 @e1000_write_phy_reg(%struct.e1000_hw* %32, i32 7984, i32 5632)
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %35 = call i32 @e1000_write_phy_reg(%struct.e1000_hw* %34, i32 7985, i32 20)
  %36 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %37 = call i32 @e1000_write_phy_reg(%struct.e1000_hw* %36, i32 7986, i32 5660)
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %39 = call i32 @e1000_write_phy_reg(%struct.e1000_hw* %38, i32 8084, i32 3)
  %40 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %41 = call i32 @e1000_write_phy_reg(%struct.e1000_hw* %40, i32 8086, i32 63)
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %43 = call i32 @e1000_write_phy_reg(%struct.e1000_hw* %42, i32 8208, i32 8)
  br label %48

44:                                               ; preds = %12, %12
  %45 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %46 = call i32 @e1000_write_phy_reg(%struct.e1000_hw* %45, i32 8051, i32 153)
  br label %48

47:                                               ; preds = %12
  br label %48

48:                                               ; preds = %47, %44, %25
  %49 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %50 = call i32 @e1000_write_phy_reg(%struct.e1000_hw* %49, i32 0, i32 13056)
  %51 = call i32 @msleep(i32 20)
  %52 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @e1000_write_phy_reg(%struct.e1000_hw* %52, i32 12123, i32 %53)
  %55 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %56 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 129
  br i1 %58, label %59, label %123

59:                                               ; preds = %48
  %60 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %61 = load i32, i32* @IGP01E1000_ANALOG_SPARE_FUSE_STATUS, align 4
  %62 = call i32 @e1000_read_phy_reg(%struct.e1000_hw* %60, i32 %61, i32* %5)
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @IGP01E1000_ANALOG_SPARE_FUSE_ENABLED, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %122, label %67

67:                                               ; preds = %59
  %68 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %69 = load i32, i32* @IGP01E1000_ANALOG_FUSE_STATUS, align 4
  %70 = call i32 @e1000_read_phy_reg(%struct.e1000_hw* %68, i32 %69, i32* %5)
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @IGP01E1000_ANALOG_FUSE_FINE_MASK, align 4
  %73 = and i32 %71, %72
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @IGP01E1000_ANALOG_FUSE_COARSE_MASK, align 4
  %76 = and i32 %74, %75
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @IGP01E1000_ANALOG_FUSE_COARSE_THRESH, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %67
  %81 = load i64, i64* @IGP01E1000_ANALOG_FUSE_COARSE_10, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = sub nsw i64 %83, %81
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %7, align 4
  %86 = load i64, i64* @IGP01E1000_ANALOG_FUSE_FINE_1, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = sub nsw i64 %88, %86
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %6, align 4
  br label %102

91:                                               ; preds = %67
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @IGP01E1000_ANALOG_FUSE_COARSE_THRESH, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = load i64, i64* @IGP01E1000_ANALOG_FUSE_FINE_10, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = sub nsw i64 %98, %96
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %6, align 4
  br label %101

101:                                              ; preds = %95, %91
  br label %102

102:                                              ; preds = %101, %80
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* @IGP01E1000_ANALOG_FUSE_POLY_MASK, align 4
  %105 = and i32 %103, %104
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* @IGP01E1000_ANALOG_FUSE_FINE_MASK, align 4
  %108 = and i32 %106, %107
  %109 = or i32 %105, %108
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* @IGP01E1000_ANALOG_FUSE_COARSE_MASK, align 4
  %112 = and i32 %110, %111
  %113 = or i32 %109, %112
  store i32 %113, i32* %5, align 4
  %114 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %115 = load i32, i32* @IGP01E1000_ANALOG_FUSE_CONTROL, align 4
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @e1000_write_phy_reg(%struct.e1000_hw* %114, i32 %115, i32 %116)
  %118 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %119 = load i32, i32* @IGP01E1000_ANALOG_FUSE_BYPASS, align 4
  %120 = load i32, i32* @IGP01E1000_ANALOG_FUSE_ENABLE_SW_CONTROL, align 4
  %121 = call i32 @e1000_write_phy_reg(%struct.e1000_hw* %118, i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %102, %59
  br label %123

123:                                              ; preds = %122, %48
  br label %124

124:                                              ; preds = %123, %1
  ret void
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @e1000_read_phy_reg(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @e1000_write_phy_reg(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
