; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_xc4000.c_xc_load_i2c_sequence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_xc4000.c_xc_load_i2c_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.xc4000_priv* }
%struct.xc4000_priv = type { i32 }

@XC_MAX_I2C_WRITE_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @xc_load_i2c_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xc_load_i2c_sequence(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.xc4000_priv*, align 8
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
  %18 = load %struct.xc4000_priv*, %struct.xc4000_priv** %17, align 8
  store %struct.xc4000_priv* %18, %struct.xc4000_priv** %6, align 8
  %19 = load i32, i32* @XC_MAX_I2C_WRITE_LENGTH, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %13, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %14, align 8
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %143, %2
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
  br i1 %39, label %40, label %144

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
  br i1 %55, label %56, label %59

56:                                               ; preds = %40
  %57 = load i32, i32* %12, align 4
  %58 = add i32 %57, 2
  store i32 %58, i32* %12, align 4
  br label %143

59:                                               ; preds = %40
  %60 = load i32, i32* %10, align 4
  %61 = and i32 %60, 32768
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load i32, i32* %10, align 4
  %65 = and i32 %64, 32767
  %66 = call i32 @msleep(i32 %65)
  %67 = load i32, i32* %12, align 4
  %68 = add i32 %67, 2
  store i32 %68, i32* %12, align 4
  br label %142

69:                                               ; preds = %59
  %70 = load i32, i32* %12, align 4
  %71 = add i32 %70, 2
  store i32 %71, i32* %12, align 4
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* %12, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %76, i32* %77, align 16
  %78 = load i32*, i32** %5, align 8
  %79 = load i32, i32* %12, align 4
  %80 = add i32 %79, 1
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 %83, i32* %84, align 4
  store i32 2, i32* %11, align 4
  br label %85

85:                                               ; preds = %133, %69
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp ult i32 %86, %87
  br i1 %88, label %89, label %138

89:                                               ; preds = %85
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %11, align 4
  %92 = sub i32 %90, %91
  %93 = load i32, i32* @XC_MAX_I2C_WRITE_LENGTH, align 4
  %94 = sub nsw i32 %93, 2
  %95 = icmp ugt i32 %92, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %89
  %97 = load i32, i32* @XC_MAX_I2C_WRITE_LENGTH, align 4
  store i32 %97, i32* %8, align 4
  br label %103

98:                                               ; preds = %89
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %11, align 4
  %101 = sub i32 %99, %100
  %102 = add i32 %101, 2
  store i32 %102, i32* %8, align 4
  br label %103

103:                                              ; preds = %98, %96
  store i32 2, i32* %7, align 4
  br label %104

104:                                              ; preds = %122, %103
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %125

108:                                              ; preds = %104
  %109 = load i32*, i32** %5, align 8
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* %11, align 4
  %112 = add i32 %110, %111
  %113 = load i32, i32* %7, align 4
  %114 = add i32 %112, %113
  %115 = sub i32 %114, 2
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %109, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %22, i64 %120
  store i32 %118, i32* %121, align 4
  br label %122

122:                                              ; preds = %108
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %7, align 4
  br label %104

125:                                              ; preds = %104
  %126 = load %struct.xc4000_priv*, %struct.xc4000_priv** %6, align 8
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @xc_send_i2c_data(%struct.xc4000_priv* %126, i32* %22, i32 %127)
  store i32 %128, i32* %9, align 4
  %129 = load i32, i32* %9, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %125
  %132 = load i32, i32* %9, align 4
  store i32 %132, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %145

133:                                              ; preds = %125
  %134 = load i32, i32* %8, align 4
  %135 = sub nsw i32 %134, 2
  %136 = load i32, i32* %11, align 4
  %137 = add i32 %136, %135
  store i32 %137, i32* %11, align 4
  br label %85

138:                                              ; preds = %85
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* %12, align 4
  %141 = add i32 %140, %139
  store i32 %141, i32* %12, align 4
  br label %142

142:                                              ; preds = %138, %63
  br label %143

143:                                              ; preds = %142, %56
  br label %23

144:                                              ; preds = %38
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %145

145:                                              ; preds = %144, %131
  %146 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %146)
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @msleep(i32) #2

declare dso_local i32 @xc_send_i2c_data(%struct.xc4000_priv*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
