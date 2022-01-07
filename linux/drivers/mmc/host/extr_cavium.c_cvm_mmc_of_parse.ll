; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cavium.c_cvm_mmc_of_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cavium.c_cvm_mmc_of_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.cvm_mmc_slot = type { i64, i64, %struct.TYPE_4__*, %struct.mmc_host* }
%struct.TYPE_4__ = type { i64, i64* }
%struct.mmc_host = type { i32, i32, i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Missing or invalid reg property on %pOF\0A\00", align 1
@CAVIUM_MAX_MMC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Invalid reg property on %pOF\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MMC_VDD_32_33 = common dso_local global i32 0, align 4
@MMC_VDD_33_34 = common dso_local global i32 0, align 4
@MMC_CAP_8_BIT_DATA = common dso_local global i32 0, align 4
@MMC_CAP_4_BIT_DATA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"cavium,bus-max-width\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"spi-max-frequency\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"cavium,cmd-clk-skew\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"cavium,dat-clk-skew\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.cvm_mmc_slot*)* @cvm_mmc_of_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cvm_mmc_of_parse(%struct.device* %0, %struct.cvm_mmc_slot* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.cvm_mmc_slot*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.device_node*, align 8
  %11 = alloca %struct.mmc_host*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.cvm_mmc_slot* %1, %struct.cvm_mmc_slot** %5, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %10, align 8
  %17 = load %struct.cvm_mmc_slot*, %struct.cvm_mmc_slot** %5, align 8
  %18 = getelementptr inbounds %struct.cvm_mmc_slot, %struct.cvm_mmc_slot* %17, i32 0, i32 3
  %19 = load %struct.mmc_host*, %struct.mmc_host** %18, align 8
  store %struct.mmc_host* %19, %struct.mmc_host** %11, align 8
  %20 = load %struct.device_node*, %struct.device_node** %10, align 8
  %21 = call i32 @of_property_read_u32(%struct.device_node* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64* %6)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = load %struct.device_node*, %struct.device_node** %10, align 8
  %27 = call i32 @dev_err(%struct.device* %25, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), %struct.device_node* %26)
  %28 = load i32, i32* %13, align 4
  store i32 %28, i32* %3, align 4
  br label %168

29:                                               ; preds = %2
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @CAVIUM_MAX_MMC, align 8
  %32 = icmp uge i64 %30, %31
  br i1 %32, label %43, label %33

33:                                               ; preds = %29
  %34 = load %struct.cvm_mmc_slot*, %struct.cvm_mmc_slot** %5, align 8
  %35 = getelementptr inbounds %struct.cvm_mmc_slot, %struct.cvm_mmc_slot* %34, i32 0, i32 2
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* %6, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %33, %29
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = load %struct.device_node*, %struct.device_node** %10, align 8
  %46 = call i32 @dev_err(%struct.device* %44, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), %struct.device_node* %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %168

