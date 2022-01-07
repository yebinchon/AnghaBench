; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_eeprom.c_eeprom_update_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_eeprom.c_eeprom_update_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.eeprom_data = type { i32, i32*, i32, i64* }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Starting eeprom update, slice %u\0A\00", align 1
@I2C_FUNC_SMBUS_READ_I2C_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*, i32)* @eeprom_update_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eeprom_update_client(%struct.i2c_client* %0, i32 %1) #0 {
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.eeprom_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %9 = call %struct.eeprom_data* @i2c_get_clientdata(%struct.i2c_client* %8)
  store %struct.eeprom_data* %9, %struct.eeprom_data** %5, align 8
  %10 = load %struct.eeprom_data*, %struct.eeprom_data** %5, align 8
  %11 = getelementptr inbounds %struct.eeprom_data, %struct.eeprom_data* %10, i32 0, i32 2
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.eeprom_data*, %struct.eeprom_data** %5, align 8
  %14 = getelementptr inbounds %struct.eeprom_data, %struct.eeprom_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = shl i32 1, %16
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %2
  %21 = load i64, i64* @jiffies, align 8
  %22 = load %struct.eeprom_data*, %struct.eeprom_data** %5, align 8
  %23 = getelementptr inbounds %struct.eeprom_data, %struct.eeprom_data* %22, i32 0, i32 3
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* @HZ, align 4
  %30 = mul nsw i32 300, %29
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %28, %31
  %33 = call i64 @time_after(i64 %21, i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %124

35:                                               ; preds = %20, %2
  %36 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 1
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @dev_dbg(i32* %37, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @I2C_FUNC_SMBUS_READ_I2C_BLOCK, align 4
  %44 = call i64 @i2c_check_functionality(i32 %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %72

46:                                               ; preds = %35
  %47 = load i32, i32* %4, align 4
  %48 = shl i32 %47, 5
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %68, %46
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  %53 = shl i32 %52, 5
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %71

55:                                               ; preds = %49
  %56 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.eeprom_data*, %struct.eeprom_data** %5, align 8
  %59 = getelementptr inbounds %struct.eeprom_data, %struct.eeprom_data* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = call i32 @i2c_smbus_read_i2c_block_data(%struct.i2c_client* %56, i32 %57, i32 32, i32* %63)
  %65 = icmp ne i32 %64, 32
  br i1 %65, label %66, label %67

66:                                               ; preds = %55
  br label %125

67:                                               ; preds = %55
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 32
  store i32 %70, i32* %6, align 4
  br label %49

71:                                               ; preds = %49
  br label %110

72:                                               ; preds = %35
  %73 = load i32, i32* %4, align 4
  %74 = shl i32 %73, 5
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %106, %72
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, 1
  %79 = shl i32 %78, 5
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %109

81:                                               ; preds = %75
  %82 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %82, i32 %83)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %125

88:                                               ; preds = %81
  %89 = load i32, i32* %7, align 4
  %90 = and i32 %89, 255
  %91 = load %struct.eeprom_data*, %struct.eeprom_data** %5, align 8
  %92 = getelementptr inbounds %struct.eeprom_data, %struct.eeprom_data* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32 %90, i32* %96, align 4
  %97 = load i32, i32* %7, align 4
  %98 = ashr i32 %97, 8
  %99 = load %struct.eeprom_data*, %struct.eeprom_data** %5, align 8
  %100 = getelementptr inbounds %struct.eeprom_data, %struct.eeprom_data* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %101, i64 %104
  store i32 %98, i32* %105, align 4
  br label %106

106:                                              ; preds = %88
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %107, 2
  store i32 %108, i32* %6, align 4
  br label %75

109:                                              ; preds = %75
  br label %110

110:                                              ; preds = %109, %71
  %111 = load i64, i64* @jiffies, align 8
  %112 = load %struct.eeprom_data*, %struct.eeprom_data** %5, align 8
  %113 = getelementptr inbounds %struct.eeprom_data, %struct.eeprom_data* %112, i32 0, i32 3
  %114 = load i64*, i64** %113, align 8
  %115 = load i32, i32* %4, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %114, i64 %116
  store i64 %111, i64* %117, align 8
  %118 = load i32, i32* %4, align 4
  %119 = shl i32 1, %118
  %120 = load %struct.eeprom_data*, %struct.eeprom_data** %5, align 8
  %121 = getelementptr inbounds %struct.eeprom_data, %struct.eeprom_data* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 8
  br label %124

124:                                              ; preds = %110, %20
  br label %125

125:                                              ; preds = %124, %87, %66
  %126 = load %struct.eeprom_data*, %struct.eeprom_data** %5, align 8
  %127 = getelementptr inbounds %struct.eeprom_data, %struct.eeprom_data* %126, i32 0, i32 2
  %128 = call i32 @mutex_unlock(i32* %127)
  ret void
}

declare dso_local %struct.eeprom_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i64 @i2c_check_functionality(i32, i32) #1

declare dso_local i32 @i2c_smbus_read_i2c_block_data(%struct.i2c_client*, i32, i32, i32*) #1

declare dso_local i32 @i2c_smbus_read_word_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
