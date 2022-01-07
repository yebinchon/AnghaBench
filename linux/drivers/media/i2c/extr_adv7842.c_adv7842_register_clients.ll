; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7842.c_adv7842_register_clients.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7842.c_adv7842_register_clients.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.adv7842_state = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.adv7842_platform_data }
%struct.adv7842_platform_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"avlink\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"cec\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"infoframe\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"sdp_io\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"sdp\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"afe\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"repeater\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"edid\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"hdmi\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"cp\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"vdp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @adv7842_register_clients to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7842_register_clients(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.adv7842_state*, align 8
  %5 = alloca %struct.adv7842_platform_data*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  %6 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %7 = call %struct.adv7842_state* @to_state(%struct.v4l2_subdev* %6)
  store %struct.adv7842_state* %7, %struct.adv7842_state** %4, align 8
  %8 = load %struct.adv7842_state*, %struct.adv7842_state** %4, align 8
  %9 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %8, i32 0, i32 11
  store %struct.adv7842_platform_data* %9, %struct.adv7842_platform_data** %5, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %11 = load %struct.adv7842_platform_data*, %struct.adv7842_platform_data** %5, align 8
  %12 = getelementptr inbounds %struct.adv7842_platform_data, %struct.adv7842_platform_data* %11, i32 0, i32 10
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @adv7842_dummy_client(%struct.v4l2_subdev* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %13, i32 243)
  %15 = load %struct.adv7842_state*, %struct.adv7842_state** %4, align 8
  %16 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %15, i32 0, i32 10
  store i8* %14, i8** %16, align 8
  %17 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %18 = load %struct.adv7842_platform_data*, %struct.adv7842_platform_data** %5, align 8
  %19 = getelementptr inbounds %struct.adv7842_platform_data, %struct.adv7842_platform_data* %18, i32 0, i32 9
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @adv7842_dummy_client(%struct.v4l2_subdev* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %20, i32 244)
  %22 = load %struct.adv7842_state*, %struct.adv7842_state** %4, align 8
  %23 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %22, i32 0, i32 9
  store i8* %21, i8** %23, align 8
  %24 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %25 = load %struct.adv7842_platform_data*, %struct.adv7842_platform_data** %5, align 8
  %26 = getelementptr inbounds %struct.adv7842_platform_data, %struct.adv7842_platform_data* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @adv7842_dummy_client(%struct.v4l2_subdev* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %27, i32 245)
  %29 = load %struct.adv7842_state*, %struct.adv7842_state** %4, align 8
  %30 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %29, i32 0, i32 8
  store i8* %28, i8** %30, align 8
  %31 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %32 = load %struct.adv7842_platform_data*, %struct.adv7842_platform_data** %5, align 8
  %33 = getelementptr inbounds %struct.adv7842_platform_data, %struct.adv7842_platform_data* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @adv7842_dummy_client(%struct.v4l2_subdev* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %34, i32 242)
  %36 = load %struct.adv7842_state*, %struct.adv7842_state** %4, align 8
  %37 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %36, i32 0, i32 7
  store i8* %35, i8** %37, align 8
  %38 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %39 = load %struct.adv7842_platform_data*, %struct.adv7842_platform_data** %5, align 8
  %40 = getelementptr inbounds %struct.adv7842_platform_data, %struct.adv7842_platform_data* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @adv7842_dummy_client(%struct.v4l2_subdev* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %41, i32 241)
  %43 = load %struct.adv7842_state*, %struct.adv7842_state** %4, align 8
  %44 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %43, i32 0, i32 6
  store i8* %42, i8** %44, align 8
  %45 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %46 = load %struct.adv7842_platform_data*, %struct.adv7842_platform_data** %5, align 8
  %47 = getelementptr inbounds %struct.adv7842_platform_data, %struct.adv7842_platform_data* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @adv7842_dummy_client(%struct.v4l2_subdev* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %48, i32 248)
  %50 = load %struct.adv7842_state*, %struct.adv7842_state** %4, align 8
  %51 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %50, i32 0, i32 5
  store i8* %49, i8** %51, align 8
  %52 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %53 = load %struct.adv7842_platform_data*, %struct.adv7842_platform_data** %5, align 8
  %54 = getelementptr inbounds %struct.adv7842_platform_data, %struct.adv7842_platform_data* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @adv7842_dummy_client(%struct.v4l2_subdev* %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %55, i32 249)
  %57 = load %struct.adv7842_state*, %struct.adv7842_state** %4, align 8
  %58 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %57, i32 0, i32 4
  store i8* %56, i8** %58, align 8
  %59 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %60 = load %struct.adv7842_platform_data*, %struct.adv7842_platform_data** %5, align 8
  %61 = getelementptr inbounds %struct.adv7842_platform_data, %struct.adv7842_platform_data* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @adv7842_dummy_client(%struct.v4l2_subdev* %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %62, i32 250)
  %64 = load %struct.adv7842_state*, %struct.adv7842_state** %4, align 8
  %65 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %64, i32 0, i32 3
  store i8* %63, i8** %65, align 8
  %66 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %67 = load %struct.adv7842_platform_data*, %struct.adv7842_platform_data** %5, align 8
  %68 = getelementptr inbounds %struct.adv7842_platform_data, %struct.adv7842_platform_data* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @adv7842_dummy_client(%struct.v4l2_subdev* %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %69, i32 251)
  %71 = load %struct.adv7842_state*, %struct.adv7842_state** %4, align 8
  %72 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %71, i32 0, i32 2
  store i8* %70, i8** %72, align 8
  %73 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %74 = load %struct.adv7842_platform_data*, %struct.adv7842_platform_data** %5, align 8
  %75 = getelementptr inbounds %struct.adv7842_platform_data, %struct.adv7842_platform_data* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @adv7842_dummy_client(%struct.v4l2_subdev* %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 %76, i32 253)
  %78 = load %struct.adv7842_state*, %struct.adv7842_state** %4, align 8
  %79 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %78, i32 0, i32 1
  store i8* %77, i8** %79, align 8
  %80 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %81 = load %struct.adv7842_platform_data*, %struct.adv7842_platform_data** %5, align 8
  %82 = getelementptr inbounds %struct.adv7842_platform_data, %struct.adv7842_platform_data* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i8* @adv7842_dummy_client(%struct.v4l2_subdev* %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %83, i32 254)
  %85 = load %struct.adv7842_state*, %struct.adv7842_state** %4, align 8
  %86 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %85, i32 0, i32 0
  store i8* %84, i8** %86, align 8
  %87 = load %struct.adv7842_state*, %struct.adv7842_state** %4, align 8
  %88 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %87, i32 0, i32 10
  %89 = load i8*, i8** %88, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %141

