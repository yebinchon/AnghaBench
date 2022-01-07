; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_spi.c_sja1105_static_config_upload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_spi.c_sja1105_static_config_upload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1105_private = type { %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.sja1105_static_config }
%struct.TYPE_4__ = type { i32, %struct.sja1105_regs* }
%struct.sja1105_regs = type { i32 }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.sja1105_static_config = type { i32 }
%struct.sja1105_status = type { i32, i32, i32, i64 }

@SJA1105_NUM_PORTS = common dso_local global i64 0, align 8
@RETRIES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Invalid config, cannot upload\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to inhibit Tx on ports\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to reset switch, retrying...\0A\00", align 1
@SPI_WRITE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Failed to upload config, retrying...\0A\00", align 1
@.str.4 = private unnamed_addr constant [83 x i8] c"Mismatch between hardware and static config device id. Wrote 0x%llx, wants 0x%llx\0A\00", align 1
@.str.5 = private unnamed_addr constant [71 x i8] c"Switch reported invalid local CRC on the uploaded config, retrying...\0A\00", align 1
@.str.6 = private unnamed_addr constant [72 x i8] c"Switch reported invalid global CRC on the uploaded config, retrying...\0A\00", align 1
@.str.7 = private unnamed_addr constant [60 x i8] c"Switch reported that configuration is invalid, retrying...\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [46 x i8] c"Failed to upload config to device, giving up\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Succeeded after %d tried\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"Failed to reset PTP clock: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"Reset switch and programmed static config\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sja1105_static_config_upload(%struct.sja1105_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sja1105_private*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.sja1105_static_config*, align 8
  %6 = alloca %struct.sja1105_regs*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.sja1105_status, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.sja1105_private* %0, %struct.sja1105_private** %3, align 8
  %13 = load i64, i64* @SJA1105_NUM_PORTS, align 8
  %14 = sub nsw i64 %13, 1
  %15 = call i64 @GENMASK_ULL(i64 %14, i32 0)
  store i64 %15, i64* %4, align 8
  %16 = load %struct.sja1105_private*, %struct.sja1105_private** %3, align 8
  %17 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %16, i32 0, i32 2
  store %struct.sja1105_static_config* %17, %struct.sja1105_static_config** %5, align 8
  %18 = load %struct.sja1105_private*, %struct.sja1105_private** %3, align 8
  %19 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load %struct.sja1105_regs*, %struct.sja1105_regs** %21, align 8
  store %struct.sja1105_regs* %22, %struct.sja1105_regs** %6, align 8
  %23 = load %struct.sja1105_private*, %struct.sja1105_private** %3, align 8
  %24 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store %struct.device* %26, %struct.device** %7, align 8
  %27 = load i32, i32* @RETRIES, align 4
  store i32 %27, i32* %10, align 4
  %28 = load %struct.sja1105_static_config*, %struct.sja1105_static_config** %5, align 8
  %29 = call i32 @sja1105_static_config_get_length(%struct.sja1105_static_config* %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i32* @kcalloc(i32 %30, i32 1, i32 %31)
  store i32* %32, i32** %11, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %1
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %168

38:                                               ; preds = %1
  %39 = load %struct.sja1105_private*, %struct.sja1105_private** %3, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @static_config_buf_prepare_for_upload(%struct.sja1105_private* %39, i32* %40, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load %struct.device*, %struct.device** %7, align 8
  %47 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %46, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %9, align 4
  br label %164

50:                                               ; preds = %38
  %51 = load %struct.sja1105_private*, %struct.sja1105_private** %3, align 8
  %52 = load i64, i64* %4, align 8
  %53 = call i32 @sja1105_inhibit_tx(%struct.sja1105_private* %51, i64 %52, i32 1)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load %struct.device*, %struct.device** %7, align 8
  %58 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %57, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* @ENXIO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %9, align 4
  br label %164

61:                                               ; preds = %50
  %62 = call i32 @usleep_range(i32 500, i32 1000)
  br label %63

63:                                               ; preds = %129, %61
  %64 = load %struct.sja1105_private*, %struct.sja1105_private** %3, align 8
  %65 = call i32 @sja1105_cold_reset(%struct.sja1105_private* %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load %struct.device*, %struct.device** %7, align 8
  %70 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %69, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %129

71:                                               ; preds = %63
  %72 = call i32 @usleep_range(i32 1000, i32 5000)
  %73 = load %struct.sja1105_private*, %struct.sja1105_private** %3, align 8
  %74 = load i32, i32* @SPI_WRITE, align 4
  %75 = load %struct.sja1105_regs*, %struct.sja1105_regs** %6, align 8
  %76 = getelementptr inbounds %struct.sja1105_regs, %struct.sja1105_regs* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %11, align 8
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @sja1105_spi_send_long_packed_buf(%struct.sja1105_private* %73, i32 %74, i32 %77, i32* %78, i32 %79)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %71
  %84 = load %struct.device*, %struct.device** %7, align 8
  %85 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %84, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %129

86:                                               ; preds = %71
  %87 = load %struct.sja1105_private*, %struct.sja1105_private** %3, align 8
  %88 = call i32 @sja1105_status_get(%struct.sja1105_private* %87, %struct.sja1105_status* %8)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %129

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.sja1105_status, %struct.sja1105_status* %8, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %96, label %107

96:                                               ; preds = %92
  %97 = load %struct.device*, %struct.device** %7, align 8
  %98 = load %struct.sja1105_static_config*, %struct.sja1105_static_config** %5, align 8
  %99 = getelementptr inbounds %struct.sja1105_static_config, %struct.sja1105_static_config* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.sja1105_private*, %struct.sja1105_private** %3, align 8
  %102 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %101, i32 0, i32 0
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %97, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.4, i64 0, i64 0), i32 %100, i32 %105)
  br label %129

107:                                              ; preds = %92
  %108 = getelementptr inbounds %struct.sja1105_status, %struct.sja1105_status* %8, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %111, label %114

111:                                              ; preds = %107
  %112 = load %struct.device*, %struct.device** %7, align 8
  %113 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %112, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.5, i64 0, i64 0))
  br label %129

