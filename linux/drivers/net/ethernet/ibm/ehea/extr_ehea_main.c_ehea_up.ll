; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_main.c_ehea_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_main.c_ehea_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ehea_port = type { i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@EHEA_PORT_UP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"port_res_failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"ehea_configure_port failed. ret:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"reg_interrupts failed. ret:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"activate_qp failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"out_free_irqs\0A\00", align 1
@H_REG_BCMC = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"Failed starting. ret=%i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ehea_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehea_up(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ehea_port*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.ehea_port* @netdev_priv(%struct.net_device* %7)
  store %struct.ehea_port* %8, %struct.ehea_port** %6, align 8
  %9 = load %struct.ehea_port*, %struct.ehea_port** %6, align 8
  %10 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @EHEA_PORT_UP, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %127

15:                                               ; preds = %1
  %16 = load %struct.ehea_port*, %struct.ehea_port** %6, align 8
  %17 = load %struct.ehea_port*, %struct.ehea_port** %6, align 8
  %18 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @ehea_port_res_setup(%struct.ehea_port* %16, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %116

26:                                               ; preds = %15
  %27 = load %struct.ehea_port*, %struct.ehea_port** %6, align 8
  %28 = call i32 @ehea_configure_port(%struct.ehea_port* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.net_device*, %struct.net_device** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %32, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %113

35:                                               ; preds = %26
  %36 = load %struct.net_device*, %struct.net_device** %3, align 8
  %37 = call i32 @ehea_reg_interrupts(%struct.net_device* %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  br label %113

44:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %70, %44
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.ehea_port*, %struct.ehea_port** %6, align 8
  %48 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %73

51:                                               ; preds = %45
  %52 = load %struct.ehea_port*, %struct.ehea_port** %6, align 8
  %53 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.ehea_port*, %struct.ehea_port** %6, align 8
  %56 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %55, i32 0, i32 2
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ehea_activate_qp(i32 %54, i32 %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %51
  %67 = load %struct.net_device*, %struct.net_device** %3, align 8
  %68 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %67, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %110

69:                                               ; preds = %51
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %45

73:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %94, %73
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.ehea_port*, %struct.ehea_port** %6, align 8
  %77 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %97

80:                                               ; preds = %74
  %81 = load %struct.ehea_port*, %struct.ehea_port** %6, align 8
  %82 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %81, i32 0, i32 2
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = call i32 @ehea_fill_port_res(%struct.TYPE_2__* %86)
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* %4, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %80
  %91 = load %struct.net_device*, %struct.net_device** %3, align 8
  %92 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %91, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %110

93:                                               ; preds = %80
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %5, align 4
  br label %74

97:                                               ; preds = %74
  %98 = load %struct.ehea_port*, %struct.ehea_port** %6, align 8
  %99 = load i32, i32* @H_REG_BCMC, align 4
  %100 = call i32 @ehea_broadcast_reg_helper(%struct.ehea_port* %98, i32 %99)
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* %4, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %97
  %104 = load i32, i32* @EIO, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %4, align 4
  br label %110

106:                                              ; preds = %97
  %107 = load i64, i64* @EHEA_PORT_UP, align 8
  %108 = load %struct.ehea_port*, %struct.ehea_port** %6, align 8
  %109 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  store i32 0, i32* %4, align 4
  br label %116

110:                                              ; preds = %103, %90, %66
  %111 = load %struct.net_device*, %struct.net_device** %3, align 8
  %112 = call i32 @ehea_free_interrupts(%struct.net_device* %111)
  br label %113

113:                                              ; preds = %110, %40, %31
  %114 = load %struct.ehea_port*, %struct.ehea_port** %6, align 8
  %115 = call i32 @ehea_clean_all_portres(%struct.ehea_port* %114)
  br label %116

116:                                              ; preds = %113, %106, %23
  %117 = load i32, i32* %4, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %116
  %120 = load %struct.net_device*, %struct.net_device** %3, align 8
  %121 = load i32, i32* %4, align 4
  %122 = call i32 @netdev_info(%struct.net_device* %120, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %121)
  br label %123

123:                                              ; preds = %119, %116
  %124 = call i32 (...) @ehea_update_bcmc_registrations()
  %125 = call i32 (...) @ehea_update_firmware_handles()
  %126 = load i32, i32* %4, align 4
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %123, %14
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local %struct.ehea_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ehea_port_res_setup(%struct.ehea_port*, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @ehea_configure_port(%struct.ehea_port*) #1

declare dso_local i32 @ehea_reg_interrupts(%struct.net_device*) #1

declare dso_local i32 @ehea_activate_qp(i32, i32) #1

declare dso_local i32 @ehea_fill_port_res(%struct.TYPE_2__*) #1

declare dso_local i32 @ehea_broadcast_reg_helper(%struct.ehea_port*, i32) #1

declare dso_local i32 @ehea_free_interrupts(%struct.net_device*) #1

declare dso_local i32 @ehea_clean_all_portres(%struct.ehea_port*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @ehea_update_bcmc_registrations(...) #1

declare dso_local i32 @ehea_update_firmware_handles(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
