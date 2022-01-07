; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_farch.c_ef4_farch_filter_table_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_farch.c_ef4_farch_filter_table_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { %struct.ef4_farch_filter_state* }
%struct.ef4_farch_filter_state = type { %struct.ef4_farch_filter_table* }
%struct.ef4_farch_filter_table = type { i64, i64, i32, %struct.ef4_farch_filter_spec*, i32, i32 }
%struct.ef4_farch_filter_spec = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EF4_REV_FALCON_B0 = common dso_local global i64 0, align 8
@EF4_FARCH_FILTER_TABLE_RX_IP = common dso_local global i64 0, align 8
@FR_BZ_RX_FILTER_TBL0 = common dso_local global i32 0, align 4
@FR_BZ_RX_FILTER_TBL0_ROWS = common dso_local global i64 0, align 8
@FR_BZ_RX_FILTER_TBL0_STEP = common dso_local global i32 0, align 4
@EF4_FARCH_FILTER_TABLE_COUNT = common dso_local global i32 0, align 4
@EF4_FARCH_FILTER_TABLE_RX_DEF = common dso_local global i64 0, align 8
@EF4_FARCH_FILTER_SIZE_RX_DEF = common dso_local global i32 0, align 4
@EF4_FARCH_FILTER_UC_DEF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ef4_farch_filter_table_probe(%struct.ef4_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ef4_nic*, align 8
  %4 = alloca %struct.ef4_farch_filter_state*, align 8
  %5 = alloca %struct.ef4_farch_filter_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ef4_farch_filter_spec*, align 8
  %8 = alloca i32, align 4
  store %struct.ef4_nic* %0, %struct.ef4_nic** %3, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.ef4_farch_filter_state* @kzalloc(i32 8, i32 %9)
  store %struct.ef4_farch_filter_state* %10, %struct.ef4_farch_filter_state** %4, align 8
  %11 = load %struct.ef4_farch_filter_state*, %struct.ef4_farch_filter_state** %4, align 8
  %12 = icmp ne %struct.ef4_farch_filter_state* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %138

16:                                               ; preds = %1
  %17 = load %struct.ef4_farch_filter_state*, %struct.ef4_farch_filter_state** %4, align 8
  %18 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %19 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %18, i32 0, i32 0
  store %struct.ef4_farch_filter_state* %17, %struct.ef4_farch_filter_state** %19, align 8
  %20 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %21 = call i64 @ef4_nic_rev(%struct.ef4_nic* %20)
  %22 = load i64, i64* @EF4_REV_FALCON_B0, align 8
  %23 = icmp sge i64 %21, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %16
  %25 = load %struct.ef4_farch_filter_state*, %struct.ef4_farch_filter_state** %4, align 8
  %26 = getelementptr inbounds %struct.ef4_farch_filter_state, %struct.ef4_farch_filter_state* %25, i32 0, i32 0
  %27 = load %struct.ef4_farch_filter_table*, %struct.ef4_farch_filter_table** %26, align 8
  %28 = load i64, i64* @EF4_FARCH_FILTER_TABLE_RX_IP, align 8
  %29 = getelementptr inbounds %struct.ef4_farch_filter_table, %struct.ef4_farch_filter_table* %27, i64 %28
  store %struct.ef4_farch_filter_table* %29, %struct.ef4_farch_filter_table** %5, align 8
  %30 = load i64, i64* @EF4_FARCH_FILTER_TABLE_RX_IP, align 8
  %31 = load %struct.ef4_farch_filter_table*, %struct.ef4_farch_filter_table** %5, align 8
  %32 = getelementptr inbounds %struct.ef4_farch_filter_table, %struct.ef4_farch_filter_table* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load i32, i32* @FR_BZ_RX_FILTER_TBL0, align 4
  %34 = load %struct.ef4_farch_filter_table*, %struct.ef4_farch_filter_table** %5, align 8
  %35 = getelementptr inbounds %struct.ef4_farch_filter_table, %struct.ef4_farch_filter_table* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 4
  %36 = load i64, i64* @FR_BZ_RX_FILTER_TBL0_ROWS, align 8
  %37 = load %struct.ef4_farch_filter_table*, %struct.ef4_farch_filter_table** %5, align 8
  %38 = getelementptr inbounds %struct.ef4_farch_filter_table, %struct.ef4_farch_filter_table* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = load i32, i32* @FR_BZ_RX_FILTER_TBL0_STEP, align 4
  %40 = load %struct.ef4_farch_filter_table*, %struct.ef4_farch_filter_table** %5, align 8
  %41 = getelementptr inbounds %struct.ef4_farch_filter_table, %struct.ef4_farch_filter_table* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 8
  br label %42

42:                                               ; preds = %24, %16
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %87, %42
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @EF4_FARCH_FILTER_TABLE_COUNT, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %90

47:                                               ; preds = %43
  %48 = load %struct.ef4_farch_filter_state*, %struct.ef4_farch_filter_state** %4, align 8
  %49 = getelementptr inbounds %struct.ef4_farch_filter_state, %struct.ef4_farch_filter_state* %48, i32 0, i32 0
  %50 = load %struct.ef4_farch_filter_table*, %struct.ef4_farch_filter_table** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.ef4_farch_filter_table, %struct.ef4_farch_filter_table* %50, i64 %52
  store %struct.ef4_farch_filter_table* %53, %struct.ef4_farch_filter_table** %5, align 8
  %54 = load %struct.ef4_farch_filter_table*, %struct.ef4_farch_filter_table** %5, align 8
  %55 = getelementptr inbounds %struct.ef4_farch_filter_table, %struct.ef4_farch_filter_table* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  br label %87

59:                                               ; preds = %47
  %60 = load %struct.ef4_farch_filter_table*, %struct.ef4_farch_filter_table** %5, align 8
  %61 = getelementptr inbounds %struct.ef4_farch_filter_table, %struct.ef4_farch_filter_table* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @BITS_TO_LONGS(i64 %62)
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call i32 @kcalloc(i32 %63, i32 8, i32 %64)
  %66 = load %struct.ef4_farch_filter_table*, %struct.ef4_farch_filter_table** %5, align 8
  %67 = getelementptr inbounds %struct.ef4_farch_filter_table, %struct.ef4_farch_filter_table* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load %struct.ef4_farch_filter_table*, %struct.ef4_farch_filter_table** %5, align 8
  %69 = getelementptr inbounds %struct.ef4_farch_filter_table, %struct.ef4_farch_filter_table* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %59
  br label %133

73:                                               ; preds = %59
  %74 = load %struct.ef4_farch_filter_table*, %struct.ef4_farch_filter_table** %5, align 8
  %75 = getelementptr inbounds %struct.ef4_farch_filter_table, %struct.ef4_farch_filter_table* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @array_size(i32 8, i64 %76)
  %78 = call %struct.ef4_farch_filter_spec* @vzalloc(i32 %77)
  %79 = load %struct.ef4_farch_filter_table*, %struct.ef4_farch_filter_table** %5, align 8
  %80 = getelementptr inbounds %struct.ef4_farch_filter_table, %struct.ef4_farch_filter_table* %79, i32 0, i32 3
  store %struct.ef4_farch_filter_spec* %78, %struct.ef4_farch_filter_spec** %80, align 8
  %81 = load %struct.ef4_farch_filter_table*, %struct.ef4_farch_filter_table** %5, align 8
  %82 = getelementptr inbounds %struct.ef4_farch_filter_table, %struct.ef4_farch_filter_table* %81, i32 0, i32 3
  %83 = load %struct.ef4_farch_filter_spec*, %struct.ef4_farch_filter_spec** %82, align 8
  %84 = icmp ne %struct.ef4_farch_filter_spec* %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %73
  br label %133

86:                                               ; preds = %73
  br label %87

87:                                               ; preds = %86, %58
  %88 = load i32, i32* %6, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %6, align 4
  br label %43

90:                                               ; preds = %43
  %91 = load %struct.ef4_farch_filter_state*, %struct.ef4_farch_filter_state** %4, align 8
  %92 = getelementptr inbounds %struct.ef4_farch_filter_state, %struct.ef4_farch_filter_state* %91, i32 0, i32 0
  %93 = load %struct.ef4_farch_filter_table*, %struct.ef4_farch_filter_table** %92, align 8
  %94 = load i64, i64* @EF4_FARCH_FILTER_TABLE_RX_DEF, align 8
  %95 = getelementptr inbounds %struct.ef4_farch_filter_table, %struct.ef4_farch_filter_table* %93, i64 %94
  store %struct.ef4_farch_filter_table* %95, %struct.ef4_farch_filter_table** %5, align 8
  %96 = load %struct.ef4_farch_filter_table*, %struct.ef4_farch_filter_table** %5, align 8
  %97 = getelementptr inbounds %struct.ef4_farch_filter_table, %struct.ef4_farch_filter_table* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %130

100:                                              ; preds = %90
  store i32 0, i32* %8, align 4
  br label %101

101:                                              ; preds = %126, %100
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @EF4_FARCH_FILTER_SIZE_RX_DEF, align 4
  %104 = icmp ult i32 %102, %103
  br i1 %104, label %105, label %129

105:                                              ; preds = %101
  %106 = load %struct.ef4_farch_filter_table*, %struct.ef4_farch_filter_table** %5, align 8
  %107 = getelementptr inbounds %struct.ef4_farch_filter_table, %struct.ef4_farch_filter_table* %106, i32 0, i32 3
  %108 = load %struct.ef4_farch_filter_spec*, %struct.ef4_farch_filter_spec** %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.ef4_farch_filter_spec, %struct.ef4_farch_filter_spec* %108, i64 %110
  store %struct.ef4_farch_filter_spec* %111, %struct.ef4_farch_filter_spec** %7, align 8
  %112 = load i64, i64* @EF4_FARCH_FILTER_UC_DEF, align 8
  %113 = load i32, i32* %8, align 4
  %114 = zext i32 %113 to i64
  %115 = add nsw i64 %112, %114
  %116 = load %struct.ef4_farch_filter_spec*, %struct.ef4_farch_filter_spec** %7, align 8
  %117 = getelementptr inbounds %struct.ef4_farch_filter_spec, %struct.ef4_farch_filter_spec* %116, i32 0, i32 0
  store i64 %115, i64* %117, align 8
  %118 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %119 = load %struct.ef4_farch_filter_spec*, %struct.ef4_farch_filter_spec** %7, align 8
  %120 = call i32 @ef4_farch_filter_init_rx_auto(%struct.ef4_nic* %118, %struct.ef4_farch_filter_spec* %119)
  %121 = load i32, i32* %8, align 4
  %122 = load %struct.ef4_farch_filter_table*, %struct.ef4_farch_filter_table** %5, align 8
  %123 = getelementptr inbounds %struct.ef4_farch_filter_table, %struct.ef4_farch_filter_table* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @__set_bit(i32 %121, i32 %124)
  br label %126

126:                                              ; preds = %105
  %127 = load i32, i32* %8, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %8, align 4
  br label %101

129:                                              ; preds = %101
  br label %130

130:                                              ; preds = %129, %90
  %131 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %132 = call i32 @ef4_farch_filter_push_rx_config(%struct.ef4_nic* %131)
  store i32 0, i32* %2, align 4
  br label %138

133:                                              ; preds = %85, %72
  %134 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %135 = call i32 @ef4_farch_filter_table_remove(%struct.ef4_nic* %134)
  %136 = load i32, i32* @ENOMEM, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %2, align 4
  br label %138

138:                                              ; preds = %133, %130, %13
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local %struct.ef4_farch_filter_state* @kzalloc(i32, i32) #1

declare dso_local i64 @ef4_nic_rev(%struct.ef4_nic*) #1

declare dso_local i32 @kcalloc(i32, i32, i32) #1

declare dso_local i32 @BITS_TO_LONGS(i64) #1

declare dso_local %struct.ef4_farch_filter_spec* @vzalloc(i32) #1

declare dso_local i32 @array_size(i32, i64) #1

declare dso_local i32 @ef4_farch_filter_init_rx_auto(%struct.ef4_nic*, %struct.ef4_farch_filter_spec*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @ef4_farch_filter_push_rx_config(%struct.ef4_nic*) #1

declare dso_local i32 @ef4_farch_filter_table_remove(%struct.ef4_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
