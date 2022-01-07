; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_parse_sfdp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_parse_sfdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { %struct.device* }
%struct.device = type { i32 }
%struct.spi_nor_flash_parameter = type { i32 }
%struct.sfdp_parameter_header = type { i64, i64, i64 }
%struct.sfdp_header = type { i64, i32, %struct.sfdp_parameter_header, i32 }

@SFDP_SIGNATURE = common dso_local global i64 0, align 8
@SFDP_JESD216_MAJOR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SFDP_BFPT_ID = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"failed to read SFDP parameter headers\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Failed to parse optional parameter table: %04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_nor*, %struct.spi_nor_flash_parameter*)* @spi_nor_parse_sfdp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_nor_parse_sfdp(%struct.spi_nor* %0, %struct.spi_nor_flash_parameter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_nor*, align 8
  %5 = alloca %struct.spi_nor_flash_parameter*, align 8
  %6 = alloca %struct.sfdp_parameter_header*, align 8
  %7 = alloca %struct.sfdp_parameter_header*, align 8
  %8 = alloca %struct.sfdp_parameter_header*, align 8
  %9 = alloca %struct.sfdp_header, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.spi_nor* %0, %struct.spi_nor** %4, align 8
  store %struct.spi_nor_flash_parameter* %1, %struct.spi_nor_flash_parameter** %5, align 8
  store %struct.sfdp_parameter_header* null, %struct.sfdp_parameter_header** %8, align 8
  %14 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %15 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %14, i32 0, i32 0
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %10, align 8
  %17 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %18 = call i32 @spi_nor_read_sfdp_dma_unsafe(%struct.spi_nor* %17, i32 0, i32 48, %struct.sfdp_header* %9)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %13, align 4
  store i32 %22, i32* %3, align 4
  br label %180

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.sfdp_header, %struct.sfdp_header* %9, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @le32_to_cpu(i32 %25)
  %27 = load i64, i64* @SFDP_SIGNATURE, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %34, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.sfdp_header, %struct.sfdp_header* %9, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SFDP_JESD216_MAJOR, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %29, %23
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %180

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.sfdp_header, %struct.sfdp_header* %9, i32 0, i32 2
  store %struct.sfdp_parameter_header* %38, %struct.sfdp_parameter_header** %7, align 8
  %39 = load %struct.sfdp_parameter_header*, %struct.sfdp_parameter_header** %7, align 8
  %40 = call i32 @SFDP_PARAM_HEADER_ID(%struct.sfdp_parameter_header* %39)
  %41 = load i32, i32* @SFDP_BFPT_ID, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load %struct.sfdp_parameter_header*, %struct.sfdp_parameter_header** %7, align 8
  %45 = getelementptr inbounds %struct.sfdp_parameter_header, %struct.sfdp_parameter_header* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @SFDP_JESD216_MAJOR, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43, %37
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %180

52:                                               ; preds = %43
  %53 = getelementptr inbounds %struct.sfdp_header, %struct.sfdp_header* %9, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %80

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.sfdp_header, %struct.sfdp_header* %9, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = mul i64 %59, 24
  store i64 %60, i64* %11, align 8
  %61 = load i64, i64* %11, align 8
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call %struct.sfdp_parameter_header* @kmalloc(i64 %61, i32 %62)
  store %struct.sfdp_parameter_header* %63, %struct.sfdp_parameter_header** %8, align 8
  %64 = load %struct.sfdp_parameter_header*, %struct.sfdp_parameter_header** %8, align 8
  %65 = icmp ne %struct.sfdp_parameter_header* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %56
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %180

