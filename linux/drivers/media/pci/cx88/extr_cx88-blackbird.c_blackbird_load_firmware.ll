; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-blackbird.c_blackbird_load_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-blackbird.c_blackbird_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx8802_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.firmware = type { i32, i64 }

@blackbird_load_firmware.magic = internal constant [8 x i8] c"\A7\0D\00\00f\BBU\AA", align 1
@IVTV_REG_VPU = common dso_local global i32 0, align 4
@IVTV_REG_HW_BLOCKS = common dso_local global i32 0, align 4
@IVTV_CMD_HW_BLOCKS_RST = common dso_local global i32 0, align 4
@IVTV_REG_ENC_SDRAM_REFRESH = common dso_local global i32 0, align 4
@IVTV_REG_ENC_SDRAM_PRECHARGE = common dso_local global i32 0, align 4
@IVTV_REG_APU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Error with register_write\0A\00", align 1
@CX2341X_FIRM_ENC_FILENAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Hotplug firmware request failed (%s).\0A\00", align 1
@.str.2 = private unnamed_addr constant [81 x i8] c"Please fix your hotplug setup, the board will not work without firmware loaded!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@BLACKBIRD_FIRM_IMAGE_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"Firmware size mismatch (have %zd, expected %d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"Firmware magic mismatch, wrong file?\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Loading firmware ...\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"Firmware load might have failed (checksum mismatch).\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Firmware upload successful.\0A\00", align 1
@IVTV_REG_SPU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx8802_dev*)* @blackbird_load_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blackbird_load_firmware(%struct.cx8802_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cx8802_dev*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.cx8802_dev* %0, %struct.cx8802_dev** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %11 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @IVTV_REG_VPU, align 4
  %14 = call i32 @register_write(i32 %12, i32 %13, i32 -19)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %16 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @IVTV_REG_HW_BLOCKS, align 4
  %19 = load i32, i32* @IVTV_CMD_HW_BLOCKS_RST, align 4
  %20 = call i32 @register_write(i32 %17, i32 %18, i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %6, align 4
  %23 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %24 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @IVTV_REG_ENC_SDRAM_REFRESH, align 4
  %27 = call i32 @register_write(i32 %25, i32 %26, i32 -2147482048)
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %31 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @IVTV_REG_ENC_SDRAM_PRECHARGE, align 4
  %34 = call i32 @register_write(i32 %32, i32 %33, i32 26)
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %6, align 4
  %37 = call i32 @usleep_range(i32 10000, i32 20000)
  %38 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %39 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @IVTV_REG_APU, align 4
  %42 = call i32 @register_write(i32 %40, i32 %41, i32 0)
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %1
  %48 = call i32 @dprintk(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %1
  %50 = load i32, i32* @CX2341X_FIRM_ENC_FILENAME, align 4
  %51 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %52 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = call i32 @request_firmware(%struct.firmware** %4, i32 %50, i32* %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %49
  %59 = load i32, i32* @CX2341X_FIRM_ENC_FILENAME, align 4
  %60 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %200

64:                                               ; preds = %49
  %65 = load %struct.firmware*, %struct.firmware** %4, align 8
  %66 = getelementptr inbounds %struct.firmware, %struct.firmware* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @BLACKBIRD_FIRM_IMAGE_SIZE, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %64
  %71 = load %struct.firmware*, %struct.firmware** %4, align 8
  %72 = getelementptr inbounds %struct.firmware, %struct.firmware* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @BLACKBIRD_FIRM_IMAGE_SIZE, align 4
  %75 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %73, i32 %74)
  %76 = load %struct.firmware*, %struct.firmware** %4, align 8
  %77 = call i32 @release_firmware(%struct.firmware* %76)
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %200

80:                                               ; preds = %64
  %81 = load %struct.firmware*, %struct.firmware** %4, align 8
  %82 = getelementptr inbounds %struct.firmware, %struct.firmware* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = call i64 @memcmp(i64 %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @blackbird_load_firmware.magic, i64 0, i64 0), i32 8)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %80
  %87 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %88 = load %struct.firmware*, %struct.firmware** %4, align 8
  %89 = call i32 @release_firmware(%struct.firmware* %88)
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %200

92:                                               ; preds = %80
  %93 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %94 = load %struct.firmware*, %struct.firmware** %4, align 8
  %95 = getelementptr inbounds %struct.firmware, %struct.firmware* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = inttoptr i64 %96 to i32*
  store i32* %97, i32** %9, align 8
  store i32 0, i32* %5, align 4
  br label %98

98:                                               ; preds = %121, %92
  %99 = load i32, i32* %5, align 4
  %100 = load %struct.firmware*, %struct.firmware** %4, align 8
  %101 = getelementptr inbounds %struct.firmware, %struct.firmware* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = ashr i32 %102, 2
  %104 = icmp slt i32 %99, %103
  br i1 %104, label %105, label %124

105:                                              ; preds = %98
  %106 = load i32*, i32** %9, align 8
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @le32_to_cpu(i32 %107)
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = xor i32 %109, -1
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %8, align 4
  %113 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %114 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @memory_write(i32 %115, i32 %116, i32 %117)
  %119 = load i32*, i32** %9, align 8
  %120 = getelementptr inbounds i32, i32* %119, i32 1
  store i32* %120, i32** %9, align 8
  br label %121

121:                                              ; preds = %105
  %122 = load i32, i32* %5, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %5, align 4
  br label %98

124:                                              ; preds = %98
  %125 = load i32, i32* %5, align 4
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* %5, align 4
  br label %127

127:                                              ; preds = %140, %124
  %128 = load i32, i32* %5, align 4
  %129 = icmp sge i32 %128, 0
  br i1 %129, label %130, label %143

130:                                              ; preds = %127
  %131 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %132 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %5, align 4
  %135 = call i32 @memory_read(i32 %133, i32 %134, i32* %7)
  %136 = load i32, i32* %7, align 4
  %137 = xor i32 %136, -1
  %138 = load i32, i32* %8, align 4
  %139 = sub nsw i32 %138, %137
  store i32 %139, i32* %8, align 4
  br label %140

140:                                              ; preds = %130
  %141 = load i32, i32* %5, align 4
  %142 = add nsw i32 %141, -1
  store i32 %142, i32* %5, align 4
  br label %127

143:                                              ; preds = %127
  %144 = load %struct.firmware*, %struct.firmware** %4, align 8
  %145 = call i32 @release_firmware(%struct.firmware* %144)
  %146 = load i32, i32* %8, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %143
  %149 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0))
  %150 = load i32, i32* @EIO, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %2, align 4
  br label %200