114:                                              ; preds = %107
  %115 = getelementptr inbounds %struct.sja1105_status, %struct.sja1105_status* %8, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = icmp eq i32 %116, 1
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  %119 = load %struct.device*, %struct.device** %7, align 8
  %120 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %119, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.6, i64 0, i64 0))
  br label %129

121:                                              ; preds = %114
  %122 = getelementptr inbounds %struct.sja1105_status, %struct.sja1105_status* %8, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %121
  %126 = load %struct.device*, %struct.device** %7, align 8
  %127 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %126, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i64 0, i64 0))
  br label %129

128:                                              ; preds = %121
  br label %133

129:                                              ; preds = %125, %118, %111, %96, %91, %83, %68
  %130 = load i32, i32* %10, align 4
  %131 = add nsw i32 %130, -1
  store i32 %131, i32* %10, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %63, label %133

133:                                              ; preds = %129, %128
  %134 = load i32, i32* %10, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %141, label %136

136:                                              ; preds = %133
  %137 = load i32, i32* @EIO, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %9, align 4
  %139 = load %struct.device*, %struct.device** %7, align 8
  %140 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %139, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0))
  br label %164

141:                                              ; preds = %133
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* @RETRIES, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %145, label %151

145:                                              ; preds = %141
  %146 = load %struct.device*, %struct.device** %7, align 8
  %147 = load i32, i32* @RETRIES, align 4
  %148 = load i32, i32* %10, align 4
  %149 = sub nsw i32 %147, %148
  %150 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %146, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 %149)
  br label %151

151:                                              ; preds = %145, %141
  br label %152

152:                                              ; preds = %151
  %153 = load %struct.sja1105_private*, %struct.sja1105_private** %3, align 8
  %154 = call i32 @sja1105_ptp_reset(%struct.sja1105_private* %153)
  store i32 %154, i32* %9, align 4
  %155 = load i32, i32* %9, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %152
  %158 = load %struct.device*, %struct.device** %7, align 8
  %159 = load i32, i32* %9, align 4
  %160 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %158, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i32 %159)
  br label %161

161:                                              ; preds = %157, %152
  %162 = load %struct.device*, %struct.device** %7, align 8
  %163 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %162, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0))
  br label %164

164:                                              ; preds = %161, %136, %56, %45
  %165 = load i32*, i32** %11, align 8
  %166 = call i32 @kfree(i32* %165)
  %167 = load i32, i32* %9, align 4
  store i32 %167, i32* %2, align 4
  br label %168

168:                                              ; preds = %164, %35
  %169 = load i32, i32* %2, align 4
  ret i32 %169
}

declare dso_local i64 @GENMASK_ULL(i64, i32) #1

declare dso_local i32 @sja1105_static_config_get_length(%struct.sja1105_static_config*) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @static_config_buf_prepare_for_upload(%struct.sja1105_private*, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @sja1105_inhibit_tx(%struct.sja1105_private*, i64, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @sja1105_cold_reset(%struct.sja1105_private*) #1

declare dso_local i32 @sja1105_spi_send_long_packed_buf(%struct.sja1105_private*, i32, i32, i32*, i32) #1

declare dso_local i32 @sja1105_status_get(%struct.sja1105_private*, %struct.sja1105_status*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, ...) #1

declare dso_local i32 @sja1105_ptp_reset(%struct.sja1105_private*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
