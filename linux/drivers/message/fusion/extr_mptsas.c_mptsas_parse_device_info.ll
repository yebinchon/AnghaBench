; ModuleID = '/home/carl/AnghaBench/linux/drivers/message/fusion/extr_mptsas.c_mptsas_parse_device_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/message/fusion/extr_mptsas.c_mptsas_parse_device_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_identify = type { i32, i32, i32, i32, i32 }
%struct.mptsas_devinfo = type { i32, i32, i32 }

@MPI_SAS_DEVICE_INFO_SSP_INITIATOR = common dso_local global i32 0, align 4
@SAS_PROTOCOL_SSP = common dso_local global i32 0, align 4
@MPI_SAS_DEVICE_INFO_STP_INITIATOR = common dso_local global i32 0, align 4
@SAS_PROTOCOL_STP = common dso_local global i32 0, align 4
@MPI_SAS_DEVICE_INFO_SMP_INITIATOR = common dso_local global i32 0, align 4
@SAS_PROTOCOL_SMP = common dso_local global i32 0, align 4
@MPI_SAS_DEVICE_INFO_SATA_HOST = common dso_local global i32 0, align 4
@SAS_PROTOCOL_SATA = common dso_local global i32 0, align 4
@MPI_SAS_DEVICE_INFO_SSP_TARGET = common dso_local global i32 0, align 4
@MPI_SAS_DEVICE_INFO_STP_TARGET = common dso_local global i32 0, align 4
@MPI_SAS_DEVICE_INFO_SMP_TARGET = common dso_local global i32 0, align 4
@MPI_SAS_DEVICE_INFO_SATA_DEVICE = common dso_local global i32 0, align 4
@MPI_SAS_DEVICE_INFO_MASK_DEVICE_TYPE = common dso_local global i32 0, align 4
@SAS_PHY_UNUSED = common dso_local global i32 0, align 4
@SAS_END_DEVICE = common dso_local global i32 0, align 4
@SAS_EDGE_EXPANDER_DEVICE = common dso_local global i32 0, align 4
@SAS_FANOUT_EXPANDER_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sas_identify*, %struct.mptsas_devinfo*)* @mptsas_parse_device_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mptsas_parse_device_info(%struct.sas_identify* %0, %struct.mptsas_devinfo* %1) #0 {
  %3 = alloca %struct.sas_identify*, align 8
  %4 = alloca %struct.mptsas_devinfo*, align 8
  %5 = alloca i32, align 4
  store %struct.sas_identify* %0, %struct.sas_identify** %3, align 8
  store %struct.mptsas_devinfo* %1, %struct.mptsas_devinfo** %4, align 8
  %6 = load %struct.mptsas_devinfo*, %struct.mptsas_devinfo** %4, align 8
  %7 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.sas_identify*, %struct.sas_identify** %3, align 8
  %10 = getelementptr inbounds %struct.sas_identify, %struct.sas_identify* %9, i32 0, i32 4
  store i32 %8, i32* %10, align 4
  %11 = load %struct.mptsas_devinfo*, %struct.mptsas_devinfo** %4, align 8
  %12 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.sas_identify*, %struct.sas_identify** %3, align 8
  %15 = getelementptr inbounds %struct.sas_identify, %struct.sas_identify* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 4
  %16 = load %struct.mptsas_devinfo*, %struct.mptsas_devinfo** %4, align 8
  %17 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 120
  store i32 %19, i32* %5, align 4
  %20 = load %struct.sas_identify*, %struct.sas_identify** %3, align 8
  %21 = getelementptr inbounds %struct.sas_identify, %struct.sas_identify* %20, i32 0, i32 2
  store i32 0, i32* %21, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @MPI_SAS_DEVICE_INFO_SSP_INITIATOR, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %2
  %27 = load i32, i32* @SAS_PROTOCOL_SSP, align 4
  %28 = load %struct.sas_identify*, %struct.sas_identify** %3, align 8
  %29 = getelementptr inbounds %struct.sas_identify, %struct.sas_identify* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %26, %2
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @MPI_SAS_DEVICE_INFO_STP_INITIATOR, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i32, i32* @SAS_PROTOCOL_STP, align 4
  %39 = load %struct.sas_identify*, %struct.sas_identify** %3, align 8
  %40 = getelementptr inbounds %struct.sas_identify, %struct.sas_identify* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %37, %32
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @MPI_SAS_DEVICE_INFO_SMP_INITIATOR, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load i32, i32* @SAS_PROTOCOL_SMP, align 4
  %50 = load %struct.sas_identify*, %struct.sas_identify** %3, align 8
  %51 = getelementptr inbounds %struct.sas_identify, %struct.sas_identify* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %48, %43
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @MPI_SAS_DEVICE_INFO_SATA_HOST, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load i32, i32* @SAS_PROTOCOL_SATA, align 4
  %61 = load %struct.sas_identify*, %struct.sas_identify** %3, align 8
  %62 = getelementptr inbounds %struct.sas_identify, %struct.sas_identify* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %59, %54
  %66 = load %struct.mptsas_devinfo*, %struct.mptsas_devinfo** %4, align 8
  %67 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 1920
  store i32 %69, i32* %5, align 4
  %70 = load %struct.sas_identify*, %struct.sas_identify** %3, align 8
  %71 = getelementptr inbounds %struct.sas_identify, %struct.sas_identify* %70, i32 0, i32 1
  store i32 0, i32* %71, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @MPI_SAS_DEVICE_INFO_SSP_TARGET, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %65
  %77 = load i32, i32* @SAS_PROTOCOL_SSP, align 4
  %78 = load %struct.sas_identify*, %struct.sas_identify** %3, align 8
  %79 = getelementptr inbounds %struct.sas_identify, %struct.sas_identify* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %76, %65
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @MPI_SAS_DEVICE_INFO_STP_TARGET, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load i32, i32* @SAS_PROTOCOL_STP, align 4
  %89 = load %struct.sas_identify*, %struct.sas_identify** %3, align 8
  %90 = getelementptr inbounds %struct.sas_identify, %struct.sas_identify* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %87, %82
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @MPI_SAS_DEVICE_INFO_SMP_TARGET, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %93
  %99 = load i32, i32* @SAS_PROTOCOL_SMP, align 4
  %100 = load %struct.sas_identify*, %struct.sas_identify** %3, align 8
  %101 = getelementptr inbounds %struct.sas_identify, %struct.sas_identify* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %98, %93
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @MPI_SAS_DEVICE_INFO_SATA_DEVICE, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %104
  %110 = load i32, i32* @SAS_PROTOCOL_SATA, align 4
  %111 = load %struct.sas_identify*, %struct.sas_identify** %3, align 8
  %112 = getelementptr inbounds %struct.sas_identify, %struct.sas_identify* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %109, %104
  %116 = load %struct.mptsas_devinfo*, %struct.mptsas_devinfo** %4, align 8
  %117 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @MPI_SAS_DEVICE_INFO_MASK_DEVICE_TYPE, align 4
  %120 = and i32 %118, %119
  switch i32 %120, label %137 [
    i32 128, label %121
    i32 130, label %125
    i32 131, label %129
    i32 129, label %133
  ]