152:                                              ; preds = %143
  %153 = call i32 @dprintk(i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %154 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %155 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @IVTV_REG_HW_BLOCKS, align 4
  %158 = load i32, i32* @IVTV_CMD_HW_BLOCKS_RST, align 4
  %159 = call i32 @register_write(i32 %156, i32 %157, i32 %158)
  %160 = load i32, i32* %6, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %6, align 4
  %162 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %163 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @IVTV_REG_SPU, align 4
  %166 = call i32 @register_read(i32 %164, i32 %165, i32* %7)
  %167 = load i32, i32* %6, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %6, align 4
  %169 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %170 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @IVTV_REG_SPU, align 4
  %173 = load i32, i32* %7, align 4
  %174 = and i32 %173, -2
  %175 = call i32 @register_write(i32 %171, i32 %172, i32 %174)
  %176 = load i32, i32* %6, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %6, align 4
  %178 = call i32 @usleep_range(i32 10000, i32 20000)
  %179 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %180 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @IVTV_REG_VPU, align 4
  %183 = call i32 @register_read(i32 %181, i32 %182, i32* %7)
  %184 = load i32, i32* %6, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %6, align 4
  %186 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %187 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @IVTV_REG_VPU, align 4
  %190 = load i32, i32* %7, align 4
  %191 = and i32 %190, -24
  %192 = call i32 @register_write(i32 %188, i32 %189, i32 %191)
  %193 = load i32, i32* %6, align 4
  %194 = or i32 %193, %192
  store i32 %194, i32* %6, align 4
  %195 = load i32, i32* %6, align 4
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %152
  %198 = call i32 @dprintk(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %199

199:                                              ; preds = %197, %152
  store i32 0, i32* %2, align 4
  br label %200

200:                                              ; preds = %199, %148, %86, %70, %58
  %201 = load i32, i32* %2, align 4
  ret i32 %201
}

declare dso_local i32 @register_write(i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i32, i32*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i64 @memcmp(i64, i8*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @memory_write(i32, i32, i32) #1

declare dso_local i32 @memory_read(i32, i32, i32*) #1

declare dso_local i32 @register_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
