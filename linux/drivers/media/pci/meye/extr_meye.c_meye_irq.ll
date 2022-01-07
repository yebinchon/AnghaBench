; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/meye/extr_meye.c_meye_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/meye/extr_meye.c_meye_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i32, %struct.TYPE_3__*, i32, i64, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i8*, i8* }

@meye_irq.sequence = internal global i32 0, align 4
@MCHIP_MM_INTA = common dso_local global i32 0, align 4
@meye = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@MCHIP_HIC_MODE_CONT_OUT = common dso_local global i64 0, align 8
@MCHIP_HIC_MODE_CONT_COMP = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@MCHIP_MM_FIR_RDY = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@gbufsize = common dso_local global i32 0, align 4
@MEYE_BUF_DONE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @meye_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meye_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i32, i32* @MCHIP_MM_INTA, align 4
  %10 = call i32 @mchip_read(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 0), align 8
  %12 = load i64, i64* @MCHIP_HIC_MODE_CONT_OUT, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 0), align 8
  %16 = load i64, i64* @MCHIP_HIC_MODE_CONT_COMP, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* @IRQ_NONE, align 4
  store i32 %19, i32* %3, align 4
  br label %141

20:                                               ; preds = %14, %2
  br label %21

21:                                               ; preds = %139, %99, %92, %20
  %22 = call i32 (...) @mchip_get_frame()
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @MCHIP_MM_FIR_RDY, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %28, i32* %3, align 4
  br label %141

29:                                               ; preds = %21
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 0), align 8
  %31 = load i64, i64* @MCHIP_HIC_MODE_CONT_OUT, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %85

33:                                               ; preds = %29
  %34 = bitcast i32* %7 to i8*
  %35 = call i32 @kfifo_out_locked(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 8), i8* %34, i32 4, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 7))
  %36 = sext i32 %35 to i64
  %37 = icmp ne i64 %36, 4
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = call i32 (...) @mchip_free_frame()
  %40 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %40, i32* %3, align 4
  br label %141

41:                                               ; preds = %33
  %42 = load i32, i32* %6, align 4
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 6), align 8
  %44 = load i32, i32* @gbufsize, align 4
  %45 = load i32, i32* %7, align 4
  %46 = mul nsw i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %43, %47
  %49 = call i32 (...) @mchip_hsize()
  %50 = call i32 (...) @mchip_vsize()
  %51 = mul nsw i32 %49, %50
  %52 = mul nsw i32 %51, 2
  %53 = call i32 @mchip_cont_read_frame(i32 %42, i64 %48, i32 %52)
  %54 = call i32 (...) @mchip_hsize()
  %55 = call i32 (...) @mchip_vsize()
  %56 = mul nsw i32 %54, %55
  %57 = mul nsw i32 %56, 2
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 4), align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store i32 %57, i32* %62, align 8
  %63 = load i8*, i8** @MEYE_BUF_DONE, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 4), align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 3
  store i8* %63, i8** %68, align 8
  %69 = call i8* (...) @ktime_get_ns()
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 4), align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 2
  store i8* %69, i8** %74, align 8
  %75 = load i32, i32* @meye_irq.sequence, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* @meye_irq.sequence, align 4
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 4), align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  store i32 %75, i32* %81, align 4
  %82 = bitcast i32* %7 to i8*
  %83 = call i32 @kfifo_in_locked(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 3), i8* %82, i32 4, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 2))
  %84 = call i32 @wake_up_interruptible(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 1))
  br label %139

85:                                               ; preds = %29
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 5), align 8
  %88 = load i32, i32* @gbufsize, align 4
  %89 = call i32 @mchip_comp_read_frame(i32 %86, i32 %87, i32 %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = call i32 (...) @mchip_free_frame()
  br label %21

94:                                               ; preds = %85
  %95 = bitcast i32* %7 to i8*
  %96 = call i32 @kfifo_out_locked(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 8), i8* %95, i32 4, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 7))
  %97 = sext i32 %96 to i64
  %98 = icmp ne i64 %97, 4
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = call i32 (...) @mchip_free_frame()
  br label %21

101:                                              ; preds = %94
  %102 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 6), align 8
  %103 = load i32, i32* @gbufsize, align 4
  %104 = load i32, i32* %7, align 4
  %105 = mul nsw i32 %103, %104
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %102, %106
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 5), align 8
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @memcpy(i64 %107, i32 %108, i32 %109)
  %111 = load i32, i32* %8, align 4
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 4), align 8
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  store i32 %111, i32* %116, align 8
  %117 = load i8*, i8** @MEYE_BUF_DONE, align 8
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 4), align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 3
  store i8* %117, i8** %122, align 8
  %123 = call i8* (...) @ktime_get_ns()
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 4), align 8
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 2
  store i8* %123, i8** %128, align 8
  %129 = load i32, i32* @meye_irq.sequence, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* @meye_irq.sequence, align 4
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 4), align 8
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 1
  store i32 %129, i32* %135, align 4
  %136 = bitcast i32* %7 to i8*
  %137 = call i32 @kfifo_in_locked(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 3), i8* %136, i32 4, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 2))
  %138 = call i32 @wake_up_interruptible(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 1))
  br label %139

139:                                              ; preds = %101, %41
  %140 = call i32 (...) @mchip_free_frame()
  br label %21

141:                                              ; preds = %38, %27, %18
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i32 @mchip_read(i32) #1

declare dso_local i32 @mchip_get_frame(...) #1

declare dso_local i32 @kfifo_out_locked(i32*, i8*, i32, i32*) #1

declare dso_local i32 @mchip_free_frame(...) #1

declare dso_local i32 @mchip_cont_read_frame(i32, i64, i32) #1

declare dso_local i32 @mchip_hsize(...) #1

declare dso_local i32 @mchip_vsize(...) #1

declare dso_local i8* @ktime_get_ns(...) #1

declare dso_local i32 @kfifo_in_locked(i32*, i8*, i32, i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @mchip_comp_read_frame(i32, i32, i32) #1

declare dso_local i32 @memcpy(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