121:                                              ; preds = %115
  %122 = load i32, i32* @SAS_PHY_UNUSED, align 4
  %123 = load %struct.sas_identify*, %struct.sas_identify** %3, align 8
  %124 = getelementptr inbounds %struct.sas_identify, %struct.sas_identify* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 4
  br label %137

125:                                              ; preds = %115
  %126 = load i32, i32* @SAS_END_DEVICE, align 4
  %127 = load %struct.sas_identify*, %struct.sas_identify** %3, align 8
  %128 = getelementptr inbounds %struct.sas_identify, %struct.sas_identify* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 4
  br label %137

129:                                              ; preds = %115
  %130 = load i32, i32* @SAS_EDGE_EXPANDER_DEVICE, align 4
  %131 = load %struct.sas_identify*, %struct.sas_identify** %3, align 8
  %132 = getelementptr inbounds %struct.sas_identify, %struct.sas_identify* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 4
  br label %137

133:                                              ; preds = %115
  %134 = load i32, i32* @SAS_FANOUT_EXPANDER_DEVICE, align 4
  %135 = load %struct.sas_identify*, %struct.sas_identify** %3, align 8
  %136 = getelementptr inbounds %struct.sas_identify, %struct.sas_identify* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 4
  br label %137

137:                                              ; preds = %115, %133, %129, %125, %121
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
