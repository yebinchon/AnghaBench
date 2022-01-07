; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mxc_nand.c_mxc_nand_v2_setup_data_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mxc_nand.c_mxc_nand_v2_setup_data_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.nand_data_interface = type { i32 }
%struct.mxc_nand_host = type { i32, i32 }
%struct.nand_sdr_timings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@NFC_V1_V2_CONFIG1 = common dso_local global i32 0, align 4
@NFC_V2_CONFIG1_ONE_CYCLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Timing out of bounds\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NAND_DATA_IFACE_CHECK_ONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Setting rate to %ldHz, %s mode\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"One cycle (EDO)\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32, %struct.nand_data_interface*)* @mxc_nand_v2_setup_data_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxc_nand_v2_setup_data_interface(%struct.nand_chip* %0, i32 %1, %struct.nand_data_interface* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nand_data_interface*, align 8
  %8 = alloca %struct.mxc_nand_host*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.nand_sdr_timings*, align 8
  %15 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nand_data_interface* %2, %struct.nand_data_interface** %7, align 8
  %16 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %17 = call %struct.mxc_nand_host* @nand_get_controller_data(%struct.nand_chip* %16)
  store %struct.mxc_nand_host* %17, %struct.mxc_nand_host** %8, align 8
  %18 = load %struct.nand_data_interface*, %struct.nand_data_interface** %7, align 8
  %19 = call %struct.nand_sdr_timings* @nand_get_sdr_timings(%struct.nand_data_interface* %18)
  store %struct.nand_sdr_timings* %19, %struct.nand_sdr_timings** %14, align 8
  %20 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %14, align 8
  %21 = call i64 @IS_ERR(%struct.nand_sdr_timings* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @ENOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %210

26:                                               ; preds = %3
  %27 = load i32, i32* @NFC_V1_V2_CONFIG1, align 4
  %28 = call i32 @readw(i32 %27)
  store i32 %28, i32* %15, align 4
  %29 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %14, align 8
  %30 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sdiv i32 %31, 1000
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = sdiv i32 1000000000, %33
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %12, align 8
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 30
  br i1 %37, label %38, label %51

38:                                               ; preds = %26
  %39 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %8, align 8
  %40 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* %12, align 8
  %43 = call i64 @clk_round_rate(i32 %41, i64 %42)
  store i64 %43, i64* %13, align 8
  %44 = load i32, i32* @NFC_V2_CONFIG1_ONE_CYCLE, align 4
  %45 = load i32, i32* %15, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %15, align 4
  %47 = load i64, i64* %13, align 8
  %48 = udiv i64 %47, 1000
  %49 = udiv i64 1000000000, %48
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %10, align 4
  br label %68

51:                                               ; preds = %26
  %52 = load i64, i64* %12, align 8
  %53 = mul i64 %52, 2
  store i64 %53, i64* %12, align 8
  %54 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %8, align 8
  %55 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i64, i64* %12, align 8
  %58 = call i64 @clk_round_rate(i32 %56, i64 %57)
  store i64 %58, i64* %13, align 8
  %59 = load i32, i32* @NFC_V2_CONFIG1_ONE_CYCLE, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %15, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %15, align 4
  %63 = load i64, i64* %13, align 8
  %64 = udiv i64 %63, 1000
  %65 = udiv i64 %64, 2
  %66 = udiv i64 1000000000, %65
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %10, align 4
  br label %68

68:                                               ; preds = %51, %38
  %69 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %14, align 8
  %70 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %10, align 4
  %73 = sub nsw i32 %72, 1000
  %74 = icmp sgt i32 %71, %73
  br i1 %74, label %173, label %75

75:                                               ; preds = %68
  %76 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %14, align 8
  %77 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %10, align 4
  %80 = sub nsw i32 %79, 2000
  %81 = icmp sgt i32 %78, %80
  br i1 %81, label %173, label %82

82:                                               ; preds = %75
  %83 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %14, align 8
  %84 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %10, align 4
  %87 = sub nsw i32 %86, 1000
  %88 = icmp sgt i32 %85, %87
  br i1 %88, label %173, label %89

89:                                               ; preds = %82
  %90 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %14, align 8
  %91 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %10, align 4
  %94 = sub nsw i32 %93, 2000
  %95 = icmp sgt i32 %92, %94
  br i1 %95, label %173, label %96

96:                                               ; preds = %89
  %97 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %14, align 8
  %98 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %10, align 4
  %101 = sub nsw i32 %100, 1500
  %102 = icmp sgt i32 %99, %101
  br i1 %102, label %173, label %103

103:                                              ; preds = %96
  %104 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %14, align 8
  %105 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %104, i32 0, i32 6
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %10, align 4
  %108 = icmp sgt i32 %106, %107
  br i1 %108, label %173, label %109

109:                                              ; preds = %103
  %110 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %14, align 8
  %111 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %110, i32 0, i32 7
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %10, align 4
  %114 = sub nsw i32 %113, 3000
  %115 = icmp sgt i32 %112, %114
  br i1 %115, label %173, label %116

116:                                              ; preds = %109
  %117 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %14, align 8
  %118 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %117, i32 0, i32 8
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %10, align 4
  %121 = icmp sgt i32 %119, %120
  br i1 %121, label %173, label %122

122:                                              ; preds = %116
  %123 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %14, align 8
  %124 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %123, i32 0, i32 9
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %10, align 4
  %127 = sub nsw i32 %126, 5000
  %128 = icmp sgt i32 %125, %127
  br i1 %128, label %173, label %129

129:                                              ; preds = %122
  %130 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %14, align 8
  %131 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %130, i32 0, i32 10
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %10, align 4
  %134 = mul nsw i32 2, %133
  %135 = icmp sgt i32 %132, %134
  br i1 %135, label %173, label %136

136:                                              ; preds = %129
  %137 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %14, align 8
  %138 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %137, i32 0, i32 11
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %10, align 4
  %141 = sub nsw i32 %140, 2500
  %142 = icmp sgt i32 %139, %141
  br i1 %142, label %173, label %143

143:                                              ; preds = %136
  %144 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %14, align 8
  %145 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %144, i32 0, i32 12
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %10, align 4
  %148 = mul nsw i32 6, %147
  %149 = icmp sgt i32 %146, %148
  br i1 %149, label %173, label %150

150:                                              ; preds = %143
  %151 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %14, align 8
  %152 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %151, i32 0, i32 13
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %10, align 4
  %155 = mul nsw i32 3, %154
  %156 = sdiv i32 %155, 2
  %157 = icmp sgt i32 %153, %156
  br i1 %157, label %173, label %158

158:                                              ; preds = %150
  %159 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %14, align 8
  %160 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %10, align 4
  %163 = mul nsw i32 2, %162
  %164 = icmp sgt i32 %161, %163
  br i1 %164, label %173, label %165

165:                                              ; preds = %158
  %166 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %14, align 8
  %167 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %166, i32 0, i32 14
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %10, align 4
  %170 = sdiv i32 %169, 2
  %171 = sub nsw i32 %170, 2500
  %172 = icmp sgt i32 %168, %171
  br i1 %172, label %173, label %180

173:                                              ; preds = %165, %158, %150, %143, %136, %129, %122, %116, %109, %103, %96, %89, %82, %75, %68
  %174 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %8, align 8
  %175 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i32 (i32, i8*, ...) @dev_dbg(i32 %176, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %178 = load i32, i32* @EINVAL, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %4, align 4
  br label %210

180:                                              ; preds = %165
  %181 = load i32, i32* %6, align 4
  %182 = load i32, i32* @NAND_DATA_IFACE_CHECK_ONLY, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %180
  store i32 0, i32* %4, align 4
  br label %210

185:                                              ; preds = %180
  %186 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %8, align 8
  %187 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load i64, i64* %12, align 8
  %190 = call i32 @clk_set_rate(i32 %188, i64 %189)
  store i32 %190, i32* %11, align 4
  %191 = load i32, i32* %11, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %185
  %194 = load i32, i32* %11, align 4
  store i32 %194, i32* %4, align 4
  br label %210

195:                                              ; preds = %185
  %196 = load i32, i32* %15, align 4
  %197 = load i32, i32* @NFC_V1_V2_CONFIG1, align 4
  %198 = call i32 @writew(i32 %196, i32 %197)
  %199 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %8, align 8
  %200 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load i64, i64* %13, align 8
  %203 = load i32, i32* %15, align 4
  %204 = load i32, i32* @NFC_V2_CONFIG1_ONE_CYCLE, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  %207 = zext i1 %206 to i64
  %208 = select i1 %206, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  %209 = call i32 (i32, i8*, ...) @dev_dbg(i32 %201, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %202, i8* %208)
  store i32 0, i32* %4, align 4
  br label %210

210:                                              ; preds = %195, %193, %184, %173, %23
  %211 = load i32, i32* %4, align 4
  ret i32 %211
}

declare dso_local %struct.mxc_nand_host* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local %struct.nand_sdr_timings* @nand_get_sdr_timings(%struct.nand_data_interface*) #1

declare dso_local i64 @IS_ERR(%struct.nand_sdr_timings*) #1

declare dso_local i32 @readw(i32) #1

declare dso_local i64 @clk_round_rate(i32, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @clk_set_rate(i32, i64) #1

declare dso_local i32 @writew(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
