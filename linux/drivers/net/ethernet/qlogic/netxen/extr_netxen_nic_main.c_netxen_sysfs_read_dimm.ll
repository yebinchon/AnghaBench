; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c_netxen_sysfs_read_dimm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c_netxen_sysfs_read_dimm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i64 }
%struct.device = type { i32 }
%struct.netxen_adapter = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.netxen_dimm_cfg = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"Invalid size\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NETXEN_DIMM_CAPABILITY = common dso_local global i32 0, align 4
@NETXEN_DIMM_VALID_FLAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Invalid DIMM flag\0A\00", align 1
@NETXEN_DIMM_PRESENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"DIMM not present\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Invalid DIMM type %x\0A\00", align 1
@NETXEN_DIMM_MEMTYPE_DDR2_SDRAM = common dso_local global i32 0, align 4
@NETXEN_DIMM_MEM_DDR2_SDRAM = common dso_local global i32 0, align 4
@NETXEN_DIMM_SIZE = common dso_local global i32 0, align 4
@NETXEN_DIMM_STD_MEM_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"Invalid no of rows %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Invalid no of columns %x\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Invalid no of banks %x\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Invalid data-width %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i32, i64)* @netxen_sysfs_read_dimm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netxen_sysfs_read_dimm(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.kobject*, align 8
  %10 = alloca %struct.bin_attribute*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.device*, align 8
  %15 = alloca %struct.netxen_adapter*, align 8
  %16 = alloca %struct.net_device*, align 8
  %17 = alloca %struct.netxen_dimm_cfg, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.kobject* %1, %struct.kobject** %9, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %24 = load %struct.kobject*, %struct.kobject** %9, align 8
  %25 = call %struct.device* @kobj_to_dev(%struct.kobject* %24)
  store %struct.device* %25, %struct.device** %14, align 8
  %26 = load %struct.device*, %struct.device** %14, align 8
  %27 = call %struct.netxen_adapter* @dev_get_drvdata(%struct.device* %26)
  store %struct.netxen_adapter* %27, %struct.netxen_adapter** %15, align 8
  %28 = load %struct.netxen_adapter*, %struct.netxen_adapter** %15, align 8
  %29 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %28, i32 0, i32 0
  %30 = load %struct.net_device*, %struct.net_device** %29, align 8
  store %struct.net_device* %30, %struct.net_device** %16, align 8
  %31 = load i64, i64* %13, align 8
  %32 = load %struct.bin_attribute*, %struct.bin_attribute** %10, align 8
  %33 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ult i64 %31, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %6
  %37 = load %struct.net_device*, %struct.net_device** %16, align 8
  %38 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %7, align 4
  br label %165

41:                                               ; preds = %6
  %42 = call i32 @memset(%struct.netxen_dimm_cfg* %17, i32 0, i32 16)
  %43 = load %struct.netxen_adapter*, %struct.netxen_adapter** %15, align 8
  %44 = load i32, i32* @NETXEN_DIMM_CAPABILITY, align 4
  %45 = call i32 @NXRD32(%struct.netxen_adapter* %43, i32 %44)
  store i32 %45, i32* %23, align 4
  %46 = load i32, i32* %23, align 4
  %47 = load i32, i32* @NETXEN_DIMM_VALID_FLAG, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %41
  %51 = load %struct.net_device*, %struct.net_device** %16, align 8
  %52 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %51, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %53 = getelementptr inbounds %struct.netxen_dimm_cfg, %struct.netxen_dimm_cfg* %17, i32 0, i32 0
  store i32 255, i32* %53, align 4
  br label %162

