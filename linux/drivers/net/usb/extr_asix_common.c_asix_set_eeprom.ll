; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_asix_common.c_asix_set_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_asix_common.c_asix_set_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i32, i64, i32 }
%struct.usbnet = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"write EEPROM len %d, offset %d, magic 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AX_EEPROM_MAGIC = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AX_CMD_READ_EEPROM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Failed to read EEPROM at offset 0x%02x.\0A\00", align 1
@AX_CMD_WRITE_ENABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to enable EEPROM write\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"write to EEPROM at offset 0x%02x, data 0x%04x\0A\00", align 1
@AX_CMD_WRITE_EEPROM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"Failed to write EEPROM at offset 0x%02x.\0A\00", align 1
@AX_CMD_WRITE_DISABLE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"Failed to disable EEPROM write\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asix_set_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.usbnet*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.usbnet* @netdev_priv(%struct.net_device* %14)
  store %struct.usbnet* %15, %struct.usbnet** %8, align 8
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %18 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %21 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %24 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 (%struct.net_device*, i8*, i32, i32, ...) @netdev_dbg(%struct.net_device* %16, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22, i64 %25)
  %27 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %28 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %191

34:                                               ; preds = %3
  %35 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %36 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @AX_EEPROM_MAGIC, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %191

43:                                               ; preds = %34
  %44 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %45 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = ashr i32 %46, 1
  store i32 %47, i32* %10, align 4
  %48 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %49 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %52 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %50, %53
  %55 = sub nsw i32 %54, 1
  %56 = ashr i32 %55, 1
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %10, align 4
  %59 = sub nsw i32 %57, %58
  %60 = add nsw i32 %59, 1
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call i32* @kmalloc_array(i32 %60, i32 4, i32 %61)
  store i32* %62, i32** %9, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %43
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %191

68:                                               ; preds = %43
  %69 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %70 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = and i32 %71, 1
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %68
  %75 = load %struct.usbnet*, %struct.usbnet** %8, align 8
  %76 = load i32, i32* @AX_CMD_READ_EEPROM, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load i32*, i32** %9, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = call i32 @asix_read_cmd(%struct.usbnet* %75, i32 %76, i32 %77, i32 0, i32 2, i32* %79, i32 0)
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %13, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %74
  %84 = load %struct.net_device*, %struct.net_device** %5, align 8
  %85 = load i32, i32* %10, align 4
  %86 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %84, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  br label %187

87:                                               ; preds = %74
  br label %88

88:                                               ; preds = %87, %68
  %89 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %90 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %93 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %91, %94
  %96 = and i32 %95, 1
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %116

98:                                               ; preds = %88
  %99 = load %struct.usbnet*, %struct.usbnet** %8, align 8
  %100 = load i32, i32* @AX_CMD_READ_EEPROM, align 4
  %101 = load i32, i32* %11, align 4
  %102 = load i32*, i32** %9, align 8
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %10, align 4
  %105 = sub nsw i32 %103, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %102, i64 %106
  %108 = call i32 @asix_read_cmd(%struct.usbnet* %99, i32 %100, i32 %101, i32 0, i32 2, i32* %107, i32 0)
  store i32 %108, i32* %13, align 4
  %109 = load i32, i32* %13, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %98
  %112 = load %struct.net_device*, %struct.net_device** %5, align 8
  %113 = load i32, i32* %11, align 4
  %114 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %112, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %113)
  br label %187

115:                                              ; preds = %98
  br label %116

116:                                              ; preds = %115, %88
  %117 = load i32*, i32** %9, align 8
  %118 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %119 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = and i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %117, i64 %122
  %124 = load i32*, i32** %7, align 8
  %125 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %126 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @memcpy(i32* %123, i32* %124, i32 %127)
  %129 = load %struct.usbnet*, %struct.usbnet** %8, align 8
  %130 = load i32, i32* @AX_CMD_WRITE_ENABLE, align 4
  %131 = call i32 @asix_write_cmd(%struct.usbnet* %129, i32 %130, i32 0, i32 0, i32 0, i32* null, i32 0)
  store i32 %131, i32* %13, align 4
  %132 = load i32, i32* %13, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %116
  %135 = load %struct.net_device*, %struct.net_device** %5, align 8
  %136 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %135, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %187

137:                                              ; preds = %116
  %138 = call i32 @msleep(i32 20)
  %139 = load i32, i32* %10, align 4
  store i32 %139, i32* %12, align 4
  br label %140

140:                                              ; preds = %174, %137
  %141 = load i32, i32* %12, align 4
  %142 = load i32, i32* %11, align 4
  %143 = icmp sle i32 %141, %142
  br i1 %143, label %144, label %177

144:                                              ; preds = %140
  %145 = load %struct.net_device*, %struct.net_device** %5, align 8
  %146 = load i32, i32* %12, align 4
  %147 = load i32*, i32** %9, align 8
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* %10, align 4
  %150 = sub nsw i32 %148, %149
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %147, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = call i32 (%struct.net_device*, i8*, i32, i32, ...) @netdev_dbg(%struct.net_device* %145, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %146, i32 %153)
  %155 = load %struct.usbnet*, %struct.usbnet** %8, align 8
  %156 = load i32, i32* @AX_CMD_WRITE_EEPROM, align 4
  %157 = load i32, i32* %12, align 4
  %158 = load i32*, i32** %9, align 8
  %159 = load i32, i32* %12, align 4
  %160 = load i32, i32* %10, align 4
  %161 = sub nsw i32 %159, %160
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %158, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @asix_write_cmd(%struct.usbnet* %155, i32 %156, i32 %157, i32 %164, i32 0, i32* null, i32 0)
  store i32 %165, i32* %13, align 4
  %166 = load i32, i32* %13, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %144
  %169 = load %struct.net_device*, %struct.net_device** %5, align 8
  %170 = load i32, i32* %12, align 4
  %171 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %169, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %170)
  br label %187

172:                                              ; preds = %144
  %173 = call i32 @msleep(i32 20)
  br label %174

174:                                              ; preds = %172
  %175 = load i32, i32* %12, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %12, align 4
  br label %140

177:                                              ; preds = %140
  %178 = load %struct.usbnet*, %struct.usbnet** %8, align 8
  %179 = load i32, i32* @AX_CMD_WRITE_DISABLE, align 4
  %180 = call i32 @asix_write_cmd(%struct.usbnet* %178, i32 %179, i32 0, i32 0, i32 0, i32* null, i32 0)
  store i32 %180, i32* %13, align 4
  %181 = load i32, i32* %13, align 4
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %177
  %184 = load %struct.net_device*, %struct.net_device** %5, align 8
  %185 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %184, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %187

186:                                              ; preds = %177
  store i32 0, i32* %13, align 4
  br label %187

187:                                              ; preds = %186, %183, %168, %134, %111, %83
  %188 = load i32*, i32** %9, align 8
  %189 = call i32 @kfree(i32* %188)
  %190 = load i32, i32* %13, align 4
  store i32 %190, i32* %4, align 4
  br label %191

191:                                              ; preds = %187, %65, %40, %31
  %192 = load i32, i32* %4, align 4
  ret i32 %192
}

declare dso_local %struct.usbnet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32, i32, ...) #1

declare dso_local i32* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @asix_read_cmd(%struct.usbnet*, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @asix_write_cmd(%struct.usbnet*, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
