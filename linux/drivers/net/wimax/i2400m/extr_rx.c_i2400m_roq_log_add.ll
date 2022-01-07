; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_rx.c_i2400m_roq_log_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_rx.c_i2400m_roq_log_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i32 }
%struct.i2400m_roq = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, %struct.i2400m_roq_log_entry* }
%struct.i2400m_roq_log_entry = type { i32, i32, i32, i32, i32, i32 }

@I2400M_ROQ_LOG_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2400m*, %struct.i2400m_roq*, i32, i32, i32, i32, i32, i32)* @i2400m_roq_log_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2400m_roq_log_add(%struct.i2400m* %0, %struct.i2400m_roq* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.i2400m*, align 8
  %10 = alloca %struct.i2400m_roq*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.i2400m_roq_log_entry*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.i2400m* %0, %struct.i2400m** %9, align 8
  store %struct.i2400m_roq* %1, %struct.i2400m_roq** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %20 = load %struct.i2400m*, %struct.i2400m** %9, align 8
  %21 = load %struct.i2400m_roq*, %struct.i2400m_roq** %10, align 8
  %22 = call i32 @__i2400m_roq_index(%struct.i2400m* %20, %struct.i2400m_roq* %21)
  store i32 %22, i32* %19, align 4
  %23 = load %struct.i2400m_roq*, %struct.i2400m_roq** %10, align 8
  %24 = getelementptr inbounds %struct.i2400m_roq, %struct.i2400m_roq* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.i2400m_roq*, %struct.i2400m_roq** %10, align 8
  %29 = getelementptr inbounds %struct.i2400m_roq, %struct.i2400m_roq* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sub i32 %27, %32
  %34 = load i32, i32* @I2400M_ROQ_LOG_LENGTH, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %8
  %37 = load %struct.i2400m_roq*, %struct.i2400m_roq** %10, align 8
  %38 = getelementptr inbounds %struct.i2400m_roq, %struct.i2400m_roq* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %36, %8
  %44 = load %struct.i2400m_roq*, %struct.i2400m_roq** %10, align 8
  %45 = getelementptr inbounds %struct.i2400m_roq, %struct.i2400m_roq* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add i32 %48, 1
  store i32 %49, i32* %47, align 8
  %50 = load i32, i32* @I2400M_ROQ_LOG_LENGTH, align 4
  %51 = urem i32 %48, %50
  store i32 %51, i32* %18, align 4
  %52 = load %struct.i2400m_roq*, %struct.i2400m_roq** %10, align 8
  %53 = getelementptr inbounds %struct.i2400m_roq, %struct.i2400m_roq* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load %struct.i2400m_roq_log_entry*, %struct.i2400m_roq_log_entry** %55, align 8
  %57 = load i32, i32* %18, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.i2400m_roq_log_entry, %struct.i2400m_roq_log_entry* %56, i64 %58
  store %struct.i2400m_roq_log_entry* %59, %struct.i2400m_roq_log_entry** %17, align 8
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.i2400m_roq_log_entry*, %struct.i2400m_roq_log_entry** %17, align 8
  %62 = getelementptr inbounds %struct.i2400m_roq_log_entry, %struct.i2400m_roq_log_entry* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load %struct.i2400m_roq_log_entry*, %struct.i2400m_roq_log_entry** %17, align 8
  %65 = getelementptr inbounds %struct.i2400m_roq_log_entry, %struct.i2400m_roq_log_entry* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %13, align 4
  %67 = load %struct.i2400m_roq_log_entry*, %struct.i2400m_roq_log_entry** %17, align 8
  %68 = getelementptr inbounds %struct.i2400m_roq_log_entry, %struct.i2400m_roq_log_entry* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %14, align 4
  %70 = load %struct.i2400m_roq_log_entry*, %struct.i2400m_roq_log_entry** %17, align 8
  %71 = getelementptr inbounds %struct.i2400m_roq_log_entry, %struct.i2400m_roq_log_entry* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %15, align 4
  %73 = load %struct.i2400m_roq_log_entry*, %struct.i2400m_roq_log_entry** %17, align 8
  %74 = getelementptr inbounds %struct.i2400m_roq_log_entry, %struct.i2400m_roq_log_entry* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* %16, align 4
  %76 = load %struct.i2400m_roq_log_entry*, %struct.i2400m_roq_log_entry** %17, align 8
  %77 = getelementptr inbounds %struct.i2400m_roq_log_entry, %struct.i2400m_roq_log_entry* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 4
  %78 = call i64 @d_test(i32 1)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %43
  %81 = load %struct.i2400m*, %struct.i2400m** %9, align 8
  %82 = load i32, i32* %19, align 4
  %83 = load i32, i32* %18, align 4
  %84 = load %struct.i2400m_roq_log_entry*, %struct.i2400m_roq_log_entry** %17, align 8
  %85 = call i32 @i2400m_roq_log_entry_print(%struct.i2400m* %81, i32 %82, i32 %83, %struct.i2400m_roq_log_entry* %84)
  br label %86

86:                                               ; preds = %80, %43
  ret void
}

declare dso_local i32 @__i2400m_roq_index(%struct.i2400m*, %struct.i2400m_roq*) #1

declare dso_local i64 @d_test(i32) #1

declare dso_local i32 @i2400m_roq_log_entry_print(%struct.i2400m*, i32, i32, %struct.i2400m_roq_log_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
