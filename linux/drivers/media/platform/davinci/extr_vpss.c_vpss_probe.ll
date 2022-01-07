; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpss.c_vpss_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpss.c_vpss_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_8__, i8*, i8* }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.platform_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8* }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"no platform data\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"dm355_vpss\00", align 1
@DM355 = common dso_local global i64 0, align 8
@oper_cfg = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"dm365_vpss\00", align 1
@DM365 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"dm644x_vpss\00", align 1
@DM644X = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [44 x i8] c"vpss driver not supported on this platform\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"%s vpss probed\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@dm355_enable_clock = common dso_local global i32 0, align 4
@dm355_select_ccdc_source = common dso_local global i32 0, align 4
@DM355_VPSSBL_INTSEL_DEFAULT = common dso_local global i32 0, align 4
@DM355_VPSSBL_INTSEL = common dso_local global i32 0, align 4
@DM355_VPSSBL_EVTSEL_DEFAULT = common dso_local global i32 0, align 4
@DM355_VPSSBL_EVTSEL = common dso_local global i32 0, align 4
@dm365_enable_clock = common dso_local global i32 0, align 4
@dm365_select_ccdc_source = common dso_local global i32 0, align 4
@DM365_ISP5_PCCR = common dso_local global i32 0, align 4
@DM365_ISP5_PCCR_BL_CLK_ENABLE = common dso_local global i32 0, align 4
@DM365_ISP5_PCCR_ISIF_CLK_ENABLE = common dso_local global i32 0, align 4
@DM365_ISP5_PCCR_H3A_CLK_ENABLE = common dso_local global i32 0, align 4
@DM365_ISP5_PCCR_RSZ_CLK_ENABLE = common dso_local global i32 0, align 4
@DM365_ISP5_PCCR_IPIPE_CLK_ENABLE = common dso_local global i32 0, align 4
@DM365_ISP5_PCCR_IPIPEIF_CLK_ENABLE = common dso_local global i32 0, align 4
@DM365_ISP5_PCCR_RSV = common dso_local global i32 0, align 4
@DM365_ISP5_BCR = common dso_local global i32 0, align 4
@DM365_ISP5_BCR_ISIF_OUT_ENABLE = common dso_local global i32 0, align 4
@DM365_ISP5_INTSEL1_DEFAULT = common dso_local global i32 0, align 4
@DM365_ISP5_INTSEL1 = common dso_local global i32 0, align 4
@DM365_ISP5_INTSEL2_DEFAULT = common dso_local global i32 0, align 4
@DM365_ISP5_INTSEL2 = common dso_local global i32 0, align 4
@DM365_ISP5_INTSEL3_DEFAULT = common dso_local global i32 0, align 4
@DM365_ISP5_INTSEL3 = common dso_local global i32 0, align 4
@dm644x_clear_wbl_overflow = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"%s vpss probe success\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @vpss_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpss_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca i8*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = call i32 @dev_err(%struct.TYPE_9__* %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @ENOENT, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %156

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %5, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %17
  %26 = load i64, i64* @DM355, align 8
  store i64 %26, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @oper_cfg, i32 0, i32 0), align 8
  br label %47

27:                                               ; preds = %17
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load i64, i64* @DM365, align 8
  store i64 %32, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @oper_cfg, i32 0, i32 0), align 8
  br label %46

33:                                               ; preds = %27
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = load i64, i64* @DM644X, align 8
  store i64 %38, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @oper_cfg, i32 0, i32 0), align 8
  br label %45

39:                                               ; preds = %33
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = call i32 @dev_err(%struct.TYPE_9__* %41, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %156

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %31
  br label %47

47:                                               ; preds = %46, %25
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @dev_info(%struct.TYPE_9__* %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* %50)
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = load i32, i32* @IORESOURCE_MEM, align 4
  %54 = call %struct.resource* @platform_get_resource(%struct.platform_device* %52, i32 %53, i32 0)
  store %struct.resource* %54, %struct.resource** %4, align 8
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = load %struct.resource*, %struct.resource** %4, align 8
  %58 = call i8* @devm_ioremap_resource(%struct.TYPE_9__* %56, %struct.resource* %57)
  store i8* %58, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @oper_cfg, i32 0, i32 4), align 8
  %59 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @oper_cfg, i32 0, i32 4), align 8
  %60 = call i64 @IS_ERR(i8* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %47
  %63 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @oper_cfg, i32 0, i32 4), align 8
  %64 = call i32 @PTR_ERR(i8* %63)
  store i32 %64, i32* %2, align 4
  br label %156

65:                                               ; preds = %47
  %66 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @oper_cfg, i32 0, i32 0), align 8
  %67 = load i64, i64* @DM355, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @oper_cfg, i32 0, i32 0), align 8
  %71 = load i64, i64* @DM365, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %88

73:                                               ; preds = %69, %65
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = load i32, i32* @IORESOURCE_MEM, align 4
  %76 = call %struct.resource* @platform_get_resource(%struct.platform_device* %74, i32 %75, i32 1)
  store %struct.resource* %76, %struct.resource** %4, align 8
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = load %struct.resource*, %struct.resource** %4, align 8
  %80 = call i8* @devm_ioremap_resource(%struct.TYPE_9__* %78, %struct.resource* %79)
  store i8* %80, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @oper_cfg, i32 0, i32 3), align 8
  %81 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @oper_cfg, i32 0, i32 3), align 8
  %82 = call i64 @IS_ERR(i8* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %73
  %85 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @oper_cfg, i32 0, i32 3), align 8
  %86 = call i32 @PTR_ERR(i8* %85)
  store i32 %86, i32* %2, align 4
  br label %156

