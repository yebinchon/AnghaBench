; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/msi2500/extr_msi2500.c_msi2500_set_usb_adc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/msi2500/extr_msi2500.c_msi2500_set_usb_adc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msi2500_dev = type { i32, i32, i32, i32 }
%struct.v4l2_ctrl = type { i32 }

@V4L2_CID_RF_TUNER_BANDWIDTH_AUTO = common dso_local global i32 0, align 4
@V4L2_CID_RF_TUNER_BANDWIDTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"div_out=%u f_vco=%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"f_sr=%u f_vco=%u div_n=%u k=%u div_out=%u reg3=%08x reg4=%08x\0A\00", align 1
@CMD_WREG = common dso_local global i32 0, align 4
@DIV_LO_OUT = common dso_local global i32 0, align 4
@DIV_PRE_N = common dso_local global i32 0, align 4
@F_REF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msi2500_dev*)* @msi2500_set_usb_adc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msi2500_set_usb_adc(%struct.msi2500_dev* %0) #0 {
  %2 = alloca %struct.msi2500_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.v4l2_ctrl*, align 8
  %14 = alloca %struct.v4l2_ctrl*, align 8
  store %struct.msi2500_dev* %0, %struct.msi2500_dev** %2, align 8
  %15 = load %struct.msi2500_dev*, %struct.msi2500_dev** %2, align 8
  %16 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  %18 = load %struct.msi2500_dev*, %struct.msi2500_dev** %2, align 8
  %19 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %18, i32 0, i32 3
  %20 = load i32, i32* @V4L2_CID_RF_TUNER_BANDWIDTH_AUTO, align 4
  %21 = call %struct.v4l2_ctrl* @v4l2_ctrl_find(i32* %19, i32 %20)
  store %struct.v4l2_ctrl* %21, %struct.v4l2_ctrl** %13, align 8
  %22 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %13, align 8
  %23 = call i64 @v4l2_ctrl_g_ctrl(%struct.v4l2_ctrl* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %1
  %26 = load %struct.msi2500_dev*, %struct.msi2500_dev** %2, align 8
  %27 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %26, i32 0, i32 3
  %28 = load i32, i32* @V4L2_CID_RF_TUNER_BANDWIDTH, align 4
  %29 = call %struct.v4l2_ctrl* @v4l2_ctrl_find(i32* %27, i32 %28)
  store %struct.v4l2_ctrl* %29, %struct.v4l2_ctrl** %14, align 8
  %30 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %14, align 8
  %31 = load %struct.msi2500_dev*, %struct.msi2500_dev** %2, align 8
  %32 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @v4l2_ctrl_s_ctrl(%struct.v4l2_ctrl* %30, i32 %33)
  br label %35

35:                                               ; preds = %25, %1
  %36 = load %struct.msi2500_dev*, %struct.msi2500_dev** %2, align 8
  %37 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %45 [
    i32 128, label %39
    i32 129, label %40
    i32 130, label %41
    i32 133, label %42
    i32 132, label %43
    i32 131, label %44
  ]

39:                                               ; preds = %35
  store i32 824327, i32* %12, align 4
  br label %46

40:                                               ; preds = %35
  store i32 37895, i32* %12, align 4
  br label %46

41:                                               ; preds = %35
  store i32 824327, i32* %12, align 4
  br label %46

42:                                               ; preds = %35
  store i32 42247, i32* %12, align 4
  br label %46

43:                                               ; preds = %35
  store i32 34055, i32* %12, align 4
  br label %46

44:                                               ; preds = %35
  store i32 37895, i32* %12, align 4
  br label %46

45:                                               ; preds = %35
  store i32 824327, i32* %12, align 4
  br label %46

46:                                               ; preds = %45, %44, %43, %42, %41, %40, %39
  store i32 16777987, i32* %10, align 4
  store i32 4, i32* %11, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ult i32 %47, 6000000
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* %10, align 4
  %51 = or i32 %50, 1048576
  store i32 %51, i32* %10, align 4
  br label %69

52:                                               ; preds = %46
  %53 = load i32, i32* %5, align 4
  %54 = icmp ult i32 %53, 7000000
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* %10, align 4
  %57 = or i32 %56, 5242880
  store i32 %57, i32* %10, align 4
  br label %68

58:                                               ; preds = %52
  %59 = load i32, i32* %5, align 4
  %60 = icmp ult i32 %59, 8500000
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* %10, align 4
  %63 = or i32 %62, 9437184
  store i32 %63, i32* %10, align 4
  br label %67

64:                                               ; preds = %58
  %65 = load i32, i32* %10, align 4
  %66 = or i32 %65, 13631488
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %64, %61
  br label %68

68:                                               ; preds = %67, %55
  br label %69

69:                                               ; preds = %68, %49
  store i32 4, i32* %9, align 4
  br label %70

70:                                               ; preds = %88, %69
  %71 = load i32, i32* %9, align 4
  %72 = icmp ult i32 %71, 16
  br i1 %72, label %73, label %91

73:                                               ; preds = %70
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %9, align 4
  %76 = mul i32 %74, %75
  %77 = mul i32 %76, 12
  store i32 %77, i32* %4, align 4
  %78 = load %struct.msi2500_dev*, %struct.msi2500_dev** %2, align 8
  %79 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %4, align 4
  %83 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %80, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %81, i32 %82)
  %84 = load i32, i32* %4, align 4
  %85 = icmp uge i32 %84, 202000000
  br i1 %85, label %86, label %87

