; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/am437x/extr_am437x-vpfe.c_vpfe_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/am437x/extr_am437x-vpfe.c_vpfe_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpfe_device = type { i64, i64, i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@VPFE_IRQ_STS = common dso_local global i32 0, align 4
@VPFE_VDINT0 = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_FIELD_SEQ_TB = common dso_local global i32 0, align 4
@VPFE_VDINT1 = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @vpfe_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpfe_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.vpfe_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.vpfe_device*
  store %struct.vpfe_device* %10, %struct.vpfe_device** %5, align 8
  %11 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %12 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %11, i32 0, i32 3
  %13 = load i32, i32* @VPFE_IRQ_STS, align 4
  %14 = call i32 @vpfe_reg_read(i32* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @VPFE_VDINT0, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %108

19:                                               ; preds = %2
  %20 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %21 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %20, i32 0, i32 6
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %19
  %30 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %31 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %34 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %39 = call i32 @vpfe_process_buffer_complete(%struct.vpfe_device* %38)
  br label %40

40:                                               ; preds = %37, %29
  br label %109

41:                                               ; preds = %19
  %42 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %43 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %42, i32 0, i32 3
  %44 = call i32 @vpfe_ccdc_getfid(i32* %43)
  store i32 %44, i32* %8, align 4
  %45 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %46 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = xor i32 %47, 1
  store i32 %48, i32* %46, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %51 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %49, %52
  br i1 %53, label %54, label %99

54:                                               ; preds = %41
  %55 = load i32, i32* %8, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %76

57:                                               ; preds = %54
  %58 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %59 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %62 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %60, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %57
  %66 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %67 = call i32 @vpfe_process_buffer_complete(%struct.vpfe_device* %66)
  br label %68

68:                                               ; preds = %65, %57
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @V4L2_FIELD_SEQ_TB, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %74 = call i32 @vpfe_schedule_bottom_field(%struct.vpfe_device* %73)
  br label %75

75:                                               ; preds = %72, %68
  br label %109

76:                                               ; preds = %54
  %77 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %78 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %77, i32 0, i32 4
  %79 = call i32 @spin_lock(i32* %78)
  %80 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %81 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %80, i32 0, i32 5
  %82 = call i32 @list_empty(i32* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %95, label %84

84:                                               ; preds = %76
  %85 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %86 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %89 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %87, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %84
  %93 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %94 = call i32 @vpfe_schedule_next_buffer(%struct.vpfe_device* %93)
  br label %95

95:                                               ; preds = %92, %84, %76
  %96 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %97 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %96, i32 0, i32 4
  %98 = call i32 @spin_unlock(i32* %97)
  br label %107

99:                                               ; preds = %41
  %100 = load i32, i32* %8, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = load i32, i32* %8, align 4
  %104 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %105 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 8
  br label %106

106:                                              ; preds = %102, %99
  br label %107

107:                                              ; preds = %106, %95
  br label %108

108:                                              ; preds = %107, %2
  br label %109

109:                                              ; preds = %108, %75, %40
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* @VPFE_VDINT1, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %146

114:                                              ; preds = %109
  %115 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %116 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %115, i32 0, i32 4
  %117 = call i32 @spin_lock(i32* %116)
  %118 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %119 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %118, i32 0, i32 6
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %142

126:                                              ; preds = %114
  %127 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %128 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %127, i32 0, i32 5
  %129 = call i32 @list_empty(i32* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %142, label %131

131:                                              ; preds = %126
  %132 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %133 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %136 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = icmp eq i64 %134, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %131
  %140 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %141 = call i32 @vpfe_schedule_next_buffer(%struct.vpfe_device* %140)
  br label %142

142:                                              ; preds = %139, %131, %126, %114
  %143 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %144 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %143, i32 0, i32 4
  %145 = call i32 @spin_unlock(i32* %144)
  br label %146

146:                                              ; preds = %142, %109
  %147 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %148 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %147, i32 0, i32 3
  %149 = load i32, i32* %7, align 4
  %150 = call i32 @vpfe_clear_intr(i32* %148, i32 %149)
  %151 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %151
}

declare dso_local i32 @vpfe_reg_read(i32*, i32) #1

declare dso_local i32 @vpfe_process_buffer_complete(%struct.vpfe_device*) #1

declare dso_local i32 @vpfe_ccdc_getfid(i32*) #1

declare dso_local i32 @vpfe_schedule_bottom_field(%struct.vpfe_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @vpfe_schedule_next_buffer(%struct.vpfe_device*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @vpfe_clear_intr(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
