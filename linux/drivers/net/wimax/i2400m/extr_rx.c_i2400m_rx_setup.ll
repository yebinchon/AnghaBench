; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_rx.c_i2400m_rx_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_rx.c_i2400m_rx_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.i2400m_roq_log* }
%struct.i2400m_roq_log = type { i32 }

@i2400m_rx_reorder_disabled = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@I2400M_RO_CIN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2400m_rx_setup(%struct.i2400m* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2400m*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2400m_roq_log*, align 8
  store %struct.i2400m* %0, %struct.i2400m** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load i64, i64* @i2400m_rx_reorder_disabled, align 8
  %8 = icmp ne i64 %7, 0
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i32 0, i32 1
  %11 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %12 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %14 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %75

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* @I2400M_RO_CIN, align 4
  %21 = add nsw i32 %20, 1
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @kcalloc(i32 %21, i32 8, i32 %22)
  %24 = bitcast i8* %23 to %struct.TYPE_3__*
  %25 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %26 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %25, i32 0, i32 1
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** %26, align 8
  %27 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %28 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = icmp eq %struct.TYPE_3__* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %17
  br label %81

32:                                               ; preds = %17
  %33 = load i32, i32* @I2400M_RO_CIN, align 4
  %34 = add nsw i32 %33, 1
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i8* @kcalloc(i32 %34, i32 4, i32 %35)
  %37 = bitcast i8* %36 to %struct.i2400m_roq_log*
  store %struct.i2400m_roq_log* %37, %struct.i2400m_roq_log** %6, align 8
  %38 = load %struct.i2400m_roq_log*, %struct.i2400m_roq_log** %6, align 8
  %39 = icmp eq %struct.i2400m_roq_log* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %76

43:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %68, %43
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @I2400M_RO_CIN, align 4
  %47 = add nsw i32 %46, 1
  %48 = icmp ult i32 %45, %47
  br i1 %48, label %49, label %71

49:                                               ; preds = %44
  %50 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %51 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %50, i32 0, i32 1
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %54
  %56 = call i32 @__i2400m_roq_init(%struct.TYPE_3__* %55)
  %57 = load %struct.i2400m_roq_log*, %struct.i2400m_roq_log** %6, align 8
  %58 = load i32, i32* %5, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.i2400m_roq_log, %struct.i2400m_roq_log* %57, i64 %59
  %61 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %62 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %61, i32 0, i32 1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store %struct.i2400m_roq_log* %60, %struct.i2400m_roq_log** %67, align 8
  br label %68

68:                                               ; preds = %49
  %69 = load i32, i32* %5, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %44

71:                                               ; preds = %44
  %72 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %73 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %72, i32 0, i32 2
  %74 = call i32 @kref_init(i32* %73)
  br label %75

75:                                               ; preds = %71, %1
  store i32 0, i32* %2, align 4
  br label %83

76:                                               ; preds = %40
  %77 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %78 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %77, i32 0, i32 1
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = call i32 @kfree(%struct.TYPE_3__* %79)
  br label %81

81:                                               ; preds = %76, %31
  %82 = load i32, i32* %4, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %81, %75
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @__i2400m_roq_init(%struct.TYPE_3__*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @kfree(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
