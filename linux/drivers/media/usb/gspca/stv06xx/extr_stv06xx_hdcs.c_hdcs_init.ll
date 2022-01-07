; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/stv06xx/extr_stv06xx_hdcs.c_hdcs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/stv06xx/extr_stv06xx_hdcs.c_hdcs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i64, %struct.hdcs* }
%struct.hdcs = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@BRIDGE_STV602 = common dso_local global i64 0, align 8
@STV_STV0600_EMULATION = common dso_local global i32 0, align 4
@stv_bridge_init = common dso_local global i32** null, align 8
@stv_sensor_init = common dso_local global i32** null, align 8
@HDCS_TCTRL = common dso_local global i32 0, align 4
@HDCS_ADC_START_SIG_DUR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sd*)* @hdcs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdcs_init(%struct.sd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sd*, align 8
  %4 = alloca %struct.hdcs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %3, align 8
  %7 = load %struct.sd*, %struct.sd** %3, align 8
  %8 = getelementptr inbounds %struct.sd, %struct.sd* %7, i32 0, i32 1
  %9 = load %struct.hdcs*, %struct.hdcs** %8, align 8
  store %struct.hdcs* %9, %struct.hdcs** %4, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.sd*, %struct.sd** %3, align 8
  %11 = getelementptr inbounds %struct.sd, %struct.sd* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @BRIDGE_STV602, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.sd*, %struct.sd** %3, align 8
  %17 = load i32, i32* @STV_STV0600_EMULATION, align 4
  %18 = call i32 @stv06xx_write_bridge(%struct.sd* %16, i32 %17, i32 1)
  br label %19

19:                                               ; preds = %15, %1
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %48, %19
  %21 = load i32, i32* %5, align 4
  %22 = load i32**, i32*** @stv_bridge_init, align 8
  %23 = call i32 @ARRAY_SIZE(i32** %22)
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br label %29

29:                                               ; preds = %25, %20
  %30 = phi i1 [ false, %20 ], [ %28, %25 ]
  br i1 %30, label %31, label %51

31:                                               ; preds = %29
  %32 = load %struct.sd*, %struct.sd** %3, align 8
  %33 = load i32**, i32*** @stv_bridge_init, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32*, i32** %33, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32**, i32*** @stv_bridge_init, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32*, i32** %40, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @stv06xx_write_bridge(%struct.sd* %32, i32 %39, i32 %46)
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %31
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %20

51:                                               ; preds = %29
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %145

56:                                               ; preds = %51
  %57 = load %struct.sd*, %struct.sd** %3, align 8
  %58 = call i32 @hdcs_reset(%struct.sd* %57)
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %87, %56
  %60 = load i32, i32* %5, align 4
  %61 = load i32**, i32*** @stv_sensor_init, align 8
  %62 = call i32 @ARRAY_SIZE(i32** %61)
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  br label %68

68:                                               ; preds = %64, %59
  %69 = phi i1 [ false, %59 ], [ %67, %64 ]
  br i1 %69, label %70, label %90

70:                                               ; preds = %68
  %71 = load %struct.sd*, %struct.sd** %3, align 8
  %72 = load i32**, i32*** @stv_sensor_init, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32*, i32** %72, i64 %74
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32**, i32*** @stv_sensor_init, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32*, i32** %79, i64 %81
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @stv06xx_write_sensor(%struct.sd* %71, i32 %78, i32 %85)
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %70
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %5, align 4
  br label %59

90:                                               ; preds = %68
  %91 = load i32, i32* %6, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %2, align 4
  br label %145

95:                                               ; preds = %90
  %96 = load %struct.sd*, %struct.sd** %3, align 8
  %97 = load %struct.sd*, %struct.sd** %3, align 8
  %98 = call i32 @HDCS_REG_CONFIG(%struct.sd* %97)
  %99 = call i32 @BIT(i32 3)
  %100 = call i32 @stv06xx_write_sensor(%struct.sd* %96, i32 %98, i32 %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %95
  %104 = load i32, i32* %6, align 4
  store i32 %104, i32* %2, align 4
  br label %145

105:                                              ; preds = %95
  %106 = load %struct.sd*, %struct.sd** %3, align 8
  %107 = call i64 @IS_1020(%struct.sd* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %105
  %110 = load %struct.sd*, %struct.sd** %3, align 8
  %111 = load i32, i32* @HDCS_TCTRL, align 4
  %112 = load i32, i32* @HDCS_ADC_START_SIG_DUR, align 4
  %113 = shl i32 %112, 6
  %114 = load %struct.hdcs*, %struct.hdcs** %4, align 8
  %115 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %113, %116
  %118 = call i32 @stv06xx_write_sensor(%struct.sd* %110, i32 %111, i32 %117)
  store i32 %118, i32* %6, align 4
  br label %129

119:                                              ; preds = %105
  %120 = load %struct.sd*, %struct.sd** %3, align 8
  %121 = load i32, i32* @HDCS_TCTRL, align 4
  %122 = load i32, i32* @HDCS_ADC_START_SIG_DUR, align 4
  %123 = shl i32 %122, 5
  %124 = load %struct.hdcs*, %struct.hdcs** %4, align 8
  %125 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %123, %126
  %128 = call i32 @stv06xx_write_sensor(%struct.sd* %120, i32 %121, i32 %127)
  store i32 %128, i32* %6, align 4
  br label %129

129:                                              ; preds = %119, %109
  %130 = load i32, i32* %6, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %129
  %133 = load i32, i32* %6, align 4
  store i32 %133, i32* %2, align 4
  br label %145

134:                                              ; preds = %129
  %135 = load %struct.sd*, %struct.sd** %3, align 8
  %136 = load %struct.hdcs*, %struct.hdcs** %4, align 8
  %137 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.hdcs*, %struct.hdcs** %4, align 8
  %141 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @hdcs_set_size(%struct.sd* %135, i32 %139, i32 %143)
  store i32 %144, i32* %2, align 4
  br label %145

145:                                              ; preds = %134, %132, %103, %93, %54
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local i32 @stv06xx_write_bridge(%struct.sd*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32**) #1

declare dso_local i32 @hdcs_reset(%struct.sd*) #1

declare dso_local i32 @stv06xx_write_sensor(%struct.sd*, i32, i32) #1

declare dso_local i32 @HDCS_REG_CONFIG(%struct.sd*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @IS_1020(%struct.sd*) #1

declare dso_local i32 @hdcs_set_size(%struct.sd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
