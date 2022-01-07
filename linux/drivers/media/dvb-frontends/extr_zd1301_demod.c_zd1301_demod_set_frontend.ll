; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_zd1301_demod.c_zd1301_demod_set_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_zd1301_demod.c_zd1301_demod_set_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_4__, %struct.dtv_frontend_properties, %struct.zd1301_demod_dev* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.dvb_frontend.0*)*, i32 (%struct.dvb_frontend.1*, i32*)* }
%struct.dvb_frontend.0 = type opaque
%struct.dvb_frontend.1 = type opaque
%struct.dtv_frontend_properties = type { i32, i32 }
%struct.zd1301_demod_dev = type { %struct.platform_device* }
%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"frequency=%u bandwidth_hz=%u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"if_frequency=%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @zd1301_demod_set_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zd1301_demod_set_frontend(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.zd1301_demod_dev*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.dtv_frontend_properties*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 2
  %12 = load %struct.zd1301_demod_dev*, %struct.zd1301_demod_dev** %11, align 8
  store %struct.zd1301_demod_dev* %12, %struct.zd1301_demod_dev** %4, align 8
  %13 = load %struct.zd1301_demod_dev*, %struct.zd1301_demod_dev** %4, align 8
  %14 = getelementptr inbounds %struct.zd1301_demod_dev, %struct.zd1301_demod_dev* %13, i32 0, i32 0
  %15 = load %struct.platform_device*, %struct.platform_device** %14, align 8
  store %struct.platform_device* %15, %struct.platform_device** %5, align 8
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %17 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %16, i32 0, i32 1
  store %struct.dtv_frontend_properties* %17, %struct.dtv_frontend_properties** %6, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %21 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %24 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25)
  %27 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %28 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32 (%struct.dvb_frontend.0*)*, i32 (%struct.dvb_frontend.0*)** %30, align 8
  %32 = icmp ne i32 (%struct.dvb_frontend.0*)* %31, null
  br i1 %32, label %33, label %65

33:                                               ; preds = %1
  %34 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %35 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32 (%struct.dvb_frontend.1*, i32*)*, i32 (%struct.dvb_frontend.1*, i32*)** %37, align 8
  %39 = icmp ne i32 (%struct.dvb_frontend.1*, i32*)* %38, null
  br i1 %39, label %40, label %65

