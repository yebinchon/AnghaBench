; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_82599.c_ixgbe_setup_sfp_modules_82599.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_82599.c_ixgbe_setup_sfp_modules_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 (%struct.ixgbe_hw.0*, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 (%struct.ixgbe_hw.1*, i32)*, i32 (%struct.ixgbe_hw.2*, i32, i32)*, i32 (%struct.ixgbe_hw.3*, i32)* }
%struct.ixgbe_hw.1 = type opaque
%struct.ixgbe_hw.2 = type opaque
%struct.ixgbe_hw.3 = type opaque
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }

@ixgbe_sfp_type_unknown = common dso_local global i64 0, align 8
@IXGBE_GSSR_MAC_CSR_SM = common dso_local global i32 0, align 4
@IXGBE_ERR_SWFW_SYNC = common dso_local global i32 0, align 4
@IXGBE_CORECTL = common dso_local global i32 0, align 4
@IXGBE_AUTOC_LMS_10G_SERIAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c" sfp module setup not complete\0A\00", align 1
@IXGBE_ERR_SFP_SETUP_NOT_COMPLETE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"eeprom read at offset %d failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*)* @ixgbe_setup_sfp_modules_82599 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_setup_sfp_modules_82599(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  %8 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %9 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ixgbe_sfp_type_unknown, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %120

14:                                               ; preds = %1
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %16 = call i32 @ixgbe_init_mac_link_ops_82599(%struct.ixgbe_hw* %15)
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %18 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  %21 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %22 = call i32 @ixgbe_get_sfp_init_sequence_offsets(%struct.ixgbe_hw* %21, i32* %5, i32* %6)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %14
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %146

27:                                               ; preds = %14
  %28 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %29 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 2
  %32 = load i32 (%struct.ixgbe_hw.3*, i32)*, i32 (%struct.ixgbe_hw.3*, i32)** %31, align 8
  %33 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %34 = bitcast %struct.ixgbe_hw* %33 to %struct.ixgbe_hw.3*
  %35 = load i32, i32* @IXGBE_GSSR_MAC_CSR_SM, align 4
  %36 = call i32 %32(%struct.ixgbe_hw.3* %34, i32 %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %27
  %40 = load i32, i32* @IXGBE_ERR_SWFW_SYNC, align 4
  store i32 %40, i32* %2, align 4
  br label %146

41:                                               ; preds = %27
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %43 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i64 (%struct.ixgbe_hw.0*, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32*)** %45, align 8
  %47 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %48 = bitcast %struct.ixgbe_hw* %47 to %struct.ixgbe_hw.0*
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  %51 = call i64 %46(%struct.ixgbe_hw.0* %48, i32 %50, i32* %7)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %41
  br label %121

54:                                               ; preds = %41
  br label %55

55:                                               ; preds = %77, %54
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 65535
  br i1 %57, label %58, label %78

58:                                               ; preds = %55
  %59 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %60 = load i32, i32* @IXGBE_CORECTL, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %59, i32 %60, i32 %61)
  %63 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %64 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %63)
  %65 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %66 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i64 (%struct.ixgbe_hw.0*, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32*)** %68, align 8
  %70 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %71 = bitcast %struct.ixgbe_hw* %70 to %struct.ixgbe_hw.0*
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  %74 = call i64 %69(%struct.ixgbe_hw.0* %71, i32 %73, i32* %7)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %58
  br label %121

77:                                               ; preds = %58
  br label %55

78:                                               ; preds = %55
  %79 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %80 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i32 (%struct.ixgbe_hw.1*, i32)*, i32 (%struct.ixgbe_hw.1*, i32)** %82, align 8
  %84 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %85 = bitcast %struct.ixgbe_hw* %84 to %struct.ixgbe_hw.1*
  %86 = load i32, i32* @IXGBE_GSSR_MAC_CSR_SM, align 4
  %87 = call i32 %83(%struct.ixgbe_hw.1* %85, i32 %86)
  %88 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %89 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = mul nsw i32 %91, 1000
  %93 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %94 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = mul nsw i32 %96, 2000
  %98 = call i32 @usleep_range(i32 %92, i32 %97)
  %99 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %100 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  %103 = load i32 (%struct.ixgbe_hw.2*, i32, i32)*, i32 (%struct.ixgbe_hw.2*, i32, i32)** %102, align 8
  %104 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %105 = bitcast %struct.ixgbe_hw* %104 to %struct.ixgbe_hw.2*
  %106 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %107 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @IXGBE_AUTOC_LMS_10G_SERIAL, align 4
  %111 = or i32 %109, %110
  %112 = call i32 %103(%struct.ixgbe_hw.2* %105, i32 %111, i32 0)
  store i32 %112, i32* %4, align 4
  %113 = load i32, i32* %4, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %78
  %116 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %117 = call i32 @hw_dbg(%struct.ixgbe_hw* %116, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %118 = load i32, i32* @IXGBE_ERR_SFP_SETUP_NOT_COMPLETE, align 4
  store i32 %118, i32* %2, align 4
  br label %146

119:                                              ; preds = %78
  br label %120

120:                                              ; preds = %119, %1
  store i32 0, i32* %2, align 4
  br label %146

121:                                              ; preds = %76, %53
  %122 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %123 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = load i32 (%struct.ixgbe_hw.1*, i32)*, i32 (%struct.ixgbe_hw.1*, i32)** %125, align 8
  %127 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %128 = bitcast %struct.ixgbe_hw* %127 to %struct.ixgbe_hw.1*
  %129 = load i32, i32* @IXGBE_GSSR_MAC_CSR_SM, align 4
  %130 = call i32 %126(%struct.ixgbe_hw.1* %128, i32 %129)
  %131 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %132 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = mul nsw i32 %134, 1000
  %136 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %137 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = mul nsw i32 %139, 2000
  %141 = call i32 @usleep_range(i32 %135, i32 %140)
  %142 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %143 = load i32, i32* %6, align 4
  %144 = call i32 @hw_err(%struct.ixgbe_hw* %142, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %143)
  %145 = load i32, i32* @IXGBE_ERR_SFP_SETUP_NOT_COMPLETE, align 4
  store i32 %145, i32* %2, align 4
  br label %146

146:                                              ; preds = %121, %120, %115, %39, %25
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local i32 @ixgbe_init_mac_link_ops_82599(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_get_sfp_init_sequence_offsets(%struct.ixgbe_hw*, i32*, i32*) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

declare dso_local i32 @hw_err(%struct.ixgbe_hw*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