49:                                               ; preds = %33
  %50 = load %struct.mmc_host*, %struct.mmc_host** %11, align 8
  %51 = call i32 @mmc_regulator_get_supply(%struct.mmc_host* %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* %13, align 4
  store i32 %55, i32* %3, align 4
  br label %168

56:                                               ; preds = %49
  %57 = load %struct.mmc_host*, %struct.mmc_host** %11, align 8
  %58 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @IS_ERR(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = load i32, i32* @MMC_VDD_32_33, align 4
  %65 = load i32, i32* @MMC_VDD_33_34, align 4
  %66 = or i32 %64, %65
  %67 = load %struct.mmc_host*, %struct.mmc_host** %11, align 8
  %68 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  br label %69

69:                                               ; preds = %63, %56
  %70 = load %struct.mmc_host*, %struct.mmc_host** %11, align 8
  %71 = call i32 @mmc_of_parse(%struct.mmc_host* %70)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* %13, align 4
  store i32 %75, i32* %3, align 4
  br label %168

76:                                               ; preds = %69
  %77 = load %struct.mmc_host*, %struct.mmc_host** %11, align 8
  %78 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @MMC_CAP_8_BIT_DATA, align 4
  %81 = load i32, i32* @MMC_CAP_4_BIT_DATA, align 4
  %82 = or i32 %80, %81
  %83 = and i32 %79, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %109, label %85

85:                                               ; preds = %76
  %86 = load %struct.device_node*, %struct.device_node** %10, align 8
  %87 = call i32 @of_property_read_u32(%struct.device_node* %86, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i64* %9)
  %88 = load i64, i64* %9, align 8
  %89 = icmp eq i64 %88, 8
  br i1 %89, label %90, label %98

90:                                               ; preds = %85
  %91 = load i32, i32* @MMC_CAP_8_BIT_DATA, align 4
  %92 = load i32, i32* @MMC_CAP_4_BIT_DATA, align 4
  %93 = or i32 %91, %92
  %94 = load %struct.mmc_host*, %struct.mmc_host** %11, align 8
  %95 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 4
  br label %108

98:                                               ; preds = %85
  %99 = load i64, i64* %9, align 8
  %100 = icmp eq i64 %99, 4
  br i1 %100, label %101, label %107

101:                                              ; preds = %98
  %102 = load i32, i32* @MMC_CAP_4_BIT_DATA, align 4
  %103 = load %struct.mmc_host*, %struct.mmc_host** %11, align 8
  %104 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %101, %98
  br label %108

108:                                              ; preds = %107, %90
  br label %109

109:                                              ; preds = %108, %76
  %110 = load %struct.mmc_host*, %struct.mmc_host** %11, align 8
  %111 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %109
  %115 = load %struct.device_node*, %struct.device_node** %10, align 8
  %116 = load %struct.mmc_host*, %struct.mmc_host** %11, align 8
  %117 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %116, i32 0, i32 2
  %118 = call i32 @of_property_read_u32(%struct.device_node* %115, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i64* %117)
  br label %119

119:                                              ; preds = %114, %109
  %120 = load %struct.mmc_host*, %struct.mmc_host** %11, align 8
  %121 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %119
  %125 = load %struct.mmc_host*, %struct.mmc_host** %11, align 8
  %126 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = icmp ugt i64 %127, 52000000
  br i1 %128, label %129, label %132

129:                                              ; preds = %124, %119
  %130 = load %struct.mmc_host*, %struct.mmc_host** %11, align 8
  %131 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %130, i32 0, i32 2
  store i64 52000000, i64* %131, align 8
  br label %132

132:                                              ; preds = %129, %124
  %133 = load %struct.mmc_host*, %struct.mmc_host** %11, align 8
  %134 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %133, i32 0, i32 3
  store i32 400000, i32* %134, align 8
  %135 = load %struct.cvm_mmc_slot*, %struct.cvm_mmc_slot** %5, align 8
  %136 = getelementptr inbounds %struct.cvm_mmc_slot, %struct.cvm_mmc_slot* %135, i32 0, i32 2
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = udiv i64 1000000000000, %139
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %12, align 4
  %142 = load %struct.device_node*, %struct.device_node** %10, align 8
  %143 = call i32 @of_property_read_u32(%struct.device_node* %142, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i64* %7)
  %144 = load %struct.device_node*, %struct.device_node** %10, align 8
  %145 = call i32 @of_property_read_u32(%struct.device_node* %144, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i64* %8)
  %146 = load i64, i64* %7, align 8
  %147 = load i32, i32* %12, align 4
  %148 = sdiv i32 %147, 2
  %149 = sext i32 %148 to i64
  %150 = add i64 %146, %149
  %151 = load i32, i32* %12, align 4
  %152 = sext i32 %151 to i64
  %153 = udiv i64 %150, %152
  %154 = load %struct.cvm_mmc_slot*, %struct.cvm_mmc_slot** %5, align 8
  %155 = getelementptr inbounds %struct.cvm_mmc_slot, %struct.cvm_mmc_slot* %154, i32 0, i32 0
  store i64 %153, i64* %155, align 8
  %156 = load i64, i64* %8, align 8
  %157 = load i32, i32* %12, align 4
  %158 = sdiv i32 %157, 2
  %159 = sext i32 %158 to i64
  %160 = add i64 %156, %159
  %161 = load i32, i32* %12, align 4
  %162 = sext i32 %161 to i64
  %163 = udiv i64 %160, %162
  %164 = load %struct.cvm_mmc_slot*, %struct.cvm_mmc_slot** %5, align 8
  %165 = getelementptr inbounds %struct.cvm_mmc_slot, %struct.cvm_mmc_slot* %164, i32 0, i32 1
  store i64 %163, i64* %165, align 8
  %166 = load i64, i64* %6, align 8
  %167 = trunc i64 %166 to i32
  store i32 %167, i32* %3, align 4
  br label %168

168:                                              ; preds = %132, %74, %54, %43, %24
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, %struct.device_node*) #1

declare dso_local i32 @mmc_regulator_get_supply(%struct.mmc_host*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @mmc_of_parse(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