40:                                               ; preds = %33
  %41 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %42 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32 (%struct.dvb_frontend.0*)*, i32 (%struct.dvb_frontend.0*)** %44, align 8
  %46 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %47 = bitcast %struct.dvb_frontend* %46 to %struct.dvb_frontend.0*
  %48 = call i32 %45(%struct.dvb_frontend.0* %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  br label %198

52:                                               ; preds = %40
  %53 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %54 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32 (%struct.dvb_frontend.1*, i32*)*, i32 (%struct.dvb_frontend.1*, i32*)** %56, align 8
  %58 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %59 = bitcast %struct.dvb_frontend* %58 to %struct.dvb_frontend.1*
  %60 = call i32 %57(%struct.dvb_frontend.1* %59, i32* %8)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %52
  br label %198

64:                                               ; preds = %52
  br label %68

65:                                               ; preds = %33, %1
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %7, align 4
  br label %198

68:                                               ; preds = %64
  %69 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = load i32, i32* %8, align 4
  %72 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %70, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 36150000
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %7, align 4
  br label %198

78:                                               ; preds = %68
  %79 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %80 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  switch i32 %81, label %85 [
    i32 6000000, label %82
    i32 7000000, label %83
    i32 8000000, label %84
  ]

82:                                               ; preds = %78
  store i32 120, i32* %9, align 4
  br label %88

83:                                               ; preds = %78
  store i32 104, i32* %9, align 4
  br label %88

84:                                               ; preds = %78
  store i32 88, i32* %9, align 4
  br label %88

85:                                               ; preds = %78
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %7, align 4
  br label %198

88:                                               ; preds = %84, %83, %82
  %89 = load %struct.zd1301_demod_dev*, %struct.zd1301_demod_dev** %4, align 8
  %90 = call i32 @zd1301_demod_wreg(%struct.zd1301_demod_dev* %89, i32 27232, i32 17)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %198

94:                                               ; preds = %88
  %95 = load %struct.zd1301_demod_dev*, %struct.zd1301_demod_dev** %4, align 8
  %96 = call i32 @zd1301_demod_wreg(%struct.zd1301_demod_dev* %95, i32 27207, i32 70)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %198

100:                                              ; preds = %94
  %101 = load %struct.zd1301_demod_dev*, %struct.zd1301_demod_dev** %4, align 8
  %102 = call i32 @zd1301_demod_wreg(%struct.zd1301_demod_dev* %101, i32 27208, i32 70)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %198

106:                                              ; preds = %100
  %107 = load %struct.zd1301_demod_dev*, %struct.zd1301_demod_dev** %4, align 8
  %108 = call i32 @zd1301_demod_wreg(%struct.zd1301_demod_dev* %107, i32 27210, i32 21)
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  br label %198

112:                                              ; preds = %106
  %113 = load %struct.zd1301_demod_dev*, %struct.zd1301_demod_dev** %4, align 8
  %114 = call i32 @zd1301_demod_wreg(%struct.zd1301_demod_dev* %113, i32 27211, i32 99)
  store i32 %114, i32* %7, align 4
  %115 = load i32, i32* %7, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  br label %198

118:                                              ; preds = %112
  %119 = load %struct.zd1301_demod_dev*, %struct.zd1301_demod_dev** %4, align 8
  %120 = call i32 @zd1301_demod_wreg(%struct.zd1301_demod_dev* %119, i32 27227, i32 153)
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %7, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  br label %198

124:                                              ; preds = %118
  %125 = load %struct.zd1301_demod_dev*, %struct.zd1301_demod_dev** %4, align 8
  %126 = call i32 @zd1301_demod_wreg(%struct.zd1301_demod_dev* %125, i32 27195, i32 16)
  store i32 %126, i32* %7, align 4
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  br label %198

130:                                              ; preds = %124
  %131 = load %struct.zd1301_demod_dev*, %struct.zd1301_demod_dev** %4, align 8
  %132 = call i32 @zd1301_demod_wreg(%struct.zd1301_demod_dev* %131, i32 26630, i32 1)
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %7, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  br label %198

136:                                              ; preds = %130
  %137 = load %struct.zd1301_demod_dev*, %struct.zd1301_demod_dev** %4, align 8
  %138 = call i32 @zd1301_demod_wreg(%struct.zd1301_demod_dev* %137, i32 27201, i32 8)
  store i32 %138, i32* %7, align 4
  %139 = load i32, i32* %7, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  br label %198

142:                                              ; preds = %136
  %143 = load %struct.zd1301_demod_dev*, %struct.zd1301_demod_dev** %4, align 8
  %144 = call i32 @zd1301_demod_wreg(%struct.zd1301_demod_dev* %143, i32 27202, i32 70)
  store i32 %144, i32* %7, align 4
  %145 = load i32, i32* %7, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %142
  br label %198

148:                                              ; preds = %142
  %149 = load %struct.zd1301_demod_dev*, %struct.zd1301_demod_dev** %4, align 8
  %150 = call i32 @zd1301_demod_wreg(%struct.zd1301_demod_dev* %149, i32 27204, i32 20)
  store i32 %150, i32* %7, align 4
  %151 = load i32, i32* %7, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  br label %198

154:                                              ; preds = %148
  %155 = load %struct.zd1301_demod_dev*, %struct.zd1301_demod_dev** %4, align 8
  %156 = call i32 @zd1301_demod_wreg(%struct.zd1301_demod_dev* %155, i32 27205, i32 103)
  store i32 %156, i32* %7, align 4
  %157 = load i32, i32* %7, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %154
  br label %198

160:                                              ; preds = %154
  %161 = load %struct.zd1301_demod_dev*, %struct.zd1301_demod_dev** %4, align 8
  %162 = call i32 @zd1301_demod_wreg(%struct.zd1301_demod_dev* %161, i32 27192, i32 0)
  store i32 %162, i32* %7, align 4
  %163 = load i32, i32* %7, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %160
  br label %198

166:                                              ; preds = %160
  %167 = load %struct.zd1301_demod_dev*, %struct.zd1301_demod_dev** %4, align 8
  %168 = call i32 @zd1301_demod_wreg(%struct.zd1301_demod_dev* %167, i32 27212, i32 82)
  store i32 %168, i32* %7, align 4
  %169 = load i32, i32* %7, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %166
  br label %198

172:                                              ; preds = %166
  %173 = load %struct.zd1301_demod_dev*, %struct.zd1301_demod_dev** %4, align 8
  %174 = call i32 @zd1301_demod_wreg(%struct.zd1301_demod_dev* %173, i32 27209, i32 42)
  store i32 %174, i32* %7, align 4
  %175 = load i32, i32* %7, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %172
  br label %198

178:                                              ; preds = %172
  %179 = load %struct.zd1301_demod_dev*, %struct.zd1301_demod_dev** %4, align 8
  %180 = call i32 @zd1301_demod_wreg(%struct.zd1301_demod_dev* %179, i32 26688, i32 46)
  store i32 %180, i32* %7, align 4
  %181 = load i32, i32* %7, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %178
  br label %198

184:                                              ; preds = %178
  %185 = load %struct.zd1301_demod_dev*, %struct.zd1301_demod_dev** %4, align 8
  %186 = load i32, i32* %9, align 4
  %187 = call i32 @zd1301_demod_wreg(%struct.zd1301_demod_dev* %185, i32 27216, i32 %186)
  store i32 %187, i32* %7, align 4
  %188 = load i32, i32* %7, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %184
  br label %198

191:                                              ; preds = %184
  %192 = load %struct.zd1301_demod_dev*, %struct.zd1301_demod_dev** %4, align 8
  %193 = call i32 @zd1301_demod_wreg(%struct.zd1301_demod_dev* %192, i32 27192, i32 7)
  store i32 %193, i32* %7, align 4
  %194 = load i32, i32* %7, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %191
  br label %198

197:                                              ; preds = %191
  store i32 0, i32* %2, align 4
  br label %204

198:                                              ; preds = %196, %190, %183, %177, %171, %165, %159, %153, %147, %141, %135, %129, %123, %117, %111, %105, %99, %93, %85, %75, %65, %63, %51
  %199 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %200 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %199, i32 0, i32 0
  %201 = load i32, i32* %7, align 4
  %202 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %200, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %201)
  %203 = load i32, i32* %7, align 4
  store i32 %203, i32* %2, align 4
  br label %204

204:                                              ; preds = %198, %197
  %205 = load i32, i32* %2, align 4
  ret i32 %205
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @zd1301_demod_wreg(%struct.zd1301_demod_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
