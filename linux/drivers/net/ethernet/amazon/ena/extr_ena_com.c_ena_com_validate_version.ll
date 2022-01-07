; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_validate_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_validate_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { i32 }

@ENA_REGS_VERSION_OFF = common dso_local global i32 0, align 4
@ENA_REGS_CONTROLLER_VERSION_OFF = common dso_local global i32 0, align 4
@ENA_MMIO_READ_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Reg read timeout occurred\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"ena device version: %d.%d\0A\00", align 1
@ENA_REGS_VERSION_MAJOR_VERSION_MASK = common dso_local global i32 0, align 4
@ENA_REGS_VERSION_MAJOR_VERSION_SHIFT = common dso_local global i32 0, align 4
@ENA_REGS_VERSION_MINOR_VERSION_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c"ena controller version: %d.%d.%d implementation version %d\0A\00", align 1
@ENA_REGS_CONTROLLER_VERSION_MAJOR_VERSION_MASK = common dso_local global i32 0, align 4
@ENA_REGS_CONTROLLER_VERSION_MAJOR_VERSION_SHIFT = common dso_local global i32 0, align 4
@ENA_REGS_CONTROLLER_VERSION_MINOR_VERSION_MASK = common dso_local global i32 0, align 4
@ENA_REGS_CONTROLLER_VERSION_MINOR_VERSION_SHIFT = common dso_local global i32 0, align 4
@ENA_REGS_CONTROLLER_VERSION_SUBMINOR_VERSION_MASK = common dso_local global i32 0, align 4
@ENA_REGS_CONTROLLER_VERSION_IMPL_ID_MASK = common dso_local global i32 0, align 4
@ENA_REGS_CONTROLLER_VERSION_IMPL_ID_SHIFT = common dso_local global i32 0, align 4
@MIN_ENA_CTRL_VER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [77 x i8] c"ENA ctrl version is lower than the minimal ctrl version the driver supports\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ena_com_validate_version(%struct.ena_com_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ena_com_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %3, align 8
  %7 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %8 = load i32, i32* @ENA_REGS_VERSION_OFF, align 4
  %9 = call i32 @ena_com_reg_bar_read32(%struct.ena_com_dev* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %11 = load i32, i32* @ENA_REGS_CONTROLLER_VERSION_OFF, align 4
  %12 = call i32 @ena_com_reg_bar_read32(%struct.ena_com_dev* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @ENA_MMIO_READ_TIMEOUT, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @ENA_MMIO_READ_TIMEOUT, align 4
  %19 = icmp eq i32 %17, %18
  br label %20

20:                                               ; preds = %16, %1
  %21 = phi i1 [ true, %1 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ETIME, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %75

29:                                               ; preds = %20
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @ENA_REGS_VERSION_MAJOR_VERSION_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @ENA_REGS_VERSION_MAJOR_VERSION_SHIFT, align 4
  %34 = ashr i32 %32, %33
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @ENA_REGS_VERSION_MINOR_VERSION_MASK, align 4
  %37 = and i32 %35, %36
  %38 = call i32 (i8*, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @ENA_REGS_CONTROLLER_VERSION_MAJOR_VERSION_MASK, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* @ENA_REGS_CONTROLLER_VERSION_MAJOR_VERSION_SHIFT, align 4
  %43 = ashr i32 %41, %42
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @ENA_REGS_CONTROLLER_VERSION_MINOR_VERSION_MASK, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* @ENA_REGS_CONTROLLER_VERSION_MINOR_VERSION_SHIFT, align 4
  %48 = ashr i32 %46, %47
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @ENA_REGS_CONTROLLER_VERSION_SUBMINOR_VERSION_MASK, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @ENA_REGS_CONTROLLER_VERSION_IMPL_ID_MASK, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* @ENA_REGS_CONTROLLER_VERSION_IMPL_ID_SHIFT, align 4
  %56 = ashr i32 %54, %55
  %57 = call i32 (i8*, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %43, i32 %48, i32 %51, i32 %56)
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @ENA_REGS_CONTROLLER_VERSION_MAJOR_VERSION_MASK, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @ENA_REGS_CONTROLLER_VERSION_MINOR_VERSION_MASK, align 4
  %63 = and i32 %61, %62
  %64 = or i32 %60, %63
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @ENA_REGS_CONTROLLER_VERSION_SUBMINOR_VERSION_MASK, align 4
  %67 = and i32 %65, %66
  %68 = or i32 %64, %67
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @MIN_ENA_CTRL_VER, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %29
  %73 = call i32 @pr_err(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %75

74:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %74, %72, %25
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @ena_com_reg_bar_read32(%struct.ena_com_dev*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pr_info(i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
