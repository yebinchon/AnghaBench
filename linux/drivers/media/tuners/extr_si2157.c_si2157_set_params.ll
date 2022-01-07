; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_si2157.c_si2157_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_si2157.c_si2157_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtv_frontend_properties, %struct.i2c_client* }
%struct.dtv_frontend_properties = type { i32, i32, i32 }
%struct.i2c_client = type { i32 }
%struct.si2157_dev = type { i64, i32, i32, i64, i32 }
%struct.si2157_cmd = type { i32*, i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"delivery_system=%d frequency=%u bandwidth_hz=%u\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"\14\00\03\07\00\00\00", align 1
@SI2157_CHIPTYPE_SI2146 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"\14\00\02\07\00\01\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"\14\00\02\07\00\00\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"\14\00\06\07\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"A\00\00\00\00\00\00\00\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @si2157_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si2157_set_params(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.si2157_dev*, align 8
  %6 = alloca %struct.dtv_frontend_properties*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.si2157_cmd, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 1
  %14 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  store %struct.i2c_client* %14, %struct.i2c_client** %4, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = call %struct.si2157_dev* @i2c_get_clientdata(%struct.i2c_client* %15)
  store %struct.si2157_dev* %16, %struct.si2157_dev** %5, align 8
  %17 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %18 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %17, i32 0, i32 0
  store %struct.dtv_frontend_properties* %18, %struct.dtv_frontend_properties** %6, align 8
  store i32 5000000, i32* %11, align 4
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 0
  %21 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %22 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %25 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %28 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %20, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26, i32 %29)
  %31 = load %struct.si2157_dev*, %struct.si2157_dev** %5, align 8
  %32 = getelementptr inbounds %struct.si2157_dev, %struct.si2157_dev* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %1
  %36 = load i32, i32* @EAGAIN, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %7, align 4
  br label %202

38:                                               ; preds = %1
  %39 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %40 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = icmp sle i32 %41, 6000000
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 6, i32* %9, align 4
  br label %59

44:                                               ; preds = %38
  %45 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %46 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = icmp sle i32 %47, 7000000
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 7, i32* %9, align 4
  br label %58

50:                                               ; preds = %44
  %51 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %52 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = icmp sle i32 %53, 8000000
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 8, i32* %9, align 4
  br label %57

56:                                               ; preds = %50
  store i32 15, i32* %9, align 4
  br label %57

57:                                               ; preds = %56, %55
  br label %58

58:                                               ; preds = %57, %49
  br label %59

59:                                               ; preds = %58, %43
  %60 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %61 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  switch i32 %62, label %67 [
    i32 132, label %63
    i32 130, label %64
    i32 129, label %65
    i32 128, label %65
    i32 131, label %66
  ]

63:                                               ; preds = %59
  store i32 0, i32* %10, align 4
  store i32 3250000, i32* %11, align 4
  br label %70

64:                                               ; preds = %59
  store i32 16, i32* %10, align 4
  store i32 4000000, i32* %11, align 4
  br label %70

65:                                               ; preds = %59, %59
  store i32 32, i32* %10, align 4
  br label %70

66:                                               ; preds = %59
  store i32 48, i32* %10, align 4
  br label %70

67:                                               ; preds = %59
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %7, align 4
  br label %202

70:                                               ; preds = %66, %65, %64, %63
  %71 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %8, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @memcpy(i32* %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %9, align 4
  %76 = or i32 %74, %75
  %77 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %8, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 4
  store i32 %76, i32* %79, align 4
  %80 = load %struct.si2157_dev*, %struct.si2157_dev** %5, align 8
  %81 = getelementptr inbounds %struct.si2157_dev, %struct.si2157_dev* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %70
  %85 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %8, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 5
  store i32 1, i32* %87, align 4
  br label %88

88:                                               ; preds = %84, %70
  %89 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %8, i32 0, i32 1
  store i32 6, i32* %89, align 8
  %90 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %8, i32 0, i32 2
  store i32 4, i32* %90, align 4
  %91 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %92 = call i32 @si2157_cmd_execute(%struct.i2c_client* %91, %struct.si2157_cmd* %8)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  br label %202

96:                                               ; preds = %88
  %97 = load %struct.si2157_dev*, %struct.si2157_dev** %5, align 8
  %98 = getelementptr inbounds %struct.si2157_dev, %struct.si2157_dev* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @SI2157_CHIPTYPE_SI2146, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %8, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @memcpy(i32* %104, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 6)
  br label %110

106:                                              ; preds = %96
  %107 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %8, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @memcpy(i32* %108, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 6)
  br label %110

110:                                              ; preds = %106, %102
  %111 = load %struct.si2157_dev*, %struct.si2157_dev** %5, align 8
  %112 = getelementptr inbounds %struct.si2157_dev, %struct.si2157_dev* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %8, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 4
  store i32 %113, i32* %116, align 4
  %117 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %8, i32 0, i32 1
  store i32 6, i32* %117, align 8
  %118 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %8, i32 0, i32 2
  store i32 4, i32* %118, align 4
  %119 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %120 = call i32 @si2157_cmd_execute(%struct.i2c_client* %119, %struct.si2157_cmd* %8)
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %7, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %110
  br label %202

124:                                              ; preds = %110
  %125 = load i32, i32* %11, align 4
  %126 = load %struct.si2157_dev*, %struct.si2157_dev** %5, align 8
  %127 = getelementptr inbounds %struct.si2157_dev, %struct.si2157_dev* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %125, %128
  br i1 %129, label %130, label %158

130:                                              ; preds = %124
  %131 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %8, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = call i32 @memcpy(i32* %132, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %134 = load i32, i32* %11, align 4
  %135 = sdiv i32 %134, 1000
  %136 = and i32 %135, 255
  %137 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %8, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 4
  store i32 %136, i32* %139, align 4
  %140 = load i32, i32* %11, align 4
  %141 = sdiv i32 %140, 1000
  %142 = ashr i32 %141, 8
  %143 = and i32 %142, 255
  %144 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %8, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 5
  store i32 %143, i32* %146, align 4
  %147 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %8, i32 0, i32 1
  store i32 6, i32* %147, align 8
  %148 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %8, i32 0, i32 2
  store i32 4, i32* %148, align 4
  %149 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %150 = call i32 @si2157_cmd_execute(%struct.i2c_client* %149, %struct.si2157_cmd* %8)
  store i32 %150, i32* %7, align 4
  %151 = load i32, i32* %7, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %130
  br label %202

154:                                              ; preds = %130
  %155 = load i32, i32* %11, align 4
  %156 = load %struct.si2157_dev*, %struct.si2157_dev** %5, align 8
  %157 = getelementptr inbounds %struct.si2157_dev, %struct.si2157_dev* %156, i32 0, i32 2
  store i32 %155, i32* %157, align 4
  br label %158

158:                                              ; preds = %154, %124
  %159 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %8, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = call i32 @memcpy(i32* %160, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 8)
  %162 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %163 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = ashr i32 %164, 0
  %166 = and i32 %165, 255
  %167 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %8, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 4
  store i32 %166, i32* %169, align 4
  %170 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %171 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = ashr i32 %172, 8
  %174 = and i32 %173, 255
  %175 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %8, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 5
  store i32 %174, i32* %177, align 4
  %178 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %179 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = ashr i32 %180, 16
  %182 = and i32 %181, 255
  %183 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %8, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 6
  store i32 %182, i32* %185, align 4
  %186 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %187 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = ashr i32 %188, 24
  %190 = and i32 %189, 255
  %191 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %8, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 7
  store i32 %190, i32* %193, align 4
  %194 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %8, i32 0, i32 1
  store i32 8, i32* %194, align 8
  %195 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %8, i32 0, i32 2
  store i32 1, i32* %195, align 4
  %196 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %197 = call i32 @si2157_cmd_execute(%struct.i2c_client* %196, %struct.si2157_cmd* %8)
  store i32 %197, i32* %7, align 4
  %198 = load i32, i32* %7, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %158
  br label %202

201:                                              ; preds = %158
  store i32 0, i32* %2, align 4
  br label %208

202:                                              ; preds = %200, %153, %123, %95, %67, %35
  %203 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %204 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %203, i32 0, i32 0
  %205 = load i32, i32* %7, align 4
  %206 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %204, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %205)
  %207 = load i32, i32* %7, align 4
  store i32 %207, i32* %2, align 4
  br label %208

208:                                              ; preds = %202, %201
  %209 = load i32, i32* %2, align 4
  ret i32 %209
}

declare dso_local %struct.si2157_dev* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @si2157_cmd_execute(%struct.i2c_client*, %struct.si2157_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
