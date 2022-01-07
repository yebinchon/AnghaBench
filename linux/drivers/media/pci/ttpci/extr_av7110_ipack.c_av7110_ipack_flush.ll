; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110_ipack.c_av7110_ipack_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110_ipack.c_av7110_ipack_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipack = type { i32, i32 }

@MMAX_PLENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @av7110_ipack_flush(%struct.ipack* %0) #0 {
  %2 = alloca %struct.ipack*, align 8
  store %struct.ipack* %0, %struct.ipack** %2, align 8
  %3 = load %struct.ipack*, %struct.ipack** %2, align 8
  %4 = getelementptr inbounds %struct.ipack, %struct.ipack* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @MMAX_PLENGTH, align 4
  %7 = sub nsw i32 %6, 6
  %8 = icmp ne i32 %5, %7
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load %struct.ipack*, %struct.ipack** %2, align 8
  %11 = getelementptr inbounds %struct.ipack, %struct.ipack* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp sle i32 %12, 6
  br i1 %13, label %14, label %15

14:                                               ; preds = %9, %1
  br label %28

15:                                               ; preds = %9
  %16 = load %struct.ipack*, %struct.ipack** %2, align 8
  %17 = getelementptr inbounds %struct.ipack, %struct.ipack* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %18, 6
  %20 = load %struct.ipack*, %struct.ipack** %2, align 8
  %21 = getelementptr inbounds %struct.ipack, %struct.ipack* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.ipack*, %struct.ipack** %2, align 8
  %23 = getelementptr inbounds %struct.ipack, %struct.ipack* %22, i32 0, i32 1
  store i32 0, i32* %23, align 4
  %24 = load %struct.ipack*, %struct.ipack** %2, align 8
  %25 = call i32 @send_ipack(%struct.ipack* %24)
  %26 = load %struct.ipack*, %struct.ipack** %2, align 8
  %27 = call i32 @av7110_ipack_reset(%struct.ipack* %26)
  br label %28

28:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @send_ipack(%struct.ipack*) #1

declare dso_local i32 @av7110_ipack_reset(%struct.ipack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
