; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/extr_pl172.c_pl172_setup_static.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/extr_pl172.c_pl172_setup_static.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amba_device = type { i32 }
%struct.device_node = type { i32 }
%struct.pl172_data = type { i64 }

@.str = private unnamed_addr constant [18 x i8] c"mpmc,memory-width\00", align 1
@MPMC_STATIC_CFG_MW_8BIT = common dso_local global i32 0, align 4
@MPMC_STATIC_CFG_MW_16BIT = common dso_local global i32 0, align 4
@MPMC_STATIC_CFG_MW_32BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"invalid memory width cs%u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"memory-width property required\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"mpmc,async-page-mode\00", align 1
@MPMC_STATIC_CFG_PM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"mpmc,cs-active-high\00", align 1
@MPMC_STATIC_CFG_PC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"mpmc,byte-lane-low\00", align 1
@MPMC_STATIC_CFG_PB = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"mpmc,extended-wait\00", align 1
@MPMC_STATIC_CFG_EW = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"mpmc,buffer-enable\00", align 1
@MPMC_STATIC_CFG_B = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"mpmc,write-protect\00", align 1
@MPMC_STATIC_CFG_P = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"mpmc static config cs%u: 0x%08x\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"mpmc,write-enable-delay\00", align 1
@MPMC_STATIC_WAIT_WEN_MAX = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [25 x i8] c"mpmc,output-enable-delay\00", align 1
@MPMC_STATIC_WAIT_OEN_MAX = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [23 x i8] c"mpmc,read-access-delay\00", align 1
@MPMC_STATIC_WAIT_RD_MAX = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [26 x i8] c"mpmc,page-mode-read-delay\00", align 1
@MPMC_STATIC_WAIT_PAGE_MAX = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [24 x i8] c"mpmc,write-access-delay\00", align 1
@MPMC_STATIC_WAIT_WR_MAX = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [22 x i8] c"mpmc,turn-round-delay\00", align 1
@MPMC_STATIC_WAIT_TURN_MAX = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [26 x i8] c"failed to configure cs%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amba_device*, %struct.device_node*, i32)* @pl172_setup_static to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl172_setup_static(%struct.amba_device* %0, %struct.device_node* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amba_device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pl172_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.amba_device* %0, %struct.amba_device** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.amba_device*, %struct.amba_device** %5, align 8
  %12 = call %struct.pl172_data* @amba_get_drvdata(%struct.amba_device* %11)
  store %struct.pl172_data* %12, %struct.pl172_data** %8, align 8
  %13 = load %struct.device_node*, %struct.device_node** %6, align 8
  %14 = call i32 @of_property_read_u32(%struct.device_node* %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %9)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %41, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %9, align 4
  %18 = icmp eq i32 %17, 8
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* @MPMC_STATIC_CFG_MW_8BIT, align 4
  store i32 %20, i32* %9, align 4
  br label %40

21:                                               ; preds = %16
  %22 = load i32, i32* %9, align 4
  %23 = icmp eq i32 %22, 16
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* @MPMC_STATIC_CFG_MW_16BIT, align 4
  store i32 %25, i32* %9, align 4
  br label %39

26:                                               ; preds = %21
  %27 = load i32, i32* %9, align 4
  %28 = icmp eq i32 %27, 32
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* @MPMC_STATIC_CFG_MW_32BIT, align 4
  store i32 %30, i32* %9, align 4
  br label %38