54:                                               ; preds = %41
  %55 = load i32, i32* %23, align 4
  %56 = call i32 @NETXEN_DIMM_NUMROWS(i32 %55)
  store i32 %56, i32* %19, align 4
  %57 = load i32, i32* %23, align 4
  %58 = call i32 @NETXEN_DIMM_NUMCOLS(i32 %57)
  store i32 %58, i32* %20, align 4
  %59 = load i32, i32* %23, align 4
  %60 = call i32 @NETXEN_DIMM_NUMRANKS(i32 %59)
  store i32 %60, i32* %22, align 4
  %61 = load i32, i32* %23, align 4
  %62 = call i32 @NETXEN_DIMM_NUMBANKS(i32 %61)
  store i32 %62, i32* %21, align 4
  %63 = load i32, i32* %23, align 4
  %64 = call i32 @NETXEN_DIMM_DATAWIDTH(i32 %63)
  store i32 %64, i32* %18, align 4
  %65 = load i32, i32* %23, align 4
  %66 = load i32, i32* @NETXEN_DIMM_PRESENT, align 4
  %67 = and i32 %65, %66
  %68 = getelementptr inbounds %struct.netxen_dimm_cfg, %struct.netxen_dimm_cfg* %17, i32 0, i32 0
  store i32 %67, i32* %68, align 4
  %69 = getelementptr inbounds %struct.netxen_dimm_cfg, %struct.netxen_dimm_cfg* %17, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %54
  %73 = load %struct.net_device*, %struct.net_device** %16, align 8
  %74 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %73, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %162

75:                                               ; preds = %54
  %76 = load i32, i32* %23, align 4
  %77 = call i32 @NETXEN_DIMM_TYPE(i32 %76)
  %78 = getelementptr inbounds %struct.netxen_dimm_cfg, %struct.netxen_dimm_cfg* %17, i32 0, i32 1
  store i32 %77, i32* %78, align 4
  %79 = getelementptr inbounds %struct.netxen_dimm_cfg, %struct.netxen_dimm_cfg* %17, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  switch i32 %80, label %82 [
    i32 130, label %81
    i32 128, label %81
    i32 129, label %81
    i32 133, label %81
    i32 132, label %81
    i32 131, label %81
  ]

81:                                               ; preds = %75, %75, %75, %75, %75, %75
  br label %87

82:                                               ; preds = %75
  %83 = load %struct.net_device*, %struct.net_device** %16, align 8
  %84 = getelementptr inbounds %struct.netxen_dimm_cfg, %struct.netxen_dimm_cfg* %17, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %83, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %85)
  br label %162

87:                                               ; preds = %81
  %88 = load i32, i32* %23, align 4
  %89 = load i32, i32* @NETXEN_DIMM_MEMTYPE_DDR2_SDRAM, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load i32, i32* @NETXEN_DIMM_MEM_DDR2_SDRAM, align 4
  %94 = getelementptr inbounds %struct.netxen_dimm_cfg, %struct.netxen_dimm_cfg* %17, i32 0, i32 3
  store i32 %93, i32* %94, align 4
  br label %99

95:                                               ; preds = %87
  %96 = load i32, i32* %23, align 4
  %97 = call i32 @NETXEN_DIMM_MEMTYPE(i32 %96)
  %98 = getelementptr inbounds %struct.netxen_dimm_cfg, %struct.netxen_dimm_cfg* %17, i32 0, i32 3
  store i32 %97, i32* %98, align 4
  br label %99

99:                                               ; preds = %95, %92
  %100 = load i32, i32* %23, align 4
  %101 = load i32, i32* @NETXEN_DIMM_SIZE, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load i32, i32* @NETXEN_DIMM_STD_MEM_SIZE, align 4
  %106 = getelementptr inbounds %struct.netxen_dimm_cfg, %struct.netxen_dimm_cfg* %17, i32 0, i32 2
  store i32 %105, i32* %106, align 4
  br label %162

107:                                              ; preds = %99
  %108 = load i32, i32* %19, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %107
  %111 = load %struct.net_device*, %struct.net_device** %16, align 8
  %112 = load i32, i32* %19, align 4
  %113 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %111, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %112)
  br label %162

114:                                              ; preds = %107
  %115 = load i32, i32* %20, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %114
  %118 = load %struct.net_device*, %struct.net_device** %16, align 8
  %119 = load i32, i32* %20, align 4
  %120 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %118, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %119)
  br label %162

121:                                              ; preds = %114
  %122 = load i32, i32* %21, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %121
  %125 = load %struct.net_device*, %struct.net_device** %16, align 8
  %126 = load i32, i32* %21, align 4
  %127 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %125, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %126)
  br label %162

