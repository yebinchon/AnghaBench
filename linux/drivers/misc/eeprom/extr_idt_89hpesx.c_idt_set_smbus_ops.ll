; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_idt_89hpesx.c_idt_set_smbus_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_idt_89hpesx.c_idt_set_smbus_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt_89hpesx_dev = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device, %struct.i2c_adapter* }
%struct.device = type { i32 }
%struct.i2c_adapter = type { i32 }

@I2C_FUNC_SMBUS_READ_BLOCK_DATA = common dso_local global i32 0, align 4
@idt_smb_read_block = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"SMBus block-read op chosen\00", align 1
@I2C_FUNC_SMBUS_READ_I2C_BLOCK = common dso_local global i32 0, align 4
@idt_smb_read_i2c_block = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"SMBus i2c-block-read op chosen\00", align 1
@I2C_FUNC_SMBUS_READ_WORD_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_READ_BYTE_DATA = common dso_local global i32 0, align 4
@idt_smb_read_word = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Use slow word/byte SMBus read ops\00", align 1
@idt_smb_read_byte = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Use slow byte SMBus read op\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"No supported SMBus read op\00", align 1
@EPFNOSUPPORT = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WRITE_BLOCK_DATA = common dso_local global i32 0, align 4
@idt_smb_write_block = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"SMBus block-write op chosen\00", align 1
@I2C_FUNC_SMBUS_WRITE_I2C_BLOCK = common dso_local global i32 0, align 4
@idt_smb_write_i2c_block = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"SMBus i2c-block-write op chosen\00", align 1
@I2C_FUNC_SMBUS_WRITE_WORD_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WRITE_BYTE_DATA = common dso_local global i32 0, align 4
@idt_smb_write_word = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"Use slow word/byte SMBus write op\00", align 1
@idt_smb_write_byte = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"Use slow byte SMBus write op\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"No supported SMBus write op\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idt_89hpesx_dev*)* @idt_set_smbus_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idt_set_smbus_ops(%struct.idt_89hpesx_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.idt_89hpesx_dev*, align 8
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.idt_89hpesx_dev* %0, %struct.idt_89hpesx_dev** %3, align 8
  %6 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %3, align 8
  %7 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %6, i32 0, i32 3
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  store %struct.i2c_adapter* %10, %struct.i2c_adapter** %4, align 8
  %11 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %3, align 8
  %12 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %11, i32 0, i32 3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %5, align 8
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %16 = load i32, i32* @I2C_FUNC_SMBUS_READ_BLOCK_DATA, align 4
  %17 = call i64 @i2c_check_functionality(%struct.i2c_adapter* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load i32, i32* @idt_smb_read_block, align 4
  %21 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %3, align 8
  %22 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load %struct.device*, %struct.device** %5, align 8
  %24 = call i32 @dev_dbg(%struct.device* %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %71

25:                                               ; preds = %1
  %26 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %27 = load i32, i32* @I2C_FUNC_SMBUS_READ_I2C_BLOCK, align 4
  %28 = call i64 @i2c_check_functionality(%struct.i2c_adapter* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load i32, i32* @idt_smb_read_i2c_block, align 4
  %32 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %3, align 8
  %33 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.device*, %struct.device** %5, align 8
  %35 = call i32 @dev_dbg(%struct.device* %34, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %70

36:                                               ; preds = %25
  %37 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %38 = load i32, i32* @I2C_FUNC_SMBUS_READ_WORD_DATA, align 4
  %39 = call i64 @i2c_check_functionality(%struct.i2c_adapter* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %36
  %42 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %43 = load i32, i32* @I2C_FUNC_SMBUS_READ_BYTE_DATA, align 4
  %44 = call i64 @i2c_check_functionality(%struct.i2c_adapter* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load i32, i32* @idt_smb_read_word, align 4
  %48 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %3, align 8
  %49 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.device*, %struct.device** %5, align 8
  %51 = call i32 @dev_warn(%struct.device* %50, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %69

52:                                               ; preds = %41, %36
  %53 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %54 = load i32, i32* @I2C_FUNC_SMBUS_READ_BYTE_DATA, align 4
  %55 = call i64 @i2c_check_functionality(%struct.i2c_adapter* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load i32, i32* @idt_smb_read_byte, align 4
  %59 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %3, align 8
  %60 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load %struct.device*, %struct.device** %5, align 8
  %62 = call i32 @dev_warn(%struct.device* %61, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %68

63:                                               ; preds = %52
  %64 = load %struct.device*, %struct.device** %5, align 8
  %65 = call i32 @dev_err(%struct.device* %64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %66 = load i32, i32* @EPFNOSUPPORT, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %132

68:                                               ; preds = %57
  br label %69

69:                                               ; preds = %68, %46
  br label %70

70:                                               ; preds = %69, %30
  br label %71

71:                                               ; preds = %70, %19
  %72 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %73 = load i32, i32* @I2C_FUNC_SMBUS_WRITE_BLOCK_DATA, align 4
  %74 = call i64 @i2c_check_functionality(%struct.i2c_adapter* %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load i32, i32* @idt_smb_write_block, align 4
  %78 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %3, align 8
  %79 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load %struct.device*, %struct.device** %5, align 8
  %81 = call i32 @dev_dbg(%struct.device* %80, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %128

82:                                               ; preds = %71
  %83 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %84 = load i32, i32* @I2C_FUNC_SMBUS_WRITE_I2C_BLOCK, align 4
  %85 = call i64 @i2c_check_functionality(%struct.i2c_adapter* %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load i32, i32* @idt_smb_write_i2c_block, align 4
  %89 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %3, align 8
  %90 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.device*, %struct.device** %5, align 8
  %92 = call i32 @dev_dbg(%struct.device* %91, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  br label %127

93:                                               ; preds = %82
  %94 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %95 = load i32, i32* @I2C_FUNC_SMBUS_WRITE_WORD_DATA, align 4
  %96 = call i64 @i2c_check_functionality(%struct.i2c_adapter* %94, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %93
  %99 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %100 = load i32, i32* @I2C_FUNC_SMBUS_WRITE_BYTE_DATA, align 4
  %101 = call i64 @i2c_check_functionality(%struct.i2c_adapter* %99, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %98
  %104 = load i32, i32* @idt_smb_write_word, align 4
  %105 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %3, align 8
  %106 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load %struct.device*, %struct.device** %5, align 8
  %108 = call i32 @dev_warn(%struct.device* %107, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  br label %126

109:                                              ; preds = %98, %93
  %110 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %111 = load i32, i32* @I2C_FUNC_SMBUS_WRITE_BYTE_DATA, align 4
  %112 = call i64 @i2c_check_functionality(%struct.i2c_adapter* %110, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %109
  %115 = load i32, i32* @idt_smb_write_byte, align 4
  %116 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %3, align 8
  %117 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load %struct.device*, %struct.device** %5, align 8
  %119 = call i32 @dev_warn(%struct.device* %118, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  br label %125

120:                                              ; preds = %109
  %121 = load %struct.device*, %struct.device** %5, align 8
  %122 = call i32 @dev_err(%struct.device* %121, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %123 = load i32, i32* @EPFNOSUPPORT, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %2, align 4
  br label %132

125:                                              ; preds = %114
  br label %126

126:                                              ; preds = %125, %103
  br label %127

127:                                              ; preds = %126, %87
  br label %128

128:                                              ; preds = %127, %76
  %129 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %3, align 8
  %130 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %129, i32 0, i32 0
  %131 = call i32 @mutex_init(i32* %130)
  store i32 0, i32* %2, align 4
  br label %132

132:                                              ; preds = %128, %120, %63
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i64 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
