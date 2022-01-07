; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_ee1004.c_ee1004_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_ee1004.c_ee1004_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.i2c_client = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.i2c_device_id = type { i32 }

@I2C_FUNC_SMBUS_READ_BYTE = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_READ_I2C_BLOCK = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_READ_WORD_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"word\00", align 1
@I2C_FUNC_SMBUS_READ_BYTE_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"byte\00", align 1
@EPFNOSUPPORT = common dso_local global i32 0, align 4
@ee1004_bus_lock = common dso_local global i32 0, align 4
@ee1004_dev_count = common dso_local global i32 0, align 4
@EE1004_ADDR_SET_PAGE = common dso_local global i64 0, align 8
@ee1004_set_page = common dso_local global %struct.TYPE_10__** null, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"address 0x%02x unavailable\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"Driver only supports devices on a single I2C bus\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ee1004_current_page = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Currently selected page: %d\0A\00", align 1
@eeprom_attr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"%u byte EE1004-compliant SPD EEPROM, read-only\0A\00", align 1
@EE1004_EEPROM_SIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [51 x i8] c"Falling back to %s reads, performance will suffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ee1004_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ee1004_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  store i32 0, i32* %7, align 4
  store i8* null, i8** %8, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @I2C_FUNC_SMBUS_READ_BYTE, align 4
  %13 = load i32, i32* @I2C_FUNC_SMBUS_READ_I2C_BLOCK, align 4
  %14 = or i32 %12, %13
  %15 = call i64 @i2c_check_functionality(i32 %11, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %42, label %17

17:                                               ; preds = %2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @I2C_FUNC_SMBUS_READ_BYTE, align 4
  %22 = load i32, i32* @I2C_FUNC_SMBUS_READ_WORD_DATA, align 4
  %23 = or i32 %21, %22
  %24 = call i64 @i2c_check_functionality(i32 %20, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %41

27:                                               ; preds = %17
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @I2C_FUNC_SMBUS_READ_BYTE, align 4
  %32 = load i32, i32* @I2C_FUNC_SMBUS_READ_BYTE_DATA, align 4
  %33 = or i32 %31, %32
  %34 = call i64 @i2c_check_functionality(i32 %30, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %40

37:                                               ; preds = %27
  %38 = load i32, i32* @EPFNOSUPPORT, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %171

40:                                               ; preds = %36
  br label %41

41:                                               ; preds = %40, %26
  br label %42

42:                                               ; preds = %41, %2
  %43 = call i32 @mutex_lock(i32* @ee1004_bus_lock)
  %44 = load i32, i32* @ee1004_dev_count, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* @ee1004_dev_count, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %90

47:                                               ; preds = %42
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %86, %47
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 2
  br i1 %50, label %51, label %89

51:                                               ; preds = %48
  %52 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %53 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* @EE1004_ADDR_SET_PAGE, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %55, %57
  %59 = call %struct.TYPE_10__* @i2c_new_dummy_device(i32 %54, i64 %58)
  %60 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @ee1004_set_page, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %60, i64 %62
  store %struct.TYPE_10__* %59, %struct.TYPE_10__** %63, align 8
  %64 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @ee1004_set_page, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %64, i64 %66
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = call i64 @IS_ERR(%struct.TYPE_10__* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %51
  %72 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %73 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %72, i32 0, i32 0
  %74 = load i64, i64* @EE1004_ADDR_SET_PAGE, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %74, %76
  %78 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %73, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %77)
  %79 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @ee1004_set_page, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %79, i64 %81
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = call i32 @PTR_ERR(%struct.TYPE_10__* %83)
  store i32 %84, i32* %6, align 4
  br label %143

85:                                               ; preds = %51
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %7, align 4
  br label %48

89:                                               ; preds = %48
  br label %109

90:                                               ; preds = %42
  %91 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %92 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @i2c_adapter_id(i32 %93)
  %95 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @ee1004_set_page, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %95, i64 0
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @i2c_adapter_id(i32 %99)
  %101 = icmp ne i64 %94, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %90
  %103 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %104 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %103, i32 0, i32 0
  %105 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %104, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  %106 = load i32, i32* @EOPNOTSUPP, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %6, align 4
  br label %143

108:                                              ; preds = %90
  br label %109

109:                                              ; preds = %108, %89
  %110 = call i32 (...) @ee1004_get_current_page()
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* %6, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  br label %143

114:                                              ; preds = %109
  %115 = load i32, i32* %6, align 4
  store i32 %115, i32* @ee1004_current_page, align 4
  %116 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %117 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %116, i32 0, i32 0
  %118 = load i32, i32* @ee1004_current_page, align 4
  %119 = call i32 @dev_dbg(%struct.TYPE_11__* %117, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %118)
  %120 = call i32 @mutex_unlock(i32* @ee1004_bus_lock)
  %121 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %122 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  %124 = call i32 @sysfs_create_bin_file(i32* %123, i32* @eeprom_attr)
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %6, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %114
  br label %141

128:                                              ; preds = %114
  %129 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %130 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %129, i32 0, i32 0
  %131 = load i32, i32* @EE1004_EEPROM_SIZE, align 4
  %132 = call i32 @dev_info(%struct.TYPE_11__* %130, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %131)
  %133 = load i8*, i8** %8, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %140

135:                                              ; preds = %128
  %136 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %137 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %136, i32 0, i32 0
  %138 = load i8*, i8** %8, align 8
  %139 = call i32 @dev_notice(%struct.TYPE_11__* %137, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i8* %138)
  br label %140

140:                                              ; preds = %135, %128
  store i32 0, i32* %3, align 4
  br label %171

141:                                              ; preds = %127
  %142 = call i32 @mutex_lock(i32* @ee1004_bus_lock)
  br label %143

143:                                              ; preds = %141, %113, %102, %71
  %144 = load i32, i32* @ee1004_dev_count, align 4
  %145 = add nsw i32 %144, -1
  store i32 %145, i32* @ee1004_dev_count, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %168

147:                                              ; preds = %143
  %148 = load i32, i32* %7, align 4
  %149 = add nsw i32 %148, -1
  store i32 %149, i32* %7, align 4
  br label %150

150:                                              ; preds = %164, %147
  %151 = load i32, i32* %7, align 4
  %152 = icmp sge i32 %151, 0
  br i1 %152, label %153, label %167

153:                                              ; preds = %150
  %154 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @ee1004_set_page, align 8
  %155 = load i32, i32* %7, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %154, i64 %156
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %157, align 8
  %159 = call i32 @i2c_unregister_device(%struct.TYPE_10__* %158)
  %160 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @ee1004_set_page, align 8
  %161 = load i32, i32* %7, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %160, i64 %162
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %163, align 8
  br label %164

164:                                              ; preds = %153
  %165 = load i32, i32* %7, align 4
  %166 = add nsw i32 %165, -1
  store i32 %166, i32* %7, align 4
  br label %150

167:                                              ; preds = %150
  br label %168

168:                                              ; preds = %167, %143
  %169 = call i32 @mutex_unlock(i32* @ee1004_bus_lock)
  %170 = load i32, i32* %6, align 4
  store i32 %170, i32* %3, align 4
  br label %171

171:                                              ; preds = %168, %140, %37
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

declare dso_local i64 @i2c_check_functionality(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_10__* @i2c_new_dummy_device(i32, i64) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_10__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_10__*) #1

declare dso_local i64 @i2c_adapter_id(i32) #1

declare dso_local i32 @ee1004_get_current_page(...) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sysfs_create_bin_file(i32*, i32*) #1

declare dso_local i32 @dev_info(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @dev_notice(%struct.TYPE_11__*, i8*, i8*) #1

declare dso_local i32 @i2c_unregister_device(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
