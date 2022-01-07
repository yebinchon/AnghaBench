; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dvb-bt8xx.c_advbt771_samsung_tdtc9251dh0_tuner_calc_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dvb-bt8xx.c_advbt771_samsung_tdtc9251dh0_tuner_calc_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtv_frontend_properties }
%struct.dtv_frontend_properties = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IF_FREQUENCYx6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*, i32)* @advbt771_samsung_tdtc9251dh0_tuner_calc_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @advbt771_samsung_tdtc9251dh0_tuner_calc_regs(%struct.dvb_frontend* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_frontend*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dtv_frontend_properties*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 0
  store %struct.dtv_frontend_properties* %13, %struct.dtv_frontend_properties** %8, align 8
  store i8 0, i8* %10, align 1
  store i8 0, i8* %11, align 1
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 5
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %144

19:                                               ; preds = %3
  %20 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %21 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 83333
  %24 = mul nsw i32 %23, 3
  %25 = sdiv i32 %24, 500000
  %26 = load i32, i32* @IF_FREQUENCYx6, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %9, align 4
  %28 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %29 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %30, 150000000
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  store i8 -76, i8* %11, align 1
  br label %83

33:                                               ; preds = %19
  %34 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %35 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %36, 173000000
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i8 -68, i8* %11, align 1
  br label %82

39:                                               ; preds = %33
  %40 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %41 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %42, 250000000
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i8 -76, i8* %11, align 1
  br label %81

45:                                               ; preds = %39
  %46 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %47 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %48, 400000000
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i8 -68, i8* %11, align 1
  br label %80

51:                                               ; preds = %45
  %52 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %53 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %54, 420000000
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i8 -12, i8* %11, align 1
  br label %79

57:                                               ; preds = %51
  %58 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %59 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %60, 470000000
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i8 -4, i8* %11, align 1
  br label %78

63:                                               ; preds = %57
  %64 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %65 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %66, 600000000
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  store i8 -68, i8* %11, align 1
  br label %77

69:                                               ; preds = %63
  %70 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %71 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %72, 730000000
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store i8 -12, i8* %11, align 1
  br label %76

75:                                               ; preds = %69
  store i8 -4, i8* %11, align 1
  br label %76

76:                                               ; preds = %75, %74
  br label %77

77:                                               ; preds = %76, %68
  br label %78

78:                                               ; preds = %77, %62
  br label %79

79:                                               ; preds = %78, %56
  br label %80

80:                                               ; preds = %79, %50
  br label %81

81:                                               ; preds = %80, %44
  br label %82

82:                                               ; preds = %81, %38
  br label %83

83:                                               ; preds = %82, %32
  %84 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %85 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp slt i32 %86, 150000000
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  store i8 1, i8* %10, align 1
  br label %125

89:                                               ; preds = %83
  %90 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %91 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %92, 173000000
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  store i8 1, i8* %10, align 1
  br label %124

95:                                               ; preds = %89
  %96 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %97 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %98, 250000000
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  store i8 2, i8* %10, align 1
  br label %123

101:                                              ; preds = %95
  %102 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %103 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp slt i32 %104, 400000000
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  store i8 2, i8* %10, align 1
  br label %122

107:                                              ; preds = %101
  %108 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %109 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp slt i32 %110, 420000000
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  store i8 2, i8* %10, align 1
  br label %121

113:                                              ; preds = %107
  %114 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %115 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp slt i32 %116, 470000000
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  store i8 2, i8* %10, align 1
  br label %120

119:                                              ; preds = %113
  store i8 8, i8* %10, align 1
  br label %120

120:                                              ; preds = %119, %118
  br label %121

121:                                              ; preds = %120, %112
  br label %122

122:                                              ; preds = %121, %106
  br label %123

123:                                              ; preds = %122, %100
  br label %124

124:                                              ; preds = %123, %94
  br label %125

125:                                              ; preds = %124, %88
  %126 = load i32*, i32** %6, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  store i32 97, i32* %127, align 4
  %128 = load i32, i32* %9, align 4
  %129 = ashr i32 %128, 8
  %130 = load i32*, i32** %6, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 1
  store i32 %129, i32* %131, align 4
  %132 = load i32, i32* %9, align 4
  %133 = and i32 %132, 255
  %134 = load i32*, i32** %6, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 2
  store i32 %133, i32* %135, align 4
  %136 = load i8, i8* %11, align 1
  %137 = zext i8 %136 to i32
  %138 = load i32*, i32** %6, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 3
  store i32 %137, i32* %139, align 4
  %140 = load i8, i8* %10, align 1
  %141 = zext i8 %140 to i32
  %142 = load i32*, i32** %6, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 4
  store i32 %141, i32* %143, align 4
  store i32 5, i32* %4, align 4
  br label %144

144:                                              ; preds = %125, %16
  %145 = load i32, i32* %4, align 4
  ret i32 %145
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
