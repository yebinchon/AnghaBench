; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_dst_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_dst_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_state = type { i32, i32 }

@dst_addons = common dso_local global i32 0, align 4
@DST_TYPE_HAS_CA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"RDC 8820 RESET Failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"DST Initialization Failed.\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"unknown device.\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"MAC: Unsupported command\0A\00", align 1
@DST_TYPE_HAS_MULTI_FE = common dso_local global i32 0, align 4
@DST_TYPE_HAS_FW_BUILD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Tuner: Unsupported command\0A\00", align 1
@DST_TYPE_HAS_TS204 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"FW: Unsupported command\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Card: Unsupported command\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Vendor: Unsupported command\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dst_state*)* @dst_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dst_probe(%struct.dst_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dst_state*, align 8
  store %struct.dst_state* %0, %struct.dst_state** %3, align 8
  %4 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %5 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %4, i32 0, i32 1
  %6 = call i32 @mutex_init(i32* %5)
  %7 = load i32, i32* @dst_addons, align 4
  %8 = load i32, i32* @DST_TYPE_HAS_CA, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %13 = call i64 @rdc_8820_reset(%struct.dst_state* %12)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %98

17:                                               ; preds = %11
  %18 = call i32 @msleep(i32 4000)
  br label %21

19:                                               ; preds = %1
  %20 = call i32 @msleep(i32 100)
  br label %21

21:                                               ; preds = %19, %17
  %22 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %23 = call i64 @dst_comm_init(%struct.dst_state* %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %98

27:                                               ; preds = %21
  %28 = call i32 @msleep(i32 100)
  %29 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %30 = call i64 @dst_get_device_id(%struct.dst_state* %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %98

34:                                               ; preds = %27
  %35 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %36 = call i64 @dst_get_mac(%struct.dst_state* %35)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %34
  %41 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %42 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @DST_TYPE_HAS_MULTI_FE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %40
  %48 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %49 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @DST_TYPE_HAS_FW_BUILD, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %47, %40
  %55 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %56 = call i64 @dst_get_tuner_info(%struct.dst_state* %55)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %54
  br label %61

61:                                               ; preds = %60, %47
  %62 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %63 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @DST_TYPE_HAS_TS204, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %70 = call i32 @dst_packsize(%struct.dst_state* %69, i32 204)
  br label %71

71:                                               ; preds = %68, %61
  %72 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %73 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @DST_TYPE_HAS_FW_BUILD, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %97

78:                                               ; preds = %71
  %79 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %80 = call i64 @dst_fw_ver(%struct.dst_state* %79)
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %98

84:                                               ; preds = %78
  %85 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %86 = call i64 @dst_card_type(%struct.dst_state* %85)
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %98

90:                                               ; preds = %84
  %91 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %92 = call i64 @dst_get_vendor(%struct.dst_state* %91)
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %98

96:                                               ; preds = %90
  br label %97

97:                                               ; preds = %96, %71
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %97, %94, %88, %82, %32, %25, %15
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @rdc_8820_reset(%struct.dst_state*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @dst_comm_init(%struct.dst_state*) #1

declare dso_local i64 @dst_get_device_id(%struct.dst_state*) #1

declare dso_local i64 @dst_get_mac(%struct.dst_state*) #1

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i64 @dst_get_tuner_info(%struct.dst_state*) #1

declare dso_local i32 @dst_packsize(%struct.dst_state*, i32) #1

declare dso_local i64 @dst_fw_ver(%struct.dst_state*) #1

declare dso_local i64 @dst_card_type(%struct.dst_state*) #1

declare dso_local i64 @dst_get_vendor(%struct.dst_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