86:                                               ; preds = %73
  br label %91

87:                                               ; preds = %73
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %9, align 4
  %90 = add i32 %89, 2
  store i32 %90, i32* %9, align 4
  br label %70

91:                                               ; preds = %86, %70
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @div_u64_rem(i32 %92, i32 48000000, i32* %7)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %7, align 4
  %95 = mul nsw i32 %94, 2097152
  %96 = call i32 @div_u64(i32 %95, i32 48000000)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %6, align 4
  %98 = shl i32 %97, 16
  %99 = load i32, i32* %10, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %9, align 4
  %102 = udiv i32 %101, 2
  %103 = sub i32 %102, 1
  %104 = shl i32 %103, 10
  %105 = load i32, i32* %10, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %8, align 4
  %108 = lshr i32 %107, 20
  %109 = and i32 %108, 1
  %110 = shl i32 %109, 15
  %111 = load i32, i32* %10, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %8, align 4
  %114 = lshr i32 %113, 0
  %115 = and i32 %114, 1048575
  %116 = shl i32 %115, 8
  %117 = load i32, i32* %11, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %11, align 4
  %119 = load %struct.msi2500_dev*, %struct.msi2500_dev** %2, align 8
  %120 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* %11, align 4
  %129 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %121, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %122, i32 %123, i32 %124, i32 %125, i32 %126, i32 %127, i32 %128)
  %130 = load %struct.msi2500_dev*, %struct.msi2500_dev** %2, align 8
  %131 = load i32, i32* @CMD_WREG, align 4
  %132 = call i32 @msi2500_ctrl_msg(%struct.msi2500_dev* %130, i32 %131, i32 6324232)
  store i32 %132, i32* %3, align 4
  %133 = load i32, i32* %3, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %91
  br label %185

136:                                              ; preds = %91
  %137 = load %struct.msi2500_dev*, %struct.msi2500_dev** %2, align 8
  %138 = load i32, i32* @CMD_WREG, align 4
  %139 = call i32 @msi2500_ctrl_msg(%struct.msi2500_dev* %137, i32 %138, i32 3077)
  store i32 %139, i32* %3, align 4
  %140 = load i32, i32* %3, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %136
  br label %185

143:                                              ; preds = %136
  %144 = load %struct.msi2500_dev*, %struct.msi2500_dev** %2, align 8
  %145 = load i32, i32* @CMD_WREG, align 4
  %146 = call i32 @msi2500_ctrl_msg(%struct.msi2500_dev* %144, i32 %145, i32 131072)
  store i32 %146, i32* %3, align 4
  %147 = load i32, i32* %3, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %143
  br label %185

150:                                              ; preds = %143
  %151 = load %struct.msi2500_dev*, %struct.msi2500_dev** %2, align 8
  %152 = load i32, i32* @CMD_WREG, align 4
  %153 = call i32 @msi2500_ctrl_msg(%struct.msi2500_dev* %151, i32 %152, i32 4718850)
  store i32 %153, i32* %3, align 4
  %154 = load i32, i32* %3, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %150
  br label %185

157:                                              ; preds = %150
  %158 = load %struct.msi2500_dev*, %struct.msi2500_dev** %2, align 8
  %159 = load i32, i32* @CMD_WREG, align 4
  %160 = call i32 @msi2500_ctrl_msg(%struct.msi2500_dev* %158, i32 %159, i32 15958024)
  store i32 %160, i32* %3, align 4
  %161 = load i32, i32* %3, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %157
  br label %185

164:                                              ; preds = %157
  %165 = load %struct.msi2500_dev*, %struct.msi2500_dev** %2, align 8
  %166 = load i32, i32* @CMD_WREG, align 4
  %167 = load i32, i32* %12, align 4
  %168 = call i32 @msi2500_ctrl_msg(%struct.msi2500_dev* %165, i32 %166, i32 %167)
  store i32 %168, i32* %3, align 4
  %169 = load i32, i32* %3, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %164
  br label %185

172:                                              ; preds = %164
  %173 = load %struct.msi2500_dev*, %struct.msi2500_dev** %2, align 8
  %174 = load i32, i32* @CMD_WREG, align 4
  %175 = load i32, i32* %11, align 4
  %176 = call i32 @msi2500_ctrl_msg(%struct.msi2500_dev* %173, i32 %174, i32 %175)
  store i32 %176, i32* %3, align 4
  %177 = load i32, i32* %3, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %172
  br label %185

180:                                              ; preds = %172
  %181 = load %struct.msi2500_dev*, %struct.msi2500_dev** %2, align 8
  %182 = load i32, i32* @CMD_WREG, align 4
  %183 = load i32, i32* %10, align 4
  %184 = call i32 @msi2500_ctrl_msg(%struct.msi2500_dev* %181, i32 %182, i32 %183)
  store i32 %184, i32* %3, align 4
  br label %185

185:                                              ; preds = %180, %179, %171, %163, %156, %149, %142, %135
  %186 = load i32, i32* %3, align 4
  ret i32 %186
}

declare dso_local %struct.v4l2_ctrl* @v4l2_ctrl_find(i32*, i32) #1

declare dso_local i64 @v4l2_ctrl_g_ctrl(%struct.v4l2_ctrl*) #1

declare dso_local i32 @v4l2_ctrl_s_ctrl(%struct.v4l2_ctrl*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @div_u64_rem(i32, i32, i32*) #1

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i32 @msi2500_ctrl_msg(%struct.msi2500_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
