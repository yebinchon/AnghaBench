; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_main.c_mlx5_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_main.c_mlx5_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Failed allocating uar, aborting\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Failed to alloc IRQs\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Failed to create EQs\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Failed to init FW tracer\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"fpga device start failed %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"IPSec device start failed %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"TLS device start failed %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Failed to init flow steering\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Failed to set hca defaults\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"sriov init failed %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"Failed to init embedded CPU\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*)* @mlx5_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_load(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  %5 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %6 = call i32 @mlx5_get_uars_page(%struct.mlx5_core_dev* %5)
  %7 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %8 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i32 %6, i32* %9, align 4
  %10 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %11 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @IS_ERR(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %18 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %20 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @PTR_ERR(i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %162

25:                                               ; preds = %1
  %26 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %27 = call i32 @mlx5_events_start(%struct.mlx5_core_dev* %26)
  %28 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %29 = call i32 @mlx5_pagealloc_start(%struct.mlx5_core_dev* %28)
  %30 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %31 = call i32 @mlx5_irq_table_create(%struct.mlx5_core_dev* %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %36 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %35, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %150

37:                                               ; preds = %25
  %38 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %39 = call i32 @mlx5_eq_table_create(%struct.mlx5_core_dev* %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %44 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %43, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %147

45:                                               ; preds = %37
  %46 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %47 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @mlx5_fw_tracer_init(i32 %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %54 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %53, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %144

55:                                               ; preds = %45
  %56 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %57 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @mlx5_hv_vhca_init(i32 %58)
  %60 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %61 = call i32 @mlx5_fpga_device_start(%struct.mlx5_core_dev* %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %55
  %65 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %66 = load i32, i32* %4, align 4
  %67 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %65, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %66)
  br label %135

68:                                               ; preds = %55
  %69 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %70 = call i32 @mlx5_accel_ipsec_init(%struct.mlx5_core_dev* %69)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %74, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %75)
  br label %132

77:                                               ; preds = %68
  %78 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %79 = call i32 @mlx5_accel_tls_init(%struct.mlx5_core_dev* %78)
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %84 = load i32, i32* %4, align 4
  %85 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %83, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %84)
  br label %129

86:                                               ; preds = %77
  %87 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %88 = call i32 @mlx5_init_fs(%struct.mlx5_core_dev* %87)
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %4, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %93 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %92, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  br label %126

94:                                               ; preds = %86
  %95 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %96 = call i32 @mlx5_core_set_hca_defaults(%struct.mlx5_core_dev* %95)
  store i32 %96, i32* %4, align 4
  %97 = load i32, i32* %4, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %101 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %100, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  br label %123

102:                                              ; preds = %94
  %103 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %104 = call i32 @mlx5_sriov_attach(%struct.mlx5_core_dev* %103)
  store i32 %104, i32* %4, align 4
  %105 = load i32, i32* %4, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %109 = load i32, i32* %4, align 4
  %110 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %108, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 %109)
  br label %123

111:                                              ; preds = %102
  %112 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %113 = call i32 @mlx5_ec_init(%struct.mlx5_core_dev* %112)
  store i32 %113, i32* %4, align 4
  %114 = load i32, i32* %4, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %118 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %117, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  br label %120

119:                                              ; preds = %111
  store i32 0, i32* %2, align 4
  br label %162

120:                                              ; preds = %116
  %121 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %122 = call i32 @mlx5_sriov_detach(%struct.mlx5_core_dev* %121)
  br label %123

123:                                              ; preds = %120, %107, %99
  %124 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %125 = call i32 @mlx5_cleanup_fs(%struct.mlx5_core_dev* %124)
  br label %126

126:                                              ; preds = %123, %91
  %127 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %128 = call i32 @mlx5_accel_tls_cleanup(%struct.mlx5_core_dev* %127)
  br label %129

129:                                              ; preds = %126, %82
  %130 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %131 = call i32 @mlx5_accel_ipsec_cleanup(%struct.mlx5_core_dev* %130)
  br label %132

132:                                              ; preds = %129, %73
  %133 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %134 = call i32 @mlx5_fpga_device_stop(%struct.mlx5_core_dev* %133)
  br label %135

135:                                              ; preds = %132, %64
  %136 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %137 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @mlx5_hv_vhca_cleanup(i32 %138)
  %140 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %141 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @mlx5_fw_tracer_cleanup(i32 %142)
  br label %144

144:                                              ; preds = %135, %52
  %145 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %146 = call i32 @mlx5_eq_table_destroy(%struct.mlx5_core_dev* %145)
  br label %147

147:                                              ; preds = %144, %42
  %148 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %149 = call i32 @mlx5_irq_table_destroy(%struct.mlx5_core_dev* %148)
  br label %150

150:                                              ; preds = %147, %34
  %151 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %152 = call i32 @mlx5_pagealloc_stop(%struct.mlx5_core_dev* %151)
  %153 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %154 = call i32 @mlx5_events_stop(%struct.mlx5_core_dev* %153)
  %155 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %156 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %157 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @mlx5_put_uars_page(%struct.mlx5_core_dev* %155, i32 %159)
  %161 = load i32, i32* %4, align 4
  store i32 %161, i32* %2, align 4
  br label %162

162:                                              ; preds = %150, %119, %16
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local i32 @mlx5_get_uars_page(%struct.mlx5_core_dev*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @mlx5_core_err(%struct.mlx5_core_dev*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @mlx5_events_start(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_pagealloc_start(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_irq_table_create(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_eq_table_create(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_fw_tracer_init(i32) #1

declare dso_local i32 @mlx5_hv_vhca_init(i32) #1

declare dso_local i32 @mlx5_fpga_device_start(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_accel_ipsec_init(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_accel_tls_init(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_init_fs(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_core_set_hca_defaults(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_sriov_attach(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_ec_init(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_sriov_detach(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_cleanup_fs(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_accel_tls_cleanup(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_accel_ipsec_cleanup(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_fpga_device_stop(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_hv_vhca_cleanup(i32) #1

declare dso_local i32 @mlx5_fw_tracer_cleanup(i32) #1

declare dso_local i32 @mlx5_eq_table_destroy(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_irq_table_destroy(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_pagealloc_stop(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_events_stop(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_put_uars_page(%struct.mlx5_core_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
