; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_devlink.c_bnxt_dl_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_devlink.c_bnxt_dl_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32, i32, %struct.TYPE_3__, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.devlink = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Firmware does not support NVM params\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@bnxt_dl_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"devlink_alloc failed\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PCI_EXT_CAP_ID_SRIOV = common dso_local global i32 0, align 4
@DEVLINK_ESWITCH_MODE_LEGACY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"devlink_register failed. rc=%d\00", align 1
@bnxt_dl_params = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"devlink_params_register failed. rc=%d\00", align 1
@DEVLINK_PORT_FLAVOUR_PHYSICAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"devlink_port_register failed\00", align 1
@bnxt_dl_port_params = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"devlink_port_params_register failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_dl_register(%struct.bnxt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca %struct.devlink*, align 8
  %5 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  %6 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %7 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %8, 67072
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %12 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 (i32, i8*, ...) @netdev_warn(i32 %13, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @ENOTSUPP, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %147

17:                                               ; preds = %1
  %18 = call %struct.devlink* @devlink_alloc(i32* @bnxt_dl_ops, i32 4)
  store %struct.devlink* %18, %struct.devlink** %4, align 8
  %19 = load %struct.devlink*, %struct.devlink** %4, align 8
  %20 = icmp ne %struct.devlink* %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %17
  %22 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %23 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 (i32, i8*, ...) @netdev_warn(i32 %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %147

28:                                               ; preds = %17
  %29 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %30 = load %struct.devlink*, %struct.devlink** %4, align 8
  %31 = call i32 @bnxt_link_bp_to_dl(%struct.bnxt* %29, %struct.devlink* %30)
  %32 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %33 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %32, i32 0, i32 5
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load i32, i32* @PCI_EXT_CAP_ID_SRIOV, align 4
  %36 = call i64 @pci_find_ext_capability(%struct.TYPE_4__* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %28
  %39 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %40 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp sgt i32 %41, 67587
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* @DEVLINK_ESWITCH_MODE_LEGACY, align 4
  %45 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %46 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %45, i32 0, i32 6
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %43, %38, %28
  %48 = load %struct.devlink*, %struct.devlink** %4, align 8
  %49 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %50 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %49, i32 0, i32 5
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = call i32 @devlink_register(%struct.devlink* %48, i32* %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %47
  %57 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %58 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 (i32, i8*, ...) @netdev_warn(i32 %59, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  br label %141

62:                                               ; preds = %47
  %63 = load %struct.devlink*, %struct.devlink** %4, align 8
  %64 = load i32, i32* @bnxt_dl_params, align 4
  %65 = load i32, i32* @bnxt_dl_params, align 4
  %66 = call i32 @ARRAY_SIZE(i32 %65)
  %67 = call i32 @devlink_params_register(%struct.devlink* %63, i32 %64, i32 %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %62
  %71 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %72 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i32 (i32, i8*, ...) @netdev_warn(i32 %73, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  br label %138

76:                                               ; preds = %62
  %77 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %78 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %77, i32 0, i32 1
  %79 = load i32, i32* @DEVLINK_PORT_FLAVOUR_PHYSICAL, align 4
  %80 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %81 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %85 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @devlink_port_attrs_set(i32* %78, i32 %79, i32 %83, i32 0, i32 0, i32 %86, i32 4)
  %88 = load %struct.devlink*, %struct.devlink** %4, align 8
  %89 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %90 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %89, i32 0, i32 1
  %91 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %92 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @devlink_port_register(%struct.devlink* %88, i32* %90, i32 %94)
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %5, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %76
  %99 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %100 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @netdev_err(i32 %101, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %132

103:                                              ; preds = %76
  %104 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %105 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %104, i32 0, i32 1
  %106 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %107 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @devlink_port_type_eth_set(i32* %105, i32 %108)
  %110 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %111 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %110, i32 0, i32 1
  %112 = load i32, i32* @bnxt_dl_port_params, align 4
  %113 = load i32, i32* @bnxt_dl_port_params, align 4
  %114 = call i32 @ARRAY_SIZE(i32 %113)
  %115 = call i32 @devlink_port_params_register(i32* %111, i32 %112, i32 %114)
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* %5, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %103
  %119 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %120 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @netdev_err(i32 %121, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %128

123:                                              ; preds = %103
  %124 = load %struct.devlink*, %struct.devlink** %4, align 8
  %125 = call i32 @devlink_params_publish(%struct.devlink* %124)
  %126 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %127 = call i32 @bnxt_dl_fw_reporters_create(%struct.bnxt* %126)
  store i32 0, i32* %2, align 4
  br label %147

128:                                              ; preds = %118
  %129 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %130 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %129, i32 0, i32 1
  %131 = call i32 @devlink_port_unregister(i32* %130)
  br label %132

132:                                              ; preds = %128, %98
  %133 = load %struct.devlink*, %struct.devlink** %4, align 8
  %134 = load i32, i32* @bnxt_dl_params, align 4
  %135 = load i32, i32* @bnxt_dl_params, align 4
  %136 = call i32 @ARRAY_SIZE(i32 %135)
  %137 = call i32 @devlink_params_unregister(%struct.devlink* %133, i32 %134, i32 %136)
  br label %138

138:                                              ; preds = %132, %70
  %139 = load %struct.devlink*, %struct.devlink** %4, align 8
  %140 = call i32 @devlink_unregister(%struct.devlink* %139)
  br label %141

141:                                              ; preds = %138, %56
  %142 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %143 = call i32 @bnxt_link_bp_to_dl(%struct.bnxt* %142, %struct.devlink* null)
  %144 = load %struct.devlink*, %struct.devlink** %4, align 8
  %145 = call i32 @devlink_free(%struct.devlink* %144)
  %146 = load i32, i32* %5, align 4
  store i32 %146, i32* %2, align 4
  br label %147

147:                                              ; preds = %141, %123, %21, %10
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local i32 @netdev_warn(i32, i8*, ...) #1

declare dso_local %struct.devlink* @devlink_alloc(i32*, i32) #1

declare dso_local i32 @bnxt_link_bp_to_dl(%struct.bnxt*, %struct.devlink*) #1

declare dso_local i64 @pci_find_ext_capability(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @devlink_register(%struct.devlink*, i32*) #1

declare dso_local i32 @devlink_params_register(%struct.devlink*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @devlink_port_attrs_set(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @devlink_port_register(%struct.devlink*, i32*, i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @devlink_port_type_eth_set(i32*, i32) #1

declare dso_local i32 @devlink_port_params_register(i32*, i32, i32) #1

declare dso_local i32 @devlink_params_publish(%struct.devlink*) #1

declare dso_local i32 @bnxt_dl_fw_reporters_create(%struct.bnxt*) #1

declare dso_local i32 @devlink_port_unregister(i32*) #1

declare dso_local i32 @devlink_params_unregister(%struct.devlink*, i32, i32) #1

declare dso_local i32 @devlink_unregister(%struct.devlink*) #1

declare dso_local i32 @devlink_free(%struct.devlink*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
