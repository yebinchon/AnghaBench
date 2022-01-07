; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-driver.c_cobalt_set_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-driver.c_cobalt_set_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cobalt = type { i64, i64 }

@COBALT_SYSSTAT_VI0_INT1_MSK = common dso_local global i32 0, align 4
@COBALT_SYSSTAT_VI1_INT1_MSK = common dso_local global i32 0, align 4
@COBALT_SYSSTAT_VI2_INT1_MSK = common dso_local global i32 0, align 4
@COBALT_SYSSTAT_VI3_INT1_MSK = common dso_local global i32 0, align 4
@COBALT_SYSSTAT_VI0_INT2_MSK = common dso_local global i32 0, align 4
@COBALT_SYSSTAT_VI1_INT2_MSK = common dso_local global i32 0, align 4
@COBALT_SYSSTAT_VI2_INT2_MSK = common dso_local global i32 0, align 4
@COBALT_SYSSTAT_VI3_INT2_MSK = common dso_local global i32 0, align 4
@COBALT_SYSSTAT_VI0_LOST_DATA_MSK = common dso_local global i32 0, align 4
@COBALT_SYSSTAT_VI1_LOST_DATA_MSK = common dso_local global i32 0, align 4
@COBALT_SYSSTAT_VI2_LOST_DATA_MSK = common dso_local global i32 0, align 4
@COBALT_SYSSTAT_VI3_LOST_DATA_MSK = common dso_local global i32 0, align 4
@COBALT_SYSSTAT_AUD_IN_LOST_DATA_MSK = common dso_local global i32 0, align 4
@COBALT_SYSSTAT_VIHSMA_INT1_MSK = common dso_local global i32 0, align 4
@COBALT_SYSSTAT_VIHSMA_INT2_MSK = common dso_local global i32 0, align 4
@COBALT_SYSSTAT_VIHSMA_LOST_DATA_MSK = common dso_local global i32 0, align 4
@COBALT_SYSSTAT_VOHSMA_INT1_MSK = common dso_local global i32 0, align 4
@COBALT_SYSSTAT_VOHSMA_LOST_DATA_MSK = common dso_local global i32 0, align 4
@COBALT_SYSSTAT_AUD_OUT_LOST_DATA_MSK = common dso_local global i32 0, align 4
@COBALT_SYS_STAT_EDGE = common dso_local global i32 0, align 4
@COBALT_SYS_STAT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cobalt*, i32)* @cobalt_set_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cobalt_set_interrupt(%struct.cobalt* %0, i32 %1) #0 {
  %3 = alloca %struct.cobalt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cobalt* %0, %struct.cobalt** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %67

8:                                                ; preds = %2
  %9 = load i32, i32* @COBALT_SYSSTAT_VI0_INT1_MSK, align 4
  %10 = load i32, i32* @COBALT_SYSSTAT_VI1_INT1_MSK, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @COBALT_SYSSTAT_VI2_INT1_MSK, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @COBALT_SYSSTAT_VI3_INT1_MSK, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @COBALT_SYSSTAT_VI0_INT2_MSK, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @COBALT_SYSSTAT_VI1_INT2_MSK, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @COBALT_SYSSTAT_VI2_INT2_MSK, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @COBALT_SYSSTAT_VI3_INT2_MSK, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @COBALT_SYSSTAT_VI0_LOST_DATA_MSK, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @COBALT_SYSSTAT_VI1_LOST_DATA_MSK, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @COBALT_SYSSTAT_VI2_LOST_DATA_MSK, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @COBALT_SYSSTAT_VI3_LOST_DATA_MSK, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @COBALT_SYSSTAT_AUD_IN_LOST_DATA_MSK, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %5, align 4
  %34 = load %struct.cobalt*, %struct.cobalt** %3, align 8
  %35 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %8
  %39 = load i32, i32* @COBALT_SYSSTAT_VIHSMA_INT1_MSK, align 4
  %40 = load i32, i32* @COBALT_SYSSTAT_VIHSMA_INT2_MSK, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @COBALT_SYSSTAT_VIHSMA_LOST_DATA_MSK, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %38, %8
  %47 = load %struct.cobalt*, %struct.cobalt** %3, align 8
  %48 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = load i32, i32* @COBALT_SYSSTAT_VOHSMA_INT1_MSK, align 4
  %53 = load i32, i32* @COBALT_SYSSTAT_VOHSMA_LOST_DATA_MSK, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @COBALT_SYSSTAT_AUD_OUT_LOST_DATA_MSK, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* %5, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %51, %46
  %60 = load %struct.cobalt*, %struct.cobalt** %3, align 8
  %61 = load i32, i32* @COBALT_SYS_STAT_EDGE, align 4
  %62 = call i32 @cobalt_write_bar1(%struct.cobalt* %60, i32 %61, i32 -1)
  %63 = load %struct.cobalt*, %struct.cobalt** %3, align 8
  %64 = load i32, i32* @COBALT_SYS_STAT_MASK, align 4
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @cobalt_write_bar1(%struct.cobalt* %63, i32 %64, i32 %65)
  br label %71

67:                                               ; preds = %2
  %68 = load %struct.cobalt*, %struct.cobalt** %3, align 8
  %69 = load i32, i32* @COBALT_SYS_STAT_MASK, align 4
  %70 = call i32 @cobalt_write_bar1(%struct.cobalt* %68, i32 %69, i32 0)
  br label %71

71:                                               ; preds = %67, %59
  ret void
}

declare dso_local i32 @cobalt_write_bar1(%struct.cobalt*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
