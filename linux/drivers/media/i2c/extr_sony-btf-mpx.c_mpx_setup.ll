; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_sony-btf-mpx.c_mpx_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_sony-btf-mpx.c_mpx_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sony_btf_mpx = type { i32, i32, i32 }
%struct.i2c_client = type { i32, i32 }
%struct.i2c_msg = type { i32, i32*, i64, i32 }

@mpx_audio_modes = common dso_local global %struct.TYPE_2__* null, align 8
@AUD_MONO = common dso_local global i64 0, align 8
@I2C_M_RD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sony_btf_mpx*)* @mpx_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpx_setup(%struct.sony_btf_mpx* %0) #0 {
  %2 = alloca %struct.sony_btf_mpx*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [3 x i32], align 4
  %6 = alloca %struct.i2c_msg, align 8
  %7 = alloca i32, align 4
  store %struct.sony_btf_mpx* %0, %struct.sony_btf_mpx** %2, align 8
  %8 = load %struct.sony_btf_mpx*, %struct.sony_btf_mpx** %2, align 8
  %9 = getelementptr inbounds %struct.sony_btf_mpx, %struct.sony_btf_mpx* %8, i32 0, i32 2
  %10 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %9)
  store %struct.i2c_client* %10, %struct.i2c_client** %3, align 8
  store i32 0, i32* %4, align 4
  %11 = load %struct.sony_btf_mpx*, %struct.sony_btf_mpx** %2, align 8
  %12 = getelementptr inbounds %struct.sony_btf_mpx, %struct.sony_btf_mpx* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  store i32 128, i32* %15, align 4
  %16 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  store i32 0, i32* %16, align 4
  %17 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %6, i32 0, i32 3
  store i32 %19, i32* %20, align 8
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %6, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %6, i32 0, i32 0
  store i32 3, i32* %22, align 8
  %23 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %6, i32 0, i32 1
  store i32* %23, i32** %24, align 8
  %25 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @i2c_transfer(i32 %27, %struct.i2c_msg* %6, i32 1)
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  store i32 0, i32* %29, align 4
  %30 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @i2c_transfer(i32 %32, %struct.i2c_msg* %6, i32 1)
  %34 = load %struct.sony_btf_mpx*, %struct.sony_btf_mpx** %2, align 8
  %35 = getelementptr inbounds %struct.sony_btf_mpx, %struct.sony_btf_mpx* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 129
  br i1 %37, label %38, label %41

38:                                               ; preds = %1
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %38, %1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mpx_audio_modes, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @AUD_MONO, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %91

50:                                               ; preds = %41
  %51 = load %struct.sony_btf_mpx*, %struct.sony_btf_mpx** %2, align 8
  %52 = getelementptr inbounds %struct.sony_btf_mpx, %struct.sony_btf_mpx* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %81 [
    i32 129, label %54
    i32 128, label %72
    i32 131, label %79
    i32 130, label %80
  ]

54:                                               ; preds = %50
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mpx_audio_modes, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  switch i64 %60, label %70 [
    i64 134, label %61
    i64 133, label %68
    i64 132, label %69
  ]

61:                                               ; preds = %54
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mpx_audio_modes, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %4, align 4
  br label %71

68:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %71

69:                                               ; preds = %54
  store i32 512, i32* %4, align 4
  br label %71

70:                                               ; preds = %54
  br label %71

71:                                               ; preds = %70, %69, %68, %61
  br label %81

72:                                               ; preds = %50
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mpx_audio_modes, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %4, align 4
  br label %81

79:                                               ; preds = %50
  store i32 768, i32* %4, align 4
  br label %81

80:                                               ; preds = %50
  store i32 1024, i32* %4, align 4
  br label %81

81:                                               ; preds = %50, %80, %79, %72, %71
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mpx_audio_modes, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = and i32 %87, 255
  %89 = load i32, i32* %4, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %4, align 4
  br label %98

91:                                               ; preds = %41
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mpx_audio_modes, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %91, %81
  %99 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mpx_audio_modes, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @mpx_write(%struct.i2c_client* %99, i32 16, i32 48, i32 %105)
  %107 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %108 = load i32, i32* %4, align 4
  %109 = call i32 @mpx_write(%struct.i2c_client* %107, i32 18, i32 8, i32 %108)
  %110 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mpx_audio_modes, align 8
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @mpx_write(%struct.i2c_client* %110, i32 18, i32 19, i32 %116)
  %118 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mpx_audio_modes, align 8
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @mpx_write(%struct.i2c_client* %118, i32 18, i32 14, i32 %124)
  %126 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mpx_audio_modes, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @mpx_write(%struct.i2c_client* %126, i32 18, i32 16, i32 %132)
  %134 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mpx_audio_modes, align 8
  %136 = load i32, i32* %7, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 6
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @mpx_write(%struct.i2c_client* %134, i32 18, i32 13, i32 %140)
  %142 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mpx_audio_modes, align 8
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 7
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @mpx_write(%struct.i2c_client* %142, i32 16, i32 32, i32 %148)
  %150 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mpx_audio_modes, align 8
  %152 = load i32, i32* %7, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 8
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @mpx_write(%struct.i2c_client* %150, i32 18, i32 0, i32 %156)
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mpx_audio_modes, align 8
  %159 = load i32, i32* %7, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = icmp eq i64 %163, 134
  br i1 %164, label %165, label %174

165:                                              ; preds = %98
  %166 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %167 = load %struct.sony_btf_mpx*, %struct.sony_btf_mpx** %2, align 8
  %168 = getelementptr inbounds %struct.sony_btf_mpx, %struct.sony_btf_mpx* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = icmp eq i32 %169, 129
  %171 = zext i1 %170 to i64
  %172 = select i1 %170, i32 2032, i32 400
  %173 = call i32 @mpx_write(%struct.i2c_client* %166, i32 16, i32 34, i32 %172)
  br label %174

174:                                              ; preds = %165, %98
  ret i32 0
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @mpx_write(%struct.i2c_client*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
