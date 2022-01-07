; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_zl10036.c_zl10036_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_zl10036.c_zl10036_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_4__, %struct.zl10036_state*, %struct.dtv_frontend_properties }
%struct.TYPE_4__ = type { i32 (%struct.dvb_frontend.0*, i32)*, %struct.TYPE_3__ }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_3__ = type { i32, i32 }
%struct.zl10036_state = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32 }

@kHz = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@STATUS_FL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @zl10036_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zl10036_set_params(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.zl10036_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 2
  store %struct.dtv_frontend_properties* %12, %struct.dtv_frontend_properties** %4, align 8
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %14 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %13, i32 0, i32 1
  %15 = load %struct.zl10036_state*, %struct.zl10036_state** %14, align 8
  store %struct.zl10036_state* %15, %struct.zl10036_state** %5, align 8
  store i32 0, i32* %6, align 4
  %16 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %17 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %21 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @kHz, align 4
  %26 = sdiv i32 %24, %25
  %27 = icmp slt i32 %19, %26
  br i1 %27, label %38, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %31 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @kHz, align 4
  %36 = sdiv i32 %34, %35
  %37 = icmp sgt i32 %29, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %28, %1
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %149

41:                                               ; preds = %28
  %42 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %43 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 27, %44
  %46 = sdiv i32 %45, 32
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = sdiv i32 %47, 1000
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 3000
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %51, 950000
  br i1 %52, label %53, label %56

53:                                               ; preds = %41
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %149

56:                                               ; preds = %41
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %57, 1250000
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 0, i32* %10, align 4
  br label %73

60:                                               ; preds = %56
  %61 = load i32, i32* %7, align 4
  %62 = icmp slt i32 %61, 1750000
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i32 1, i32* %10, align 4
  br label %72

64:                                               ; preds = %60
  %65 = load i32, i32* %7, align 4
  %66 = icmp slt i32 %65, 2175000
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i32 2, i32* %10, align 4
  br label %71

68:                                               ; preds = %64
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %149

71:                                               ; preds = %67
  br label %72

72:                                               ; preds = %71, %63
  br label %73

73:                                               ; preds = %72, %59
  br label %74

74:                                               ; preds = %73
  %75 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %76 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %77, align 8
  %79 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %78, null
  br i1 %79, label %80, label %88

80:                                               ; preds = %74
  %81 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %82 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %83, align 8
  %85 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %86 = bitcast %struct.dvb_frontend* %85 to %struct.dvb_frontend.0*
  %87 = call i32 %84(%struct.dvb_frontend.0* %86, i32 1)
  br label %88

88:                                               ; preds = %80, %74
  %89 = load %struct.zl10036_state*, %struct.zl10036_state** %5, align 8
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @zl10036_set_gain_params(%struct.zl10036_state* %89, i32 %90)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %133

95:                                               ; preds = %88
  %96 = load %struct.zl10036_state*, %struct.zl10036_state** %5, align 8
  %97 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %98 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @zl10036_set_frequency(%struct.zl10036_state* %96, i32 %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %95
  br label %133

104:                                              ; preds = %95
  %105 = load %struct.zl10036_state*, %struct.zl10036_state** %5, align 8
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @zl10036_set_bandwidth(%struct.zl10036_state* %105, i32 %106)
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  br label %133

111:                                              ; preds = %104
  store i32 0, i32* %9, align 4
  br label %112

112:                                              ; preds = %129, %111
  %113 = load i32, i32* %9, align 4
  %114 = icmp slt i32 %113, 20
  br i1 %114, label %115, label %132

115:                                              ; preds = %112
  %116 = load %struct.zl10036_state*, %struct.zl10036_state** %5, align 8
  %117 = call i32 @zl10036_read_status_reg(%struct.zl10036_state* %116)
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  br label %133

121:                                              ; preds = %115
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* @STATUS_FL, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  br label %132

127:                                              ; preds = %121
  %128 = call i32 @msleep(i32 10)
  br label %129

129:                                              ; preds = %127
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %9, align 4
  br label %112

132:                                              ; preds = %126, %112
  br label %133

133:                                              ; preds = %132, %120, %110, %103, %94
  %134 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %135 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %136, align 8
  %138 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %137, null
  br i1 %138, label %139, label %147

139:                                              ; preds = %133
  %140 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %141 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %142, align 8
  %144 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %145 = bitcast %struct.dvb_frontend* %144 to %struct.dvb_frontend.0*
  %146 = call i32 %143(%struct.dvb_frontend.0* %145, i32 0)
  br label %147

147:                                              ; preds = %139, %133
  %148 = load i32, i32* %6, align 4
  store i32 %148, i32* %2, align 4
  br label %149

149:                                              ; preds = %147, %68, %53, %38
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local i32 @zl10036_set_gain_params(%struct.zl10036_state*, i32) #1

declare dso_local i32 @zl10036_set_frequency(%struct.zl10036_state*, i32) #1

declare dso_local i32 @zl10036_set_bandwidth(%struct.zl10036_state*, i32) #1

declare dso_local i32 @zl10036_read_status_reg(%struct.zl10036_state*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
