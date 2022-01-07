; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_xc5000.c_xc_load_i2c_sequence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_xc5000.c_xc_load_i2c_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.xc5000_priv* }
%struct.xc5000_priv = type { i32 }

@XC_MAX_I2C_WRITE_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @xc_load_i2c_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xc_load_i2c_sequence(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.xc5000_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %17 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %16, i32 0, i32 0
  %18 = load %struct.xc5000_priv*, %struct.xc5000_priv** %17, align 8
  store %struct.xc5000_priv* %18, %struct.xc5000_priv** %6, align 8
  %19 = load i32, i32* @XC_MAX_I2C_WRITE_LENGTH, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %13, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %14, align 8
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %150, %2
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %12, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 255
  br i1 %29, label %38, label %30

30:                                               ; preds = %23
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %12, align 4
  %33 = add i32 %32, 1
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 255
  br label %38

38:                                               ; preds = %30, %23
  %39 = phi i1 [ true, %23 ], [ %37, %30 ]
  br i1 %39, label %40, label %151

40:                                               ; preds = %38
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %12, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %45, 256
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* %12, align 4
  %49 = add i32 %48, 1
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %46, %52
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %40
  %57 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %58 = call i32 @xc5000_tuner_reset(%struct.dvb_frontend* %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %12, align 4
  %60 = add i32 %59, 2
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %152

65:                                               ; preds = %56
  br label %150

66:                                               ; preds = %40
  %67 = load i32, i32* %10, align 4
  %68 = and i32 %67, 32768
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load i32, i32* %10, align 4
  %72 = and i32 %71, 32767
  %73 = call i32 @msleep(i32 %72)
  %74 = load i32, i32* %12, align 4
  %75 = add i32 %74, 2
  store i32 %75, i32* %12, align 4
  br label %149

76:                                               ; preds = %66
  %77 = load i32, i32* %12, align 4
  %78 = add i32 %77, 2
  store i32 %78, i32* %12, align 4
  %79 = load i32*, i32** %5, align 8
  %80 = load i32, i32* %12, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %83, i32* %84, align 16
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* %12, align 4
  %87 = add i32 %86, 1
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 %90, i32* %91, align 4
  store i32 2, i32* %11, align 4
  br label %92

92:                                               ; preds = %140, %76
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp ult i32 %93, %94
  br i1 %95, label %96, label %145

96:                                               ; preds = %92
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %11, align 4
  %99 = sub i32 %97, %98
  %100 = load i32, i32* @XC_MAX_I2C_WRITE_LENGTH, align 4
  %101 = sub nsw i32 %100, 2
  %102 = icmp ugt i32 %99, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %96
  %104 = load i32, i32* @XC_MAX_I2C_WRITE_LENGTH, align 4
  store i32 %104, i32* %8, align 4
  br label %110

105:                                              ; preds = %96
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %11, align 4
  %108 = sub i32 %106, %107
  %109 = add i32 %108, 2
  store i32 %109, i32* %8, align 4
  br label %110

110:                                              ; preds = %105, %103
  store i32 2, i32* %7, align 4
  br label %111

111:                                              ; preds = %129, %110
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* %8, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %132

115:                                              ; preds = %111
  %116 = load i32*, i32** %5, align 8
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* %11, align 4
  %119 = add i32 %117, %118
  %120 = load i32, i32* %7, align 4
  %121 = add i32 %119, %120
  %122 = sub i32 %121, 2
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %116, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %7, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %22, i64 %127
  store i32 %125, i32* %128, align 4
  br label %129

129:                                              ; preds = %115
  %130 = load i32, i32* %7, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %7, align 4
  br label %111

132:                                              ; preds = %111
  %133 = load %struct.xc5000_priv*, %struct.xc5000_priv** %6, align 8
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @xc_send_i2c_data(%struct.xc5000_priv* %133, i32* %22, i32 %134)
  store i32 %135, i32* %9, align 4
  %136 = load i32, i32* %9, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %132
  %139 = load i32, i32* %9, align 4
  store i32 %139, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %152

140:                                              ; preds = %132
  %141 = load i32, i32* %8, align 4
  %142 = sub nsw i32 %141, 2
  %143 = load i32, i32* %11, align 4
  %144 = add i32 %143, %142
  store i32 %144, i32* %11, align 4
  br label %92

145:                                              ; preds = %92
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* %12, align 4
  %148 = add i32 %147, %146
  store i32 %148, i32* %12, align 4
  br label %149

149:                                              ; preds = %145, %70
  br label %150

150:                                              ; preds = %149, %65
  br label %23

151:                                              ; preds = %38
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %152

152:                                              ; preds = %151, %138, %63
  %153 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %153)
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @xc5000_tuner_reset(%struct.dvb_frontend*) #2

declare dso_local i32 @msleep(i32) #2

declare dso_local i32 @xc_send_i2c_data(%struct.xc5000_priv*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
