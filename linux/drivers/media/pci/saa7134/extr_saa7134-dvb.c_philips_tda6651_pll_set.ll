; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-dvb.c_philips_tda6651_pll_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-dvb.c_philips_tda6651_pll_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_6__, %struct.tda1004x_state*, %struct.TYPE_4__*, %struct.dtv_frontend_properties }
%struct.TYPE_6__ = type { i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.tda1004x_state = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.saa7134_dev* }
%struct.saa7134_dev = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"could not write to tuner at addr: 0x%02x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @philips_tda6651_pll_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @philips_tda6651_pll_set(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.saa7134_dev*, align 8
  %6 = alloca %struct.tda1004x_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [4 x i32], align 16
  %9 = alloca %struct.i2c_msg, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %14 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %15 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %14, i32 0, i32 3
  store %struct.dtv_frontend_properties* %15, %struct.dtv_frontend_properties** %4, align 8
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %17 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.saa7134_dev*, %struct.saa7134_dev** %19, align 8
  store %struct.saa7134_dev* %20, %struct.saa7134_dev** %5, align 8
  %21 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %22 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %21, i32 0, i32 1
  %23 = load %struct.tda1004x_state*, %struct.tda1004x_state** %22, align 8
  store %struct.tda1004x_state* %23, %struct.tda1004x_state** %6, align 8
  %24 = load %struct.tda1004x_state*, %struct.tda1004x_state** %6, align 8
  %25 = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  %29 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 0
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %29, align 8
  %31 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 1
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32* %32, i32** %31, align 8
  %33 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 2
  store i32 16, i32* %33, align 8
  %34 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 3
  store i32 0, i32* %34, align 4
  store i32 0, i32* %10, align 4
  %35 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %36 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 36166000
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %39, 87000000
  br i1 %40, label %41, label %44

41:                                               ; preds = %1
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %184

44:                                               ; preds = %1
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %45, 130000000
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 3, i32* %12, align 4
  br label %91

48:                                               ; preds = %44
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %49, 160000000
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 5, i32* %12, align 4
  br label %90

52:                                               ; preds = %48
  %53 = load i32, i32* %10, align 4
  %54 = icmp slt i32 %53, 200000000
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 6, i32* %12, align 4
  br label %89

56:                                               ; preds = %52
  %57 = load i32, i32* %10, align 4
  %58 = icmp slt i32 %57, 290000000
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 3, i32* %12, align 4
  br label %88

60:                                               ; preds = %56
  %61 = load i32, i32* %10, align 4
  %62 = icmp slt i32 %61, 420000000
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i32 5, i32* %12, align 4
  br label %87

64:                                               ; preds = %60
  %65 = load i32, i32* %10, align 4
  %66 = icmp slt i32 %65, 480000000
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i32 6, i32* %12, align 4
  br label %86

68:                                               ; preds = %64
  %69 = load i32, i32* %10, align 4
  %70 = icmp slt i32 %69, 620000000
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i32 3, i32* %12, align 4
  br label %85

72:                                               ; preds = %68
  %73 = load i32, i32* %10, align 4
  %74 = icmp slt i32 %73, 830000000
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 5, i32* %12, align 4
  br label %84

76:                                               ; preds = %72
  %77 = load i32, i32* %10, align 4
  %78 = icmp slt i32 %77, 895000000
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  store i32 7, i32* %12, align 4
  br label %83

80:                                               ; preds = %76
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %184

83:                                               ; preds = %79
  br label %84

84:                                               ; preds = %83, %75
  br label %85

85:                                               ; preds = %84, %71
  br label %86

86:                                               ; preds = %85, %67
  br label %87

87:                                               ; preds = %86, %63
  br label %88

88:                                               ; preds = %87, %59
  br label %89

89:                                               ; preds = %88, %55
  br label %90

90:                                               ; preds = %89, %51
  br label %91

91:                                               ; preds = %90, %47
  br label %92

92:                                               ; preds = %91
  %93 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %94 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp slt i32 %95, 49000000
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %2, align 4
  br label %184

100:                                              ; preds = %92
  %101 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %102 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp slt i32 %103, 161000000
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  store i32 1, i32* %11, align 4
  br label %123

106:                                              ; preds = %100
  %107 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %108 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp slt i32 %109, 444000000
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  store i32 2, i32* %11, align 4
  br label %122

112:                                              ; preds = %106
  %113 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %114 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp slt i32 %115, 861000000
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  store i32 4, i32* %11, align 4
  br label %121

118:                                              ; preds = %112
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %2, align 4
  br label %184

121:                                              ; preds = %117
  br label %122

122:                                              ; preds = %121, %111
  br label %123

123:                                              ; preds = %122, %105
  br label %124

124:                                              ; preds = %123
  %125 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %126 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  switch i32 %127, label %131 [
    i32 6000000, label %128
    i32 7000000, label %129
    i32 8000000, label %130
  ]

128:                                              ; preds = %124
  store i32 0, i32* %13, align 4
  br label %134

129:                                              ; preds = %124
  store i32 0, i32* %13, align 4
  br label %134

130:                                              ; preds = %124
  store i32 1, i32* %13, align 4
  br label %134

131:                                              ; preds = %124
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %2, align 4
  br label %184

134:                                              ; preds = %130, %129, %128
  %135 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %136 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = sdiv i32 %137, 1000
  %139 = mul nsw i32 %138, 6
  %140 = add nsw i32 %139, 217496
  %141 = sdiv i32 %140, 1000
  store i32 %141, i32* %10, align 4
  %142 = load i32, i32* %10, align 4
  %143 = ashr i32 %142, 8
  %144 = and i32 %143, 127
  %145 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %144, i32* %145, align 16
  %146 = load i32, i32* %10, align 4
  %147 = and i32 %146, 255
  %148 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 %147, i32* %148, align 4
  %149 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 202, i32* %149, align 8
  %150 = load i32, i32* %12, align 4
  %151 = shl i32 %150, 5
  %152 = load i32, i32* %13, align 4
  %153 = shl i32 %152, 3
  %154 = or i32 %151, %153
  %155 = load i32, i32* %11, align 4
  %156 = or i32 %154, %155
  %157 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 %156, i32* %157, align 4
  %158 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %159 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %160, align 8
  %162 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %161, null
  br i1 %162, label %163, label %171

163:                                              ; preds = %134
  %164 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %165 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %166, align 8
  %168 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %169 = bitcast %struct.dvb_frontend* %168 to %struct.dvb_frontend.0*
  %170 = call i32 %167(%struct.dvb_frontend.0* %169, i32 1)
  br label %171

171:                                              ; preds = %163, %134
  %172 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %173 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %172, i32 0, i32 0
  %174 = call i32 @i2c_transfer(i32* %173, %struct.i2c_msg* %9, i32 1)
  %175 = icmp ne i32 %174, 1
  br i1 %175, label %176, label %182

176:                                              ; preds = %171
  %177 = load i32, i32* %7, align 4
  %178 = shl i32 %177, 1
  %179 = call i32 @pr_warn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %178)
  %180 = load i32, i32* @EIO, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %2, align 4
  br label %184

182:                                              ; preds = %171
  %183 = call i32 @msleep(i32 1)
  store i32 0, i32* %2, align 4
  br label %184

184:                                              ; preds = %182, %176, %131, %118, %97, %80, %41
  %185 = load i32, i32* %2, align 4
  ret i32 %185
}

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
