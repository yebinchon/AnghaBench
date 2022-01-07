; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_initialize_nic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_initialize_nic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i64*, i32, i32, i32, i64, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.qlcnic_info = type { i32, i32, i32, i32, i32, i32, i64 }

@QLCNIC_FW_CAPABILITY_MORE_CAPS = common dso_local global i32 0, align 4
@CRB_FW_CAPABILITIES_2 = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@BIT_6 = common dso_local global i32 0, align 4
@QLCNIC_ESWITCH_ENABLED = common dso_local global i32 0, align 4
@QLCNIC_VNIC_MODE = common dso_local global i32 0, align 4
@QLCNIC_MAX_HW_VNIC_TX_RINGS = common dso_local global i32 0, align 4
@QLCNIC_MAX_VNIC_SDS_RINGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"vNIC mode enabled.\0A\00", align 1
@QLCNIC_DEFAULT_MODE = common dso_local global i32 0, align 4
@QLCNIC_MAX_HW_TX_RINGS = common dso_local global i32 0, align 4
@QLCNIC_MAX_SDS_RINGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*)* @qlcnic_initialize_nic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_initialize_nic(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca %struct.qlcnic_info, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = call i32 @memset(%struct.qlcnic_info* %4, i32 0, i32 32)
  %8 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %9 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %9, i32 0, i32 3
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 9
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @qlcnic_get_nic_info(%struct.qlcnic_adapter* %8, %struct.qlcnic_info* %4, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %146

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %4, i32 0, i32 6
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %22, i32 0, i32 3
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 8
  store i64 %21, i64* %25, align 8
  %26 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %4, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %29 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %28, i32 0, i32 3
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 7
  store i32 %27, i32* %31, align 8
  %32 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %4, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %35 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %34, i32 0, i32 3
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 6
  store i32 %33, i32* %37, align 4
  %38 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %4, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %41 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %40, i32 0, i32 3
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 5
  store i32 %39, i32* %43, align 8
  %44 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %4, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %47 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %46, i32 0, i32 3
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 %45, i32* %49, align 8
  %50 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %51 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %50, i32 0, i32 3
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @QLCNIC_FW_CAPABILITY_MORE_CAPS, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %76

58:                                               ; preds = %19
  %59 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %60 = load i32, i32* @CRB_FW_CAPABILITIES_2, align 4
  %61 = call i64 @QLCRD32(%struct.qlcnic_adapter* %59, i32 %60, i32* %5)
  store i64 %61, i64* %6, align 8
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @EIO, align 4
  %64 = sub nsw i32 0, %63
  %65 = icmp eq i32 %62, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  %67 = load i32, i32* %5, align 4
  store i32 %67, i32* %2, align 4
  br label %146

68:                                               ; preds = %58
  %69 = load i64, i64* %6, align 8
  %70 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %71 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %70, i32 0, i32 3
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 4
  %74 = load i64*, i64** %73, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 0
  store i64 %69, i64* %75, align 8
  br label %83

76:                                               ; preds = %19
  %77 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %78 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %77, i32 0, i32 3
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 4
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 0
  store i64 0, i64* %82, align 8
  br label %83

83:                                               ; preds = %76, %68
  %84 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %4, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %87 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %86, i32 0, i32 3
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 3
  store i32 %85, i32* %89, align 4
  %90 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %4, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %93 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %92, i32 0, i32 3
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 2
  store i32 %91, i32* %95, align 8
  %96 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %97 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %96, i32 0, i32 3
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @BIT_6, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %126

104:                                              ; preds = %83
  %105 = load i32, i32* @QLCNIC_ESWITCH_ENABLED, align 4
  %106 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %107 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 8
  %110 = load i32, i32* @QLCNIC_VNIC_MODE, align 4
  %111 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %112 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %111, i32 0, i32 3
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  store i32 %110, i32* %114, align 4
  %115 = load i32, i32* @QLCNIC_MAX_HW_VNIC_TX_RINGS, align 4
  %116 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %117 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 8
  %118 = load i32, i32* @QLCNIC_MAX_VNIC_SDS_RINGS, align 4
  %119 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %120 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  %121 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %122 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %121, i32 0, i32 4
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = call i32 @dev_info(i32* %124, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %144

126:                                              ; preds = %83
  %127 = load i32, i32* @QLCNIC_DEFAULT_MODE, align 4
  %128 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %129 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %128, i32 0, i32 3
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  store i32 %127, i32* %131, align 4
  %132 = load i32, i32* @QLCNIC_MAX_HW_TX_RINGS, align 4
  %133 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %134 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 8
  %135 = load i32, i32* @QLCNIC_MAX_SDS_RINGS, align 4
  %136 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %137 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 4
  %138 = load i32, i32* @QLCNIC_ESWITCH_ENABLED, align 4
  %139 = xor i32 %138, -1
  %140 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %141 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = and i32 %142, %139
  store i32 %143, i32* %141, align 8
  br label %144

144:                                              ; preds = %126, %104
  %145 = load i32, i32* %5, align 4
  store i32 %145, i32* %2, align 4
  br label %146

146:                                              ; preds = %144, %66, %17
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local i32 @memset(%struct.qlcnic_info*, i32, i32) #1

declare dso_local i32 @qlcnic_get_nic_info(%struct.qlcnic_adapter*, %struct.qlcnic_info*, i32) #1

declare dso_local i64 @QLCRD32(%struct.qlcnic_adapter*, i32, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