128:                                              ; preds = %121
  %129 = load i32, i32* %22, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %22, align 4
  %131 = load i32, i32* %18, align 4
  switch i32 %131, label %140 [
    i32 0, label %132
    i32 1, label %133
    i32 2, label %134
    i32 3, label %135
    i32 4, label %136
    i32 5, label %137
    i32 6, label %138
    i32 7, label %139
  ]

132:                                              ; preds = %128
  store i32 32, i32* %18, align 4
  br label %144

133:                                              ; preds = %128
  store i32 33, i32* %18, align 4
  br label %144

134:                                              ; preds = %128
  store i32 36, i32* %18, align 4
  br label %144

135:                                              ; preds = %128
  store i32 64, i32* %18, align 4
  br label %144

136:                                              ; preds = %128
  store i32 72, i32* %18, align 4
  br label %144

137:                                              ; preds = %128
  store i32 80, i32* %18, align 4
  br label %144

138:                                              ; preds = %128
  store i32 128, i32* %18, align 4
  br label %144

139:                                              ; preds = %128
  store i32 144, i32* %18, align 4
  br label %144

140:                                              ; preds = %128
  %141 = load %struct.net_device*, %struct.net_device** %16, align 8
  %142 = load i32, i32* %18, align 4
  %143 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %141, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %142)
  br label %162

144:                                              ; preds = %139, %138, %137, %136, %135, %134, %133, %132
  %145 = load i32, i32* %19, align 4
  %146 = shl i32 1, %145
  %147 = load i32, i32* %20, align 4
  %148 = shl i32 1, %147
  %149 = mul nsw i32 %146, %148
  %150 = load i32, i32* %18, align 4
  %151 = mul nsw i32 %149, %150
  %152 = load i32, i32* %21, align 4
  %153 = mul nsw i32 %151, %152
  %154 = load i32, i32* %22, align 4
  %155 = mul nsw i32 %153, %154
  %156 = sdiv i32 %155, 8
  %157 = getelementptr inbounds %struct.netxen_dimm_cfg, %struct.netxen_dimm_cfg* %17, i32 0, i32 2
  store i32 %156, i32* %157, align 4
  %158 = getelementptr inbounds %struct.netxen_dimm_cfg, %struct.netxen_dimm_cfg* %17, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = sdiv i32 %159, 1048576
  %161 = getelementptr inbounds %struct.netxen_dimm_cfg, %struct.netxen_dimm_cfg* %17, i32 0, i32 2
  store i32 %160, i32* %161, align 4
  br label %162

162:                                              ; preds = %144, %140, %124, %117, %110, %104, %82, %72, %50
  %163 = load i8*, i8** %11, align 8
  %164 = call i32 @memcpy(i8* %163, %struct.netxen_dimm_cfg* %17, i32 16)
  store i32 16, i32* %7, align 4
  br label %165

165:                                              ; preds = %162, %36
  %166 = load i32, i32* %7, align 4
  ret i32 %166
}

declare dso_local %struct.device* @kobj_to_dev(%struct.kobject*) #1

declare dso_local %struct.netxen_adapter* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @memset(%struct.netxen_dimm_cfg*, i32, i32) #1

declare dso_local i32 @NXRD32(%struct.netxen_adapter*, i32) #1

declare dso_local i32 @NETXEN_DIMM_NUMROWS(i32) #1

declare dso_local i32 @NETXEN_DIMM_NUMCOLS(i32) #1

declare dso_local i32 @NETXEN_DIMM_NUMRANKS(i32) #1

declare dso_local i32 @NETXEN_DIMM_NUMBANKS(i32) #1

declare dso_local i32 @NETXEN_DIMM_DATAWIDTH(i32) #1

declare dso_local i32 @NETXEN_DIMM_TYPE(i32) #1

declare dso_local i32 @NETXEN_DIMM_MEMTYPE(i32) #1

declare dso_local i32 @memcpy(i8*, %struct.netxen_dimm_cfg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