91:                                               ; preds = %1
  %92 = load %struct.adv7842_state*, %struct.adv7842_state** %4, align 8
  %93 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %92, i32 0, i32 9
  %94 = load i8*, i8** %93, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %141

96:                                               ; preds = %91
  %97 = load %struct.adv7842_state*, %struct.adv7842_state** %4, align 8
  %98 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %97, i32 0, i32 8
  %99 = load i8*, i8** %98, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %141

101:                                              ; preds = %96
  %102 = load %struct.adv7842_state*, %struct.adv7842_state** %4, align 8
  %103 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %102, i32 0, i32 7
  %104 = load i8*, i8** %103, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %141

106:                                              ; preds = %101
  %107 = load %struct.adv7842_state*, %struct.adv7842_state** %4, align 8
  %108 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %107, i32 0, i32 6
  %109 = load i8*, i8** %108, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %141

111:                                              ; preds = %106
  %112 = load %struct.adv7842_state*, %struct.adv7842_state** %4, align 8
  %113 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %112, i32 0, i32 5
  %114 = load i8*, i8** %113, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %141

116:                                              ; preds = %111
  %117 = load %struct.adv7842_state*, %struct.adv7842_state** %4, align 8
  %118 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %117, i32 0, i32 4
  %119 = load i8*, i8** %118, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %141

121:                                              ; preds = %116
  %122 = load %struct.adv7842_state*, %struct.adv7842_state** %4, align 8
  %123 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %122, i32 0, i32 3
  %124 = load i8*, i8** %123, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %141

126:                                              ; preds = %121
  %127 = load %struct.adv7842_state*, %struct.adv7842_state** %4, align 8
  %128 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %127, i32 0, i32 2
  %129 = load i8*, i8** %128, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %141

131:                                              ; preds = %126
  %132 = load %struct.adv7842_state*, %struct.adv7842_state** %4, align 8
  %133 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %132, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %141

136:                                              ; preds = %131
  %137 = load %struct.adv7842_state*, %struct.adv7842_state** %4, align 8
  %138 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %142, label %141

141:                                              ; preds = %136, %131, %126, %121, %116, %111, %106, %101, %96, %91, %1
  store i32 -1, i32* %2, align 4
  br label %143

142:                                              ; preds = %136
  store i32 0, i32* %2, align 4
  br label %143

143:                                              ; preds = %142, %141
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local %struct.adv7842_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i8* @adv7842_dummy_client(%struct.v4l2_subdev*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