69:                                               ; preds = %56
  %70 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %71 = load i64, i64* %11, align 8
  %72 = load %struct.sfdp_parameter_header*, %struct.sfdp_parameter_header** %8, align 8
  %73 = call i32 @spi_nor_read_sfdp(%struct.spi_nor* %70, i32 48, i64 %71, %struct.sfdp_parameter_header* %72)
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load %struct.device*, %struct.device** %10, align 8
  %78 = call i32 @dev_err(%struct.device* %77, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %176

79:                                               ; preds = %69
  br label %80

80:                                               ; preds = %79, %52
  store i32 0, i32* %12, align 4
  br label %81

81:                                               ; preds = %128, %80
  %82 = load i32, i32* %12, align 4
  %83 = getelementptr inbounds %struct.sfdp_header, %struct.sfdp_header* %9, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %82, %84
  br i1 %85, label %86, label %131

86:                                               ; preds = %81
  %87 = load %struct.sfdp_parameter_header*, %struct.sfdp_parameter_header** %8, align 8
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.sfdp_parameter_header, %struct.sfdp_parameter_header* %87, i64 %89
  store %struct.sfdp_parameter_header* %90, %struct.sfdp_parameter_header** %6, align 8
  %91 = load %struct.sfdp_parameter_header*, %struct.sfdp_parameter_header** %6, align 8
  %92 = call i32 @SFDP_PARAM_HEADER_ID(%struct.sfdp_parameter_header* %91)
  %93 = load i32, i32* @SFDP_BFPT_ID, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %127

95:                                               ; preds = %86
  %96 = load %struct.sfdp_parameter_header*, %struct.sfdp_parameter_header** %6, align 8
  %97 = getelementptr inbounds %struct.sfdp_parameter_header, %struct.sfdp_parameter_header* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @SFDP_JESD216_MAJOR, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %127

101:                                              ; preds = %95
  %102 = load %struct.sfdp_parameter_header*, %struct.sfdp_parameter_header** %6, align 8
  %103 = getelementptr inbounds %struct.sfdp_parameter_header, %struct.sfdp_parameter_header* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.sfdp_parameter_header*, %struct.sfdp_parameter_header** %7, align 8
  %106 = getelementptr inbounds %struct.sfdp_parameter_header, %struct.sfdp_parameter_header* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp sgt i64 %104, %107
  br i1 %108, label %125, label %109

109:                                              ; preds = %101
  %110 = load %struct.sfdp_parameter_header*, %struct.sfdp_parameter_header** %6, align 8
  %111 = getelementptr inbounds %struct.sfdp_parameter_header, %struct.sfdp_parameter_header* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.sfdp_parameter_header*, %struct.sfdp_parameter_header** %7, align 8
  %114 = getelementptr inbounds %struct.sfdp_parameter_header, %struct.sfdp_parameter_header* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %112, %115
  br i1 %116, label %117, label %127

117:                                              ; preds = %109
  %118 = load %struct.sfdp_parameter_header*, %struct.sfdp_parameter_header** %6, align 8
  %119 = getelementptr inbounds %struct.sfdp_parameter_header, %struct.sfdp_parameter_header* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.sfdp_parameter_header*, %struct.sfdp_parameter_header** %7, align 8
  %122 = getelementptr inbounds %struct.sfdp_parameter_header, %struct.sfdp_parameter_header* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = icmp sgt i64 %120, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %117, %101
  %126 = load %struct.sfdp_parameter_header*, %struct.sfdp_parameter_header** %6, align 8
  store %struct.sfdp_parameter_header* %126, %struct.sfdp_parameter_header** %7, align 8
  br label %127

127:                                              ; preds = %125, %117, %109, %95, %86
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %12, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %12, align 4
  br label %81

131:                                              ; preds = %81
  %132 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %133 = load %struct.sfdp_parameter_header*, %struct.sfdp_parameter_header** %7, align 8
  %134 = load %struct.spi_nor_flash_parameter*, %struct.spi_nor_flash_parameter** %5, align 8
  %135 = call i32 @spi_nor_parse_bfpt(%struct.spi_nor* %132, %struct.sfdp_parameter_header* %133, %struct.spi_nor_flash_parameter* %134)
  store i32 %135, i32* %13, align 4
  %136 = load i32, i32* %13, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %131
  br label %176

139:                                              ; preds = %131
  store i32 0, i32* %12, align 4
  br label %140

140:                                              ; preds = %172, %139
  %141 = load i32, i32* %12, align 4
  %142 = getelementptr inbounds %struct.sfdp_header, %struct.sfdp_header* %9, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = icmp slt i32 %141, %143
  br i1 %144, label %145, label %175

145:                                              ; preds = %140
  %146 = load %struct.sfdp_parameter_header*, %struct.sfdp_parameter_header** %8, align 8
  %147 = load i32, i32* %12, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.sfdp_parameter_header, %struct.sfdp_parameter_header* %146, i64 %148
  store %struct.sfdp_parameter_header* %149, %struct.sfdp_parameter_header** %6, align 8
  %150 = load %struct.sfdp_parameter_header*, %struct.sfdp_parameter_header** %6, align 8
  %151 = call i32 @SFDP_PARAM_HEADER_ID(%struct.sfdp_parameter_header* %150)
  switch i32 %151, label %162 [
    i32 128, label %152
    i32 129, label %157
  ]

152:                                              ; preds = %145
  %153 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %154 = load %struct.sfdp_parameter_header*, %struct.sfdp_parameter_header** %6, align 8
  %155 = load %struct.spi_nor_flash_parameter*, %struct.spi_nor_flash_parameter** %5, align 8
  %156 = call i32 @spi_nor_parse_smpt(%struct.spi_nor* %153, %struct.sfdp_parameter_header* %154, %struct.spi_nor_flash_parameter* %155)
  store i32 %156, i32* %13, align 4
  br label %163

157:                                              ; preds = %145
  %158 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %159 = load %struct.sfdp_parameter_header*, %struct.sfdp_parameter_header** %6, align 8
  %160 = load %struct.spi_nor_flash_parameter*, %struct.spi_nor_flash_parameter** %5, align 8
  %161 = call i32 @spi_nor_parse_4bait(%struct.spi_nor* %158, %struct.sfdp_parameter_header* %159, %struct.spi_nor_flash_parameter* %160)
  store i32 %161, i32* %13, align 4
  br label %163

162:                                              ; preds = %145
  br label %163

163:                                              ; preds = %162, %157, %152
  %164 = load i32, i32* %13, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %163
  %167 = load %struct.device*, %struct.device** %10, align 8
  %168 = load %struct.sfdp_parameter_header*, %struct.sfdp_parameter_header** %6, align 8
  %169 = call i32 @SFDP_PARAM_HEADER_ID(%struct.sfdp_parameter_header* %168)
  %170 = call i32 @dev_warn(%struct.device* %167, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %169)
  store i32 0, i32* %13, align 4
  br label %171

171:                                              ; preds = %166, %163
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %12, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %12, align 4
  br label %140

175:                                              ; preds = %140
  br label %176

176:                                              ; preds = %175, %138, %76
  %177 = load %struct.sfdp_parameter_header*, %struct.sfdp_parameter_header** %8, align 8
  %178 = call i32 @kfree(%struct.sfdp_parameter_header* %177)
  %179 = load i32, i32* %13, align 4
  store i32 %179, i32* %3, align 4
  br label %180

180:                                              ; preds = %176, %66, %49, %34, %21
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local i32 @spi_nor_read_sfdp_dma_unsafe(%struct.spi_nor*, i32, i32, %struct.sfdp_header*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @SFDP_PARAM_HEADER_ID(%struct.sfdp_parameter_header*) #1

declare dso_local %struct.sfdp_parameter_header* @kmalloc(i64, i32) #1

declare dso_local i32 @spi_nor_read_sfdp(%struct.spi_nor*, i32, i64, %struct.sfdp_parameter_header*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @spi_nor_parse_bfpt(%struct.spi_nor*, %struct.sfdp_parameter_header*, %struct.spi_nor_flash_parameter*) #1

declare dso_local i32 @spi_nor_parse_smpt(%struct.spi_nor*, %struct.sfdp_parameter_header*, %struct.spi_nor_flash_parameter*) #1

declare dso_local i32 @spi_nor_parse_4bait(%struct.spi_nor*, %struct.sfdp_parameter_header*, %struct.spi_nor_flash_parameter*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.sfdp_parameter_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
