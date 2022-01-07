; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i32, %struct.ixgbe_hw }
%struct.ixgbe_hw = type { %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@IXGBE_EIMS_ENABLE_MASK = common dso_local global i32 0, align 4
@IXGBE_EIMS_RTX_QUEUE = common dso_local global i32 0, align 4
@IXGBE_FLAG_NEED_LINK_UPDATE = common dso_local global i32 0, align 4
@IXGBE_EIMS_LSC = common dso_local global i32 0, align 4
@IXGBE_FLAG2_TEMP_SENSOR_CAPABLE = common dso_local global i32 0, align 4
@IXGBE_EIMS_TS = common dso_local global i32 0, align 4
@IXGBE_FLAG_FAN_FAIL_CAPABLE = common dso_local global i32 0, align 4
@IXGBE_DEV_ID_X550EM_X_SFP = common dso_local global i32 0, align 4
@IXGBE_DEV_ID_X550EM_A_SFP = common dso_local global i32 0, align 4
@IXGBE_DEV_ID_X550EM_A_SFP_N = common dso_local global i32 0, align 4
@ixgbe_phy_x550em_ext_t = common dso_local global i32 0, align 4
@IXGBE_EICR_GPI_SDP0_X540 = common dso_local global i32 0, align 4
@IXGBE_EIMS_ECC = common dso_local global i32 0, align 4
@IXGBE_EIMS_MAILBOX = common dso_local global i32 0, align 4
@IXGBE_FLAG_FDIR_HASH_CAPABLE = common dso_local global i32 0, align 4
@IXGBE_FLAG2_FDIR_REQUIRES_REINIT = common dso_local global i32 0, align 4
@IXGBE_EIMS_FLOW_DIR = common dso_local global i32 0, align 4
@IXGBE_EIMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*, i32, i32)* @ixgbe_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_irq_enable(%struct.ixgbe_adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ixgbe_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ixgbe_hw*, align 8
  %8 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %9, i32 0, i32 2
  store %struct.ixgbe_hw* %10, %struct.ixgbe_hw** %7, align 8
  %11 = load i32, i32* @IXGBE_EIMS_ENABLE_MASK, align 4
  %12 = load i32, i32* @IXGBE_EIMS_RTX_QUEUE, align 4
  %13 = xor i32 %12, -1
  %14 = and i32 %11, %13
  store i32 %14, i32* %8, align 4
  %15 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %16 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IXGBE_FLAG_NEED_LINK_UPDATE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load i32, i32* @IXGBE_EIMS_LSC, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %21, %3
  %27 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %28 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IXGBE_FLAG2_TEMP_SENSOR_CAPABLE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %26
  %34 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %35 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %48 [
    i32 132, label %39
    i32 131, label %44
    i32 130, label %44
    i32 129, label %44
    i32 128, label %44
  ]

39:                                               ; preds = %33
  %40 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %41 = call i32 @IXGBE_EIMS_GPI_SDP0(%struct.ixgbe_hw* %40)
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  br label %49

44:                                               ; preds = %33, %33, %33, %33
  %45 = load i32, i32* @IXGBE_EIMS_TS, align 4
  %46 = load i32, i32* %8, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %8, align 4
  br label %49

48:                                               ; preds = %33
  br label %49

49:                                               ; preds = %48, %44, %39
  br label %50

50:                                               ; preds = %49, %26
  %51 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %52 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @IXGBE_FLAG_FAN_FAIL_CAPABLE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %59 = call i32 @IXGBE_EIMS_GPI_SDP1(%struct.ixgbe_hw* %58)
  %60 = load i32, i32* %8, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %57, %50
  %63 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %64 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  switch i32 %67, label %123 [
    i32 132, label %68
    i32 131, label %77
    i32 130, label %77
    i32 129, label %77
    i32 128, label %77
  ]

68:                                               ; preds = %62
  %69 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %70 = call i32 @IXGBE_EIMS_GPI_SDP1(%struct.ixgbe_hw* %69)
  %71 = load i32, i32* %8, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %8, align 4
  %73 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %74 = call i32 @IXGBE_EIMS_GPI_SDP2(%struct.ixgbe_hw* %73)
  %75 = load i32, i32* %8, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %62, %62, %62, %62, %68
  %78 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %79 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @IXGBE_DEV_ID_X550EM_X_SFP, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %98, label %84

84:                                               ; preds = %77
  %85 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %86 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @IXGBE_DEV_ID_X550EM_A_SFP, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %98, label %91

91:                                               ; preds = %84
  %92 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %93 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @IXGBE_DEV_ID_X550EM_A_SFP_N, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %91, %84, %77
  %99 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %100 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %99, i32 0, i32 2
  %101 = call i32 @IXGBE_EIMS_GPI_SDP0(%struct.ixgbe_hw* %100)
  %102 = load i32, i32* %8, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %8, align 4
  br label %104

104:                                              ; preds = %98, %91
  %105 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %106 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @ixgbe_phy_x550em_ext_t, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %104
  %113 = load i32, i32* @IXGBE_EICR_GPI_SDP0_X540, align 4
  %114 = load i32, i32* %8, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %8, align 4
  br label %116

116:                                              ; preds = %112, %104
  %117 = load i32, i32* @IXGBE_EIMS_ECC, align 4
  %118 = load i32, i32* %8, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* @IXGBE_EIMS_MAILBOX, align 4
  %121 = load i32, i32* %8, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %8, align 4
  br label %124

123:                                              ; preds = %62
  br label %124

124:                                              ; preds = %123, %116
  %125 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %126 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @IXGBE_FLAG_FDIR_HASH_CAPABLE, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %142

131:                                              ; preds = %124
  %132 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %133 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @IXGBE_FLAG2_FDIR_REQUIRES_REINIT, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %142, label %138

138:                                              ; preds = %131
  %139 = load i32, i32* @IXGBE_EIMS_FLOW_DIR, align 4
  %140 = load i32, i32* %8, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %8, align 4
  br label %142

142:                                              ; preds = %138, %131, %124
  %143 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %144 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %143, i32 0, i32 2
  %145 = load i32, i32* @IXGBE_EIMS, align 4
  %146 = load i32, i32* %8, align 4
  %147 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %144, i32 %145, i32 %146)
  %148 = load i32, i32* %5, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %142
  %151 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %152 = call i32 @ixgbe_irq_enable_queues(%struct.ixgbe_adapter* %151, i32 -1)
  br label %153

153:                                              ; preds = %150, %142
  %154 = load i32, i32* %6, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %153
  %157 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %158 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %157, i32 0, i32 2
  %159 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %158)
  br label %160

160:                                              ; preds = %156, %153
  ret void
}

declare dso_local i32 @IXGBE_EIMS_GPI_SDP0(%struct.ixgbe_hw*) #1

declare dso_local i32 @IXGBE_EIMS_GPI_SDP1(%struct.ixgbe_hw*) #1

declare dso_local i32 @IXGBE_EIMS_GPI_SDP2(%struct.ixgbe_hw*) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @ixgbe_irq_enable_queues(%struct.ixgbe_adapter*, i32) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
