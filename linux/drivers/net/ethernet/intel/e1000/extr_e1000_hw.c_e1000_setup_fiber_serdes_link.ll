; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_setup_fiber_serdes_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_setup_fiber_serdes_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64, i64, i32, i32, i32 }

@CTRL = common dso_local global i32 0, align 4
@e1000_media_type_fiber = common dso_local global i64 0, align 8
@e1000_82544 = common dso_local global i64 0, align 8
@E1000_CTRL_SWDPIN1 = common dso_local global i32 0, align 4
@E1000_CTRL_LRST = common dso_local global i32 0, align 4
@E1000_TXCW_ANE = common dso_local global i32 0, align 4
@E1000_TXCW_FD = common dso_local global i32 0, align 4
@E1000_TXCW_PAUSE_MASK = common dso_local global i32 0, align 4
@E1000_TXCW_ASM_DIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Flow control param set incorrectly\0A\00", align 1
@E1000_ERR_CONFIG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Auto-negotiation enabled\0A\00", align 1
@TXCW = common dso_local global i32 0, align 4
@e1000_media_type_internal_serdes = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"Looking for Link\0A\00", align 1
@LINK_UP_TIMEOUT = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@E1000_STATUS_LU = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Never got a valid link from auto-neg!!!\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Error while checking for link\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Valid Link Found\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"No Signal Detected\0A\00", align 1
@E1000_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_setup_fiber_serdes_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_setup_fiber_serdes_link(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* @CTRL, align 4
  %11 = call i32 @er32(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %13 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @e1000_media_type_fiber, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %1
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %19 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @e1000_82544, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @E1000_CTRL_SWDPIN1, align 4
  br label %26

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i32 [ %24, %23 ], [ 0, %25 ]
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %26, %1
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %30 = call i64 @e1000_adjust_serdes_amplitude(%struct.e1000_hw* %29)
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %9, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i64, i64* %9, align 8
  store i64 %34, i64* %2, align 8
  br label %151

35:                                               ; preds = %28
  %36 = load i32, i32* @E1000_CTRL_LRST, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %4, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %4, align 4
  %40 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %41 = call i64 @e1000_set_vco_speed(%struct.e1000_hw* %40)
  store i64 %41, i64* %9, align 8
  %42 = load i64, i64* %9, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i64, i64* %9, align 8
  store i64 %45, i64* %2, align 8
  br label %151

46:                                               ; preds = %35
  %47 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %48 = call i32 @e1000_config_collision_dist(%struct.e1000_hw* %47)
  %49 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %50 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  switch i32 %51, label %74 [
    i32 130, label %52
    i32 129, label %56
    i32 128, label %62
    i32 131, label %68
  ]

52:                                               ; preds = %46
  %53 = load i32, i32* @E1000_TXCW_ANE, align 4
  %54 = load i32, i32* @E1000_TXCW_FD, align 4
  %55 = or i32 %53, %54
  store i32 %55, i32* %6, align 4
  br label %78

56:                                               ; preds = %46
  %57 = load i32, i32* @E1000_TXCW_ANE, align 4
  %58 = load i32, i32* @E1000_TXCW_FD, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @E1000_TXCW_PAUSE_MASK, align 4
  %61 = or i32 %59, %60
  store i32 %61, i32* %6, align 4
  br label %78

62:                                               ; preds = %46
  %63 = load i32, i32* @E1000_TXCW_ANE, align 4
  %64 = load i32, i32* @E1000_TXCW_FD, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @E1000_TXCW_ASM_DIR, align 4
  %67 = or i32 %65, %66
  store i32 %67, i32* %6, align 4
  br label %78

68:                                               ; preds = %46
  %69 = load i32, i32* @E1000_TXCW_ANE, align 4
  %70 = load i32, i32* @E1000_TXCW_FD, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @E1000_TXCW_PAUSE_MASK, align 4
  %73 = or i32 %71, %72
  store i32 %73, i32* %6, align 4
  br label %78

74:                                               ; preds = %46
  %75 = call i32 @e_dbg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %76 = load i64, i64* @E1000_ERR_CONFIG, align 8
  %77 = sub nsw i64 0, %76
  store i64 %77, i64* %2, align 8
  br label %151

78:                                               ; preds = %68, %62, %56, %52
  %79 = call i32 @e_dbg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %80 = load i32, i32* @TXCW, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @ew32(i32 %80, i32 %81)
  %83 = load i32, i32* @CTRL, align 4
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @ew32(i32 %83, i32 %84)
  %86 = call i32 (...) @E1000_WRITE_FLUSH()
  %87 = load i32, i32* %6, align 4
  %88 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %89 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 4
  %90 = call i32 @msleep(i32 1)
  %91 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %92 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @e1000_media_type_internal_serdes, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %103, label %96

96:                                               ; preds = %78
  %97 = load i32, i32* @CTRL, align 4
  %98 = call i32 @er32(i32 %97)
  %99 = load i32, i32* @E1000_CTRL_SWDPIN1, align 4
  %100 = and i32 %98, %99
  %101 = load i32, i32* %8, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %147

103:                                              ; preds = %96, %78
  %104 = call i32 @e_dbg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %105

105:                                              ; preds = %120, %103
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @LINK_UP_TIMEOUT, align 4
  %108 = sdiv i32 %107, 10
  %109 = icmp slt i32 %106, %108
  br i1 %109, label %110, label %123

110:                                              ; preds = %105
  %111 = call i32 @msleep(i32 10)
  %112 = load i32, i32* @STATUS, align 4
  %113 = call i32 @er32(i32 %112)
  store i32 %113, i32* %5, align 4
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* @E1000_STATUS_LU, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %110
  br label %123

119:                                              ; preds = %110
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %7, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %7, align 4
  br label %105

123:                                              ; preds = %118, %105
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* @LINK_UP_TIMEOUT, align 4
  %126 = sdiv i32 %125, 10
  %127 = icmp eq i32 %124, %126
  br i1 %127, label %128, label %142

128:                                              ; preds = %123
  %129 = call i32 @e_dbg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %130 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %131 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %130, i32 0, i32 4
  store i32 1, i32* %131, align 8
  %132 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %133 = call i64 @e1000_check_for_link(%struct.e1000_hw* %132)
  store i64 %133, i64* %9, align 8
  %134 = load i64, i64* %9, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %128
  %137 = call i32 @e_dbg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %138 = load i64, i64* %9, align 8
  store i64 %138, i64* %2, align 8
  br label %151

139:                                              ; preds = %128
  %140 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %141 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %140, i32 0, i32 4
  store i32 0, i32* %141, align 8
  br label %146

142:                                              ; preds = %123
  %143 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %144 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %143, i32 0, i32 4
  store i32 0, i32* %144, align 8
  %145 = call i32 @e_dbg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %146

146:                                              ; preds = %142, %139
  br label %149

147:                                              ; preds = %96
  %148 = call i32 @e_dbg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %149

149:                                              ; preds = %147, %146
  %150 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %150, i64* %2, align 8
  br label %151

151:                                              ; preds = %149, %136, %74, %44, %33
  %152 = load i64, i64* %2, align 8
  ret i64 %152
}

declare dso_local i32 @er32(i32) #1

declare dso_local i64 @e1000_adjust_serdes_amplitude(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_set_vco_speed(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_config_collision_dist(%struct.e1000_hw*) #1

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @E1000_WRITE_FLUSH(...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @e1000_check_for_link(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
