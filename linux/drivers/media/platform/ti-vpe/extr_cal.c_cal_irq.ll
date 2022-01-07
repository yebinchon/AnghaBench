; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_cal.c_cal_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_cal.c_cal_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cal_dev = type { %struct.cal_ctx** }
%struct.cal_ctx = type { i64, i64, i32, %struct.cal_dmaqueue }
%struct.cal_dmaqueue = type { i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cal_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cal_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cal_dev*, align 8
  %6 = alloca %struct.cal_ctx*, align 8
  %7 = alloca %struct.cal_dmaqueue*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.cal_dev*
  store %struct.cal_dev* %11, %struct.cal_dev** %5, align 8
  %12 = load %struct.cal_dev*, %struct.cal_dev** %5, align 8
  %13 = call i32 @CAL_HL_IRQSTATUS(i32 2)
  %14 = call i64 @reg_read(%struct.cal_dev* %12, i32 %13)
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %64

17:                                               ; preds = %2
  %18 = load %struct.cal_dev*, %struct.cal_dev** %5, align 8
  %19 = call i32 @CAL_HL_IRQSTATUS(i32 2)
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @reg_write(%struct.cal_dev* %18, i32 %19, i64 %20)
  %22 = load i64, i64* %8, align 8
  %23 = call i64 @isportirqset(i64 %22, i32 1)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %17
  %26 = load %struct.cal_dev*, %struct.cal_dev** %5, align 8
  %27 = getelementptr inbounds %struct.cal_dev, %struct.cal_dev* %26, i32 0, i32 0
  %28 = load %struct.cal_ctx**, %struct.cal_ctx*** %27, align 8
  %29 = getelementptr inbounds %struct.cal_ctx*, %struct.cal_ctx** %28, i64 0
  %30 = load %struct.cal_ctx*, %struct.cal_ctx** %29, align 8
  store %struct.cal_ctx* %30, %struct.cal_ctx** %6, align 8
  %31 = load %struct.cal_ctx*, %struct.cal_ctx** %6, align 8
  %32 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.cal_ctx*, %struct.cal_ctx** %6, align 8
  %35 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %33, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %25
  %39 = load %struct.cal_ctx*, %struct.cal_ctx** %6, align 8
  %40 = call i32 @cal_process_buffer_complete(%struct.cal_ctx* %39)
  br label %41

41:                                               ; preds = %38, %25
  br label %42

42:                                               ; preds = %41, %17
  %43 = load i64, i64* %8, align 8
  %44 = call i64 @isportirqset(i64 %43, i32 2)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %63

46:                                               ; preds = %42
  %47 = load %struct.cal_dev*, %struct.cal_dev** %5, align 8
  %48 = getelementptr inbounds %struct.cal_dev, %struct.cal_dev* %47, i32 0, i32 0
  %49 = load %struct.cal_ctx**, %struct.cal_ctx*** %48, align 8
  %50 = getelementptr inbounds %struct.cal_ctx*, %struct.cal_ctx** %49, i64 1
  %51 = load %struct.cal_ctx*, %struct.cal_ctx** %50, align 8
  store %struct.cal_ctx* %51, %struct.cal_ctx** %6, align 8
  %52 = load %struct.cal_ctx*, %struct.cal_ctx** %6, align 8
  %53 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.cal_ctx*, %struct.cal_ctx** %6, align 8
  %56 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %54, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %46
  %60 = load %struct.cal_ctx*, %struct.cal_ctx** %6, align 8
  %61 = call i32 @cal_process_buffer_complete(%struct.cal_ctx* %60)
  br label %62

62:                                               ; preds = %59, %46
  br label %63

63:                                               ; preds = %62, %42
  br label %64

64:                                               ; preds = %63, %2
  %65 = load %struct.cal_dev*, %struct.cal_dev** %5, align 8
  %66 = call i32 @CAL_HL_IRQSTATUS(i32 3)
  %67 = call i64 @reg_read(%struct.cal_dev* %65, i32 %66)
  store i64 %67, i64* %9, align 8
  %68 = load i64, i64* %9, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %143

70:                                               ; preds = %64
  %71 = load %struct.cal_dev*, %struct.cal_dev** %5, align 8
  %72 = call i32 @CAL_HL_IRQSTATUS(i32 3)
  %73 = load i64, i64* %9, align 8
  %74 = call i32 @reg_write(%struct.cal_dev* %71, i32 %72, i64 %73)
  %75 = load i64, i64* %9, align 8
  %76 = call i64 @isportirqset(i64 %75, i32 1)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %108

78:                                               ; preds = %70
  %79 = load %struct.cal_dev*, %struct.cal_dev** %5, align 8
  %80 = getelementptr inbounds %struct.cal_dev, %struct.cal_dev* %79, i32 0, i32 0
  %81 = load %struct.cal_ctx**, %struct.cal_ctx*** %80, align 8
  %82 = getelementptr inbounds %struct.cal_ctx*, %struct.cal_ctx** %81, i64 0
  %83 = load %struct.cal_ctx*, %struct.cal_ctx** %82, align 8
  store %struct.cal_ctx* %83, %struct.cal_ctx** %6, align 8
  %84 = load %struct.cal_ctx*, %struct.cal_ctx** %6, align 8
  %85 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %84, i32 0, i32 3
  store %struct.cal_dmaqueue* %85, %struct.cal_dmaqueue** %7, align 8
  %86 = load %struct.cal_ctx*, %struct.cal_ctx** %6, align 8
  %87 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %86, i32 0, i32 2
  %88 = call i32 @spin_lock(i32* %87)
  %89 = load %struct.cal_dmaqueue*, %struct.cal_dmaqueue** %7, align 8
  %90 = getelementptr inbounds %struct.cal_dmaqueue, %struct.cal_dmaqueue* %89, i32 0, i32 0
  %91 = call i32 @list_empty(i32* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %104, label %93

93:                                               ; preds = %78
  %94 = load %struct.cal_ctx*, %struct.cal_ctx** %6, align 8
  %95 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.cal_ctx*, %struct.cal_ctx** %6, align 8
  %98 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %96, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %93
  %102 = load %struct.cal_ctx*, %struct.cal_ctx** %6, align 8
  %103 = call i32 @cal_schedule_next_buffer(%struct.cal_ctx* %102)
  br label %104

104:                                              ; preds = %101, %93, %78
  %105 = load %struct.cal_ctx*, %struct.cal_ctx** %6, align 8
  %106 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %105, i32 0, i32 2
  %107 = call i32 @spin_unlock(i32* %106)
  br label %108

108:                                              ; preds = %104, %70
  %109 = load i64, i64* %9, align 8
  %110 = call i64 @isportirqset(i64 %109, i32 2)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %142

112:                                              ; preds = %108
  %113 = load %struct.cal_dev*, %struct.cal_dev** %5, align 8
  %114 = getelementptr inbounds %struct.cal_dev, %struct.cal_dev* %113, i32 0, i32 0
  %115 = load %struct.cal_ctx**, %struct.cal_ctx*** %114, align 8
  %116 = getelementptr inbounds %struct.cal_ctx*, %struct.cal_ctx** %115, i64 1
  %117 = load %struct.cal_ctx*, %struct.cal_ctx** %116, align 8
  store %struct.cal_ctx* %117, %struct.cal_ctx** %6, align 8
  %118 = load %struct.cal_ctx*, %struct.cal_ctx** %6, align 8
  %119 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %118, i32 0, i32 3
  store %struct.cal_dmaqueue* %119, %struct.cal_dmaqueue** %7, align 8
  %120 = load %struct.cal_ctx*, %struct.cal_ctx** %6, align 8
  %121 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %120, i32 0, i32 2
  %122 = call i32 @spin_lock(i32* %121)
  %123 = load %struct.cal_dmaqueue*, %struct.cal_dmaqueue** %7, align 8
  %124 = getelementptr inbounds %struct.cal_dmaqueue, %struct.cal_dmaqueue* %123, i32 0, i32 0
  %125 = call i32 @list_empty(i32* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %138, label %127

127:                                              ; preds = %112
  %128 = load %struct.cal_ctx*, %struct.cal_ctx** %6, align 8
  %129 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.cal_ctx*, %struct.cal_ctx** %6, align 8
  %132 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp eq i64 %130, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %127
  %136 = load %struct.cal_ctx*, %struct.cal_ctx** %6, align 8
  %137 = call i32 @cal_schedule_next_buffer(%struct.cal_ctx* %136)
  br label %138

138:                                              ; preds = %135, %127, %112
  %139 = load %struct.cal_ctx*, %struct.cal_ctx** %6, align 8
  %140 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %139, i32 0, i32 2
  %141 = call i32 @spin_unlock(i32* %140)
  br label %142

142:                                              ; preds = %138, %108
  br label %143

143:                                              ; preds = %142, %64
  %144 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %144
}

declare dso_local i64 @reg_read(%struct.cal_dev*, i32) #1

declare dso_local i32 @CAL_HL_IRQSTATUS(i32) #1

declare dso_local i32 @reg_write(%struct.cal_dev*, i32, i64) #1

declare dso_local i64 @isportirqset(i64, i32) #1

declare dso_local i32 @cal_process_buffer_complete(%struct.cal_ctx*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @cal_schedule_next_buffer(%struct.cal_ctx*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
