; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-max.c_ddb_fe_attach_mci.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-max.c_ddb_fe_attach_mci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mci_cfg = type { i32 }
%struct.ddb_input = type { i32, %struct.ddb_port* }
%struct.ddb_port = type { i64, %struct.ddb_dvb*, %struct.ddb* }
%struct.ddb_dvb = type { i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.ddb_input*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.ddb = type { i32, %struct.ddb_link* }
%struct.ddb_link = type { i32 }

@ddb_max_sx8_cfg = common dso_local global %struct.mci_cfg zeroinitializer, align 4
@fmode = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"No MCI card found!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"No MCI set_input function pointer!\0A\00", align 1
@LNB_CMD_INIT = common dso_local global i32 0, align 4
@SEC_VOLTAGE_OFF = common dso_local global i32 0, align 4
@max_set_voltage = common dso_local global i32 0, align 4
@max_enable_high_lnb_voltage = common dso_local global i32 0, align 4
@max_set_tone = common dso_local global i32 0, align 4
@max_send_master_cmd = common dso_local global i32 0, align 4
@max_send_burst = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ddb_fe_attach_mci(%struct.ddb_input* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ddb_input*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ddb*, align 8
  %7 = alloca %struct.ddb_dvb*, align 8
  %8 = alloca %struct.ddb_port*, align 8
  %9 = alloca %struct.ddb_link*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mci_cfg, align 4
  store %struct.ddb_input* %0, %struct.ddb_input** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.ddb_input*, %struct.ddb_input** %4, align 8
  %14 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %13, i32 0, i32 1
  %15 = load %struct.ddb_port*, %struct.ddb_port** %14, align 8
  %16 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %15, i32 0, i32 2
  %17 = load %struct.ddb*, %struct.ddb** %16, align 8
  store %struct.ddb* %17, %struct.ddb** %6, align 8
  %18 = load %struct.ddb_input*, %struct.ddb_input** %4, align 8
  %19 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %18, i32 0, i32 1
  %20 = load %struct.ddb_port*, %struct.ddb_port** %19, align 8
  %21 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %20, i32 0, i32 1
  %22 = load %struct.ddb_dvb*, %struct.ddb_dvb** %21, align 8
  %23 = load %struct.ddb_input*, %struct.ddb_input** %4, align 8
  %24 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %22, i64 %27
  store %struct.ddb_dvb* %28, %struct.ddb_dvb** %7, align 8
  %29 = load %struct.ddb_input*, %struct.ddb_input** %4, align 8
  %30 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %29, i32 0, i32 1
  %31 = load %struct.ddb_port*, %struct.ddb_port** %30, align 8
  store %struct.ddb_port* %31, %struct.ddb_port** %8, align 8
  %32 = load %struct.ddb*, %struct.ddb** %6, align 8
  %33 = getelementptr inbounds %struct.ddb, %struct.ddb* %32, i32 0, i32 1
  %34 = load %struct.ddb_link*, %struct.ddb_link** %33, align 8
  %35 = load %struct.ddb_port*, %struct.ddb_port** %8, align 8
  %36 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.ddb_link, %struct.ddb_link* %34, i64 %37
  store %struct.ddb_link* %38, %struct.ddb_link** %9, align 8
  %39 = load %struct.ddb_input*, %struct.ddb_input** %4, align 8
  %40 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = and i32 %42, 3
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %5, align 4
  switch i32 %44, label %51 [
    i32 128, label %45
  ]

45:                                               ; preds = %2
  %46 = bitcast %struct.mci_cfg* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 4 bitcast (%struct.mci_cfg* @ddb_max_sx8_cfg to i8*), i64 4, i1 false)
  %47 = load i32, i32* @fmode, align 4
  %48 = icmp eq i32 %47, 3
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 0, i32* %11, align 4
  br label %50

50:                                               ; preds = %49, %45
  br label %54

51:                                               ; preds = %2
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %160

54:                                               ; preds = %50
  %55 = load %struct.ddb_input*, %struct.ddb_input** %4, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.ddb_dvb*, %struct.ddb_dvb** %7, align 8
  %58 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %57, i32 0, i32 3
  %59 = call %struct.TYPE_4__* @ddb_mci_attach(%struct.ddb_input* %55, %struct.mci_cfg* %12, i32 %56, i32* %58)
  %60 = load %struct.ddb_dvb*, %struct.ddb_dvb** %7, align 8
  %61 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %60, i32 0, i32 1
  store %struct.TYPE_4__* %59, %struct.TYPE_4__** %61, align 8
  %62 = load %struct.ddb_dvb*, %struct.ddb_dvb** %7, align 8
  %63 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %62, i32 0, i32 1
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = icmp ne %struct.TYPE_4__* %64, null
  br i1 %65, label %73, label %66

66:                                               ; preds = %54
  %67 = load %struct.ddb*, %struct.ddb** %6, align 8
  %68 = getelementptr inbounds %struct.ddb, %struct.ddb* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @dev_err(i32 %69, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %71 = load i32, i32* @ENODEV, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %160

73:                                               ; preds = %54
  %74 = load %struct.ddb_dvb*, %struct.ddb_dvb** %7, align 8
  %75 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %73
  %79 = load %struct.ddb*, %struct.ddb** %6, align 8
  %80 = getelementptr inbounds %struct.ddb, %struct.ddb* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @dev_err(i32 %81, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %83 = load i32, i32* @ENODEV, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %160

85:                                               ; preds = %73
  %86 = load %struct.ddb_input*, %struct.ddb_input** %4, align 8
  %87 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %88, 4
  br i1 %89, label %90, label %109

90:                                               ; preds = %85
  %91 = load %struct.ddb*, %struct.ddb** %6, align 8
  %92 = load %struct.ddb_port*, %struct.ddb_port** %8, align 8
  %93 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.ddb_input*, %struct.ddb_input** %4, align 8
  %96 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @LNB_CMD_INIT, align 4
  %99 = call i32 @lnb_command(%struct.ddb* %91, i64 %94, i32 %97, i32 %98)
  %100 = load %struct.ddb*, %struct.ddb** %6, align 8
  %101 = load %struct.ddb_port*, %struct.ddb_port** %8, align 8
  %102 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.ddb_input*, %struct.ddb_input** %4, align 8
  %105 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @SEC_VOLTAGE_OFF, align 4
  %108 = call i32 @lnb_set_voltage(%struct.ddb* %100, i64 %103, i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %90, %85
  %110 = load %struct.ddb*, %struct.ddb** %6, align 8
  %111 = load %struct.ddb_link*, %struct.ddb_link** %9, align 8
  %112 = load i32, i32* @fmode, align 4
  %113 = call i32 @ddb_lnb_init_fmode(%struct.ddb* %110, %struct.ddb_link* %111, i32 %112)
  %114 = load i32, i32* @max_set_voltage, align 4
  %115 = load %struct.ddb_dvb*, %struct.ddb_dvb** %7, align 8
  %116 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %115, i32 0, i32 1
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 4
  store i32 %114, i32* %119, align 8
  %120 = load i32, i32* @max_enable_high_lnb_voltage, align 4
  %121 = load %struct.ddb_dvb*, %struct.ddb_dvb** %7, align 8
  %122 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %121, i32 0, i32 1
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 3
  store i32 %120, i32* %125, align 4
  %126 = load i32, i32* @max_set_tone, align 4
  %127 = load %struct.ddb_dvb*, %struct.ddb_dvb** %7, align 8
  %128 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %127, i32 0, i32 1
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 2
  store i32 %126, i32* %131, align 8
  %132 = load %struct.ddb_dvb*, %struct.ddb_dvb** %7, align 8
  %133 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %132, i32 0, i32 1
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.ddb_dvb*, %struct.ddb_dvb** %7, align 8
  %139 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 8
  %140 = load i32, i32* @max_send_master_cmd, align 4
  %141 = load %struct.ddb_dvb*, %struct.ddb_dvb** %7, align 8
  %142 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %141, i32 0, i32 1
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 1
  store i32 %140, i32* %145, align 4
  %146 = load i32, i32* @max_send_burst, align 4
  %147 = load %struct.ddb_dvb*, %struct.ddb_dvb** %7, align 8
  %148 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %147, i32 0, i32 1
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 0
  store i32 %146, i32* %151, align 8
  %152 = load %struct.ddb_input*, %struct.ddb_input** %4, align 8
  %153 = load %struct.ddb_dvb*, %struct.ddb_dvb** %7, align 8
  %154 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %153, i32 0, i32 1
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  store %struct.ddb_input* %152, %struct.ddb_input** %156, align 8
  %157 = load i32, i32* %11, align 4
  %158 = load %struct.ddb_dvb*, %struct.ddb_dvb** %7, align 8
  %159 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 8
  store i32 0, i32* %3, align 4
  br label %160

160:                                              ; preds = %109, %78, %66, %51
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_4__* @ddb_mci_attach(%struct.ddb_input*, %struct.mci_cfg*, i32, i32*) #2

declare dso_local i32 @dev_err(i32, i8*) #2

declare dso_local i32 @lnb_command(%struct.ddb*, i64, i32, i32) #2

declare dso_local i32 @lnb_set_voltage(%struct.ddb*, i64, i32, i32) #2

declare dso_local i32 @ddb_lnb_init_fmode(%struct.ddb*, %struct.ddb_link*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
