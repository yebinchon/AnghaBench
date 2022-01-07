; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-me.c_mei_me_irq_thread_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-me.c_mei_me_irq_thread_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i64, i32, i64, i32, i32, i8*, i32, i32 }
%struct.list_head = type { i32 }

@.str = private unnamed_addr constant [63 x i8] c"function called after ISR to handle the interrupt processing.\0A\00", align 1
@MEI_DEV_RESETTING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"FW not ready: resetting.\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"we need to start the dev.\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Spurious Interrupt\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"slots to read = %08x\0A\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@MEI_DEV_POWER_DOWN = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [32 x i8] c"mei_irq_read_handler ret = %d.\0A\00", align 1
@MEI_PG_EVENT_WAIT = common dso_local global i64 0, align 8
@MEI_PG_EVENT_RECEIVED = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [31 x i8] c"interrupt thread end ret = %d\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mei_me_irq_thread_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mei_device*, align 8
  %6 = alloca %struct.list_head, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.mei_device*
  store %struct.mei_device* %11, %struct.mei_device** %5, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %13 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = call i32 (i32, i8*, ...) @dev_dbg(i32 %14, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %17 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %16, i32 0, i32 3
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %20 = call i32 @mei_hcsr_read(%struct.mei_device* %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @me_intr_clear(%struct.mei_device* %21, i32 %22)
  %24 = call i32 @INIT_LIST_HEAD(%struct.list_head* %6)
  %25 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %26 = call i64 @mei_hw_is_ready(%struct.mei_device* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %42, label %28

28:                                               ; preds = %2
  %29 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %30 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MEI_DEV_RESETTING, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %36 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_warn(i32 %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %40 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %39, i32 0, i32 6
  %41 = call i32 @schedule_work(i32* %40)
  br label %147

42:                                               ; preds = %28, %2
  %43 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %44 = call i64 @mei_me_hw_is_resetting(%struct.mei_device* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %48 = call i32 @mei_hcsr_set_hig(%struct.mei_device* %47)
  br label %49

49:                                               ; preds = %46, %42
  %50 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @me_intr_src(i32 %51)
  %53 = call i32 @mei_me_pg_intr(%struct.mei_device* %50, i32 %52)
  %54 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %55 = call i32 @mei_host_is_ready(%struct.mei_device* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %77, label %57

57:                                               ; preds = %49
  %58 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %59 = call i64 @mei_hw_is_ready(%struct.mei_device* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %57
  %62 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %63 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i32, i8*, ...) @dev_dbg(i32 %64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %66 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %67 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %66, i32 0, i32 1
  store i32 1, i32* %67, align 8
  %68 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %69 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %68, i32 0, i32 7
  %70 = call i32 @wake_up(i32* %69)
  br label %76

71:                                               ; preds = %57
  %72 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %73 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i32, i8*, ...) @dev_dbg(i32 %74, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %76

76:                                               ; preds = %71, %61
  br label %147

77:                                               ; preds = %49
  %78 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %79 = call i64 @mei_count_full_read_slots(%struct.mei_device* %78)
  store i64 %79, i64* %7, align 8
  br label %80

80:                                               ; preds = %120, %77
  %81 = load i64, i64* %7, align 8
  %82 = icmp sgt i64 %81, 0
  br i1 %82, label %83, label %121

83:                                               ; preds = %80
  %84 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %85 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = load i64, i64* %7, align 8
  %88 = call i32 (i32, i8*, ...) @dev_dbg(i32 %86, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i64 %87)
  %89 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %90 = call i32 @mei_irq_read_handler(%struct.mei_device* %89, %struct.list_head* %6, i64* %7)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @ENODATA, align 4
  %93 = sub nsw i32 0, %92
  %94 = icmp eq i32 %91, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %83
  br label %121

96:                                               ; preds = %83
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %120

99:                                               ; preds = %96
  %100 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %101 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @MEI_DEV_RESETTING, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %120

105:                                              ; preds = %99
  %106 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %107 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @MEI_DEV_POWER_DOWN, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %120

111:                                              ; preds = %105
  %112 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %113 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @dev_err(i32 %114, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %115)
  %117 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %118 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %117, i32 0, i32 6
  %119 = call i32 @schedule_work(i32* %118)
  br label %147

120:                                              ; preds = %105, %99, %96
  br label %80

121:                                              ; preds = %95, %80
  %122 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %123 = call i8* @mei_hbuf_is_ready(%struct.mei_device* %122)
  %124 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %125 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %124, i32 0, i32 5
  store i8* %123, i8** %125, align 8
  %126 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %127 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @MEI_PG_EVENT_WAIT, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %144

131:                                              ; preds = %121
  %132 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %133 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @MEI_PG_EVENT_RECEIVED, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %144

137:                                              ; preds = %131
  %138 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %139 = call i32 @mei_irq_write_handler(%struct.mei_device* %138, %struct.list_head* %6)
  store i32 %139, i32* %9, align 4
  %140 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %141 = call i8* @mei_hbuf_is_ready(%struct.mei_device* %140)
  %142 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %143 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %142, i32 0, i32 5
  store i8* %141, i8** %143, align 8
  br label %144

144:                                              ; preds = %137, %131, %121
  %145 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %146 = call i32 @mei_irq_compl_handler(%struct.mei_device* %145, %struct.list_head* %6)
  br label %147

147:                                              ; preds = %144, %111, %76, %34
  %148 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %149 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %9, align 4
  %152 = call i32 (i32, i8*, ...) @dev_dbg(i32 %150, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %151)
  %153 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %154 = call i32 @mei_me_intr_enable(%struct.mei_device* %153)
  %155 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %156 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %155, i32 0, i32 3
  %157 = call i32 @mutex_unlock(i32* %156)
  %158 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %158
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mei_hcsr_read(%struct.mei_device*) #1

declare dso_local i32 @me_intr_clear(%struct.mei_device*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i64 @mei_hw_is_ready(%struct.mei_device*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i64 @mei_me_hw_is_resetting(%struct.mei_device*) #1

declare dso_local i32 @mei_hcsr_set_hig(%struct.mei_device*) #1

declare dso_local i32 @mei_me_pg_intr(%struct.mei_device*, i32) #1

declare dso_local i32 @me_intr_src(i32) #1

declare dso_local i32 @mei_host_is_ready(%struct.mei_device*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i64 @mei_count_full_read_slots(%struct.mei_device*) #1

declare dso_local i32 @mei_irq_read_handler(%struct.mei_device*, %struct.list_head*, i64*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i8* @mei_hbuf_is_ready(%struct.mei_device*) #1

declare dso_local i32 @mei_irq_write_handler(%struct.mei_device*, %struct.list_head*) #1

declare dso_local i32 @mei_irq_compl_handler(%struct.mei_device*, %struct.list_head*) #1

declare dso_local i32 @mei_me_intr_enable(%struct.mei_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
