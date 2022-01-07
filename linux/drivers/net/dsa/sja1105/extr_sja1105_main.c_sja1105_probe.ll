; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.sja1105_tagger_data = type { i32, i32, i32 }
%struct.sja1105_private = type { %struct.dsa_switch*, i32, %struct.sja1105_port*, %struct.sja1105_tagger_data, %struct.TYPE_4__*, %struct.spi_device*, i32 }
%struct.dsa_switch = type { %struct.TYPE_3__*, %struct.sja1105_private*, i32* }
%struct.TYPE_3__ = type { %struct.sja1105_port* }
%struct.sja1105_port = type { %struct.sja1105_tagger_data*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"No DTS bindings for SJA1105 driver\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"reset-gpios not defined, ignoring\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Could not init SPI\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Device ID check failed: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Probed switch chip: %s\0A\00", align 1
@SJA1105_NUM_PORTS = common dso_local global i32 0, align 4
@sja1105_switch_ops = common dso_local global i32 0, align 4
@sja1105_rxtstamp_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @sja1105_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sja1105_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.sja1105_tagger_data*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.sja1105_private*, align 8
  %7 = alloca %struct.dsa_switch*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sja1105_port*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %11 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %12 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %11, i32 0, i32 1
  store %struct.device* %12, %struct.device** %5, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %18, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %161

22:                                               ; preds = %1
  %23 = load %struct.device*, %struct.device** %5, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.sja1105_private* @devm_kzalloc(%struct.device* %23, i32 64, i32 %24)
  store %struct.sja1105_private* %25, %struct.sja1105_private** %6, align 8
  %26 = load %struct.sja1105_private*, %struct.sja1105_private** %6, align 8
  %27 = icmp ne %struct.sja1105_private* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %161

31:                                               ; preds = %22
  %32 = load %struct.device*, %struct.device** %5, align 8
  %33 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %34 = call i32 @devm_gpiod_get(%struct.device* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load %struct.sja1105_private*, %struct.sja1105_private** %6, align 8
  %36 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %35, i32 0, i32 6
  store i32 %34, i32* %36, align 8
  %37 = load %struct.sja1105_private*, %struct.sja1105_private** %6, align 8
  %38 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @IS_ERR(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %31
  %43 = load %struct.device*, %struct.device** %5, align 8
  %44 = call i32 @dev_dbg(%struct.device* %43, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %50

45:                                               ; preds = %31
  %46 = load %struct.sja1105_private*, %struct.sja1105_private** %6, align 8
  %47 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @sja1105_hw_reset(i32 %48, i32 1, i32 1)
  br label %50

50:                                               ; preds = %45, %42
  %51 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %52 = load %struct.sja1105_private*, %struct.sja1105_private** %6, align 8
  %53 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %52, i32 0, i32 5
  store %struct.spi_device* %51, %struct.spi_device** %53, align 8
  %54 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %55 = load %struct.sja1105_private*, %struct.sja1105_private** %6, align 8
  %56 = call i32 @spi_set_drvdata(%struct.spi_device* %54, %struct.sja1105_private* %55)
  %57 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %58 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %57, i32 0, i32 0
  store i32 8, i32* %58, align 4
  %59 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %60 = call i32 @spi_setup(%struct.spi_device* %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %50
  %64 = load %struct.device*, %struct.device** %5, align 8
  %65 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %64, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %2, align 4
  br label %161

67:                                               ; preds = %50
  %68 = load %struct.device*, %struct.device** %5, align 8
  %69 = call %struct.TYPE_4__* @of_device_get_match_data(%struct.device* %68)
  %70 = load %struct.sja1105_private*, %struct.sja1105_private** %6, align 8
  %71 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %70, i32 0, i32 4
  store %struct.TYPE_4__* %69, %struct.TYPE_4__** %71, align 8
  %72 = load %struct.sja1105_private*, %struct.sja1105_private** %6, align 8
  %73 = call i32 @sja1105_check_device_id(%struct.sja1105_private* %72)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %67
  %77 = load %struct.device*, %struct.device** %5, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %77, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %2, align 4
  br label %161

81:                                               ; preds = %67
  %82 = load %struct.device*, %struct.device** %5, align 8
  %83 = load %struct.sja1105_private*, %struct.sja1105_private** %6, align 8
  %84 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %83, i32 0, i32 4
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @dev_info(%struct.device* %82, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %87)
  %89 = load %struct.device*, %struct.device** %5, align 8
  %90 = load i32, i32* @SJA1105_NUM_PORTS, align 4
  %91 = call %struct.dsa_switch* @dsa_switch_alloc(%struct.device* %89, i32 %90)
  store %struct.dsa_switch* %91, %struct.dsa_switch** %7, align 8
  %92 = load %struct.dsa_switch*, %struct.dsa_switch** %7, align 8
  %93 = icmp ne %struct.dsa_switch* %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %81
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %2, align 4
  br label %161

97:                                               ; preds = %81
  %98 = load %struct.dsa_switch*, %struct.dsa_switch** %7, align 8
  %99 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %98, i32 0, i32 2
  store i32* @sja1105_switch_ops, i32** %99, align 8
  %100 = load %struct.sja1105_private*, %struct.sja1105_private** %6, align 8
  %101 = load %struct.dsa_switch*, %struct.dsa_switch** %7, align 8
  %102 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %101, i32 0, i32 1
  store %struct.sja1105_private* %100, %struct.sja1105_private** %102, align 8
  %103 = load %struct.dsa_switch*, %struct.dsa_switch** %7, align 8
  %104 = load %struct.sja1105_private*, %struct.sja1105_private** %6, align 8
  %105 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %104, i32 0, i32 0
  store %struct.dsa_switch* %103, %struct.dsa_switch** %105, align 8
  %106 = load %struct.sja1105_private*, %struct.sja1105_private** %6, align 8
  %107 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %106, i32 0, i32 3
  store %struct.sja1105_tagger_data* %107, %struct.sja1105_tagger_data** %4, align 8
  %108 = load %struct.sja1105_tagger_data*, %struct.sja1105_tagger_data** %4, align 8
  %109 = getelementptr inbounds %struct.sja1105_tagger_data, %struct.sja1105_tagger_data* %108, i32 0, i32 2
  %110 = call i32 @skb_queue_head_init(i32* %109)
  %111 = load %struct.sja1105_tagger_data*, %struct.sja1105_tagger_data** %4, align 8
  %112 = getelementptr inbounds %struct.sja1105_tagger_data, %struct.sja1105_tagger_data* %111, i32 0, i32 1
  %113 = load i32, i32* @sja1105_rxtstamp_work, align 4
  %114 = call i32 @INIT_WORK(i32* %112, i32 %113)
  %115 = load %struct.sja1105_tagger_data*, %struct.sja1105_tagger_data** %4, align 8
  %116 = getelementptr inbounds %struct.sja1105_tagger_data, %struct.sja1105_tagger_data* %115, i32 0, i32 0
  %117 = call i32 @spin_lock_init(i32* %116)
  store i32 0, i32* %9, align 4
  br label %118

118:                                              ; preds = %148, %97
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* @SJA1105_NUM_PORTS, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %151

122:                                              ; preds = %118
  %123 = load %struct.sja1105_private*, %struct.sja1105_private** %6, align 8
  %124 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %123, i32 0, i32 2
  %125 = load %struct.sja1105_port*, %struct.sja1105_port** %124, align 8
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.sja1105_port, %struct.sja1105_port* %125, i64 %127
  store %struct.sja1105_port* %128, %struct.sja1105_port** %10, align 8
  %129 = load %struct.sja1105_port*, %struct.sja1105_port** %10, align 8
  %130 = load %struct.dsa_switch*, %struct.dsa_switch** %7, align 8
  %131 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %130, i32 0, i32 0
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %131, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  store %struct.sja1105_port* %129, %struct.sja1105_port** %136, align 8
  %137 = load %struct.dsa_switch*, %struct.dsa_switch** %7, align 8
  %138 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %137, i32 0, i32 0
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %138, align 8
  %140 = load i32, i32* %9, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i64 %141
  %143 = load %struct.sja1105_port*, %struct.sja1105_port** %10, align 8
  %144 = getelementptr inbounds %struct.sja1105_port, %struct.sja1105_port* %143, i32 0, i32 1
  store %struct.TYPE_3__* %142, %struct.TYPE_3__** %144, align 8
  %145 = load %struct.sja1105_tagger_data*, %struct.sja1105_tagger_data** %4, align 8
  %146 = load %struct.sja1105_port*, %struct.sja1105_port** %10, align 8
  %147 = getelementptr inbounds %struct.sja1105_port, %struct.sja1105_port* %146, i32 0, i32 0
  store %struct.sja1105_tagger_data* %145, %struct.sja1105_tagger_data** %147, align 8
  br label %148

148:                                              ; preds = %122
  %149 = load i32, i32* %9, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %9, align 4
  br label %118

151:                                              ; preds = %118
  %152 = load %struct.sja1105_private*, %struct.sja1105_private** %6, align 8
  %153 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %152, i32 0, i32 1
  %154 = call i32 @mutex_init(i32* %153)
  %155 = load %struct.dsa_switch*, %struct.dsa_switch** %7, align 8
  %156 = call i32 @sja1105_tas_setup(%struct.dsa_switch* %155)
  %157 = load %struct.sja1105_private*, %struct.sja1105_private** %6, align 8
  %158 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %157, i32 0, i32 0
  %159 = load %struct.dsa_switch*, %struct.dsa_switch** %158, align 8
  %160 = call i32 @dsa_register_switch(%struct.dsa_switch* %159)
  store i32 %160, i32* %2, align 4
  br label %161

161:                                              ; preds = %151, %94, %76, %63, %28, %17
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.sja1105_private* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @sja1105_hw_reset(i32, i32, i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.sja1105_private*) #1

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local %struct.TYPE_4__* @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @sja1105_check_device_id(%struct.sja1105_private*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local %struct.dsa_switch* @dsa_switch_alloc(%struct.device*, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @sja1105_tas_setup(%struct.dsa_switch*) #1

declare dso_local i32 @dsa_register_switch(%struct.dsa_switch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
