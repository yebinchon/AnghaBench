; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/firewire/extr_firedtv-fw.c_node_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/firewire/extr_firedtv-fw.c_node_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_unit = type { i32, i32 }
%struct.ieee1394_device_id = type { i32 }
%struct.firedtv = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }

@MAX_MODEL_NAME_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@avc_remote_ctrl_work = common dso_local global i32 0, align 4
@CSR_MODEL = common dso_local global i32 0, align 4
@model_names = common dso_local global i32* null, align 8
@node_list_lock = common dso_local global i32 0, align 4
@node_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_unit*, %struct.ieee1394_device_id*)* @node_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @node_probe(%struct.fw_unit* %0, %struct.ieee1394_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fw_unit*, align 8
  %5 = alloca %struct.ieee1394_device_id*, align 8
  %6 = alloca %struct.firedtv*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.fw_unit* %0, %struct.fw_unit** %4, align 8
  store %struct.ieee1394_device_id* %1, %struct.ieee1394_device_id** %5, align 8
  %13 = load i32, i32* @MAX_MODEL_NAME_LEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.firedtv* @kzalloc(i32 48, i32 %17)
  store %struct.firedtv* %18, %struct.firedtv** %6, align 8
  %19 = load %struct.firedtv*, %struct.firedtv** %6, align 8
  %20 = icmp ne %struct.firedtv* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %134

24:                                               ; preds = %2
  %25 = load %struct.fw_unit*, %struct.fw_unit** %4, align 8
  %26 = getelementptr inbounds %struct.fw_unit, %struct.fw_unit* %25, i32 0, i32 0
  %27 = load %struct.firedtv*, %struct.firedtv** %6, align 8
  %28 = call i32 @dev_set_drvdata(i32* %26, %struct.firedtv* %27)
  %29 = load %struct.fw_unit*, %struct.fw_unit** %4, align 8
  %30 = getelementptr inbounds %struct.fw_unit, %struct.fw_unit* %29, i32 0, i32 0
  %31 = load %struct.firedtv*, %struct.firedtv** %6, align 8
  %32 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %31, i32 0, i32 9
  store i32* %30, i32** %32, align 8
  %33 = load %struct.firedtv*, %struct.firedtv** %6, align 8
  %34 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %33, i32 0, i32 0
  store i32 -1, i32* %34, align 8
  %35 = load %struct.firedtv*, %struct.firedtv** %6, align 8
  %36 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %35, i32 0, i32 1
  store i32 255, i32* %36, align 4
  %37 = load %struct.firedtv*, %struct.firedtv** %6, align 8
  %38 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %37, i32 0, i32 2
  store i32 255, i32* %38, align 8
  %39 = load %struct.firedtv*, %struct.firedtv** %6, align 8
  %40 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %39, i32 0, i32 8
  %41 = call i32 @mutex_init(i32* %40)
  %42 = load %struct.firedtv*, %struct.firedtv** %6, align 8
  %43 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %42, i32 0, i32 7
  %44 = call i32 @init_waitqueue_head(i32* %43)
  %45 = load %struct.firedtv*, %struct.firedtv** %6, align 8
  %46 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %45, i32 0, i32 6
  %47 = call i32 @mutex_init(i32* %46)
  %48 = load %struct.firedtv*, %struct.firedtv** %6, align 8
  %49 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %48, i32 0, i32 5
  %50 = load i32, i32* @avc_remote_ctrl_work, align 4
  %51 = call i32 @INIT_WORK(i32* %49, i32 %50)
  %52 = load %struct.fw_unit*, %struct.fw_unit** %4, align 8
  %53 = getelementptr inbounds %struct.fw_unit, %struct.fw_unit* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @CSR_MODEL, align 4
  %56 = trunc i64 %14 to i32
  %57 = call i32 @fw_csr_string(i32 %54, i32 %55, i8* %16, i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32*, i32** @model_names, align 8
  %59 = call i32 @ARRAY_SIZE(i32* %58)
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %83, %24
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %84

64:                                               ; preds = %60
  %65 = load i32*, i32** @model_names, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @strlen(i32 %69)
  %71 = load i32, i32* %9, align 4
  %72 = icmp sle i32 %70, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %64
  %74 = load i32*, i32** @model_names, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i64 @strncmp(i8* %16, i32 %78, i32 %79)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %73
  br label %84

83:                                               ; preds = %73, %64
  br label %60

84:                                               ; preds = %82, %60
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.firedtv*, %struct.firedtv** %6, align 8
  %87 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 4
  %88 = load %struct.firedtv*, %struct.firedtv** %6, align 8
  %89 = load %struct.fw_unit*, %struct.fw_unit** %4, align 8
  %90 = getelementptr inbounds %struct.fw_unit, %struct.fw_unit* %89, i32 0, i32 0
  %91 = call i32 @fdtv_register_rc(%struct.firedtv* %88, i32* %90)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %84
  br label %130

95:                                               ; preds = %84
  %96 = call i32 @spin_lock_irq(i32* @node_list_lock)
  %97 = load %struct.firedtv*, %struct.firedtv** %6, align 8
  %98 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %97, i32 0, i32 4
  %99 = call i32 @list_add_tail(i32* %98, i32* @node_list)
  %100 = call i32 @spin_unlock_irq(i32* @node_list_lock)
  %101 = load %struct.firedtv*, %struct.firedtv** %6, align 8
  %102 = call i32 @avc_identify_subunit(%struct.firedtv* %101)
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %11, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %95
  br label %122

106:                                              ; preds = %95
  %107 = load %struct.firedtv*, %struct.firedtv** %6, align 8
  %108 = load i32*, i32** @model_names, align 8
  %109 = load %struct.firedtv*, %struct.firedtv** %6, align 8
  %110 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %108, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @fdtv_dvb_register(%struct.firedtv* %107, i32 %114)
  store i32 %115, i32* %11, align 4
  %116 = load i32, i32* %11, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %106
  br label %122

119:                                              ; preds = %106
  %120 = load %struct.firedtv*, %struct.firedtv** %6, align 8
  %121 = call i32 @avc_register_remote_control(%struct.firedtv* %120)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %134

122:                                              ; preds = %118, %105
  %123 = call i32 @spin_lock_irq(i32* @node_list_lock)
  %124 = load %struct.firedtv*, %struct.firedtv** %6, align 8
  %125 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %124, i32 0, i32 4
  %126 = call i32 @list_del(i32* %125)
  %127 = call i32 @spin_unlock_irq(i32* @node_list_lock)
  %128 = load %struct.firedtv*, %struct.firedtv** %6, align 8
  %129 = call i32 @fdtv_unregister_rc(%struct.firedtv* %128)
  br label %130

130:                                              ; preds = %122, %94
  %131 = load %struct.firedtv*, %struct.firedtv** %6, align 8
  %132 = call i32 @kfree(%struct.firedtv* %131)
  %133 = load i32, i32* %11, align 4
  store i32 %133, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %134

134:                                              ; preds = %130, %119, %21
  %135 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %135)
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.firedtv* @kzalloc(i32, i32) #2

declare dso_local i32 @dev_set_drvdata(i32*, %struct.firedtv*) #2

declare dso_local i32 @mutex_init(i32*) #2

declare dso_local i32 @init_waitqueue_head(i32*) #2

declare dso_local i32 @INIT_WORK(i32*, i32) #2

declare dso_local i32 @fw_csr_string(i32, i32, i8*, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @strlen(i32) #2

declare dso_local i64 @strncmp(i8*, i32, i32) #2

declare dso_local i32 @fdtv_register_rc(%struct.firedtv*, i32*) #2

declare dso_local i32 @spin_lock_irq(i32*) #2

declare dso_local i32 @list_add_tail(i32*, i32*) #2

declare dso_local i32 @spin_unlock_irq(i32*) #2

declare dso_local i32 @avc_identify_subunit(%struct.firedtv*) #2

declare dso_local i32 @fdtv_dvb_register(%struct.firedtv*, i32) #2

declare dso_local i32 @avc_register_remote_control(%struct.firedtv*) #2

declare dso_local i32 @list_del(i32*) #2

declare dso_local i32 @fdtv_unregister_rc(%struct.firedtv*) #2

declare dso_local i32 @kfree(%struct.firedtv*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
