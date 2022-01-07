; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/ttusb-budget/extr_dvb-ttusb-budget.c_dvbc_philips_tdm1316l_tuner_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/ttusb-budget/extr_dvb-ttusb-budget.c_dvbc_philips_tdm1316l_tuner_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_4__, %struct.TYPE_3__*, %struct.dtv_frontend_properties }
%struct.TYPE_4__ = type { i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_3__ = type { i64 }
%struct.dtv_frontend_properties = type { i32 }
%struct.ttusb = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"dvb-ttusb-budget: dvbc_philips_tdm1316l_pll_set Error 1\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"dvb-ttusb-budget: dvbc_philips_tdm1316l_pll_set Error 2\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @dvbc_philips_tdm1316l_tuner_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvbc_philips_tdm1316l_tuner_set_params(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.ttusb*, align 8
  %6 = alloca [5 x i32], align 16
  %7 = alloca %struct.i2c_msg, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 2
  store %struct.dtv_frontend_properties* %13, %struct.dtv_frontend_properties** %4, align 8
  %14 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %15 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.ttusb*
  store %struct.ttusb* %19, %struct.ttusb** %5, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 0
  store i32 96, i32* %20, align 8
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 1
  %22 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  store i32* %22, i32** %21, align 8
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 2
  store i32 20, i32* %23, align 8
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 3
  store i32 0, i32* %24, align 4
  store i32 0, i32* %8, align 4
  %25 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %26 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 87000000
  br i1 %29, label %30, label %33

30:                                               ; preds = %1
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %151

33:                                               ; preds = %1
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 130000000
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 3, i32* %10, align 4
  store i32 1, i32* %9, align 4
  br label %80

37:                                               ; preds = %33
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 160000000
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 5, i32* %10, align 4
  store i32 1, i32* %9, align 4
  br label %79

41:                                               ; preds = %37
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 200000000
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 6, i32* %10, align 4
  store i32 1, i32* %9, align 4
  br label %78

45:                                               ; preds = %41
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 290000000
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 3, i32* %10, align 4
  store i32 2, i32* %9, align 4
  br label %77

49:                                               ; preds = %45
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 420000000
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 5, i32* %10, align 4
  store i32 2, i32* %9, align 4
  br label %76

53:                                               ; preds = %49
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %54, 480000000
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 6, i32* %10, align 4
  store i32 2, i32* %9, align 4
  br label %75

57:                                               ; preds = %53
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %58, 620000000
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 3, i32* %10, align 4
  store i32 4, i32* %9, align 4
  br label %74

61:                                               ; preds = %57
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, 830000000
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i32 5, i32* %10, align 4
  store i32 4, i32* %9, align 4
  br label %73

65:                                               ; preds = %61
  %66 = load i32, i32* %8, align 4
  %67 = icmp slt i32 %66, 895000000
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 7, i32* %10, align 4
  store i32 4, i32* %9, align 4
  br label %72

69:                                               ; preds = %65
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %151

72:                                               ; preds = %68
  br label %73

73:                                               ; preds = %72, %64
  br label %74

74:                                               ; preds = %73, %60
  br label %75

75:                                               ; preds = %74, %56
  br label %76

76:                                               ; preds = %75, %52
  br label %77

77:                                               ; preds = %76, %48
  br label %78

78:                                               ; preds = %77, %44
  br label %79

79:                                               ; preds = %78, %40
  br label %80

80:                                               ; preds = %79, %36
  br label %81

81:                                               ; preds = %80
  store i32 1, i32* %11, align 4
  %82 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %83 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 36125000
  %86 = sdiv i32 %85, 62500
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = ashr i32 %87, 8
  %89 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  store i32 %88, i32* %89, align 16
  %90 = load i32, i32* %8, align 4
  %91 = and i32 %90, 255
  %92 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 1
  store i32 %91, i32* %92, align 4
  %93 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 2
  store i32 200, i32* %93, align 8
  %94 = load i32, i32* %10, align 4
  %95 = shl i32 %94, 5
  %96 = load i32, i32* %11, align 4
  %97 = shl i32 %96, 3
  %98 = or i32 %95, %97
  %99 = load i32, i32* %9, align 4
  %100 = or i32 %98, %99
  %101 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 3
  store i32 %100, i32* %101, align 4
  %102 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 4
  store i32 128, i32* %102, align 16
  %103 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %104 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %105, align 8
  %107 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %106, null
  br i1 %107, label %108, label %116

108:                                              ; preds = %81
  %109 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %110 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %111, align 8
  %113 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %114 = bitcast %struct.dvb_frontend* %113 to %struct.dvb_frontend.0*
  %115 = call i32 %112(%struct.dvb_frontend.0* %114, i32 1)
  br label %116

116:                                              ; preds = %108, %81
  %117 = load %struct.ttusb*, %struct.ttusb** %5, align 8
  %118 = getelementptr inbounds %struct.ttusb, %struct.ttusb* %117, i32 0, i32 0
  %119 = call i32 @i2c_transfer(i32* %118, %struct.i2c_msg* %7, i32 1)
  %120 = icmp ne i32 %119, 1
  br i1 %120, label %121, label %125

121:                                              ; preds = %116
  %122 = call i32 @printk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %123 = load i32, i32* @EIO, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %2, align 4
  br label %151

125:                                              ; preds = %116
  %126 = call i32 @msleep(i32 50)
  %127 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %128 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %129, align 8
  %131 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %130, null
  br i1 %131, label %132, label %140

132:                                              ; preds = %125
  %133 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %134 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %135, align 8
  %137 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %138 = bitcast %struct.dvb_frontend* %137 to %struct.dvb_frontend.0*
  %139 = call i32 %136(%struct.dvb_frontend.0* %138, i32 1)
  br label %140

140:                                              ; preds = %132, %125
  %141 = load %struct.ttusb*, %struct.ttusb** %5, align 8
  %142 = getelementptr inbounds %struct.ttusb, %struct.ttusb* %141, i32 0, i32 0
  %143 = call i32 @i2c_transfer(i32* %142, %struct.i2c_msg* %7, i32 1)
  %144 = icmp ne i32 %143, 1
  br i1 %144, label %145, label %149

145:                                              ; preds = %140
  %146 = call i32 @printk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  %147 = load i32, i32* @EIO, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %2, align 4
  br label %151

149:                                              ; preds = %140
  %150 = call i32 @msleep(i32 1)
  store i32 0, i32* %2, align 4
  br label %151

151:                                              ; preds = %149, %145, %121, %69, %30
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
