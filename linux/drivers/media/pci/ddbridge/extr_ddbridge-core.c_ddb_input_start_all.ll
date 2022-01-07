; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_input_start_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_input_start_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddb_input = type { %struct.ddb_output* }
%struct.ddb_output = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ddb_input** }

@redirect_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ddb_input*)* @ddb_input_start_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ddb_input_start_all(%struct.ddb_input* %0) #0 {
  %2 = alloca %struct.ddb_input*, align 8
  %3 = alloca %struct.ddb_input*, align 8
  %4 = alloca %struct.ddb_output*, align 8
  store %struct.ddb_input* %0, %struct.ddb_input** %2, align 8
  %5 = load %struct.ddb_input*, %struct.ddb_input** %2, align 8
  store %struct.ddb_input* %5, %struct.ddb_input** %3, align 8
  %6 = call i32 @mutex_lock(i32* @redirect_lock)
  br label %7

7:                                                ; preds = %32, %1
  %8 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %9 = icmp ne %struct.ddb_input* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %12 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %11, i32 0, i32 0
  %13 = load %struct.ddb_output*, %struct.ddb_output** %12, align 8
  store %struct.ddb_output* %13, %struct.ddb_output** %4, align 8
  %14 = icmp ne %struct.ddb_output* %13, null
  br label %15

15:                                               ; preds = %10, %7
  %16 = phi i1 [ false, %7 ], [ %14, %10 ]
  br i1 %16, label %17, label %33

17:                                               ; preds = %15
  %18 = load %struct.ddb_output*, %struct.ddb_output** %4, align 8
  %19 = call i32 @ddb_output_start(%struct.ddb_output* %18)
  %20 = load %struct.ddb_output*, %struct.ddb_output** %4, align 8
  %21 = getelementptr inbounds %struct.ddb_output, %struct.ddb_output* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.ddb_input**, %struct.ddb_input*** %23, align 8
  %25 = getelementptr inbounds %struct.ddb_input*, %struct.ddb_input** %24, i64 0
  %26 = load %struct.ddb_input*, %struct.ddb_input** %25, align 8
  store %struct.ddb_input* %26, %struct.ddb_input** %3, align 8
  %27 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %28 = icmp ne %struct.ddb_input* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %17
  %30 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %31 = call i32 @ddb_input_start(%struct.ddb_input* %30)
  br label %32

32:                                               ; preds = %29, %17
  br label %7

33:                                               ; preds = %15
  %34 = load %struct.ddb_input*, %struct.ddb_input** %2, align 8
  %35 = call i32 @ddb_input_start(%struct.ddb_input* %34)
  %36 = call i32 @mutex_unlock(i32* @redirect_lock)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ddb_output_start(%struct.ddb_output*) #1

declare dso_local i32 @ddb_input_start(%struct.ddb_input*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
