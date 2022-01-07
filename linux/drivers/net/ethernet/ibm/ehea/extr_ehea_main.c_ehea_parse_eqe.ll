; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_main.c_ehea_parse_eqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_main.c_ehea_parse_eqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehea_adapter = type { i32 }
%struct.ehea_port = type { i32, i32, i32, %struct.net_device* }
%struct.net_device = type { i32 }

@NEQE_EVENT_CODE = common dso_local global i32 0, align 4
@NEQE_PORTNUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"unknown portnum %x\0A\00", align 1
@NEQE_PORT_UP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"failed resensing port attributes\0A\00", align 1
@link = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Logical port up: %dMbps %s Duplex\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Full\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Half\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Logical port down\0A\00", align 1
@NEQE_EXTSWITCH_PORT_UP = common dso_local global i32 0, align 4
@EHEA_PHY_LINK_UP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"Physical port up\0A\00", align 1
@prop_carrier_state = common dso_local global i32 0, align 4
@EHEA_PHY_LINK_DOWN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"Physical port down\0A\00", align 1
@NEQE_EXTSWITCH_PRIMARY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [38 x i8] c"External switch port is primary port\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"External switch port is backup port\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"Adapter malfunction\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"Port malfunction\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"unknown event code %x, eqe=0x%llX\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehea_adapter*, i32)* @ehea_parse_eqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehea_parse_eqe(%struct.ehea_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.ehea_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ehea_port*, align 8
  %9 = alloca %struct.net_device*, align 8
  store %struct.ehea_adapter* %0, %struct.ehea_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* @NEQE_EVENT_CODE, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @EHEA_BMASK_GET(i32 %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @NEQE_PORTNUM, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @EHEA_BMASK_GET(i32 %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.ehea_adapter*, %struct.ehea_adapter** %3, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call %struct.ehea_port* @ehea_get_port(%struct.ehea_adapter* %16, i32 %17)
  store %struct.ehea_port* %18, %struct.ehea_port** %8, align 8
  %19 = load %struct.ehea_port*, %struct.ehea_port** %8, align 8
  %20 = icmp ne %struct.ehea_port* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  %23 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %139

24:                                               ; preds = %2
  %25 = load %struct.ehea_port*, %struct.ehea_port** %8, align 8
  %26 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %25, i32 0, i32 3
  %27 = load %struct.net_device*, %struct.net_device** %26, align 8
  store %struct.net_device* %27, %struct.net_device** %9, align 8
  %28 = load i32, i32* %6, align 4
  switch i32 %28, label %134 [
    i32 129, label %29
    i32 130, label %124
    i32 128, label %127
  ]

29:                                               ; preds = %24
  %30 = load i32, i32* @NEQE_PORT_UP, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @EHEA_BMASK_GET(i32 %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %65

34:                                               ; preds = %29
  %35 = load %struct.net_device*, %struct.net_device** %9, align 8
  %36 = call i32 @netif_carrier_ok(%struct.net_device* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %64, label %38

38:                                               ; preds = %34
  %39 = load %struct.ehea_port*, %struct.ehea_port** %8, align 8
  %40 = call i32 @ehea_sense_port_attr(%struct.ehea_port* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.net_device*, %struct.net_device** %9, align 8
  %45 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %44, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %139

46:                                               ; preds = %38
  %47 = load %struct.ehea_port*, %struct.ehea_port** %8, align 8
  %48 = load i32, i32* @link, align 4
  %49 = load %struct.net_device*, %struct.net_device** %9, align 8
  %50 = load %struct.ehea_port*, %struct.ehea_port** %8, align 8
  %51 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.ehea_port*, %struct.ehea_port** %8, align 8
  %54 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, 1
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %59 = call i32 (%struct.ehea_port*, i32, %struct.net_device*, i8*, ...) @netif_info(%struct.ehea_port* %47, i32 %48, %struct.net_device* %49, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %52, i8* %58)
  %60 = load %struct.net_device*, %struct.net_device** %9, align 8
  %61 = call i32 @netif_carrier_on(%struct.net_device* %60)
  %62 = load %struct.net_device*, %struct.net_device** %9, align 8
  %63 = call i32 @netif_wake_queue(%struct.net_device* %62)
  br label %64

64:                                               ; preds = %46, %34
  br label %79

65:                                               ; preds = %29
  %66 = load %struct.net_device*, %struct.net_device** %9, align 8
  %67 = call i32 @netif_carrier_ok(%struct.net_device* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %65
  %70 = load %struct.ehea_port*, %struct.ehea_port** %8, align 8
  %71 = load i32, i32* @link, align 4
  %72 = load %struct.net_device*, %struct.net_device** %9, align 8
  %73 = call i32 (%struct.ehea_port*, i32, %struct.net_device*, i8*, ...) @netif_info(%struct.ehea_port* %70, i32 %71, %struct.net_device* %72, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %74 = load %struct.net_device*, %struct.net_device** %9, align 8
  %75 = call i32 @netif_carrier_off(%struct.net_device* %74)
  %76 = load %struct.net_device*, %struct.net_device** %9, align 8
  %77 = call i32 @netif_tx_disable(%struct.net_device* %76)
  br label %78

78:                                               ; preds = %69, %65
  br label %79

79:                                               ; preds = %78, %64
  %80 = load i32, i32* @NEQE_EXTSWITCH_PORT_UP, align 4
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @EHEA_BMASK_GET(i32 %80, i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %98

84:                                               ; preds = %79
  %85 = load i32, i32* @EHEA_PHY_LINK_UP, align 4
  %86 = load %struct.ehea_port*, %struct.ehea_port** %8, align 8
  %87 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct.ehea_port*, %struct.ehea_port** %8, align 8
  %89 = load i32, i32* @link, align 4
  %90 = load %struct.net_device*, %struct.net_device** %9, align 8
  %91 = call i32 (%struct.ehea_port*, i32, %struct.net_device*, i8*, ...) @netif_info(%struct.ehea_port* %88, i32 %89, %struct.net_device* %90, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %92 = load i32, i32* @prop_carrier_state, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %84
  %95 = load %struct.net_device*, %struct.net_device** %9, align 8
  %96 = call i32 @netif_carrier_on(%struct.net_device* %95)
  br label %97

97:                                               ; preds = %94, %84
  br label %112

98:                                               ; preds = %79
  %99 = load i32, i32* @EHEA_PHY_LINK_DOWN, align 4
  %100 = load %struct.ehea_port*, %struct.ehea_port** %8, align 8
  %101 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load %struct.ehea_port*, %struct.ehea_port** %8, align 8
  %103 = load i32, i32* @link, align 4
  %104 = load %struct.net_device*, %struct.net_device** %9, align 8
  %105 = call i32 (%struct.ehea_port*, i32, %struct.net_device*, i8*, ...) @netif_info(%struct.ehea_port* %102, i32 %103, %struct.net_device* %104, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %106 = load i32, i32* @prop_carrier_state, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %98
  %109 = load %struct.net_device*, %struct.net_device** %9, align 8
  %110 = call i32 @netif_carrier_off(%struct.net_device* %109)
  br label %111

111:                                              ; preds = %108, %98
  br label %112

112:                                              ; preds = %111, %97
  %113 = load i32, i32* @NEQE_EXTSWITCH_PRIMARY, align 4
  %114 = load i32, i32* %4, align 4
  %115 = call i32 @EHEA_BMASK_GET(i32 %113, i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %112
  %118 = load %struct.net_device*, %struct.net_device** %9, align 8
  %119 = call i32 @netdev_info(%struct.net_device* %118, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  br label %123

120:                                              ; preds = %112
  %121 = load %struct.net_device*, %struct.net_device** %9, align 8
  %122 = call i32 @netdev_info(%struct.net_device* %121, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0))
  br label %123

123:                                              ; preds = %120, %117
  br label %139

124:                                              ; preds = %24
  %125 = load %struct.net_device*, %struct.net_device** %9, align 8
  %126 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %125, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  br label %139

127:                                              ; preds = %24
  %128 = load %struct.net_device*, %struct.net_device** %9, align 8
  %129 = call i32 @netdev_info(%struct.net_device* %128, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  %130 = load %struct.net_device*, %struct.net_device** %9, align 8
  %131 = call i32 @netif_carrier_off(%struct.net_device* %130)
  %132 = load %struct.net_device*, %struct.net_device** %9, align 8
  %133 = call i32 @netif_tx_disable(%struct.net_device* %132)
  br label %139

134:                                              ; preds = %24
  %135 = load %struct.net_device*, %struct.net_device** %9, align 8
  %136 = load i32, i32* %6, align 4
  %137 = load i32, i32* %4, align 4
  %138 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %135, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0), i32 %136, i32 %137)
  br label %139

139:                                              ; preds = %21, %134, %127, %124, %123, %43
  ret void
}

declare dso_local i32 @EHEA_BMASK_GET(i32, i32) #1

declare dso_local %struct.ehea_port* @ehea_get_port(%struct.ehea_adapter*, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @ehea_sense_port_attr(%struct.ehea_port*) #1

declare dso_local i32 @netif_info(%struct.ehea_port*, i32, %struct.net_device*, i8*, ...) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_tx_disable(%struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
