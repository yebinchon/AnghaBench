; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isph3a_aewb.c_h3a_aewb_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isph3a_aewb.c_h3a_aewb_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ispstat = type { i32, i32, i32, %struct.omap3isp_h3a_aewb_config* }
%struct.omap3isp_h3a_aewb_config = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ispstat*, i8*)* @h3a_aewb_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @h3a_aewb_set_params(%struct.ispstat* %0, i8* %1) #0 {
  %3 = alloca %struct.ispstat*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.omap3isp_h3a_aewb_config*, align 8
  %6 = alloca %struct.omap3isp_h3a_aewb_config*, align 8
  %7 = alloca i32, align 4
  store %struct.ispstat* %0, %struct.ispstat** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.omap3isp_h3a_aewb_config*
  store %struct.omap3isp_h3a_aewb_config* %9, %struct.omap3isp_h3a_aewb_config** %5, align 8
  %10 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %11 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %10, i32 0, i32 3
  %12 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %11, align 8
  store %struct.omap3isp_h3a_aewb_config* %12, %struct.omap3isp_h3a_aewb_config** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %14 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %5, align 8
  %17 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %15, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %5, align 8
  %22 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %25 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  store i32 1, i32* %7, align 4
  br label %26

26:                                               ; preds = %20, %2
  %27 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %28 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %5, align 8
  %31 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %26
  %35 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %5, align 8
  %36 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %39 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  store i32 1, i32* %7, align 4
  br label %40

40:                                               ; preds = %34, %26
  %41 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %42 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %5, align 8
  %45 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %43, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %40
  %49 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %5, align 8
  %50 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %53 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %52, i32 0, i32 2
  store i64 %51, i64* %53, align 8
  store i32 1, i32* %7, align 4
  br label %54

54:                                               ; preds = %48, %40
  %55 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %56 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %5, align 8
  %59 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %57, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %54
  %63 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %5, align 8
  %64 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %67 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %66, i32 0, i32 3
  store i64 %65, i64* %67, align 8
  store i32 1, i32* %7, align 4
  br label %68

68:                                               ; preds = %62, %54
  %69 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %70 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %5, align 8
  %73 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %72, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %71, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %68
  %77 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %5, align 8
  %78 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %81 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %80, i32 0, i32 4
  store i64 %79, i64* %81, align 8
  store i32 1, i32* %7, align 4
  br label %82

82:                                               ; preds = %76, %68
  %83 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %84 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %83, i32 0, i32 5
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %5, align 8
  %87 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %86, i32 0, i32 5
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %85, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %82
  %91 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %5, align 8
  %92 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %91, i32 0, i32 5
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %95 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %94, i32 0, i32 5
  store i64 %93, i64* %95, align 8
  store i32 1, i32* %7, align 4
  br label %96

96:                                               ; preds = %90, %82
  %97 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %98 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %97, i32 0, i32 6
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %5, align 8
  %101 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %100, i32 0, i32 6
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %99, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %96
  %105 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %5, align 8
  %106 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %105, i32 0, i32 6
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %109 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %108, i32 0, i32 6
  store i64 %107, i64* %109, align 8
  store i32 1, i32* %7, align 4
  br label %110

110:                                              ; preds = %104, %96
  %111 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %112 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %111, i32 0, i32 7
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %5, align 8
  %115 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %114, i32 0, i32 7
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %113, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %110
  %119 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %5, align 8
  %120 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %119, i32 0, i32 7
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %123 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %122, i32 0, i32 7
  store i64 %121, i64* %123, align 8
  store i32 1, i32* %7, align 4
  br label %124

124:                                              ; preds = %118, %110
  %125 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %126 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %125, i32 0, i32 8
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %5, align 8
  %129 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %128, i32 0, i32 8
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %127, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %124
  %133 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %5, align 8
  %134 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %133, i32 0, i32 8
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %137 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %136, i32 0, i32 8
  store i64 %135, i64* %137, align 8
  store i32 1, i32* %7, align 4
  br label %138

138:                                              ; preds = %132, %124
  %139 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %140 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %139, i32 0, i32 9
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %5, align 8
  %143 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %142, i32 0, i32 9
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %141, %144
  br i1 %145, label %146, label %152

146:                                              ; preds = %138
  %147 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %5, align 8
  %148 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %147, i32 0, i32 9
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %151 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %150, i32 0, i32 9
  store i64 %149, i64* %151, align 8
  store i32 1, i32* %7, align 4
  br label %152

152:                                              ; preds = %146, %138
  %153 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %154 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %153, i32 0, i32 10
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %5, align 8
  %157 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %156, i32 0, i32 10
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %155, %158
  br i1 %159, label %160, label %166

160:                                              ; preds = %152
  %161 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %5, align 8
  %162 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %161, i32 0, i32 10
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %165 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %164, i32 0, i32 10
  store i64 %163, i64* %165, align 8
  store i32 1, i32* %7, align 4
  br label %166

166:                                              ; preds = %160, %152
  %167 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %168 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %167, i32 0, i32 11
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %5, align 8
  %171 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %170, i32 0, i32 11
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %169, %172
  br i1 %173, label %174, label %180

174:                                              ; preds = %166
  %175 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %5, align 8
  %176 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %175, i32 0, i32 11
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %179 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %178, i32 0, i32 11
  store i64 %177, i64* %179, align 8
  store i32 1, i32* %7, align 4
  br label %180

180:                                              ; preds = %174, %166
  %181 = load i32, i32* %7, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %188, label %183

183:                                              ; preds = %180
  %184 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %185 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %199, label %188

188:                                              ; preds = %183, %180
  %189 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %190 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %190, align 4
  %193 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %194 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %193, i32 0, i32 0
  store i32 1, i32* %194, align 8
  %195 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %196 = call i32 @h3a_aewb_get_buf_size(%struct.omap3isp_h3a_aewb_config* %195)
  %197 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %198 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %197, i32 0, i32 12
  store i32 %196, i32* %198, align 8
  br label %199

199:                                              ; preds = %188, %183
  ret void
}

declare dso_local i32 @h3a_aewb_get_buf_size(%struct.omap3isp_h3a_aewb_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
