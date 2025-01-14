; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_output_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_output_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddb_output = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { %struct.ddb* }
%struct.ddb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ddb_output*)* @ddb_output_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ddb_output_stop(%struct.ddb_output* %0) #0 {
  %2 = alloca %struct.ddb_output*, align 8
  %3 = alloca %struct.ddb*, align 8
  store %struct.ddb_output* %0, %struct.ddb_output** %2, align 8
  %4 = load %struct.ddb_output*, %struct.ddb_output** %2, align 8
  %5 = getelementptr inbounds %struct.ddb_output, %struct.ddb_output* %4, i32 0, i32 1
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.ddb*, %struct.ddb** %7, align 8
  store %struct.ddb* %8, %struct.ddb** %3, align 8
  %9 = load %struct.ddb_output*, %struct.ddb_output** %2, align 8
  %10 = getelementptr inbounds %struct.ddb_output, %struct.ddb_output* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = call i32 @spin_lock_irq(i32* %12)
  %14 = load %struct.ddb*, %struct.ddb** %3, align 8
  %15 = load %struct.ddb_output*, %struct.ddb_output** %2, align 8
  %16 = call i32 @TS_CONTROL(%struct.ddb_output* %15)
  %17 = call i32 @ddbwritel(%struct.ddb* %14, i32 0, i32 %16)
  %18 = load %struct.ddb*, %struct.ddb** %3, align 8
  %19 = load %struct.ddb_output*, %struct.ddb_output** %2, align 8
  %20 = getelementptr inbounds %struct.ddb_output, %struct.ddb_output* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = call i32 @DMA_BUFFER_CONTROL(%struct.TYPE_4__* %21)
  %23 = call i32 @ddbwritel(%struct.ddb* %18, i32 0, i32 %22)
  %24 = load %struct.ddb_output*, %struct.ddb_output** %2, align 8
  %25 = getelementptr inbounds %struct.ddb_output, %struct.ddb_output* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.ddb_output*, %struct.ddb_output** %2, align 8
  %29 = getelementptr inbounds %struct.ddb_output, %struct.ddb_output* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = call i32 @spin_unlock_irq(i32* %31)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @ddbwritel(%struct.ddb*, i32, i32) #1

declare dso_local i32 @TS_CONTROL(%struct.ddb_output*) #1

declare dso_local i32 @DMA_BUFFER_CONTROL(%struct.TYPE_4__*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
