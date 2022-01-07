; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_lan_hmc.c_i40e_configure_lan_hmc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_lan_hmc.c_i40e_configure_lan_hmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.i40e_hmc_obj_info*, i32 }
%struct.i40e_hmc_obj_info = type { i32, i32, i32 }
%struct.i40e_hmc_lan_create_obj_info = type { i64, i32, i32, i32, i64, %struct.TYPE_2__* }

@I40E_HMC_LAN_FULL = common dso_local global i64 0, align 8
@I40E_SD_TYPE_DIRECT = common dso_local global i32 0, align 4
@I40E_SD_TYPE_PAGED = common dso_local global i32 0, align 4
@I40E_ERR_INVALID_SD_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"i40e_configure_lan_hmc: Unknown SD type: %d\0A\00", align 1
@I40E_HMC_LAN_TX = common dso_local global i64 0, align 8
@I40E_GLHMC_LANTXBASE_FPMLANTXBASE_MASK = common dso_local global i32 0, align 4
@I40E_HMC_LAN_RX = common dso_local global i64 0, align 8
@I40E_GLHMC_LANRXBASE_FPMLANRXBASE_MASK = common dso_local global i32 0, align 4
@I40E_HMC_FCOE_CTX = common dso_local global i64 0, align 8
@I40E_GLHMC_FCOEDDPBASE_FPMFCOEDDPBASE_MASK = common dso_local global i32 0, align 4
@I40E_HMC_FCOE_FILT = common dso_local global i64 0, align 8
@I40E_GLHMC_FCOEFBASE_FPMFCOEFBASE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_configure_lan_hmc(%struct.i40e_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.i40e_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40e_hmc_lan_create_obj_info, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i40e_hmc_obj_info*, align 8
  store %struct.i40e_hw* %0, %struct.i40e_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %10 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %7, align 4
  %13 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %14 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %5, i32 0, i32 5
  store %struct.TYPE_2__* %14, %struct.TYPE_2__** %15, align 8
  %16 = load i64, i64* @I40E_HMC_LAN_FULL, align 8
  %17 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %5, i32 0, i32 0
  store i64 %16, i64* %17, align 8
  %18 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %5, i32 0, i32 4
  store i64 0, i64* %18, align 8
  %19 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %20 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %21, align 8
  %23 = load i64, i64* @I40E_HMC_LAN_FULL, align 8
  %24 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %22, i64 %23
  %25 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %5, i32 0, i32 3
  store i32 %26, i32* %27, align 8
  %28 = load i32, i32* %4, align 4
  switch i32 %28, label %58 [
    i32 129, label %29
    i32 130, label %29
    i32 128, label %47
  ]

29:                                               ; preds = %2, %2
  %30 = load i32, i32* @I40E_SD_TYPE_DIRECT, align 4
  %31 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %5, i32 0, i32 2
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %5, i32 0, i32 1
  store i32 1, i32* %32, align 8
  %33 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %34 = call i32 @i40e_create_lan_hmc_object(%struct.i40e_hw* %33, %struct.i40e_hmc_lan_create_obj_info* %5)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load i32, i32* %4, align 4
  %39 = icmp eq i32 %38, 129
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %48

41:                                               ; preds = %37, %29
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %156

45:                                               ; preds = %41
  br label %46

46:                                               ; preds = %45
  br label %63

47:                                               ; preds = %2
  br label %48

48:                                               ; preds = %47, %40
  %49 = load i32, i32* @I40E_SD_TYPE_PAGED, align 4
  %50 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %5, i32 0, i32 2
  store i32 %49, i32* %50, align 4
  %51 = getelementptr inbounds %struct.i40e_hmc_lan_create_obj_info, %struct.i40e_hmc_lan_create_obj_info* %5, i32 0, i32 1
  store i32 1, i32* %51, align 8
  %52 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %53 = call i32 @i40e_create_lan_hmc_object(%struct.i40e_hw* %52, %struct.i40e_hmc_lan_create_obj_info* %5)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %156

57:                                               ; preds = %48
  br label %63

58:                                               ; preds = %2
  %59 = load i32, i32* @I40E_ERR_INVALID_SD_TYPE, align 4
  store i32 %59, i32* %6, align 4
  %60 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @hw_dbg(%struct.i40e_hw* %60, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %156

63:                                               ; preds = %57, %46
  %64 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %65 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %66, align 8
  %68 = load i64, i64* @I40E_HMC_LAN_TX, align 8
  %69 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %67, i64 %68
  store %struct.i40e_hmc_obj_info* %69, %struct.i40e_hmc_obj_info** %8, align 8
  %70 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @I40E_GLHMC_LANTXBASE(i32 %71)
  %73 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %8, align 8
  %74 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @I40E_GLHMC_LANTXBASE_FPMLANTXBASE_MASK, align 4
  %77 = and i32 %75, %76
  %78 = sdiv i32 %77, 512
  %79 = call i32 @wr32(%struct.i40e_hw* %70, i32 %72, i32 %78)
  %80 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @I40E_GLHMC_LANTXCNT(i32 %81)
  %83 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %8, align 8
  %84 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @wr32(%struct.i40e_hw* %80, i32 %82, i32 %85)
  %87 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %88 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %89, align 8
  %91 = load i64, i64* @I40E_HMC_LAN_RX, align 8
  %92 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %90, i64 %91
  store %struct.i40e_hmc_obj_info* %92, %struct.i40e_hmc_obj_info** %8, align 8
  %93 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @I40E_GLHMC_LANRXBASE(i32 %94)
  %96 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %8, align 8
  %97 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @I40E_GLHMC_LANRXBASE_FPMLANRXBASE_MASK, align 4
  %100 = and i32 %98, %99
  %101 = sdiv i32 %100, 512
  %102 = call i32 @wr32(%struct.i40e_hw* %93, i32 %95, i32 %101)
  %103 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @I40E_GLHMC_LANRXCNT(i32 %104)
  %106 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %8, align 8
  %107 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @wr32(%struct.i40e_hw* %103, i32 %105, i32 %108)
  %110 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %111 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %112, align 8
  %114 = load i64, i64* @I40E_HMC_FCOE_CTX, align 8
  %115 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %113, i64 %114
  store %struct.i40e_hmc_obj_info* %115, %struct.i40e_hmc_obj_info** %8, align 8
  %116 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @I40E_GLHMC_FCOEDDPBASE(i32 %117)
  %119 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %8, align 8
  %120 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @I40E_GLHMC_FCOEDDPBASE_FPMFCOEDDPBASE_MASK, align 4
  %123 = and i32 %121, %122
  %124 = sdiv i32 %123, 512
  %125 = call i32 @wr32(%struct.i40e_hw* %116, i32 %118, i32 %124)
  %126 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %127 = load i32, i32* %7, align 4
  %128 = call i32 @I40E_GLHMC_FCOEDDPCNT(i32 %127)
  %129 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %8, align 8
  %130 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @wr32(%struct.i40e_hw* %126, i32 %128, i32 %131)
  %133 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %134 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %135, align 8
  %137 = load i64, i64* @I40E_HMC_FCOE_FILT, align 8
  %138 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %136, i64 %137
  store %struct.i40e_hmc_obj_info* %138, %struct.i40e_hmc_obj_info** %8, align 8
  %139 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %140 = load i32, i32* %7, align 4
  %141 = call i32 @I40E_GLHMC_FCOEFBASE(i32 %140)
  %142 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %8, align 8
  %143 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @I40E_GLHMC_FCOEFBASE_FPMFCOEFBASE_MASK, align 4
  %146 = and i32 %144, %145
  %147 = sdiv i32 %146, 512
  %148 = call i32 @wr32(%struct.i40e_hw* %139, i32 %141, i32 %147)
  %149 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %150 = load i32, i32* %7, align 4
  %151 = call i32 @I40E_GLHMC_FCOEFCNT(i32 %150)
  %152 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %8, align 8
  %153 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @wr32(%struct.i40e_hw* %149, i32 %151, i32 %154)
  br label %156

156:                                              ; preds = %63, %58, %56, %44
  %157 = load i32, i32* %6, align 4
  ret i32 %157
}

declare dso_local i32 @i40e_create_lan_hmc_object(%struct.i40e_hw*, %struct.i40e_hmc_lan_create_obj_info*) #1

declare dso_local i32 @hw_dbg(%struct.i40e_hw*, i8*, i32) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @I40E_GLHMC_LANTXBASE(i32) #1

declare dso_local i32 @I40E_GLHMC_LANTXCNT(i32) #1

declare dso_local i32 @I40E_GLHMC_LANRXBASE(i32) #1

declare dso_local i32 @I40E_GLHMC_LANRXCNT(i32) #1

declare dso_local i32 @I40E_GLHMC_FCOEDDPBASE(i32) #1

declare dso_local i32 @I40E_GLHMC_FCOEDDPCNT(i32) #1

declare dso_local i32 @I40E_GLHMC_FCOEFBASE(i32) #1

declare dso_local i32 @I40E_GLHMC_FCOEFCNT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
