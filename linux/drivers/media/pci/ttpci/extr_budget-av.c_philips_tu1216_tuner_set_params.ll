; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-av.c_philips_tu1216_tuner_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-av.c_philips_tu1216_tuner_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_4__, %struct.TYPE_3__*, %struct.dtv_frontend_properties }
%struct.TYPE_4__ = type { i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_3__ = type { i64 }
%struct.dtv_frontend_properties = type { i32, i32 }
%struct.budget = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @philips_tu1216_tuner_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @philips_tu1216_tuner_set_params(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.budget*, align 8
  %6 = alloca [4 x i32], align 16
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
  %19 = inttoptr i64 %18 to %struct.budget*
  store %struct.budget* %19, %struct.budget** %5, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 0
  store i32 96, i32* %20, align 8
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 1
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32* %22, i32** %21, align 8
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 2
  store i32 16, i32* %23, align 8
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 3
  store i32 0, i32* %24, align 4
  store i32 0, i32* %8, align 4
  %25 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %26 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 36166000
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 87000000
  br i1 %30, label %31, label %34

31:                                               ; preds = %1
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %171

34:                                               ; preds = %1
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 130000000
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 3, i32* %10, align 4
  br label %81

38:                                               ; preds = %34
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 160000000
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 5, i32* %10, align 4
  br label %80

42:                                               ; preds = %38
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 200000000
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 6, i32* %10, align 4
  br label %79

46:                                               ; preds = %42
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %47, 290000000
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 3, i32* %10, align 4
  br label %78

50:                                               ; preds = %46
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 420000000
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 5, i32* %10, align 4
  br label %77

54:                                               ; preds = %50
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %55, 480000000
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 6, i32* %10, align 4
  br label %76

58:                                               ; preds = %54
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 620000000
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i32 3, i32* %10, align 4
  br label %75

62:                                               ; preds = %58
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %63, 830000000
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 5, i32* %10, align 4
  br label %74

66:                                               ; preds = %62
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %67, 895000000
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i32 7, i32* %10, align 4
  br label %73

70:                                               ; preds = %66
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %171

73:                                               ; preds = %69
  br label %74

74:                                               ; preds = %73, %65
  br label %75

75:                                               ; preds = %74, %61
  br label %76

76:                                               ; preds = %75, %57
  br label %77

77:                                               ; preds = %76, %53
  br label %78

78:                                               ; preds = %77, %49
  br label %79

79:                                               ; preds = %78, %45
  br label %80

80:                                               ; preds = %79, %41
  br label %81

81:                                               ; preds = %80, %37
  br label %82

82:                                               ; preds = %81
  %83 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %84 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp slt i32 %85, 49000000
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %171

90:                                               ; preds = %82
  %91 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %92 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp slt i32 %93, 161000000
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  store i32 1, i32* %9, align 4
  br label %113

96:                                               ; preds = %90
  %97 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %98 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp slt i32 %99, 444000000
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  store i32 2, i32* %9, align 4
  br label %112

102:                                              ; preds = %96
  %103 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %104 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp slt i32 %105, 861000000
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  store i32 4, i32* %9, align 4
  br label %111

108:                                              ; preds = %102
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %2, align 4
  br label %171

111:                                              ; preds = %107
  br label %112

112:                                              ; preds = %111, %101
  br label %113

113:                                              ; preds = %112, %95
  br label %114

114:                                              ; preds = %113
  %115 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %116 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  switch i32 %117, label %121 [
    i32 6000000, label %118
    i32 7000000, label %119
    i32 8000000, label %120
  ]

118:                                              ; preds = %114
  store i32 0, i32* %11, align 4
  br label %124

119:                                              ; preds = %114
  store i32 0, i32* %11, align 4
  br label %124

120:                                              ; preds = %114
  store i32 1, i32* %11, align 4
  br label %124

121:                                              ; preds = %114
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %2, align 4
  br label %171

124:                                              ; preds = %120, %119, %118
  %125 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %126 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = sdiv i32 %127, 1000
  %129 = mul nsw i32 %128, 6
  %130 = add nsw i32 %129, 217496
  %131 = sdiv i32 %130, 1000
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = ashr i32 %132, 8
  %134 = and i32 %133, 127
  %135 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32 %134, i32* %135, align 16
  %136 = load i32, i32* %8, align 4
  %137 = and i32 %136, 255
  %138 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  store i32 %137, i32* %138, align 4
  %139 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  store i32 202, i32* %139, align 8
  %140 = load i32, i32* %10, align 4
  %141 = shl i32 %140, 5
  %142 = load i32, i32* %11, align 4
  %143 = shl i32 %142, 3
  %144 = or i32 %141, %143
  %145 = load i32, i32* %9, align 4
  %146 = or i32 %144, %145
  %147 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  store i32 %146, i32* %147, align 4
  %148 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %149 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %150, align 8
  %152 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %151, null
  br i1 %152, label %153, label %161

153:                                              ; preds = %124
  %154 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %155 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %156, align 8
  %158 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %159 = bitcast %struct.dvb_frontend* %158 to %struct.dvb_frontend.0*
  %160 = call i32 %157(%struct.dvb_frontend.0* %159, i32 1)
  br label %161

161:                                              ; preds = %153, %124
  %162 = load %struct.budget*, %struct.budget** %5, align 8
  %163 = getelementptr inbounds %struct.budget, %struct.budget* %162, i32 0, i32 0
  %164 = call i32 @i2c_transfer(i32* %163, %struct.i2c_msg* %7, i32 1)
  %165 = icmp ne i32 %164, 1
  br i1 %165, label %166, label %169

166:                                              ; preds = %161
  %167 = load i32, i32* @EIO, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %2, align 4
  br label %171

169:                                              ; preds = %161
  %170 = call i32 @msleep(i32 1)
  store i32 0, i32* %2, align 4
  br label %171

171:                                              ; preds = %169, %166, %121, %108, %87, %70, %31
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