31:                                               ; preds = %26
  %32 = load %struct.amba_device*, %struct.amba_device** %5, align 8
  %33 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %32, i32 0, i32 0
  %34 = load i32, i32* %7, align 4
  %35 = call i32 (i32*, i8*, ...) @dev_err(i32* %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %179

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38, %24
  br label %40

40:                                               ; preds = %39, %19
  br label %47

41:                                               ; preds = %3
  %42 = load %struct.amba_device*, %struct.amba_device** %5, align 8
  %43 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %42, i32 0, i32 0
  %44 = call i32 (i32*, i8*, ...) @dev_err(i32* %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %179

47:                                               ; preds = %40
  %48 = load %struct.device_node*, %struct.device_node** %6, align 8
  %49 = call i64 @of_property_read_bool(%struct.device_node* %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i32, i32* @MPMC_STATIC_CFG_PM, align 4
  %53 = load i32, i32* %9, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %51, %47
  %56 = load %struct.device_node*, %struct.device_node** %6, align 8
  %57 = call i64 @of_property_read_bool(%struct.device_node* %56, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i32, i32* @MPMC_STATIC_CFG_PC, align 4
  %61 = load i32, i32* %9, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %59, %55
  %64 = load %struct.device_node*, %struct.device_node** %6, align 8
  %65 = call i64 @of_property_read_bool(%struct.device_node* %64, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i32, i32* @MPMC_STATIC_CFG_PB, align 4
  %69 = load i32, i32* %9, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %67, %63
  %72 = load %struct.device_node*, %struct.device_node** %6, align 8
  %73 = call i64 @of_property_read_bool(%struct.device_node* %72, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load i32, i32* @MPMC_STATIC_CFG_EW, align 4
  %77 = load i32, i32* %9, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %9, align 4
  br label %79

79:                                               ; preds = %75, %71
  %80 = load %struct.amba_device*, %struct.amba_device** %5, align 8
  %81 = call i32 @amba_part(%struct.amba_device* %80)
  %82 = icmp eq i32 %81, 370
  br i1 %82, label %83, label %91

83:                                               ; preds = %79
  %84 = load %struct.device_node*, %struct.device_node** %6, align 8
  %85 = call i64 @of_property_read_bool(%struct.device_node* %84, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load i32, i32* @MPMC_STATIC_CFG_B, align 4
  %89 = load i32, i32* %9, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %87, %83, %79
  %92 = load %struct.device_node*, %struct.device_node** %6, align 8
  %93 = call i64 @of_property_read_bool(%struct.device_node* %92, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load i32, i32* @MPMC_STATIC_CFG_P, align 4
  %97 = load i32, i32* %9, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %9, align 4
  br label %99

99:                                               ; preds = %95, %91
  %100 = load i32, i32* %9, align 4
  %101 = load %struct.pl172_data*, %struct.pl172_data** %8, align 8
  %102 = getelementptr inbounds %struct.pl172_data, %struct.pl172_data* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* %7, align 4
  %105 = call i64 @MPMC_STATIC_CFG(i32 %104)
  %106 = add nsw i64 %103, %105
  %107 = call i32 @writel(i32 %100, i64 %106)
  %108 = load %struct.amba_device*, %struct.amba_device** %5, align 8
  %109 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %108, i32 0, i32 0
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %9, align 4
  %112 = call i32 @dev_dbg(i32* %109, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %110, i32 %111)
  %113 = load %struct.amba_device*, %struct.amba_device** %5, align 8
  %114 = load %struct.device_node*, %struct.device_node** %6, align 8
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @MPMC_STATIC_WAIT_WEN(i32 %115)
  %117 = load i32, i32* @MPMC_STATIC_WAIT_WEN_MAX, align 4
  %118 = call i32 @pl172_timing_prop(%struct.amba_device* %113, %struct.device_node* %114, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i32 %116, i32 %117, i32 1)
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %10, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %99
  br label %173

122:                                              ; preds = %99
  %123 = load %struct.amba_device*, %struct.amba_device** %5, align 8
  %124 = load %struct.device_node*, %struct.device_node** %6, align 8
  %125 = load i32, i32* %7, align 4
  %126 = call i32 @MPMC_STATIC_WAIT_OEN(i32 %125)
  %127 = load i32, i32* @MPMC_STATIC_WAIT_OEN_MAX, align 4
  %128 = call i32 @pl172_timing_prop(%struct.amba_device* %123, %struct.device_node* %124, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 %126, i32 %127, i32 0)
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %10, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %122
  br label %173

132:                                              ; preds = %122
  %133 = load %struct.amba_device*, %struct.amba_device** %5, align 8
  %134 = load %struct.device_node*, %struct.device_node** %6, align 8
  %135 = load i32, i32* %7, align 4
  %136 = call i32 @MPMC_STATIC_WAIT_RD(i32 %135)
  %137 = load i32, i32* @MPMC_STATIC_WAIT_RD_MAX, align 4
  %138 = call i32 @pl172_timing_prop(%struct.amba_device* %133, %struct.device_node* %134, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i32 %136, i32 %137, i32 1)
  store i32 %138, i32* %10, align 4
  %139 = load i32, i32* %10, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %132
  br label %173

142:                                              ; preds = %132
  %143 = load %struct.amba_device*, %struct.amba_device** %5, align 8
  %144 = load %struct.device_node*, %struct.device_node** %6, align 8
  %145 = load i32, i32* %7, align 4
  %146 = call i32 @MPMC_STATIC_WAIT_PAGE(i32 %145)
  %147 = load i32, i32* @MPMC_STATIC_WAIT_PAGE_MAX, align 4
  %148 = call i32 @pl172_timing_prop(%struct.amba_device* %143, %struct.device_node* %144, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 %146, i32 %147, i32 1)
  store i32 %148, i32* %10, align 4
  %149 = load i32, i32* %10, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %142
  br label %173

152:                                              ; preds = %142
  %153 = load %struct.amba_device*, %struct.amba_device** %5, align 8
  %154 = load %struct.device_node*, %struct.device_node** %6, align 8
  %155 = load i32, i32* %7, align 4
  %156 = call i32 @MPMC_STATIC_WAIT_WR(i32 %155)
  %157 = load i32, i32* @MPMC_STATIC_WAIT_WR_MAX, align 4
  %158 = call i32 @pl172_timing_prop(%struct.amba_device* %153, %struct.device_node* %154, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 %156, i32 %157, i32 2)
  store i32 %158, i32* %10, align 4
  %159 = load i32, i32* %10, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %152
  br label %173

162:                                              ; preds = %152
  %163 = load %struct.amba_device*, %struct.amba_device** %5, align 8
  %164 = load %struct.device_node*, %struct.device_node** %6, align 8
  %165 = load i32, i32* %7, align 4
  %166 = call i32 @MPMC_STATIC_WAIT_TURN(i32 %165)
  %167 = load i32, i32* @MPMC_STATIC_WAIT_TURN_MAX, align 4
  %168 = call i32 @pl172_timing_prop(%struct.amba_device* %163, %struct.device_node* %164, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0), i32 %166, i32 %167, i32 1)
  store i32 %168, i32* %10, align 4
  %169 = load i32, i32* %10, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %162
  br label %173

172:                                              ; preds = %162
  store i32 0, i32* %4, align 4
  br label %179

173:                                              ; preds = %171, %161, %151, %141, %131, %121
  %174 = load %struct.amba_device*, %struct.amba_device** %5, align 8
  %175 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %174, i32 0, i32 0
  %176 = load i32, i32* %7, align 4
  %177 = call i32 (i32*, i8*, ...) @dev_err(i32* %175, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0), i32 %176)
  %178 = load i32, i32* %10, align 4
  store i32 %178, i32* %4, align 4
  br label %179

179:                                              ; preds = %173, %172, %41, %31
  %180 = load i32, i32* %4, align 4
  ret i32 %180
}

declare dso_local %struct.pl172_data* @amba_get_drvdata(%struct.amba_device*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @amba_part(%struct.amba_device*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @MPMC_STATIC_CFG(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @pl172_timing_prop(%struct.amba_device*, %struct.device_node*, i8*, i32, i32, i32) #1

declare dso_local i32 @MPMC_STATIC_WAIT_WEN(i32) #1

declare dso_local i32 @MPMC_STATIC_WAIT_OEN(i32) #1

declare dso_local i32 @MPMC_STATIC_WAIT_RD(i32) #1

declare dso_local i32 @MPMC_STATIC_WAIT_PAGE(i32) #1

declare dso_local i32 @MPMC_STATIC_WAIT_WR(i32) #1

declare dso_local i32 @MPMC_STATIC_WAIT_TURN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
