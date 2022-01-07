; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_kdump_kernel_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_kdump_kernel_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enic = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [59 x i8] c"Running from within kdump kernel. Using minimal resources\0A\00", align 1
@ENIC_MIN_RQ_DESCS = common dso_local global i32 0, align 4
@ENIC_MIN_WQ_DESCS = common dso_local global i32 0, align 4
@u16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.enic*)* @enic_kdump_kernel_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enic_kdump_kernel_config(%struct.enic* %0) #0 {
  %2 = alloca %struct.enic*, align 8
  store %struct.enic* %0, %struct.enic** %2, align 8
  %3 = call i64 (...) @is_kdump_kernel()
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %30

5:                                                ; preds = %1
  %6 = load %struct.enic*, %struct.enic** %2, align 8
  %7 = call i32 @enic_get_dev(%struct.enic* %6)
  %8 = call i32 @dev_info(i32 %7, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.enic*, %struct.enic** %2, align 8
  %10 = getelementptr inbounds %struct.enic, %struct.enic* %9, i32 0, i32 0
  store i32 1, i32* %10, align 4
  %11 = load %struct.enic*, %struct.enic** %2, align 8
  %12 = getelementptr inbounds %struct.enic, %struct.enic* %11, i32 0, i32 1
  store i32 1, i32* %12, align 4
  %13 = load i32, i32* @ENIC_MIN_RQ_DESCS, align 4
  %14 = load %struct.enic*, %struct.enic** %2, align 8
  %15 = getelementptr inbounds %struct.enic, %struct.enic* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  store i32 %13, i32* %16, align 4
  %17 = load i32, i32* @ENIC_MIN_WQ_DESCS, align 4
  %18 = load %struct.enic*, %struct.enic** %2, align 8
  %19 = getelementptr inbounds %struct.enic, %struct.enic* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* @u16, align 4
  %22 = load %struct.enic*, %struct.enic** %2, align 8
  %23 = getelementptr inbounds %struct.enic, %struct.enic* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @min_t(i32 %21, i32 1500, i32 %25)
  %27 = load %struct.enic*, %struct.enic** %2, align 8
  %28 = getelementptr inbounds %struct.enic, %struct.enic* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  br label %30

30:                                               ; preds = %5, %1
  ret void
}

declare dso_local i64 @is_kdump_kernel(...) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @enic_get_dev(%struct.enic*) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
