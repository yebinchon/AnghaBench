; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_82575.c_igb_set_sfp_media_type_82575.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_82575.c_igb_set_sfp_media_type_82575.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { %struct.e1000_dev_spec_82575 }
%struct.e1000_dev_spec_82575 = type { i32, i32, %struct.e1000_sfp_flags }
%struct.e1000_sfp_flags = type { i64, i64, i64, i64 }

@E1000_ERR_CONFIG = common dso_local global i64 0, align 8
@E1000_CTRL_EXT = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_SDP3_DATA = common dso_local global i32 0, align 4
@E1000_CTRL_I2C_ENA = common dso_local global i32 0, align 4
@E1000_SFF_IDENTIFIER_OFFSET = common dso_local global i32 0, align 4
@E1000_SFF_ETH_FLAGS_OFFSET = common dso_local global i32 0, align 4
@E1000_SFF_IDENTIFIER_SFP = common dso_local global i64 0, align 8
@E1000_SFF_IDENTIFIER_SFF = common dso_local global i64 0, align 8
@e1000_media_type_internal_serdes = common dso_local global i8* null, align 8
@e1000_media_type_copper = common dso_local global i8* null, align 8
@e1000_media_type_unknown = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"PHY module has not been recognized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @igb_set_sfp_media_type_82575 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @igb_set_sfp_media_type_82575(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.e1000_dev_spec_82575*, align 8
  %6 = alloca %struct.e1000_sfp_flags*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %9 = load i64, i64* @E1000_ERR_CONFIG, align 8
  store i64 %9, i64* %3, align 8
  store i32 0, i32* %4, align 4
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %11 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.e1000_dev_spec_82575* %12, %struct.e1000_dev_spec_82575** %5, align 8
  %13 = load %struct.e1000_dev_spec_82575*, %struct.e1000_dev_spec_82575** %5, align 8
  %14 = getelementptr inbounds %struct.e1000_dev_spec_82575, %struct.e1000_dev_spec_82575* %13, i32 0, i32 2
  store %struct.e1000_sfp_flags* %14, %struct.e1000_sfp_flags** %6, align 8
  store i64 0, i64* %7, align 8
  store i64 3, i64* %8, align 8
  %15 = load i32, i32* @E1000_CTRL_EXT, align 4
  %16 = call i32 @rd32(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @E1000_CTRL_EXT_SDP3_DATA, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* @E1000_CTRL_EXT, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @E1000_CTRL_I2C_ENA, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @wr32(i32 %21, i32 %24)
  %26 = call i32 (...) @wrfl()
  br label %27

27:                                               ; preds = %38, %1
  %28 = load i64, i64* %8, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %27
  %31 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %32 = load i32, i32* @E1000_SFF_IDENTIFIER_OFFSET, align 4
  %33 = call i32 @E1000_I2CCMD_SFP_DATA_ADDR(i32 %32)
  %34 = call i64 @igb_read_sfp_data_byte(%struct.e1000_hw* %31, i32 %33, i64* %7)
  store i64 %34, i64* %3, align 8
  %35 = load i64, i64* %3, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %42

38:                                               ; preds = %30
  %39 = call i32 @msleep(i32 100)
  %40 = load i64, i64* %8, align 8
  %41 = add nsw i64 %40, -1
  store i64 %41, i64* %8, align 8
  br label %27

42:                                               ; preds = %37, %27
  %43 = load i64, i64* %3, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %120

46:                                               ; preds = %42
  %47 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %48 = load i32, i32* @E1000_SFF_ETH_FLAGS_OFFSET, align 4
  %49 = call i32 @E1000_I2CCMD_SFP_DATA_ADDR(i32 %48)
  %50 = load %struct.e1000_sfp_flags*, %struct.e1000_sfp_flags** %6, align 8
  %51 = bitcast %struct.e1000_sfp_flags* %50 to i64*
  %52 = call i64 @igb_read_sfp_data_byte(%struct.e1000_hw* %47, i32 %49, i64* %51)
  store i64 %52, i64* %3, align 8
  %53 = load i64, i64* %3, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  br label %120

56:                                               ; preds = %46
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* @E1000_SFF_IDENTIFIER_SFP, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* @E1000_SFF_IDENTIFIER_SFF, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %114

64:                                               ; preds = %60, %56
  %65 = load %struct.e1000_dev_spec_82575*, %struct.e1000_dev_spec_82575** %5, align 8
  %66 = getelementptr inbounds %struct.e1000_dev_spec_82575, %struct.e1000_dev_spec_82575* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  %67 = load %struct.e1000_sfp_flags*, %struct.e1000_sfp_flags** %6, align 8
  %68 = getelementptr inbounds %struct.e1000_sfp_flags, %struct.e1000_sfp_flags* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %64
  %72 = load %struct.e1000_sfp_flags*, %struct.e1000_sfp_flags** %6, align 8
  %73 = getelementptr inbounds %struct.e1000_sfp_flags, %struct.e1000_sfp_flags* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71, %64
  %77 = load i8*, i8** @e1000_media_type_internal_serdes, align 8
  %78 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %79 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  store i8* %77, i8** %80, align 8
  br label %113

81:                                               ; preds = %71
  %82 = load %struct.e1000_sfp_flags*, %struct.e1000_sfp_flags** %6, align 8
  %83 = getelementptr inbounds %struct.e1000_sfp_flags, %struct.e1000_sfp_flags* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %81
  %87 = load %struct.e1000_dev_spec_82575*, %struct.e1000_dev_spec_82575** %5, align 8
  %88 = getelementptr inbounds %struct.e1000_dev_spec_82575, %struct.e1000_dev_spec_82575* %87, i32 0, i32 1
  store i32 1, i32* %88, align 4
  %89 = load i8*, i8** @e1000_media_type_internal_serdes, align 8
  %90 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %91 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  store i8* %89, i8** %92, align 8
  br label %112

93:                                               ; preds = %81
  %94 = load %struct.e1000_sfp_flags*, %struct.e1000_sfp_flags** %6, align 8
  %95 = getelementptr inbounds %struct.e1000_sfp_flags, %struct.e1000_sfp_flags* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %93
  %99 = load %struct.e1000_dev_spec_82575*, %struct.e1000_dev_spec_82575** %5, align 8
  %100 = getelementptr inbounds %struct.e1000_dev_spec_82575, %struct.e1000_dev_spec_82575* %99, i32 0, i32 1
  store i32 1, i32* %100, align 4
  %101 = load i8*, i8** @e1000_media_type_copper, align 8
  %102 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %103 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  store i8* %101, i8** %104, align 8
  br label %111

105:                                              ; preds = %93
  %106 = load i8*, i8** @e1000_media_type_unknown, align 8
  %107 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %108 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  store i8* %106, i8** %109, align 8
  %110 = call i32 @hw_dbg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %120

111:                                              ; preds = %98
  br label %112

112:                                              ; preds = %111, %86
  br label %113

113:                                              ; preds = %112, %76
  br label %119

114:                                              ; preds = %60
  %115 = load i8*, i8** @e1000_media_type_unknown, align 8
  %116 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %117 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  store i8* %115, i8** %118, align 8
  br label %119

119:                                              ; preds = %114, %113
  store i64 0, i64* %3, align 8
  br label %120

120:                                              ; preds = %119, %105, %55, %45
  %121 = load i32, i32* @E1000_CTRL_EXT, align 4
  %122 = load i32, i32* %4, align 4
  %123 = call i32 @wr32(i32 %121, i32 %122)
  %124 = load i64, i64* %3, align 8
  ret i64 %124
}

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @wrfl(...) #1

declare dso_local i64 @igb_read_sfp_data_byte(%struct.e1000_hw*, i32, i64*) #1

declare dso_local i32 @E1000_I2CCMD_SFP_DATA_ADDR(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @hw_dbg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
