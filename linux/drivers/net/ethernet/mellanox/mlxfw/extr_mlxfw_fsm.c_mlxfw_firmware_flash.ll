; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxfw/extr_mlxfw_fsm.c_mlxfw_firmware_flash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxfw/extr_mlxfw_fsm.c_mlxfw_firmware_flash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxfw_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.mlxfw_dev*, i32*)*, i32 (%struct.mlxfw_dev*, i32)*, i32 (%struct.mlxfw_dev*, i32)* }
%struct.firmware = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.mlxfw_mfa2_file = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Firmware file is not MFA2\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Firmware file is not MFA2\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Initialize firmware flash process\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Initializing firmware flash process\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Could not lock the firmware FSM\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Could not lock the firmware FSM\00", align 1
@MLXFW_FSM_STATE_LOCKED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"Activate image\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"Activating image\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"Could not activate the downloaded image\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"Could not activate the downloaded image\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"Handle release\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"Firmware flash done.\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"Firmware flash done\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxfw_firmware_flash(%struct.mlxfw_dev* %0, %struct.firmware* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxfw_dev*, align 8
  %6 = alloca %struct.firmware*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.mlxfw_mfa2_file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mlxfw_dev* %0, %struct.mlxfw_dev** %5, align 8
  store %struct.firmware* %1, %struct.firmware** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %11 = load %struct.firmware*, %struct.firmware** %6, align 8
  %12 = call i32 @mlxfw_mfa2_check(%struct.firmware* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %17 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %122

20:                                               ; preds = %3
  %21 = load %struct.firmware*, %struct.firmware** %6, align 8
  %22 = call %struct.mlxfw_mfa2_file* @mlxfw_mfa2_file_init(%struct.firmware* %21)
  store %struct.mlxfw_mfa2_file* %22, %struct.mlxfw_mfa2_file** %8, align 8
  %23 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %8, align 8
  %24 = call i64 @IS_ERR(%struct.mlxfw_mfa2_file* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %8, align 8
  %28 = call i32 @PTR_ERR(%struct.mlxfw_mfa2_file* %27)
  store i32 %28, i32* %4, align 4
  br label %122

29:                                               ; preds = %20
  %30 = call i32 @pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %31 = load %struct.mlxfw_dev*, %struct.mlxfw_dev** %5, align 8
  %32 = call i32 @mlxfw_status_notify(%struct.mlxfw_dev* %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 0, i32 0)
  %33 = load %struct.mlxfw_dev*, %struct.mlxfw_dev** %5, align 8
  %34 = getelementptr inbounds %struct.mlxfw_dev, %struct.mlxfw_dev* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (%struct.mlxfw_dev*, i32*)*, i32 (%struct.mlxfw_dev*, i32*)** %36, align 8
  %38 = load %struct.mlxfw_dev*, %struct.mlxfw_dev** %5, align 8
  %39 = call i32 %37(%struct.mlxfw_dev* %38, i32* %9)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %29
  %43 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %44 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %45 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %44, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %118

46:                                               ; preds = %29
  %47 = load %struct.mlxfw_dev*, %struct.mlxfw_dev** %5, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @MLXFW_FSM_STATE_LOCKED, align 4
  %50 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %51 = call i32 @mlxfw_fsm_state_wait(%struct.mlxfw_dev* %47, i32 %48, i32 %49, %struct.netlink_ext_ack* %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %109

55:                                               ; preds = %46
  %56 = load %struct.mlxfw_dev*, %struct.mlxfw_dev** %5, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %8, align 8
  %59 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %60 = call i32 @mlxfw_flash_components(%struct.mlxfw_dev* %56, i32 %57, %struct.mlxfw_mfa2_file* %58, %struct.netlink_ext_ack* %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %108

64:                                               ; preds = %55
  %65 = call i32 @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %66 = load %struct.mlxfw_dev*, %struct.mlxfw_dev** %5, align 8
  %67 = call i32 @mlxfw_status_notify(%struct.mlxfw_dev* %66, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32* null, i32 0, i32 0)
  %68 = load %struct.mlxfw_dev*, %struct.mlxfw_dev** %5, align 8
  %69 = getelementptr inbounds %struct.mlxfw_dev, %struct.mlxfw_dev* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32 (%struct.mlxfw_dev*, i32)*, i32 (%struct.mlxfw_dev*, i32)** %71, align 8
  %73 = load %struct.mlxfw_dev*, %struct.mlxfw_dev** %5, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call i32 %72(%struct.mlxfw_dev* %73, i32 %74)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %64
  %79 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  %80 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %81 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %80, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0))
  br label %107

82:                                               ; preds = %64
  %83 = load %struct.mlxfw_dev*, %struct.mlxfw_dev** %5, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @MLXFW_FSM_STATE_LOCKED, align 4
  %86 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %87 = call i32 @mlxfw_fsm_state_wait(%struct.mlxfw_dev* %83, i32 %84, i32 %85, %struct.netlink_ext_ack* %86)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  br label %106

91:                                               ; preds = %82
  %92 = call i32 @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  %93 = load %struct.mlxfw_dev*, %struct.mlxfw_dev** %5, align 8
  %94 = getelementptr inbounds %struct.mlxfw_dev, %struct.mlxfw_dev* %93, i32 0, i32 0
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 2
  %97 = load i32 (%struct.mlxfw_dev*, i32)*, i32 (%struct.mlxfw_dev*, i32)** %96, align 8
  %98 = load %struct.mlxfw_dev*, %struct.mlxfw_dev** %5, align 8
  %99 = load i32, i32* %9, align 4
  %100 = call i32 %97(%struct.mlxfw_dev* %98, i32 %99)
  %101 = call i32 @pr_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  %102 = load %struct.mlxfw_dev*, %struct.mlxfw_dev** %5, align 8
  %103 = call i32 @mlxfw_status_notify(%struct.mlxfw_dev* %102, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32* null, i32 0, i32 0)
  %104 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %8, align 8
  %105 = call i32 @mlxfw_mfa2_file_fini(%struct.mlxfw_mfa2_file* %104)
  store i32 0, i32* %4, align 4
  br label %122

106:                                              ; preds = %90
  br label %107

107:                                              ; preds = %106, %78
  br label %108

108:                                              ; preds = %107, %63
  br label %109

109:                                              ; preds = %108, %54
  %110 = load %struct.mlxfw_dev*, %struct.mlxfw_dev** %5, align 8
  %111 = getelementptr inbounds %struct.mlxfw_dev, %struct.mlxfw_dev* %110, i32 0, i32 0
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 2
  %114 = load i32 (%struct.mlxfw_dev*, i32)*, i32 (%struct.mlxfw_dev*, i32)** %113, align 8
  %115 = load %struct.mlxfw_dev*, %struct.mlxfw_dev** %5, align 8
  %116 = load i32, i32* %9, align 4
  %117 = call i32 %114(%struct.mlxfw_dev* %115, i32 %116)
  br label %118

118:                                              ; preds = %109, %42
  %119 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %8, align 8
  %120 = call i32 @mlxfw_mfa2_file_fini(%struct.mlxfw_mfa2_file* %119)
  %121 = load i32, i32* %10, align 4
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %118, %91, %26, %14
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i32 @mlxfw_mfa2_check(%struct.firmware*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local %struct.mlxfw_mfa2_file* @mlxfw_mfa2_file_init(%struct.firmware*) #1

declare dso_local i64 @IS_ERR(%struct.mlxfw_mfa2_file*) #1

declare dso_local i32 @PTR_ERR(%struct.mlxfw_mfa2_file*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @mlxfw_status_notify(%struct.mlxfw_dev*, i8*, i32*, i32, i32) #1

declare dso_local i32 @mlxfw_fsm_state_wait(%struct.mlxfw_dev*, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @mlxfw_flash_components(%struct.mlxfw_dev*, i32, %struct.mlxfw_mfa2_file*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @mlxfw_mfa2_file_fini(%struct.mlxfw_mfa2_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