87:                                               ; preds = %73
  br label %88

88:                                               ; preds = %87, %69
  %89 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @oper_cfg, i32 0, i32 0), align 8
  %90 = load i64, i64* @DM355, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %88
  %93 = load i32, i32* @dm355_enable_clock, align 4
  store i32 %93, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @oper_cfg, i32 0, i32 2, i32 2), align 4
  %94 = load i32, i32* @dm355_select_ccdc_source, align 4
  store i32 %94, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @oper_cfg, i32 0, i32 2, i32 1), align 4
  %95 = load i32, i32* @DM355_VPSSBL_INTSEL_DEFAULT, align 4
  %96 = load i32, i32* @DM355_VPSSBL_INTSEL, align 4
  %97 = call i32 @bl_regw(i32 %95, i32 %96)
  %98 = load i32, i32* @DM355_VPSSBL_EVTSEL_DEFAULT, align 4
  %99 = load i32, i32* @DM355_VPSSBL_EVTSEL, align 4
  %100 = call i32 @bl_regw(i32 %98, i32 %99)
  br label %144

101:                                              ; preds = %88
  %102 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @oper_cfg, i32 0, i32 0), align 8
  %103 = load i64, i64* @DM365, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %141

105:                                              ; preds = %101
  %106 = load i32, i32* @dm365_enable_clock, align 4
  store i32 %106, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @oper_cfg, i32 0, i32 2, i32 2), align 4
  %107 = load i32, i32* @dm365_select_ccdc_source, align 4
  store i32 %107, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @oper_cfg, i32 0, i32 2, i32 1), align 4
  %108 = load i32, i32* @DM365_ISP5_PCCR, align 4
  %109 = call i32 @isp5_read(i32 %108)
  %110 = load i32, i32* @DM365_ISP5_PCCR_BL_CLK_ENABLE, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @DM365_ISP5_PCCR_ISIF_CLK_ENABLE, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @DM365_ISP5_PCCR_H3A_CLK_ENABLE, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @DM365_ISP5_PCCR_RSZ_CLK_ENABLE, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @DM365_ISP5_PCCR_IPIPE_CLK_ENABLE, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @DM365_ISP5_PCCR_IPIPEIF_CLK_ENABLE, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @DM365_ISP5_PCCR_RSV, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @DM365_ISP5_PCCR, align 4
  %125 = call i32 @isp5_write(i32 %123, i32 %124)
  %126 = load i32, i32* @DM365_ISP5_BCR, align 4
  %127 = call i32 @isp5_read(i32 %126)
  %128 = load i32, i32* @DM365_ISP5_BCR_ISIF_OUT_ENABLE, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @DM365_ISP5_BCR, align 4
  %131 = call i32 @isp5_write(i32 %129, i32 %130)
  %132 = load i32, i32* @DM365_ISP5_INTSEL1_DEFAULT, align 4
  %133 = load i32, i32* @DM365_ISP5_INTSEL1, align 4
  %134 = call i32 @isp5_write(i32 %132, i32 %133)
  %135 = load i32, i32* @DM365_ISP5_INTSEL2_DEFAULT, align 4
  %136 = load i32, i32* @DM365_ISP5_INTSEL2, align 4
  %137 = call i32 @isp5_write(i32 %135, i32 %136)
  %138 = load i32, i32* @DM365_ISP5_INTSEL3_DEFAULT, align 4
  %139 = load i32, i32* @DM365_ISP5_INTSEL3, align 4
  %140 = call i32 @isp5_write(i32 %138, i32 %139)
  br label %143

141:                                              ; preds = %101
  %142 = load i32, i32* @dm644x_clear_wbl_overflow, align 4
  store i32 %142, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @oper_cfg, i32 0, i32 2, i32 0), align 4
  br label %143

143:                                              ; preds = %141, %105
  br label %144

144:                                              ; preds = %143, %92
  %145 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %146 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %145, i32 0, i32 0
  %147 = call i32 @pm_runtime_enable(%struct.TYPE_9__* %146)
  %148 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %149 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %148, i32 0, i32 0
  %150 = call i32 @pm_runtime_get(%struct.TYPE_9__* %149)
  %151 = call i32 @spin_lock_init(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @oper_cfg, i32 0, i32 1))
  %152 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %153 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %152, i32 0, i32 0
  %154 = load i8*, i8** %5, align 8
  %155 = call i32 @dev_info(%struct.TYPE_9__* %153, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* %154)
  store i32 0, i32* %2, align 4
  br label %156

156:                                              ; preds = %144, %84, %62, %39, %11
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @dev_info(%struct.TYPE_9__*, i8*, i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.TYPE_9__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @bl_regw(i32, i32) #1

declare dso_local i32 @isp5_write(i32, i32) #1

declare dso_local i32 @isp5_read(i32) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_9__*) #1

declare dso_local i32 @pm_runtime_get(%struct.TYPE_9__*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
