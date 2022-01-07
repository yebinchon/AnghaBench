; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_eeprom_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_eeprom_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et131x_adapter = type { %struct.pci_dev* }
%struct.pci_dev = type { i64 }

@LBCIF_CONTROL_REGISTER = common dso_local global i32 0, align 4
@LBCIF_CONTROL_LBCIF_ENABLE = common dso_local global i32 0, align 4
@LBCIF_CONTROL_I2C_WRITE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@MAX_NUM_WRITE_RETRIES = common dso_local global i32 0, align 4
@LBCIF_ADDRESS_REGISTER = common dso_local global i32 0, align 4
@LBCIF_DATA_REGISTER = common dso_local global i32 0, align 4
@LBCIF_STATUS_GENERAL_ERROR = common dso_local global i32 0, align 4
@LBCIF_STATUS_ACK_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.et131x_adapter*, i32, i32)* @eeprom_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eeprom_write(%struct.et131x_adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.et131x_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.et131x_adapter* %0, %struct.et131x_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.et131x_adapter*, %struct.et131x_adapter** %5, align 8
  %16 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %15, i32 0, i32 0
  %17 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  store %struct.pci_dev* %17, %struct.pci_dev** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %18 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %19 = call i32 @eeprom_wait_ready(%struct.pci_dev* %18, i32* null)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %4, align 4
  br label %132

24:                                               ; preds = %3
  %25 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %26 = load i32, i32* @LBCIF_CONTROL_REGISTER, align 4
  %27 = load i32, i32* @LBCIF_CONTROL_LBCIF_ENABLE, align 4
  %28 = load i32, i32* @LBCIF_CONTROL_I2C_WRITE, align 4
  %29 = or i32 %27, %28
  %30 = call i64 @pci_write_config_byte(%struct.pci_dev* %25, i32 %26, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %132

35:                                               ; preds = %24
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %81, %35
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @MAX_NUM_WRITE_RETRIES, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %84

40:                                               ; preds = %36
  %41 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %42 = load i32, i32* @LBCIF_ADDRESS_REGISTER, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @pci_write_config_dword(%struct.pci_dev* %41, i32 %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %84

47:                                               ; preds = %40
  %48 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %49 = load i32, i32* @LBCIF_DATA_REGISTER, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i64 @pci_write_config_byte(%struct.pci_dev* %48, i32 %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %84

54:                                               ; preds = %47
  %55 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %56 = call i32 @eeprom_wait_ready(%struct.pci_dev* %55, i32* %13)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %132

60:                                               ; preds = %54
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* @LBCIF_STATUS_GENERAL_ERROR, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %60
  %66 = load %struct.et131x_adapter*, %struct.et131x_adapter** %5, align 8
  %67 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %66, i32 0, i32 0
  %68 = load %struct.pci_dev*, %struct.pci_dev** %67, align 8
  %69 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %84

73:                                               ; preds = %65, %60
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* @LBCIF_STATUS_ACK_ERROR, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = call i32 @udelay(i32 10)
  br label %81

80:                                               ; preds = %73
  store i32 1, i32* %12, align 4
  br label %84

81:                                               ; preds = %78
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %10, align 4
  br label %36

84:                                               ; preds = %80, %72, %53, %46, %36
  %85 = call i32 @udelay(i32 10)
  br label %86

86:                                               ; preds = %84, %120
  %87 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %88 = load i32, i32* @LBCIF_CONTROL_REGISTER, align 4
  %89 = load i32, i32* @LBCIF_CONTROL_LBCIF_ENABLE, align 4
  %90 = call i64 @pci_write_config_byte(%struct.pci_dev* %87, i32 %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  store i32 0, i32* %12, align 4
  br label %93

93:                                               ; preds = %92, %86
  br label %94

94:                                               ; preds = %108, %93
  %95 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %96 = load i32, i32* @LBCIF_ADDRESS_REGISTER, align 4
  %97 = load i32, i32* %6, align 4
  %98 = call i64 @pci_write_config_dword(%struct.pci_dev* %95, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %103, %94
  %100 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %101 = load i32, i32* @LBCIF_DATA_REGISTER, align 4
  %102 = call i32 @pci_read_config_dword(%struct.pci_dev* %100, i32 %101, i32* %14)
  br label %103

103:                                              ; preds = %99
  %104 = load i32, i32* %14, align 4
  %105 = and i32 %104, 65536
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %99, label %107

107:                                              ; preds = %103
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %14, align 4
  %110 = and i32 %109, 262144
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %94, label %112

112:                                              ; preds = %108
  %113 = load i32, i32* %14, align 4
  %114 = and i32 %113, 65280
  %115 = icmp ne i32 %114, 49152
  br i1 %115, label %119, label %116

116:                                              ; preds = %112
  %117 = load i32, i32* %9, align 4
  %118 = icmp eq i32 %117, 10000
  br i1 %118, label %119, label %120

119:                                              ; preds = %116, %112
  br label %123

120:                                              ; preds = %116
  %121 = load i32, i32* %9, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %9, align 4
  br label %86

123:                                              ; preds = %119
  %124 = load i32, i32* %12, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  br label %130

127:                                              ; preds = %123
  %128 = load i32, i32* @EIO, align 4
  %129 = sub nsw i32 0, %128
  br label %130

130:                                              ; preds = %127, %126
  %131 = phi i32 [ 0, %126 ], [ %129, %127 ]
  store i32 %131, i32* %4, align 4
  br label %132

132:                                              ; preds = %130, %59, %32, %22
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local i32 @eeprom_wait_ready(%struct.pci_dev*, i32*) #1

declare dso_local i64 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i64 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
